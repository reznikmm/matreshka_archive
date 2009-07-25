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
      procedure Concatenate
       (Result : Internal_String_Access;
        Left   : Internal_String_Access;
        Right  : Internal_String_Access);
      --  Concatenates Left and Right and store result in Result. It assumes
      --  Result and Left can be the same object.

      -----------------
      -- Concatenate --
      -----------------

      procedure Concatenate
       (Result : Internal_String_Access;
        Left   : Internal_String_Access;
        Right  : Internal_String_Access)
      is
      begin
         if Result /= Left then
            Result.Value (1 .. Left.Last) := Left.Value (1 .. Left.Last);
         end if;

         Result.Value (Left.Last + 1 .. Left.Last + Right.Last) :=
           Right.Value (1 .. Right.Last);
         Result.Last := Left.Last + Right.Last;
         Result.Length := Left.Length + Right.Length;
         Result.Index_Mode :=
           Index_Mode_After_Concatenation (Left.Index_Mode, Right.Index_Mode);
         Free (Result.Index_Map);
      end Concatenate;

   begin
      if Item.Length = 0 then
         null;

      elsif Self.Length = 0 then
         Dereference (Self);
         Self := Item;
         Reference (Self);

      else
         declare
            Length : constant Natural := Self.Last + Item.Last;

         begin
            if Length > Self.Max_Length
              or else not Matreshka.Internals.Atomics.Counters.Is_One
                           (Self.Counter'Access)
            then
               declare
                  New_Length : constant Natural
                    := ((Length + Self.Last / Growth_Factor - 1)
                           / Min_Mul_Alloc + 1) * Min_Mul_Alloc;
                  Aux        : Internal_String_Access := Self;

               begin
                  Self := new Internal_String (New_Length);
                  Concatenate (Self, Aux, Item);
                  Dereference (Aux);
               end;

            else
               Concatenate (Self, Self, Item);
            end if;
         end;
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

   procedure Reference (Self : in out Internal_String_Access) is
   begin
      Matreshka.Internals.Atomics.Counters.Increment (Self.Counter'Access);
   end Reference;

end Matreshka.Internals.Strings;
