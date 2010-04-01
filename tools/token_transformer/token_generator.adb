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
with Ada.Integer_Wide_Text_IO;
with Ada.Strings.Wide_Unbounded.Wide_Text_IO;
with Ada.Wide_Text_IO;

with Token_Extractor;

package body Token_Generator is

   use Ada.Integer_Wide_Text_IO;
   use Ada.Strings.Wide_Unbounded.Wide_Text_IO;
   use Ada.Wide_Text_IO;
   use Token_Extractor;

   Parser_Tokens_File_Name    : constant String :=
     "matreshka-internals-regexps-compiler.ads";

   ----------------------------
   -- Generate_Parser_Tokens --
   ----------------------------

   procedure Generate_Parser_Tokens is
      Input  : File_Type;
      Output : File_Type;
      Buffer : Wide_String (1 .. 1024);
      Last   : Natural;

   begin
      Open (Input, In_File, Ada.Command_Line.Argument (2), "wcem=8");
      Create (Output, Out_File, Parser_Tokens_File_Name, "wcem=8");

      while not End_Of_File (Input) loop
         Get_Line (Input, Buffer, Last);

         if Buffer (1 .. Last) = "%%" then
            Put_Line (Output, "   type Token is");

            for J in 1 .. Natural (Tokens.Length) loop
               if J = 1 then
                  Put (Output, "    (");

               else
                  Put_Line (Output, ",");
                  Put (Output, "     ");
               end if;

               Put (Output, Tokens.Element (J));
            end loop;

            Put_Line (Output, ");");

         else
            Put_Line (Output, Buffer (1 .. Last));
         end if;
      end loop;

      Close (Output);
      Close (Input);
   end Generate_Parser_Tokens;

end Token_Generator;
