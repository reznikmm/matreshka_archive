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

package body Matreshka.Internals.Strings is

   use Matreshka.Internals.Utf16;
   use Matreshka.Internals.Unicode;

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

   --------------
   -- Allocate --
   --------------

   function Allocate
    (Size : Matreshka.Internals.Utf16.Utf16_String_Index)
       return not null Shared_String_Access
   is
      pragma Assert (Size /= 0);

      S : constant Utf16_String_Index
        := ((Utf16_String_Index (Size + Size / Growth_Factor + 1))
             / Min_Mul_Alloc + 1) * Min_Mul_Alloc;
      --  One additional element is allocated for null terminator.

   begin
      return new Shared_String (S - 1);
   end Allocate;

   -------------------
   -- Can_Be_Reused --
   -------------------

   function Can_Be_Reused
    (Self : not null Shared_String_Access;
     Size : Matreshka.Internals.Utf16.Utf16_String_Index) return Boolean is
   begin
      return
        Self.Size > Size
          and then Matreshka.Internals.Atomics.Counters.Is_One
                    (Self.Counter'Access);
   end Can_Be_Reused;

   -----------------------
   -- Compute_Index_Map --
   -----------------------

   procedure Compute_Index_Map (Self : in out Shared_String) is
      pragma Assert (Self.Length /= 0);

      Map     : Index_Map_Access   := Self.Index_Map;
      Current : Utf16_String_Index := 0;

   begin
      --  Calculate index map if it is unavailable for now.

      if Map = null then
         Map := new Index_Map (Utf16_String_Index (Self.Length) - 1);

         for J in Map.Map'Range loop
            Map.Map (J) := Current;

            if Self.Value (Current) in High_Surrogate_Utf16_Code_Unit then
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

   --------------------------
   -- Fill_Null_Terminator --
   --------------------------

   procedure Fill_Null_Terminator
     (Self : not null Shared_String_Access) is separate;

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
      Index : Utf16_String_Index := 0;

   begin
      while Index < Self.Unused loop
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

end Matreshka.Internals.Strings;
