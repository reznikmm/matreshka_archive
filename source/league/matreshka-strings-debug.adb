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
with Ada.Strings.Unbounded;

with Matreshka.Internals.Ucd;
with Matreshka.Internals.Utf16;

package body Matreshka.Strings.Debug is

   use Ada.Strings.Unbounded;
   use Matreshka.Internals.Strings;
   use Matreshka.Internals.Ucd;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;

   function Code_Point_Image (Item : Code_Point) return String;

   function Collation_Weight_Image (Item : Collation_Weight) return String;

   ----------------------
   -- Code_Point_Image --
   ----------------------

   function Code_Point_Image (Item : Code_Point) return String is
      To_Hex_Digit : constant
        array (Code_Point range 0 .. 15) of Character
          := "0123456789ABCDEF";

   begin
      if Item <= 16#FFFF# then
         return Result : String (1 .. 4) do
            Result (4) := To_Hex_Digit (Item mod 16);
            Result (3) := To_Hex_Digit ((Item / 16) mod 16);
            Result (2) := To_Hex_Digit ((Item / 256) mod 16);
            Result (1) := To_Hex_Digit ((Item / 4096) mod 16);
         end return;

      else
         return Result : String (1 .. 6) do
            Result (6) := To_Hex_Digit (Item mod 16);
            Result (5) := To_Hex_Digit ((Item / 16) mod 16);
            Result (4) := To_Hex_Digit ((Item / 256) mod 16);
            Result (3) := To_Hex_Digit ((Item / 4096) mod 16);
            Result (2) := To_Hex_Digit ((Item / 65536) mod 16);
            Result (1) := To_Hex_Digit ((Item / 1048576) mod 16);
         end return;
      end if;
   end Code_Point_Image;

   ----------------------------
   -- Collation_Weight_Image --
   ----------------------------

   function Collation_Weight_Image (Item : Collation_Weight) return String is
      To_Hex_Digit : constant
        array (Collation_Weight range 0 .. 15) of Character
          := "0123456789ABCDEF";
      Result       : String (1 .. 4);

   begin
      Result (4) := To_Hex_Digit (Item mod 16);
      Result (3) := To_Hex_Digit ((Item / 16) mod 16);
      Result (2) := To_Hex_Digit ((Item / 256) mod 16);
      Result (1) := To_Hex_Digit ((Item / 4096) mod 16);

      return Result;
   end Collation_Weight_Image;

   -----------------
   -- Debug_Image --
   -----------------

   function Debug_Image (Item : Sort_Key) return String is
      D      : constant Internal_Sort_Key_Access := Item.Data;
      Result : Unbounded_String;

   begin
      Append (Result, '[');

      for J in 1 .. D.Last loop
         if J /= 1 then
            Append (Result, ' ');
         end if;

         if D.Data (J) = 0 then
            Append (Result, "|");

         else
            Append (Result, Collation_Weight_Image (D.Data (J)));
         end if;
      end loop;

      Append (Result, ']');

      return To_String (Result);
   end Debug_Image;

   -----------------
   -- Debug_Image --
   -----------------

   function Debug_Image (Item : Universal_String) return String is
      D      : constant Internal_String_Access := Item.Data;
      Result : Unbounded_String;
      Index  : Positive := 1;
      Code   : Code_Point;

   begin
      while Index <= D.Last loop
         if Index /= 1 then
            Append (Result, ' ');
         end if;

         Unchecked_Next (D.Value, Index, Code);
         Append (Result, Code_Point_Image (Code));
      end loop;

      return To_String (Result);
   end Debug_Image;

end Matreshka.Strings.Debug;
