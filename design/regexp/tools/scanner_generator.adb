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
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------
with Ada.Integer_Wide_Text_IO;
with Ada.Strings.Wide_Unbounded.Wide_Text_IO;
with Ada.Wide_Text_IO;

with Scanner_Extractor;

package body Scanner_Generator is

   use Ada.Integer_Wide_Text_IO;
   use Ada.Strings.Wide_Unbounded;
   use Ada.Strings.Wide_Unbounded.Wide_Text_IO;
   use Ada.Wide_Text_IO;
   use Scanner_Extractor;

   Scanner_In_File_Name     : constant String
     := "matreshka-internals-regexps-compiler-scanner.adb.in";
   Scanner_File_Name        : constant String
     := "matreshka-internals-regexps-compiler-scanner.adb";
   Scanner_Tables_File_Name : constant String
     := "matreshka-internals-regexps-compiler-scanner-tables.ads";

   function Hex_4_Image (Item : Natural) return Wide_String;

   function Hex_4_Image (Item : Natural) return Wide_String is
      Hex : constant array (Natural range 0 .. 15) of Wide_Character :=
        "0123456789ABCDEF";
      Aux : Wide_String (1 .. 4);

   begin
      Aux (1) := Hex (Item / 2 ** 12);
      Aux (2) := Hex ((Item / 2 ** 8) mod 16);
      Aux (3) := Hex ((Item / 2 ** 4) mod 16);
      Aux (4) := Hex (Item mod 16);

      return Aux;
   end Hex_4_Image;

   ---------------------------
   -- Generate_Scanner_Code --
   ---------------------------

   procedure Generate_Scanner_Code is
      Input  : File_Type;
      Output : File_Type;
      Buffer : Wide_String (1 .. 1024);
      Last   : Natural;

   begin
      Open (Input, In_File, Scanner_In_File_Name, "wcem=8");
      Create (Output, Out_File, Scanner_File_Name, "wcem=8");

      while not End_Of_File (Input) loop
         Get_Line (Input, Buffer, Last);

         if Buffer (1 .. Last) = "%%" then
            for J in 1 .. Natural (Choices.Length) loop
               declare
                  Element : constant Choice_Information := Choices.Element (J);

               begin
                  if not Element.Is_Empty then
                     New_Line (Output);
                     Put (Output, "            when ");
                     Put (Output, Element.Choice, 0);
                     Put_Line (Output, " =>");

                     for J in 1 .. Natural (Element.Text.Length) loop
                        Put (Output, "            ");
                        Put_Line (Output, Element.Text.Element (J));
                     end loop;
                  end if;
               end;
            end loop;

         else
            Put_Line (Output, Buffer (1 .. Last));
         end if;
      end loop;

      Close (Output);
      Close (Input);
   end Generate_Scanner_Code;

   -----------------------------
   -- Generate_Scanner_Tables --
   -----------------------------

   procedure Generate_Scanner_Tables is
      Output  : File_Type;
      Maximum : Positive := 1;

      procedure Generate_Array
       (Name   : Wide_String;
        Values : Integer_Vectors.Vector);

      procedure Generate_Plane
       (Number : Natural;
        Values : Integer_Vectors.Vector);

      --------------------
      -- Generate_Array --
      --------------------

      procedure Generate_Array
       (Name   : Wide_String;
        Values : Integer_Vectors.Vector) is
      begin
         New_Line (Output);

         Put (Output, "   ");
         Put (Output, Name);
         Put (Output, " : constant array (0 .. ");
         Put (Output, Integer (Values.Length) - 1, 0);
         Put_Line (Output, ") of Integer :=");

         for J in 0 .. Natural (Values.Length) - 1 loop
            if J = 0 then
               Put (Output, "    (");

            elsif J mod 8 = 0 then
               Put_Line (Output, ",");
               Put (Output, "     ");

            else
               Put (Output, ",");
            end if;

            Put (Output, Values.Element (J), 5);
         end loop;

         Put_Line (Output, ");");
      end Generate_Array;

      --------------------
      -- Generate_Plane --
      --------------------

      procedure Generate_Plane
       (Number : Natural;
        Values : Integer_Vectors.Vector) is
      begin
         New_Line (Output);

         Put (Output, "   YY_EC_");
         Put (Output, Hex_4_Image (Number));
         Put_Line (Output, " : aliased constant YY_Secondary_Array :=");

         for J in 0 .. Natural (Values.Length) - 1 loop
            if J = 0 then
               Put (Output, "    (");

            elsif J mod 8 = 0 then
               Put_Line (Output, ",");
               Put (Output, "     ");

            else
               Put (Output, ",");
            end if;

            Put (Output, Values.Element (J), 5);
         end loop;

         Put_Line (Output, ");");
      end Generate_Plane;

   begin
      Create (Output, Out_File, Scanner_Tables_File_Name, "wcem=8");

      Put_Line (Output, "with Matreshka.Internals.Unicode;");
      New_Line (Output);
      Put_Line (Output, "private package Matreshka.Internals.Regexps.Compiler.Scanner.Tables is");

      New_Line (Output);
      Put_Line (Output, "   subtype YY_Secondary_Index is");
      Put_Line (Output, "     Matreshka.Internals.Unicode.Code_Point range 0 .. 16#FF#;");
      Put_Line (Output, "   subtype YY_Primary_Index is");
      Put_Line (Output, "     Matreshka.Internals.Unicode.Code_Point range 0 .. 16#10FF#;");
      Put_Line (Output, "   type YY_Secondary_Array is array (YY_Secondary_Index) of Integer;");
      Put_Line (Output, "   type YY_Secondary_Array_Access is access constant YY_Secondary_Array;");

      New_Line (Output);
      Put (Output, "   YY_End_Of_Buffer  : constant := ");
      Put (Output, YY_End_Of_Buffer, 0);
      Put_Line (Output, ";");
      Put (Output, "   YY_Jam_State      : constant := ");
      Put (Output, YY_Jam_State, 0);
      Put_Line (Output, ";");
      Put (Output, "   YY_First_Template : constant := ");
      Put (Output, YY_First_Template, 0);
      Put_Line (Output, ";");

      for J in 1 .. Natural (State_Constants.Length) loop
         Maximum :=
           Natural'Max (Length (State_Constants.Element (J).Name), Maximum);
      end loop;

      New_Line (Output);

      for J in 1 .. Natural (State_Constants.Length) loop
         Put (Output, "   ");
         Put (Output, State_Constants.Element (J).Name);
         Set_Col (Output, Ada.Wide_Text_IO.Count (Maximum + 4));
         Put (Output, " : constant := ");
         Put (Output, State_Constants.Element (J).Value, 0);
         Put_Line (Output, ";");
      end loop;

      --  Generate arrays

      Generate_Array ("YY_Accept", YY_Accept);
      Generate_Array ("YY_Meta", YY_Meta);
      Generate_Array ("YY_Base", YY_Base);
      Generate_Array ("YY_Def", YY_Def);
      Generate_Array ("YY_Nxt", YY_Nxt);
      Generate_Array ("YY_Chk", YY_Chk);

      --  Generate planes

      for J in 1 .. Natural (YY_EC_Planes.Length) loop
         Generate_Plane
          (YY_EC_Planes.Element (J).Number, YY_EC_Planes.Element (J).Values);
      end loop;

      New_Line (Output);
      Put_Line (Output, "   YY_EC_Base : constant");
      Put_Line (Output, "     array (YY_Primary_Index) of YY_Secondary_Array_Access :=");
      Put (Output, "     (");

      for J in 1 .. Natural (YY_EC_Base.Length) loop
         Put (Output, "16#");
         Put (Output, Hex_4_Image (YY_EC_Base.Element (J).Number));
         Put (Output, "# => YY_EC_");
         Put (Output, Hex_4_Image (YY_EC_Base.Element (J).Reference));
         Put (Output, "'Access,");

         if J mod 2 = 0 then
            New_Line (Output);
            Put (Output, "      ");

         else
            Put (Output, " ");
         end if;
      end loop;

      Put (Output, "others   => YY_EC_");
      Put (Output, Hex_4_Image (YY_EC_Base_Others));
      Put_Line (Output, "'Access);");

      New_Line (Output);
      Put_Line (Output, "end Matreshka.Internals.Regexps.Compiler.Scanner.Tables;");

      Close (Output);
   end Generate_Scanner_Tables;

end Scanner_Generator;
