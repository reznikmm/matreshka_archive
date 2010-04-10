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
with Ada.Strings.Unbounded.Text_IO;
with Ada.Text_IO;

with GNAT.Regpat;

procedure Configure.Instantiate (Configuration_File_Name : String) is

   use Ada.Command_Line;
   use Ada.Directories;
   use Ada.Strings.Unbounded;
   use Ada.Strings.Unbounded.Text_IO;
   use Ada.Text_IO;
   use GNAT.Regpat;

   function "+" (Item : Unbounded_String) return String renames To_String;

   Template_File      : File_Type;
   Configuration_File : File_Type;
   Line               : Unbounded_String;
   Pattern            : Pattern_Matcher := Compile ("(@(.+?)@)");
   Matches            : Match_Array (0 .. 2);

begin
   Put_Line
    (Simple_Name (Command_Name) & ": creating " & Configuration_File_Name);
   Open (Template_File, In_File, Configuration_File_Name & ".in");
   Create (Configuration_File, Out_File, Configuration_File_Name);

   while not End_Of_File (Template_File) loop
      Line := Get_Line (Template_File);

      loop
         Match (Pattern, +Line, Matches);

         exit when Matches (0) = No_Match;

         Replace_Slice
          (Line,
           Matches (1).First, Matches (1).Last,
           +Substitutions.Element
             (Unbounded_Slice (Line, Matches (2).First, Matches (2).Last)));
      end loop;

      Put_Line (Configuration_File, Line);
   end loop;

   Close (Configuration_File);
   Close (Template_File);
end Configure.Instantiate;
