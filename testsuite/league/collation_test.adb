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

with League.Strings.Debug;

with Unicode_Data_File_Parsers;
with Unicode_Data_File_Utilities;

procedure Collation_Test is

   use League.Strings;
   use League.Strings.Debug;
   use Unicode_Data_File_Utilities;

   Unidata_Directory          : constant String
     := Ada.Command_Line.Argument (1);
   CollationTest_SHIFTED_Name : constant String := "CollationTest_SHIFTED.txt";
   CollationTest_NON_IGNORABLE_Name : constant String
     := "CollationTest_NON_IGNORABLE.txt";

   type Parser is
     new Unicode_Data_File_Parsers.Unicode_Data_File_Parser with
   record
      Last_String : Universal_String;
      Last_Key    : Sort_Key;
   end record;

   overriding procedure Data
    (Self   : in out Parser;
     Fields : Unicode_Data_File_Parsers.String_Vectors.Vector);

   ----------
   -- Data --
   ----------

   overriding procedure Data
    (Self   : in out Parser;
     Fields : Unicode_Data_File_Parsers.String_Vectors.Vector)
   is
      Current_String : Universal_String;
      Current_Key    : Sort_Key;
      Skip           : Boolean := False;

   begin
      begin
         Current_String := To_Universal_String (Parse (Fields.Element (1)));

      exception
         when Constraint_Error =>
            --  Data file includes several code point not treated by the
            --  implementation as valid code points, surrogate characters for
            --  example.

            Skip := True;
      end;

      if not Skip then
         Current_Key := Current_String.Collation;

         if Self.Last_Key > Current_Key then
            Ada.Text_IO.Put_Line
             (Debug_Image (Self.Last_String)
                & " => "
                & Debug_Image (Self.Last_Key));
            Ada.Text_IO.Put_Line
             (Debug_Image (Current_String)
                & " => "
                & Debug_Image (Current_Key));

            raise Program_Error;

         elsif Self.Last_Key = Current_Key
           and then Self.Last_String.Binary_Compare (Current_String) = Greater
         then
            Ada.Text_IO.Put_Line
             (Debug_Image (Self.Last_String)
                & " => "
                & Debug_Image (Self.Last_Key));
            Ada.Text_IO.Put_Line
             (Debug_Image (Current_String)
                & " => "
                & Debug_Image (Current_Key));

            raise Program_Error;
         end if;

         Self.Last_String := Current_String;
         Self.Last_Key    := Current_Key;
      end if;
   end Data;

   Test_Non_Ignorable : Parser;
--   Test_Shifted       : Parser;

begin
   Test_Non_Ignorable.Open
    (Unidata_Directory & '/' & CollationTest_NON_IGNORABLE_Name);
   Test_Non_Ignorable.Parse;
   Test_Non_Ignorable.Close;

--   Test_Shifted.Open (Unidata_Directory & '/' & CollationTest_SHIFTED_Name);
--   Test_Shifted.Parse;
--   Test_Shifted.Close;
end Collation_Test;
