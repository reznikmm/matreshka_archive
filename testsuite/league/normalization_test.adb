------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                            Testsuite Component                           --
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
with Ada.Command_Line;
with Ada.Text_IO;

with Matreshka.Strings;

procedure Normalization_Test is

   use Matreshka.Strings;

   Unidata_Directory      : constant String
     := Ada.Command_Line.Argument (1);
   NormalizationTest_Name : constant String := "NormalizationTest.txt";

   function Parse (Text : String) return Wide_Wide_String;
   --  Parse string into sequence of code points.

   procedure Check
    (C1 : Universal_String;
     C2 : Universal_String;
     C3 : Universal_String;
     C4 : Universal_String;
     C5 : Universal_String);
   --  Do check.

   -----------
   -- Check --
   -----------

   procedure Check
    (C1 : Universal_String;
     C2 : Universal_String;
     C3 : Universal_String;
     C4 : Universal_String;
     C5 : Universal_String)
   is
   begin
      -- NFD
      --   c3 ==  NFD(c1) ==  NFD(c2) ==  NFD(c3)
      --   c5 ==  NFD(c4) ==  NFD(c5)

      if C3.To_Wide_Wide_String /= C1.To_NFD.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C3.To_Wide_Wide_String /= C2.To_NFD.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C3.To_Wide_Wide_String /= C3.To_NFD.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C5.To_Wide_Wide_String /= C4.To_NFD.To_Wide_Wide_String then
         raise Program_Error;
      end if;

      if C5.To_Wide_Wide_String /= C5.To_NFD.To_Wide_Wide_String then
         raise Program_Error;
      end if;
   end Check;

   -----------
   -- Parse --
   -----------

   function Parse (Text : String) return Wide_Wide_String is
      First       : Positive := Text'First;
      Last        : Natural;
      Result      : Wide_Wide_String (1 .. Text'Length / 4);
      Last_Result : Natural := 0;

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
           Wide_Wide_Character'Val
            (Integer'Value ("16#" & Text (First .. Last) & "#"));

         First := Last + 1;
      end loop;

      return Result (1 .. Last_Result);
   end Parse;

   C1          : Universal_String;
   C2          : Universal_String;
   C3          : Universal_String;
   C4          : Universal_String;
   C5          : Universal_String;
   File        : Ada.Text_IO.File_Type;
   Line        : String (1 .. 1024);
   Last        : Natural;
   Field_First : Positive;
   Field_Last  : Natural;

begin
   Ada.Text_IO.Open
    (File,
     Ada.Text_IO.In_File,
     Unidata_Directory & '/' & NormalizationTest_Name);

   while not Ada.Text_IO.End_Of_File (File) loop
      Ada.Text_IO.Get_Line (File, Line, Last);

      if Last /= 0
        and then Line (1) /= '#'
      then
         if Line (1) = '@' then
            null;

         else
            Field_First := 1;
            Field_Last := 1;

            while Line (Field_Last + 1) /= ';' loop
               Field_Last := Field_Last + 1;
            end loop;

            C1 :=
              To_Universal_String
               (Parse (Line (Field_First .. Field_Last)));

            Field_First := Field_Last + 2;
            Field_Last := Field_First;

            while Line (Field_Last + 1) /= ';' loop
               Field_Last := Field_Last + 1;
            end loop;

            C2 :=
              To_Universal_String
               (Parse (Line (Field_First .. Field_Last)));

            Field_First := Field_Last + 2;
            Field_Last := Field_First;

            while Line (Field_Last + 1) /= ';' loop
               Field_Last := Field_Last + 1;
            end loop;

            C3 :=
              To_Universal_String
               (Parse (Line (Field_First .. Field_Last)));

            Field_First := Field_Last + 2;
            Field_Last := Field_First;

            while Line (Field_Last + 1) /= ';' loop
               Field_Last := Field_Last + 1;
            end loop;

            C4 :=
              To_Universal_String
               (Parse (Line (Field_First .. Field_Last)));

            Field_First := Field_Last + 2;
            Field_Last := Field_First;

            while Line (Field_Last + 1) /= ';' loop
               Field_Last := Field_Last + 1;
            end loop;

            C5 :=
              To_Universal_String
               (Parse (Line (Field_First .. Field_Last)));

            Check (C1, C2, C3, C4, C5);
         end if;
      end if;
   end loop;

   Ada.Text_IO.Close (File);
end Normalization_Test;
