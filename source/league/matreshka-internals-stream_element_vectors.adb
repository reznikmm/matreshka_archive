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
-- Copyright © 2010-2013, Vadim Godunko <vgodunko@gmail.com>                --
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

package body Matreshka.Internals.Stream_Element_Vectors is

   Growth_Factor : constant := 32;
   --  The growth factor controls how much extra space is allocated when we
   --  have to increase the size of an allocated vector. By allocating extra
   --  space, we avoid the need to reallocate on every append, particularly
   --  important when a vector is built up by repeated append operations of
   --  small pieces. This is expressed as a factor so 32 means add 1/32 of the
   --  length of the vector as growth space.

   Min_Mul_Alloc : constant
     := Standard'Maximum_Alignment * Standard'Storage_Unit
          / Ada.Streams.Stream_Element'Size;
   --  Allocation will be done by a multiple of Min_Mul_Alloc. This causes
   --  no memory loss as most (all?) malloc implementations are obliged to
   --  align the returned memory on the maximum alignment as malloc does not
   --  know the target alignment.

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Shared_Stream_Element_Vector, Shared_Stream_Element_Vector_Access);

   function Aligned_Size
    (Size : Ada.Streams.Stream_Element_Offset)
       return Ada.Streams.Stream_Element_Offset;
   pragma Inline (Aligned_Size);
   --  Returns recommended size of the shared vector which is greater or equal
   --  to specified. Calculation take in sense alignment of the allocated
   --  memory segments to use memory effectively by Append/Insert/etc
   --  operations.

   ------------------
   -- Aligned_Size --
   ------------------

   function Aligned_Size
    (Size : Ada.Streams.Stream_Element_Offset)
       return Ada.Streams.Stream_Element_Offset
   is
      Static_Size  : constant Ada.Streams.Stream_Element_Offset
        := (Empty_Shared_Stream_Element_Vector'Size
              - Ada.Streams.Stream_Element'Size
                  * (Empty_Shared_Stream_Element_Vector.Size + 1))
              / Ada.Streams.Stream_Element'Size;
      --  Total size of all static components in Code_Unit_16 units.

      pragma Assert
       ((Empty_Shared_Stream_Element_Vector'Size
           - Ada.Streams.Stream_Element'Size
               * (Empty_Shared_Stream_Element_Vector.Size + 1))
          mod Ada.Streams.Stream_Element'Size = 0);
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
    (Size : Ada.Streams.Stream_Element_Offset)
       return not null Shared_Stream_Element_Vector_Access is
   begin
      if Size = 0 then
         return Empty_Shared_Stream_Element_Vector'Access;

      else
         return new Shared_Stream_Element_Vector (Aligned_Size (Size) - 1);
      end if;
   end Allocate;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Item : in out Shared_Stream_Element_Vector_Access) is
   begin
      if Item /= Empty_Shared_Stream_Element_Vector'Access
        and then Matreshka.Atomics.Counters.Decrement (Item.Counter)
      then
         Free (Item);

      else
         Item := null;
      end if;
   end Dereference;

   ---------------
   -- Fill_Tail --
   ---------------

   procedure Fill_Tail (Item : not null Shared_Stream_Element_Vector_Access) is
      pragma Assert (Ada.Streams.Stream_Element'Size = 8);

      Index : Ada.Streams.Stream_Element_Offset := Item.Length;

   begin
      while Index mod 4 /= 0 loop
         Item.Value (Index) := 0;
         Index := Index + 1;
      end loop;
   end Fill_Tail;

   ----------
   -- Hash --
   ----------

   function Hash
    (Item : not null Shared_Stream_Element_Vector_Access) return League.Hash_Type
   is
      use type League.Hash_Type;

      M      : constant League.Hash_Type := 16#5BD1E995#;
      H      : League.Hash_Type := League.Hash_Type (Item.Length);
      K      : league.Hash_Type;
      Index  : Ada.Streams.Stream_Element_Offset := 0;
      Length : Ada.Streams.Stream_Element_Offset := (Item.Length + 3) / 4;
      Data   :
        array (Ada.Streams.Stream_Element_Offset range 0 .. Length - 1)
          of League.Hash_Type;
      for Data'Address use Item.Value'Address;
      pragma Import (Ada, Data);

   begin
      while Index < Length loop
         K := League.Hash_Type (Data (Index)) * M;
         K := K xor (K / 16#1000000#);
         K := K * M;

         H := H * M;
         H := H xor K;
         Index := Index + 1;
      end loop;

      H := H xor (H / 16#2000#);
      H := H * M;
      H := H xor (H / 16#8000#);

      return H;
   end Hash;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Item : Shared_Stream_Element_Vector_Access) is
   begin
      if Item /= Empty_Shared_Stream_Element_Vector'Access then
         Matreshka.Atomics.Counters.Increment (Item.Counter);
      end if;
   end Reference;

end Matreshka.Internals.Stream_Element_Vectors;
