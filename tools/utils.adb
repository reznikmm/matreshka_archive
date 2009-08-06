------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                              Tools Component                             --
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
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------

package body Utils is

   use Matreshka.Internals.Ucd;
   use Matreshka.Internals.Unicode;

   --------------------------
   -- Code_Point_Ada_Image --
   --------------------------

   function Code_Point_Ada_Image (Item : Code_Point) return String is
      To_Hex_Digit : constant
        array (Code_Point range 0 .. 15) of Character
          := "0123456789ABCDEF";

   begin
      return Result : String (1 .. 10) := "16#XXXXXX#" do
         Result (9) := To_Hex_Digit (Item mod 16);
         Result (8) := To_Hex_Digit ((Item / 16) mod 16);
         Result (7) := To_Hex_Digit ((Item / 256) mod 16);
         Result (6) := To_Hex_Digit ((Item / 4096) mod 16);
         Result (5) := To_Hex_Digit ((Item / 65536) mod 16);
         Result (4) := To_Hex_Digit ((Item / 1048576) mod 16);
      end return;
   end Code_Point_Ada_Image;

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

   -----------------------
   -- First_Stage_Image --
   -----------------------

   function First_Stage_Image (Item : First_Stage_Index) return String is
      To_Hex_Digit : constant
        array (First_Stage_Index range 0 .. 15) of Character
          := "0123456789ABCDEF";
      Result       : String (1 .. 4);

   begin
      Result (4) := To_Hex_Digit (Item mod 16);
      Result (3) := To_Hex_Digit ((Item / 16) mod 16);
      Result (2) := To_Hex_Digit ((Item / 256) mod 16);
      Result (1) := To_Hex_Digit ((Item / 4096) mod 16);

      return Result;
   end First_Stage_Image;

   -------------------------------
   -- Parse_Code_Point_Sequence --
   -------------------------------

   function Parse_Code_Point_Sequence (Text : String)
     return Code_Point_Sequence
   is
      First       : Positive := Text'First;
      Last        : Natural;
      Result      : Code_Point_Sequence (1 .. Text'Length / 4);
      Last_Result : Sequence_Count := 0;

      procedure Scan;

      ----------
      -- Scan --
      ----------

      procedure Scan is
      begin
         while First < Text'Last
           and then Text (First) = ' '
         loop
            First := First + 1;
         end loop;

         Last := First - 1;

         while Last < Text'Last loop
            Last := Last + 1;

            if Text (Last) not in '0' .. '9'
              and then Text (Last) not in 'A' .. 'F'
            then
               Last := Last - 1;

               exit;
            end if;
         end loop;
      end Scan;

   begin
      while First < Text'Last loop
         Scan;

         Last_Result := Last_Result + 1;
         Result (Last_Result) :=
           Code_Point'Value ("16#" & Text (First .. Last) & "#");

         First := Last + 1;
      end loop;

      return Result (1 .. Last_Result);
   end Parse_Code_Point_Sequence;

   ------------------------
   -- Second_Stage_Image --
   ------------------------

   function Second_Stage_Image (Item : Second_Stage_Index) return String is
      To_Hex_Digit : constant
        array (Second_Stage_Index range 0 .. 15) of Character
          := "0123456789ABCDEF";
      Result       : String (1 .. 2);

   begin
      Result (2) := To_Hex_Digit (Item mod 16);
      Result (1) := To_Hex_Digit ((Item / 16) mod 16);

      return Result;
   end Second_Stage_Image;

   --------------------------
   -- Sequence_Count_Image --
   --------------------------

   function Sequence_Count_Image (Item : Sequence_Count) return String is
      Aux : constant String := Sequence_Count'Image (Item);

   begin
      return Aux (Aux'First + 1 .. Aux'Last);
   end Sequence_Count_Image;

end Utils;
