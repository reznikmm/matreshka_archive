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
-- Copyright © 2009, 2010 Vadim Godunko <vgodunko@gmail.com>                --
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
with Matreshka.Internals.Strings.SIMD;

package body Matreshka.Internals.Strings is

   use Matreshka.Internals.Strings.SIMD;
   use Matreshka.Internals.Utf16;
   use Matreshka.Internals.Unicode;

   procedure Free is
     new Ada.Unchecked_Deallocation (Index_Map, Index_Map_Access);

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Shared_Sort_Key, Shared_Sort_Key_Access);

   procedure Free is
     new Ada.Unchecked_Deallocation (Shared_String, Shared_String_Access);

   function Test_And_Set is
     new Matreshka.Internals.Atomics.Generic_Test_And_Set
          (Index_Map, Index_Map_Access);

   Growth_Factor : constant := 32;
   --  The growth factor controls how much extra space is allocated when
   --  we have to increase the size of an allocated unbounded string. By
   --  allocating extra space, we avoid the need to reallocate on every
   --  append, particularly important when a string is built up by repeated
   --  append operations of small pieces. This is expressed as a factor so
   --  32 means add 1/32 of the length of the string as growth space.

   Min_Mul_Alloc : constant := Standard'Maximum_Alignment / 2;
   --  Allocation will be done by a multiple of Min_Mul_Alloc This causes
   --  no memory loss as most (all?) malloc implementations are obliged to
   --  align the returned memory on the maximum alignment as malloc does not
   --  know the target alignment.

   --------------
   -- Allocate --
   --------------

   function Allocate (Size : Natural) return not null Shared_String_Access is
   begin
      if Size = 0 then
         return Shared_Empty'Access;

      else
         return
           new Shared_String
                 (((Size + 1) / Min_Mul_Alloc + 1) * Min_Mul_Alloc);
         --  One additional element is allocated for null terminator.
      end if;
   end Allocate;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self      : in out Shared_String_Access;
     Code      : Code_Point;
     Increment : Natural)
   is
      Index : Positive := Self.Last + 1;

   begin
      Self.Length := Self.Length + 1;

      if Code <= 16#FFFF# then
         Self.Last := Self.Last + 1;

      else
         Self.Last := Self.Last + 2;
      end if;

      if Self.Last + 1 > Self.Size then
         declare
            Aux : constant not null Shared_String_Access
              := Allocate
                  (Self.Last + Natural'Max (Self.Size + Increment, Self.Last));

         begin
            Aux.Value (Self.Value'Range) := Self.Value;
            Aux.Last := Self.Last;
            Aux.Length := Self.Length;

            Dereference (Self);
            Self := Aux;
         end;
      end if;

      Unchecked_Store (Self.Value, Index, Code);
   end Append;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self : in out Shared_String_Access;
     Item : Shared_String_Access)
   is
      Source : Shared_String_Access := Self;
      Size   : constant Natural := Source.Last + Item.Last;

   begin
      if Size = 0 then
         if Self /= Shared_Empty'Access then
            Dereference (Self);
            Self := Shared_Empty'Access;
         end if;

      elsif Item.Length = 0 then
         null;

      elsif Self.Length = 0 then
         Dereference (Self);
         Self := Item;
         Reference (Self);

      else
         if Size + 1 > Self.Size
           or else not Matreshka.Internals.Atomics.Counters.Is_One
                        (Self.Counter'Access)
         then
            Self := Allocate (Size + Self.Last / Growth_Factor - 1);
         end if;

         if Self /= Source then
            Self.Value (1 .. Source.Last) := Source.Value (1 .. Source.Last);
         end if;

         Self.Value (Source.Last + 1 .. Source.Last + Item.Last) :=
           Item.Value (1 .. Item.Last);
         Self.Last := Size;
         Self.Length := Source.Length + Item.Length;
         Free (Self.Index_Map);
         Fill_Null_Terminator (Self);

         if Self /= Source then
            Dereference (Source);
         end if;
      end if;
   end Append;

   -----------------------
   -- Compute_Index_Map --
   -----------------------

   procedure Compute_Index_Map (Self : in out Shared_String) is
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

   procedure Dereference (Self : in out Shared_Sort_Key_Access) is
   begin
      if Self /= Shared_Empty_Key'Access
        and then Matreshka.Internals.Atomics.Counters.Decrement
          (Self.Counter'Access)
      then
         Free (Self);

      else
         Self := null;
      end if;
   end Dereference;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out Shared_String_Access) is
      pragma Assert (Self /= null);

   begin
      if Self /= Shared_Empty'Access
        and then Matreshka.Internals.Atomics.Counters.Decrement
                  (Self.Counter'Access)
      then
         Free (Self.Index_Map);
         Free (Self);

      else
         Self := null;
      end if;
   end Dereference;

   ----------
   -- Hash --
   ----------

   function Hash (Self : not null Shared_String_Access)
     return Internal_Hash_Type
   is
      M     : constant Internal_Hash_Type := 16#5BD1E995#;
      H     : Internal_Hash_Type := Internal_Hash_Type (Self.Length);
      K     : Internal_Hash_Type;
      C     : Code_Unit_32;
      Index : Positive := 1;

   begin
      while Index <= Self.Last loop
         Unchecked_Next (Self.Value, Index, C);

         K := Internal_Hash_Type (C) * M;
         K := K xor (K / 16#1000000#);
         K := K * M;

         H := H * M;
         H := H xor K;
      end loop;

      H := H xor (H / 16#2000#);
      H := H * M;
      H := H xor (H / 16#8000#);

      return H;
   end Hash;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Self : Shared_Sort_Key_Access) is
   begin
      if Self /= Shared_Empty_Key'Access then
         Matreshka.Internals.Atomics.Counters.Increment (Self.Counter'Access);
      end if;
   end Reference;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Self : Shared_String_Access) is
   begin
      if Self /= Shared_Empty'Access then
         Matreshka.Internals.Atomics.Counters.Increment (Self.Counter'Access);
      end if;
   end Reference;

   -------------
   -- Replace --
   -------------

   procedure Replace
    (Self   : in out Shared_String_Access;
     Low    : Positive;
     High   : Natural;
     Length : Natural;
     By     : not null Shared_String_Access)
   is
      pragma Assert (Low <= Self.Last + 1);
      pragma Assert (High < Low or else High <= Self.Last);
      pragma Assert (Length in (High - Low + 2) / 2 .. High - Low + 1);

      Source : Shared_String_Access := Self;
      Size   : constant Natural
        := Source.Last - Natural'Max (High - Low + 1, 0) + By.Last;

   begin
      if Size = 0 then
         if Self /= Shared_Empty'Access then
            Dereference (Self);
            Self := Shared_Empty'Access;
         end if;

      elsif By.Last = Size then
         Dereference (Self);
         Self := By;
         Reference (Self);

      else
         if Size + 1 > Self.Size
           or else not Matreshka.Internals.Atomics.Counters.Is_One
                        (Self.Counter'Access)
         then
            Self := Allocate (Size);
         end if;

         if High < Low then
            Self.Value (Low + By.Last .. Size) :=
              Source.Value (Low .. Source.Last);
            Self.Value (Low .. Low + By.Last - 1) := By.Value (1 .. By.Last);

         else
            Self.Value (Low + By.Last .. Size) :=
              Source.Value (High + 1 .. Source.Last);
            Self.Value (Low .. Low + By.Last - 1) := By.Value (1 .. By.Last);
         end if;

         if Self /= Source then
            Self.Value (1 .. Low - 1) := Source.Value (1 .. Low - 1);
         end if;

         Self.Last := Size;
         Self.Length := Source.Length - Length + By.Length;
         Fill_Null_Terminator (Self);

         if Self /= Source then
            Dereference (Source);
         end if;
      end if;
   end Replace;

   -----------
   -- Slice --
   -----------

   function Slice
    (Self   : not null Shared_String_Access;
     Low    : Positive;
     High   : Natural;
     Length : Natural)
       return not null Shared_String_Access
   is
      pragma Assert (High < Low
                       or else (Low <= Self.Last and then High <= Self.Last));
      pragma Assert (Length in (High - Low + 2) / 2 .. High - Low + 1);

   begin
      if High < Low then
         return Shared_Empty'Access;

      else
         declare
            Size : constant Natural := High - Low + 1;

         begin
            return Result : constant not null Shared_String_Access
              := Allocate (Size)
            do
               Result.Value (1 .. Size) := Self.Value (Low .. High);
               Result.Last              := Size;
               Result.Length            := Length;
               Fill_Null_Terminator (Result);
            end return;
         end;
      end if;
   end Slice;

end Matreshka.Internals.Strings;
