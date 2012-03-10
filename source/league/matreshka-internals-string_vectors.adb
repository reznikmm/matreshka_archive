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
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
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

package body Matreshka.Internals.String_Vectors is

   pragma Assert
    (Standard'Address_Size
       = Matreshka.Internals.Strings.Shared_String_Access'Size);
   --  Size of System.Address must be equal to size of Shared_String_Access to
   --  compite constants correctly.

   Growth_Factor : constant := 32;
   --  The growth factor controls how much extra space is allocated when we
   --  have to increase the size of an allocated shared vector. By allocating
   --  extra space, we avoid the need to reallocate on every append,
   --  particularly important when a string is built up by repeated append
   --  operations of small pieces. This is expressed as a factor so 32 means
   --  add 1/32 of the length of the string as growth space.

   Min_Mul_Alloc : constant
     := Standard'Maximum_Alignment * Standard'Storage_Unit
          / Standard'Address_Size;
   --  Allocation will be done by a multiple of Min_Mul_Alloc. This causes no
   --  memory loss as most (all?) malloc implementations are obliged to align
   --  the returned memory on the maximum alignment as malloc does not know the
   --  target alignment.

   function Aligned_Size
    (Size : String_Vector_Index) return String_Vector_Index;
   pragma Inline (Aligned_Size);
   --  Returns recommended size of the shared vector which is greater or equal
   --  to specified. Calculation take in sense alignment of the allocated
   --  memory segments to use memory effectively by Append/Insert/etc
   --  operations.

   ------------------
   -- Aligned_Size --
   ------------------

   function Aligned_Size
    (Size : String_Vector_Index) return String_Vector_Index
   is
      use Matreshka.Internals.Strings;

      Static_Size : constant String_Vector_Index
        := (Empty_Shared_String_Vector'Size
              - Shared_String_Access'Size
                  * (Empty_Shared_String_Vector.Last + 1))
             / Shared_String_Access'Size;
      --  Total size of all static components in Shared_String_Access'Size
      --  units.

      pragma Assert
       ((Empty_Shared_String_Vector'Size
           - Shared_String_Access'Size * (Empty_Shared_String_Vector.Last + 1))
          mod Shared_String_Access'Size = 0);
      --  Reminder must be zero to compute value correctly.

   begin
      return
        ((Static_Size + Size + Size / Growth_Factor) / Min_Mul_Alloc + 1)
           * Min_Mul_Alloc - Static_Size;
   end Aligned_Size;

   procedure Unsafe_Dereference (Item : in out Shared_String_Vector_Access);
   --  Dereference specified object and release memory when necessary, but
   --  doesn't dereference contained shared strings.

   procedure Free is
     new Ada.Unchecked_Deallocation
          (Shared_String_Vector, Shared_String_Vector_Access);
   --  Deallocate shared string vector. Should not be used anywhere except
   --  Dereference and Unsafe_Dereference subprograms.

   --------------
   -- Allocate --
   --------------

   function Allocate
    (Size : String_Vector_Index) return not null Shared_String_Vector_Access
   is
      pragma Assert (Size /= 0);

   begin
      return new Shared_String_Vector (Aligned_Size (Size));
   end Allocate;

   ------------
   -- Append --
   ------------

   procedure Append
    (Item   : in out Shared_String_Vector_Access;
     String : not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Detach (Item, Item.Unused + 1);
      Item.Value (Item.Unused) := String;
      Item.Unused := Item.Unused + 1;
   end Append;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Item : in out Shared_String_Vector_Access) is
   begin
      if Item /= Empty_Shared_String_Vector'Access
        and then Matreshka.Atomics.Counters.Decrement (Item.Counter)
      then
         for J in 0 .. Item.Unused - 1 loop
            Matreshka.Internals.Strings.Dereference (Item.Value (J));
         end loop;

         Free (Item);

      else
         Item := null;
      end if;
   end Dereference;

   ------------
   -- Detach --
   ------------

   procedure Detach
    (Item : in out Shared_String_Vector_Access;
     Size : String_Vector_Index)
   is
      Source      : Shared_String_Vector_Access := Item;
      Destination : Shared_String_Vector_Access renames Item;

   begin
      --  Size of the requested vector is zero, return empty shared string
      --  vector.

      if Size = 0 then
         if Source /= Empty_Shared_String_Vector'Access then
            Dereference (Source);
            Destination := Empty_Shared_String_Vector'Access;
         end if;

      --  Source shared string vector is empty, allocate new one.

      elsif Source = Empty_Shared_String_Vector'Access then
         Destination := Allocate (Size);

      --  Source shared string vector is not enought to store specified number
      --  of items, or used somewhere; allocate new one and copy existing data.

      elsif Destination.Last < Size
        or else not Matreshka.Atomics.Counters.Is_One (Source.Counter)
      then
         Destination := Allocate (Size);

         Destination.Value (0 .. Source.Unused - 1) :=
           Source.Value (0 .. Source.Unused - 1);
         Destination.Unused := Source.Unused;

         if not Matreshka.Atomics.Counters.Is_One (Source.Counter) then
            --  Increment reference counter for all copied shared strings.

            for J in 0 .. Destination.Unused - 1 loop
               Matreshka.Internals.Strings.Reference (Destination.Value (J));
            end loop;

            Dereference (Source);

         else
            --  There is only one reference to source object, change of
            --  reference counter of shared strings can be avoided.

            Unsafe_Dereference (Source);
         end if;
      end if;
   end Detach;

   -------------
   -- Prepend --
   -------------

   procedure Prepend
    (Self   : in out Shared_String_Vector_Access;
     Vector : not null Shared_String_Vector_Access)
   is
      New_Length : constant String_Vector_Index
        := Self.Unused + Vector.Unused;

   begin
      if Vector = Empty_Shared_String_Vector'Access then
         --  Empty vector is prepended, nothing to do.

         null;

      elsif Self = Empty_Shared_String_Vector'Access then
         --  Self is empty vector, replace it by prepended vector.

         Self := Vector;
         Reference (Self);

      else
         --  Prepare object for modification.

         Detach (Self, New_Length);

         --  Construct new value.

         Self.Value (Vector.Unused .. New_Length - 1) :=
           Self.Value (0 .. Self.Unused - 1);
         Self.Value (0 .. Vector.Unused - 1) :=
           Vector.Value (0 .. Vector.Unused - 1);
         Self.Unused := New_Length;

         --  Update string's reference counters.

         for J in 0 .. Vector.Unused - 1 loop
            Matreshka.Internals.Strings.Reference (Self.Value (J));
         end loop;
      end if;
   end Prepend;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Item : Shared_String_Vector_Access) is
   begin
      if Item /= Empty_Shared_String_Vector'Access then
         Matreshka.Atomics.Counters.Increment (Item.Counter);
      end if;
   end Reference;

   -------------
   -- Replace --
   -------------

   procedure Replace
    (Self  : in out Shared_String_Vector_Access;
     Index : String_Vector_Index;
     Item  : not null Matreshka.Internals.Strings.Shared_String_Access)
   is
      use type Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Detach (Self, Self.Unused);

      if Self.Value (Index) /= Item then
         Matreshka.Internals.Strings.Dereference (Self.Value (Index));
         Self.Value (Index) := Item;
         Matreshka.Internals.Strings.Reference (Self.Value (Index));
      end if;
   end Replace;

   ------------------------
   -- Unsafe_Dereference --
   ------------------------

   procedure Unsafe_Dereference (Item : in out Shared_String_Vector_Access) is
   begin
      if Item /= Empty_Shared_String_Vector'Access
        and then Matreshka.Atomics.Counters.Decrement (Item.Counter)
      then
         Free (Item);

      else
         Item := null;
      end if;
   end Unsafe_Dereference;

end Matreshka.Internals.String_Vectors;
