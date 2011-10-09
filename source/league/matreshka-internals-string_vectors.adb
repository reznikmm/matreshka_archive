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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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

   --------------
   -- Allocate --
   --------------

   function Allocate
    (Size : Natural) return not null Shared_String_Vector_Access is
   begin
      if Size = 0 then
         return Empty_Shared_String_Vector'Access;

      else
         return new Shared_String_Vector (Size);
      end if;
   end Allocate;

   ------------
   -- Append --
   ------------

   procedure Append
    (Item   : in out Shared_String_Vector_Access;
     String : not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Detach (Item, Item.Length + 1);
      Item.Length := Item.Length + 1;
      Item.Value (Item.Length) := String;
   end Append;

   -----------------
   -- Dereference --
   -----------------

   procedure Dereference (Item : in out Shared_String_Vector_Access) is

      procedure Free is
        new Ada.Unchecked_Deallocation
             (Shared_String_Vector, Shared_String_Vector_Access);

   begin
      if Item /= Empty_Shared_String_Vector'Access
        and then Matreshka.Atomics.Counters.Decrement (Item.Counter'Access)
      then
         for J in 1 .. Item.Length loop
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
     Size : Natural)
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

      elsif Destination.Size < Size
        or else Matreshka.Atomics.Counters.Is_One (Source.Counter'Access)
      then
         Destination := Allocate (Size);

         Destination.Value (1 .. Source.Length) :=
           Source.Value (1 .. Source.Length);
         Destination.Length := Source.Length;

         --  XXX Reference/Dereference of each shared string can be avoided
         --  when shared string vector has counter equal to one. This hack
         --  can be added here (note, Dereference of shared string vector
         --  can't be used in this case.

         for J in 1 .. Destination.Length loop
            Matreshka.Internals.Strings.Reference (Destination.Value (J));
         end loop;

         Dereference (Source);
      end if;
   end Detach;

   -------------
   -- Prepend --
   -------------

   procedure Prepend
    (Self   : in out Shared_String_Vector_Access;
     Vector : not null Shared_String_Vector_Access)
   is
      New_Length : constant Natural := Self.Length + Vector.Length;

   begin
      --  Prepare object for modification.

      Detach (Self, New_Length);

      --  Construct new value.

      Self.Value (Vector.Length + 1 .. New_Length) :=
        Self.Value (1 .. Self.Length);
      Self.Value (1 .. Vector.Length) := Vector.Value (1 .. Vector.Length);
      Self.Length := New_Length;

      --  Update string's reference counters.

      for J in 1 .. Vector.Length loop
         Matreshka.Internals.Strings.Reference (Self.Value (J));
      end loop;
   end Prepend;

   ---------------
   -- Reference --
   ---------------

   procedure Reference (Item : Shared_String_Vector_Access) is
   begin
      if Item /= Empty_Shared_String_Vector'Access then
         Matreshka.Atomics.Counters.Increment (Item.Counter'Access);
      end if;
   end Reference;

end Matreshka.Internals.String_Vectors;
