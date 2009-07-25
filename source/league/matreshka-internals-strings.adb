------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2009 Vadim Godunko <vgodunko@gmail.com>                      --
--                                                                          --
-- Matreshka is free software;  you can  redistribute it  and/or modify  it --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 2,  or (at your option)  any later --
-- version.  Matreshka  is distributed in the hope that it will be  useful, --
-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General --
-- Public License for more details.  You should have received a copy of the --
-- GNU General Public License distributed with Matreshka; see file COPYING. --
-- If not, write  to  the  Free Software Foundation,  51  Franklin  Street, --
-- Fifth Floor, Boston, MA 02110-1301, USA.                                 --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
with Ada.Unchecked_Deallocation;

with Matreshka.Internals.Atomics.Generic_Test_And_Set;

package body Matreshka.Internals.Strings is

   use Matreshka.Internals.Utf16;

   procedure Free is
     new Ada.Unchecked_Deallocation (Internal_String, Internal_String_Access);

   procedure Free is
     new Ada.Unchecked_Deallocation (Index_Map, Index_Map_Access);

   function Test_And_Set is
     new Matreshka.Internals.Atomics.Generic_Test_And_Set
          (Index_Map, Index_Map_Access);

   Index_Mode_After_Concatenation : constant
     array (Index_Modes, Index_Modes) of Index_Modes
       := (Undefined    => (Single_Units => Single_Units,
                            Double_Units => Double_Units,
                            Mixed_Units  => Mixed_Units,
                            others       => Undefined),
           Single_Units => (Undefined    => Single_Units,
                            Single_Units => Single_Units,
                            others       => Mixed_Units),
           Double_Units => (Undefined    => Double_Units,
                            Double_Units => Double_Units,
                            others       => Mixed_Units),
           Mixed_Units  => (Undefined    => Mixed_Units,
                            others       => Mixed_Units));
   --  String indexing mode after concatenation. Each dimension is a valid
   --  string indexing mode for each concatenated string.

   Growth_Factor : constant := 32;
   --  The growth factor controls how much extra space is allocated when
   --  we have to increase the size of an allocated unbounded string. By
   --  allocating extra space, we avoid the need to reallocate on every
   --  append, particularly important when a string is built up by repeated
   --  append operations of small pieces. This is expressed as a factor so
   --  32 means add 1/32 of the length of the string as growth space.

   Min_Mul_Alloc : constant := Standard'Maximum_Alignment;
   --  Allocation will be done by a multiple of Min_Mul_Alloc This causes
   --  no memory loss as most (all?) malloc implementations are obliged to
   --  align the returned memory on the maximum alignment as malloc does not
   --  know the target alignment.

   ------------
   -- Append --
   ------------

   procedure Append
    (Self : in out Internal_String_Access;
     Item : Internal_String_Access)
   is
      Source : Internal_String_Access := Self;
      Size   : constant Natural := Source.Last + Item.Last;

   begin
      if Size = 0 then
         if Self /= Shared_Empty'Access then
            Dereference (Self);
            Self := Shared_Empty'Access;
            Reference (Self);
         end if;

      elsif Item.Length = 0 then
         null;

      elsif Self.Length = 0 then
         Dereference (Self);
         Self := Item;
         Reference (Self);

      else
         if Size > Self.Size
           or else not Matreshka.Internals.Atomics.Counters.Is_One
                        (Self.Counter'Access)
         then
            declare
               New_Size : constant Natural
                 := ((Size + Self.Last / Growth_Factor - 1)
                        / Min_Mul_Alloc + 1) * Min_Mul_Alloc;
            begin
               Self := new Internal_String (New_Size);
            end;
         end if;

         if Self /= Source then
            Self.Value (1 .. Source.Last) := Source.Value (1 .. Source.Last);
         end if;

         Self.Value (Source.Last + 1 .. Source.Last + Item.Last) :=
           Item.Value (1 .. Item.Last);
         Self.Last := Size;
         Self.Length := Source.Length + Item.Length;
         Self.Index_Mode :=
           Index_Mode_After_Concatenation (Source.Index_Mode, Item.Index_Mode);
         Free (Self.Index_Map);

         if Self /= Source then
            Dereference (Source);
         end if;
      end if;
   end Append;

   -----------------------
   -- Compute_Index_Map --
   -----------------------

   procedure Compute_Index_Map (Self : in out Internal_String) is
      Map     : Index_Map_Access := Self.Index_Map;
      Current : Positive         := 1;

   begin
      --  Calculate index map if it is unavailable for now.

      if Map = null then
         Map := new Index_Map (Self.Length);

         for J in Map.Map'Range loop
            Map.Map (J) := Current;

            if Self.Value (Current)
                 in High_Surrogate_Utf16_Code_Unit
            then
               Current := Current + 2;

            else
               Current := Current + 1;
            end if;
         end loop;

         if not Test_And_Set (Self.Index_Map'Access, null, Map) then
            --  Operation can fail if mapping has been calculated by
            --  another thread. In this case computed result is
            --  dropped, memory freed and already calculated mapping
            --  is reused.

            Free (Map);
         end if;
      end if;
   end Compute_Index_Map;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out Internal_String_Access) is
   begin
      if Self /= null then
         if Matreshka.Internals.Atomics.Counters.Decrement
             (Self.Counter'Access)
         then
--            pragma Assert (Self /= Shared_Empty'Access);

            Free (Self.Index_Map);
            Free (Self);

         else
            Self := null;
         end if;
      end if;
   end Dereference;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Self : Internal_String_Access) is
   begin
      Matreshka.Internals.Atomics.Counters.Increment (Self.Counter'Access);
   end Reference;

   -----------
   -- Slice --
   -----------

   function Slice
    (Self   : not null Internal_String_Access;
     Low    : Positive;
     High   : Natural;
     Length : Natural)
       return not null Internal_String_Access
   is
      pragma Assert (High < Low
                       or else (Low <= Self.Last and then High <= Self.Last));
      pragma Assert (Length in (High - Low + 2) / 2 .. High - Low + 1);

   begin
      if High < Low then
         Reference (Shared_Empty'Access);

         return Shared_Empty'Access;

      else
         declare
            Size : constant Natural := High - Low + 1;

         begin
            return Result : constant not null Internal_String_Access
              := new Internal_String'
                      (Counter    => Matreshka.Internals.Atomics.Counters.One,
                       Size       => Size,
                       Value      => Self.Value (Low .. High),
                       Last       => Size,
                       Length     => Length,
                       Index_Mode => Self.Index_Mode,
                       Index_Map  => null)
            do
               --  If Mixed_Units mode is used by source string, then check
               --  can we improve it to Single_Units or Double_Units.

               if Result.Index_Mode = Mixed_Units then
                  if Result.Last = Result.Length then
                     Result.Index_Mode := Single_Units;

                  elsif Result.Last = Result.Length * 2 then
                     Result.Index_Mode := Double_Units;
                  end if;
               end if;
            end return;
         end;
      end if;
   end Slice;

end Matreshka.Internals.Strings;
