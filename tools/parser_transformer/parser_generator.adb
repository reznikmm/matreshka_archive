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
with Ada.Command_Line;
with Ada.Directories;
with Ada.Integer_Wide_Text_IO;
with Ada.Strings.Wide_Unbounded.Wide_Text_IO;
with Ada.Wide_Text_IO;

with Wide_Put_File_Header;
with Parser_Extractor;

package body Parser_Generator is

   use Ada.Integer_Wide_Text_IO;
   use Ada.Strings.Wide_Unbounded.Wide_Text_IO;
   use Ada.Wide_Text_IO;
   use Parser_Extractor;

   function Parser_Template_File_Name return String;
   --  Returns file name of the parser's template.

   function Parser_File_Name return String;
   --  Returns file name of the parser's implementation file.

   function Parser_Tables_File_Name return String;
   --  Returns file name of the parser's tables data.

   ----------------------
   -- Parser_File_Name --
   ----------------------

   function Parser_File_Name return String is
      Template : constant String
        := Ada.Directories.Simple_Name (Parser_Template_File_Name);

   begin
      return Template (Template'First .. Template'Last - 3);
   end Parser_File_Name;

   -----------------------------
   -- Parser_Tables_File_Name --
   -----------------------------

   function Parser_Tables_File_Name return String is
   begin
      return Ada.Directories.Base_Name (Parser_File_Name) & "-tables.ads";
   end Parser_Tables_File_Name;

   -------------------------------
   -- Parser_Template_File_Name --
   -------------------------------

   function Parser_Template_File_Name return String is
   begin
      return Ada.Command_Line.Argument (3);
   end Parser_Template_File_Name;

   --------------------------
   -- Generate_Parser_Code --
   --------------------------

   procedure Generate_Parser_Code is
      Input  : File_Type;
      Output : File_Type;
      Buffer : Wide_String (1 .. 1024);
      Last   : Natural;

   begin
      Open (Input, In_File, Parser_Template_File_Name, "wcem=8");
      Create (Output, Out_File, Parser_File_Name, "wcem=8");

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
   end Generate_Parser_Code;

   ----------------------------
   -- Generate_Parser_Tables --
   ----------------------------

   procedure Generate_Parser_Tables is
      Output : File_Type;

      procedure Generate_Array
       (Name   : Wide_String;
        Values : Integer_Vectors.Vector);

      procedure Generate_Array_Of_Pair
       (Name   : Wide_String;
        Values : Pair_Vectors.Vector);

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

      ----------------------------
      -- Generate_Array_Of_Pair --
      ----------------------------

      procedure Generate_Array_Of_Pair
       (Name   : Wide_String;
        Values : Pair_Vectors.Vector) is
      begin
         New_Line (Output);
         Put (Output, "   YY_");
         Put (Output, Name);
         Put (Output, "_Matrix : constant array (");
         Put (Output, Values.First_Index, 0);
         Put (Output, " .. ");
         Put (Output, Values.Last_Index, 0);
         Put (Output, ") of ");
         Put (Output, Name);
         Put_Line (Output, "_Entry :=");

         for J in Values.First_Index .. Values.Last_Index loop
            if J = Values.First_Index then
               Put (Output, "    (");

            elsif (J - Values.First_Index) mod 4 = 0 then
               Put_Line (Output, ",");
               Put (Output, "     ");

            else
               Put (Output, ", ");
            end if;

            Put (Output, "(");
            Put (Output, Values.Element (J).First, 5);
            Put (Output, ", ");
            Put (Output, Values.Element (J).Second, 5);
            Put (Output, ")");
         end loop;

         Put_Line (Output, ");");
      end Generate_Array_Of_Pair;

   begin
      Create (Output, Out_File, Parser_Tables_File_Name, "wcem=8");

      if Ada.Command_Line.Argument (1) = "regexp" then
         Wide_Put_File_Header
          (Output,
           "Localization, Internationalization, Globalization for Ada",
           2010,
           2010);

      elsif Ada.Command_Line.Argument (1) = "xml" then
         Wide_Put_File_Header
          (Output,
           "XML Processor",
           2010,
           2010);
      end if;

      New_Line (Output);

      if Ada.Command_Line.Argument (1) = "regexp" then
         Put (Output, "private package Matreshka.Internals.Regexps.Compiler");

      elsif Ada.Command_Line.Argument (1) = "xml" then
         Put (Output, "private package Matreshka.SAX.Simple_Readers");
      end if;

      Put_Line (Output, ".Parser.Tables is");
      New_Line (Output);
      Put_Line (Output, "   pragma Preelaborate;");

      New_Line (Output);
      Put_Line (Output, "   type Goto_Entry is record");
      Put_Line (Output, "      Nonterm  : Integer;");
      Put_Line (Output, "      Newstate : Integer;");
      Put_Line (Output, "   end record;");

      New_Line (Output);
      Put_Line (Output, "   type Shift_Reduce_Entry is record");
      Put_Line (Output, "      T   : Integer;");
      Put_Line (Output, "      Act : Integer;");
      Put_Line (Output, "   end record;");

      New_Line (Output);
      Put (Output, "   YY_Default           : constant := ");
      Put (Output, YY_Default, 5);
      Put_Line (Output, ";");
      Put (Output, "   YY_First_Shift_Entry : constant := ");
      Put (Output, YY_First_Shift_Entry, 5);
      Put_Line (Output, ";");
      Put (Output, "   YY_Accept_Code       : constant := ");
      Put (Output, YY_Accept_Code, 5);
      Put_Line (Output, ";");
      Put (Output, "   YY_Error_Code        : constant := ");
      Put (Output, YY_Error_Code, 5);
      Put_Line (Output, ";");

      --  Generate goto matrix

      Generate_Array_Of_Pair ("Goto", YY_Goto_Matrix);
      Generate_Array ("YY_Goto_Offset", YY_Goto_Offset);
      Generate_Array ("YY_Rule_Length", YY_Rule_Length);
      Generate_Array ("YY_Get_LHS_Rule", YY_Get_LHS_Rule);

      --  Generate shitf-reduce matrix

      Generate_Array_Of_Pair ("Shift_Reduce", YY_Shift_Reduce_Matrix);
      Generate_Array ("YY_Shift_Reduce_Offset", YY_Shift_Reduce_Offset);

      New_Line (Output);

      if Ada.Command_Line.Argument (1) = "regexp" then
         Put (Output, "end Matreshka.Internals.Regexps.Compiler");

      elsif Ada.Command_Line.Argument (1) = "xml" then
         Put (Output, "end Matreshka.SAX.Simple_Readers");
      end if;

      Put_Line (Output, ".Parser.Tables;");

      Close (Output);
   end Generate_Parser_Tables;

end Parser_Generator;
