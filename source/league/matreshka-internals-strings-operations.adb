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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body Matreshka.Internals.Strings.Operations is

   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;

   procedure Free is
     new Ada.Unchecked_Deallocation (Index_Map, Index_Map_Access);

   ------------
   -- Append --
   ------------

   procedure Append
    (Self : in out Shared_String_Access;
     Code : Matreshka.Internals.Unicode.Code_Point)
   is
      Next_Unused : Utf16_String_Index;

   begin
      if Code <= 16#FFFF# then
         Next_Unused := Self.Unused + 1;

      else
         Next_Unused := Self.Unused + 2;
      end if;

      if not Can_Be_Reused (Self, Next_Unused) then
         declare
            Aux : constant not null Shared_String_Access
              := Allocate (Next_Unused);

         begin
            Aux.Value (Self.Value'Range) := Self.Value;
            Aux.Unused := Self.Unused;
            Aux.Length := Self.Length;

            Dereference (Self);
            Self := Aux;
         end;

      else
         Free (Self.Index_Map);
      end if;

      Self.Length := Self.Length + 1;
      Unchecked_Store (Self.Value, Self.Unused, Code);
      Fill_Null_Terminator (Self);
   end Append;

   ------------
   -- Append --
   ------------

   procedure Append
    (Self : in out Shared_String_Access;
     Item : Shared_String_Access)
   is
      Source : Shared_String_Access := Self;
      Size   : constant Utf16_String_Index := Source.Unused + Item.Unused;

   begin
      if Size = 0 then
         if Self /= Shared_Empty'Access then
            Dereference (Self);
            Self := Shared_Empty'Access;
         end if;

      elsif Item.Unused = 0 then
         null;

      elsif Self.Unused = 0 then
         Dereference (Self);
         Self := Item;
         Reference (Self);

      else
         if not Can_Be_Reused (Self, Size) then
            Self := Allocate (Size);
         end if;

         if Self /= Source then
            Self.Value (0 .. Source.Unused - 1) :=
              Source.Value (0 .. Source.Unused - 1);
         end if;

         Self.Value (Source.Unused .. Size - 1) :=
           Item.Value (0 .. Item.Unused - 1);
         Self.Unused := Size;
         Self.Length := Source.Length + Item.Length;
         Free (Self.Index_Map);
         Fill_Null_Terminator (Self);

         if Self /= Source then
            Dereference (Source);
         end if;
      end if;
   end Append;

   ----------------
   -- Copy_Slice --
   ----------------

   procedure Copy_Slice
    (Self   : in out Shared_String_Access;
     Source : not null Shared_String_Access;
     First  : Matreshka.Internals.Utf16.Utf16_String_Index;
     Size   : Matreshka.Internals.Utf16.Utf16_String_Index;
     Length : Natural)
   is
      pragma Assert (First < Source.Unused
                       and then First + Size <= Source.Unused);
      pragma Assert (Utf16_String_Index (Length) in (Size + 1) / 2 .. Size);

   begin
      if Size = 0 then
         if Self /= Shared_Empty'Access then
            Dereference (Self);
            Self := Shared_Empty'Access;
         end if;

      else
         if not Can_Be_Reused (Self, Size) then
            Dereference (Self);
            Self := Allocate (Size);

         else
            Free (Self.Index_Map);
         end if;

         Self.Value (0 .. Size - 1) :=
           Source.Value (First .. First + Size - 1);
         Self.Unused := Size;
         Self.Length := Length;
         Fill_Null_Terminator (Self);
      end if;
   end Copy_Slice;

--   -------------
--   -- Replace --
--   -------------
--
--   procedure Replace
--    (Self   : in out Shared_String_Access;
--     Low    : Positive;
--     High   : Natural;
--     Length : Natural;
--     By     : not null Shared_String_Access)
--   is
--      pragma Assert (Low <= Self.Last + 1);
--      pragma Assert (High < Low or else High <= Self.Last);
--      pragma Assert (Length in (High - Low + 2) / 2 .. High - Low + 1);
--
--      Source : Shared_String_Access := Self;
--      Size   : constant Natural
--        := Source.Last - Natural'Max (High - Low + 1, 0) + By.Last;
--
--   begin
--      if Size = 0 then
--         if Self /= Shared_Empty'Access then
--            Dereference (Self);
--            Self := Shared_Empty'Access;
--         end if;
--
--      elsif By.Last = Size then
--         Dereference (Self);
--         Self := By;
--         Reference (Self);
--
--      else
--         if Size + 1 > Self.Size
--           or else not Matreshka.Internals.Atomics.Counters.Is_One
--                        (Self.Counter'Access)
--         then
--            Self := Allocate (Size);
--         end if;
--
--         if High < Low then
--            Self.Value (Low + By.Last .. Size) :=
--              Source.Value (Low .. Source.Last);
--            Self.Value (Low .. Low + By.Last - 1) := By.Value (1 .. By.Last);
--
--         else
--            Self.Value (Low + By.Last .. Size) :=
--              Source.Value (High + 1 .. Source.Last);
--            Self.Value (Low .. Low + By.Last - 1) := By.Value (1 .. By.Last);
--         end if;
--
--         if Self /= Source then
--            Self.Value (1 .. Low - 1) := Source.Value (1 .. Low - 1);
--         end if;
--
--         Self.Last := Size;
--         Self.Length := Source.Length - Length + By.Length;
--         Fill_Null_Terminator (Self);
--
--         if Self /= Source then
--            Dereference (Source);
--         end if;
--      end if;
--   end Replace;

   -----------
   -- Slice --
   -----------

   function Slice
    (Source : not null Shared_String_Access;
     First  : Matreshka.Internals.Utf16.Utf16_String_Index;
     Size   : Matreshka.Internals.Utf16.Utf16_String_Index;
     Length : Natural)
       return not null Shared_String_Access
   is
      pragma Assert (First < Source.Unused
                       and then First + Size <= Source.Unused);
      pragma Assert (Utf16_String_Index (Length) in (Size + 1) / 2 .. Size);

   begin
      if Size = 0 then
         return Shared_Empty'Access;
      end if;

      return Destination : constant not null Shared_String_Access
        := Allocate (Size)
      do
         Destination.Value (0 .. Size - 1) :=
           Source.Value (First .. First + Size - 1);
         Destination.Unused := Size;
         Destination.Length := Length;
         Fill_Null_Terminator (Destination);
      end return;
   end Slice;

end Matreshka.Internals.Strings.Operations;
