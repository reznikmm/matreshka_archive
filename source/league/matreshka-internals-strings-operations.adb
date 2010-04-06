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
-- Copyright © 2010 Vadim Godunko <vgodunko@gmail.com>                      --
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

      if Next_Unused >= Self.Size then
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
      end if;

      Self.Length := Self.Length + 1;
      Unchecked_Store (Self.Value, Self.Unused, Code);
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
         if Size > Self.Size
           or else not Matreshka.Internals.Atomics.Counters.Is_One
                        (Self.Counter'Access)
         then
            Self := Allocate (Size + Self.Unused / Growth_Factor - 1);
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
