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
      pragma Assert (Self /= null);
      pragma Suppress (Access_Check);
      --  GNAT 20100715 doesn't allow to declared Self with null exclusion, but
      --  by convention it is always not-null, thus access checks is not
      --  needed at all.

      Next_Unused : Utf16_String_Index;

   begin
      --  Assigning of the "default" value to the variable and use of simple
      --  operation in if statement helps to compiler to use conditional move
      --  instruction instead of branch instruction.

      Next_Unused := Self.Unused + 1;

      if Code > 16#FFFF# then
         Next_Unused := Self.Unused + 2;
      end if;

      if not Can_Be_Reused (Self, Next_Unused) then
         declare
            Old : not null Shared_String_Access := Self;

         begin
            Self := Allocate (Next_Unused);
            Self.Value (Old.Value'Range) := Old.Value;
            Self.Unused := Old.Unused;
            Self.Length := Old.Length;

            Dereference (Old);
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
      pragma Assert (Self /= null);
      pragma Suppress (Access_Check);
      --  GNAT 20100715 doesn't allow to declared Self with null exclusion, but
      --  by convention it is always not-null, thus access checks is not
      --  needed at all.

      Source : not null Shared_String_Access := Self;
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

         Self.Value (Source.Unused .. Size - 1) :=
           Item.Value (0 .. Item.Unused - 1);
         Self.Unused := Size;
         Self.Length := Source.Length + Item.Length;
         Free (Self.Index_Map);
         Fill_Null_Terminator (Self);

         if Self /= Source then
            Self.Value (0 .. Source.Unused - 1) :=
              Source.Value (0 .. Source.Unused - 1);
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
      pragma Assert (First < Source.Unused);
      pragma Assert (First + Size <= Source.Unused);
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

   -------------
   -- Replace --
   -------------

   procedure Replace
    (String : in out Shared_String_Access;
     First  : Matreshka.Internals.Utf16.Utf16_String_Index;
     Size   : Matreshka.Internals.Utf16.Utf16_String_Index;
     Length : Natural;
     By     : not null Shared_String_Access)
   is
      pragma Assert (First < String.Unused);
      pragma Assert (First + Size <= String.Unused);
      pragma Assert (Utf16_String_Index (Length) in (Size + 1) / 2 .. Size);

      Source      : Shared_String_Access := String;
      Destination : Shared_String_Access renames String;
      New_Length  : constant Natural := Source.Length - Length + By.Length;
      New_Size    : constant Matreshka.Internals.Utf16.Utf16_String_Index
        := Source.Unused - Size + By.Unused;

   begin
      if New_Size = 0 then
         if Destination /= Shared_Empty'Access then
            Dereference (Destination);
            Destination := Shared_Empty'Access;
         end if;

      elsif By.Unused = New_Size then
         Dereference (Source);
         Destination := By;
         Reference (Destination);

      else
         if not Can_Be_Reused (Source, New_Size) then
            Destination := Allocate (New_Size);
         end if;

         Destination.Value (First + By.Unused .. New_Size - 1) :=
           Source.Value (First + Size .. Source.Unused - 1);
         Destination.Value (First .. First + By.Unused - 1) :=
           By.Value (0 .. By.Unused - 1);

         Destination.Unused := New_Size;
         Destination.Length := New_Length;
         Fill_Null_Terminator (Destination);

         if Source /= Destination then
            if First /= 0 then
               Destination.Value (0 .. First - 1) :=
                 Source.Value (0 .. First - 1);
            end if;

            Dereference (Source);
         end if;
      end if;
   end Replace;

   -----------
   -- Reset --
   -----------

   procedure Reset (Self : in out not null Shared_String_Access) is
   begin
      if Can_Be_Reused (Self, Self.Size) then
         Free (Self.Index_Map);
         Self.Unused := 0;
         Self.Length := 0;
         Fill_Null_Terminator (Self);

      else
         Dereference (Self);
         Self := Shared_Empty'Access;
      end if;
   end Reset;

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
                       or (Source.Unused = 0 and First = 0));
      --  For convenience, it is allowied to get empty slice from empty string.
      pragma Assert (First + Size <= Source.Unused);
      pragma Assert (Utf16_String_Index (Length) in (Size + 1) / 2 .. Size);

   begin
      if Size = 0 then
         --  Requested slice is empty.

         return Shared_Empty'Access;

      elsif Size = Source.Unused then
         --  Requested slice is whole string.

         Reference (Source);

         return Source;

      else
         return Destination : constant not null Shared_String_Access
           := Allocate (Size)
         do
            Destination.Value (0 .. Size - 1) :=
              Source.Value (First .. First + Size - 1);
            Destination.Unused := Size;
            Destination.Length := Length;
            Fill_Null_Terminator (Destination);
         end return;
      end if;
   end Slice;

   -------------------------
   -- Unterminated_Append --
   -------------------------

   procedure Unterminated_Append
    (Self : in out Shared_String_Access;
     Code : Matreshka.Internals.Unicode.Code_Point)
   is
      pragma Assert (Self /= null);
      pragma Suppress (Access_Check);
      --  GNAT 20100715 doesn't allow to declared Self with null exclusion, but
      --  by convention it is always not-null, thus access checks is not
      --  needed at all.

      Next_Unused : Utf16_String_Index;

   begin
      --  Assigning of the "default" value to the variable and use of simple
      --  operation in if statement helps to compiler to use conditional move
      --  instruction instead of branch instruction.

      Next_Unused := Self.Unused + 1;

      if Code > 16#FFFF# then
         Next_Unused := Self.Unused + 2;
      end if;

      if not Can_Be_Reused (Self, Next_Unused) then
         declare
            Old : not null Shared_String_Access := Self;

         begin
            Self := Allocate (Next_Unused);
            Self.Value (Old.Value'Range) := Old.Value;
            Self.Unused := Old.Unused;
            Self.Length := Old.Length;

            Dereference (Old);
         end;

      else
         Free (Self.Index_Map);
      end if;

      Self.Length := Self.Length + 1;
      Unchecked_Store (Self.Value, Self.Unused, Code);
   end Unterminated_Append;

end Matreshka.Internals.Strings.Operations;
