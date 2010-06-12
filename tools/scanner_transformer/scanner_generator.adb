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
with Ada.Command_Line;
with Ada.Directories;
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

   function Scanner_Template_File_Name return String;

   function Scanner_File_Name return String;

   function Scanner_Tables_File_Name return String;

   function Hex_4_Image (Item : Natural) return Wide_String;

   -----------------------
   -- Scanner_File_Name --
   -----------------------

   function Scanner_File_Name return String is
      Template : constant String
        := Ada.Directories.Simple_Name (Scanner_Template_File_Name);

   begin
      return Template (Template'First .. Template'Last - 3);
   end Scanner_File_Name;

   ------------------------------
   -- Scanner_Tables_File_Name --
   ------------------------------

   function Scanner_Tables_File_Name return String is
   begin
      return Ada.Directories.Base_Name (Scanner_File_Name) & "-tables.ads";
   end Scanner_Tables_File_Name;

   --------------------------------
   -- Scanner_Template_File_Name --
   --------------------------------

   function Scanner_Template_File_Name return String is
   begin
      return Ada.Command_Line.Argument (3);
   end Scanner_Template_File_Name;

   -----------------
   -- Hex_4_Image --
   -----------------

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
      Open (Input, In_File, Scanner_Template_File_Name, "wcem=8");
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

      Put_Line (Output, "------------------------------------------------------------------------------");
      Put_Line (Output, "--                                                                          --");
      Put_Line (Output, "--                            Matreshka Project                             --");
      Put_Line (Output, "--                                                                          --");
      Put_Line (Output, "--         Localization, Internationalization, Globalization for Ada        --");
      Put_Line (Output, "--                                                                          --");
      Put_Line (Output, "--                        Runtime Library Component                         --");
      Put_Line (Output, "--                                                                          --");
      Put_Line (Output, "------------------------------------------------------------------------------");
      Put_Line (Output, "--                                                                          --");
      Put_Line (Output, "-- Copyright © 2010 Vadim Godunko <vgodunko@gmail.com>                      --");
      Put_Line (Output, "--                                                                          --");
      Put_Line (Output, "-- Matreshka is free software;  you can  redistribute it  and/or modify  it --");
      Put_Line (Output, "-- under terms of the  GNU General Public License as published  by the Free --");
      Put_Line (Output, "-- Software  Foundation;  either version 2,  or (at your option)  any later --");
      Put_Line (Output, "-- version.  Matreshka  is distributed in the hope that it will be  useful, --");
      Put_Line (Output, "-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of --");
      Put_Line (Output, "-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General --");
      Put_Line (Output, "-- Public License for more details.  You should have received a copy of the --");
      Put_Line (Output, "-- GNU General Public License distributed with Matreshka; see file COPYING. --");
      Put_Line (Output, "-- If not, write  to  the  Free Software Foundation,  51  Franklin  Street, --");
      Put_Line (Output, "-- Fifth Floor, Boston, MA 02110-1301, USA.                                 --");
      Put_Line (Output, "--                                                                          --");
      Put_Line (Output, "-- As a special exception,  if other files  instantiate  generics from this --");
      Put_Line (Output, "-- unit, or you link  this unit with other files  to produce an executable, --");
      Put_Line (Output, "-- this  unit  does not  by itself cause  the resulting  executable  to  be --");
      Put_Line (Output, "-- covered  by the  GNU  General  Public  License.  This exception does not --");
      Put_Line (Output, "-- however invalidate  any other reasons why  the executable file  might be --");
      Put_Line (Output, "-- covered by the  GNU Public License.                                      --");
      Put_Line (Output, "--                                                                          --");
      Put_Line (Output, "------------------------------------------------------------------------------");
      Put_Line (Output, "--  $Revision$ $Date$");
      Put_Line (Output, "------------------------------------------------------------------------------");

      Put_Line (Output, "with Matreshka.Internals.Unicode;");
      New_Line (Output);
      Put (Output, "private package Matreshka.Internals.");

      if Ada.Command_Line.Argument (1) = "regexp" then
         Put (Output, "Regexps.Compiler.Scanner");

      elsif Ada.Command_Line.Argument (1) = "xml" then
         Put (Output, "Xml.Reader.Scanner");
      end if;

      Put_Line (Output, ".Tables is");

      New_Line (Output);
      Put_Line (Output, "   pragma Preelaborate;");

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
      Put (Output, "end Matreshka.Internals.");

      if Ada.Command_Line.Argument (1) = "regexp" then
         Put (Output, "Regexps.Compiler.Scanner");

      elsif Ada.Command_Line.Argument (1) = "xml" then
         Put (Output, "Xml.Reader.Scanner");
      end if;

      Put_Line (Output, ".Tables;");

      Close (Output);
   end Generate_Scanner_Tables;

end Scanner_Generator;
