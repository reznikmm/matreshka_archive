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
-- Copyright © 2009-2010, Vadim Godunko <vgodunko@gmail.com>                --
-- All rights reserved.                                                     --
--                                                                          --
-- Redistribution and use in source and binary forms, with or without       --
-- modification, are permitted provided that the following conditions       --
-- are met:                                                                 --
--                                                                          --
--  * Redistributions of source code must retain the above copyright        --
--    notice, this list of conditions and the following disclaimer.         --
--                                                                          --
--  * Redistributions in binary form must reproduce the above copyright     --
--    notice, this list of conditions and the following disclaimer in the   --
--    documentation and/or other materials provided with the distribution.  --
--                                                                          --
--  * Neither the name of the Vadim Godunko, IE nor the names of its        --
--    contributors may be used to endorse or promote products derived from  --
--    this software without specific prior written permission.              --
--                                                                          --
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      --
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        --
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    --
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     --
-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   --
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED --
-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   --
-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   --
-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     --
-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       --
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             --
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

   Min_Mul_Alloc : constant
     := Standard'Maximum_Alignment * Standard'Storage_Unit / Code_Unit_16'Size;
   --  Allocation will be done by a multiple of Min_Mul_Alloc. This causes
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

   function Aligned_Size (Size : Utf16_String_Index) return Utf16_String_Index;
   pragma Inline (Aligned_Size);
   --  Returns recommended size of the shared string which is greater or
   --  equal to specified. Calculation take in sense alignment of the allocated
   --  memory segments to use memory effectively by Append/Insert/etc
   --  operations.

   ------------------
   -- Aligned_Size --
   ------------------

   function Aligned_Size
    (Size : Utf16_String_Index) return Utf16_String_Index
   is
      Static_Size  : constant Utf16_String_Index
        := (Shared_Empty'Size - Code_Unit_16'Size * (Shared_Empty.Size + 1))
             / Code_Unit_16'Size;
      --  Total size of all static components in Code_Unit_16 units.

      pragma Assert
       ((Shared_Empty'Size - Code_Unit_16'Size * (Shared_Empty.Size + 1))
          mod Code_Unit_16'Size = 0);
      --  Reminder must be zero to compute value correctly.

   begin
      return
        (((Static_Size + Size + Size / Growth_Factor)
             / Min_Mul_Alloc + 1) * Min_Mul_Alloc - Static_Size);
   end Aligned_Size;

   --------------
   -- Allocate --
   --------------

   function Allocate
    (Size : Matreshka.Internals.Utf16.Utf16_String_Index)
       return not null Shared_String_Access
   is
      pragma Assert (Size /= 0);

   begin
      return new Shared_String (Aligned_Size (Size) - 1);
   end Allocate;

   -------------------
   -- Can_Be_Reused --
   -------------------

   function Can_Be_Reused
    (Self : not null Shared_String_Access;
     Size : Matreshka.Internals.Utf16.Utf16_String_Index) return Boolean is
   begin
      return
        Self /= Shared_Empty'Access
          and Self.Size > Size
          and Matreshka.Internals.Atomics.Counters.Is_One
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
      pragma Assert (Self /= null);
      pragma Suppress (Access_Check);

   begin
      if Self /= Shared_Empty_Key'Access
        and then Matreshka.Internals.Atomics.Counters.Decrement
          (Self.Counter'Access)
      then
         Free (Self);
      end if;

      Self := null;
   end Dereference;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Self : in out Shared_String_Access) is
      pragma Assert (Self /= null);
      pragma Suppress (Access_Check);

   begin
      if Self /= Shared_Empty'Access
        and then Matreshka.Internals.Atomics.Counters.Decrement
                  (Self.Counter'Access)
      then
         Free (Self.Index_Map);
         Free (Self);
      end if;

      Self := null;
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
