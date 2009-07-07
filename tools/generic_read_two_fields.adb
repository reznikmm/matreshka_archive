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
with Ada.Text_IO;

procedure Generic_Read_Two_Fields
 (File_Name : String;
  Process   : not null access procedure
   (Code : Unicode_Types.Code_Point; Value : Value_Type))
is
   File            : Ada.Text_IO.File_Type;
   Line            : String (1 .. 1024);
   Last            : Natural;
   Field_First     : Positive;
   Field_Last      : Positive;
   Field_Separator : Positive;
   First_Code      : Unicode_Types.Code_Point;
   Last_Code       : Unicode_Types.Code_Point;

   procedure Scan;

   procedure Parse_Code_Point_Range
    (Text       : String;
     First_Code : out Unicode_Types.Code_Point;
     Last_Code  : out Unicode_Types.Code_Point);

   ----------------------------
   -- Parse_Code_Point_Range --
   ----------------------------

   procedure Parse_Code_Point_Range
    (Text       : String;
     First_Code : out Unicode_Types.Code_Point;
     Last_Code  : out Unicode_Types.Code_Point)
   is
      First : Positive := Text'First;
      Last  : Natural;

      procedure Scan;

      ----------
      -- Scan --
      ----------

      procedure Scan is
      begin
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
      Scan;
      First_Code :=
        Unicode_Types.Code_Point'Value ("16#" & Text (First .. Last) & "#");
      Last_Code := First_Code;

      First := Last + 1;

      if First < Text'Last and then Text (First .. First + 1) = ".." then
         First := First + 2;
         Scan;
         Last_Code :=
           Unicode_Types.Code_Point'Value ("16#" & Text (First .. Last) & "#");
      end if;
   end Parse_Code_Point_Range;

   ----------
   -- Scan --
   ----------

   procedure Scan is
   begin
      Field_Last := Field_First;

      while Field_Last < Last loop
         Field_Last := Field_Last + 1;

         if Line (Field_Last) = ';' then
            Field_Last := Field_Last - 1;

            exit;
         end if;
      end loop;

      Field_Separator := Field_Last + 1;

      while Line (Field_First) = ' ' loop
         Field_First := Field_First + 1;
      end loop;

      while Line (Field_Last) = ' ' loop
         Field_Last := Field_Last - 1;
      end loop;
   end Scan;

begin
   Ada.Text_IO.Open (File, Ada.Text_IO.In_File, File_Name);

   while not Ada.Text_IO.End_Of_File (File) loop
      Ada.Text_IO.Get_Line (File, Line, Last);

      if Last /= 0 and then Line (Line'First) /= '#' then
         --  Drop comment

         for J in Line'First .. Last loop
            if Line (J) = '#' then
               Last := J - 1;

               exit;
            end if;
         end loop;

         --  Parse first field - code point range

         Field_First := Line'First;
         Scan;

         Parse_Code_Point_Range
          (Line (Field_First .. Field_Last), First_Code, Last_Code);

         --  Parse second field - property's value

         Field_First := Field_Separator + 1;
         Scan;

         --  Process all code points in range

         for J in First_Code .. Last_Code loop
            Process (J, Value (Line (Field_First .. Field_Last)));
         end loop;
      end if;
   end loop;

   Ada.Text_IO.Close (File);
end Generic_Read_Two_Fields;
