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
-- Copyright © 2010-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Strings.Unbounded.Text_IO;
with Ada.Text_IO;

with Configure.Architecture;
with Configure.Instantiate;
with Configure.Operating_System;
with Configure.RTL_Version;
with Configure.Tests.Gprbuild;
with Configure.Tests.Install;
with Configure.Tests.Installation_Directories;
with Configure.Tests.MySQL;
with Configure.Tests.OCI;
with Configure.Tests.PostgreSQL;
with Configure.Tests.SQLite3;
with Configure.Tests.Firebird;
with Configure.Tests.Valgrind;

procedure Configure.Driver is
   use Ada.Command_Line;

   function Is_Help_Requested return Boolean;
   --  Returns True when help information is requested by the user.

   procedure Help_Output (Position : Unbounded_String_Vectors.Cursor);
   --  Outputs line of help information.

   -----------------
   -- Help_Output --
   -----------------

   procedure Help_Output (Position : Unbounded_String_Vectors.Cursor) is
      Line : constant Unbounded_String
        := Unbounded_String_Vectors.Element (Position);

   begin
      Ada.Strings.Unbounded.Text_IO.Put_Line (Line);
   end Help_Output;

   -----------------------
   -- Is_Help_Requested --
   -----------------------

   function Is_Help_Requested return Boolean is
   begin
      for J in 1 .. Argument_Count loop
         if Argument (J) = "--help" then
            return True;
         end if;
      end loop;

      return False;
   end Is_Help_Requested;

   Arguments       : Unbounded_String_Vector;
   Dirs_Test       :
     Configure.Tests.Installation_Directories.Installation_Directories_Test;
   Gprbuild_Test   : Configure.Tests.Gprbuild.Gprbuild_Test;
   Install_Test    : Configure.Tests.Install.Install_Test;
   MySQL_Test      : Configure.Tests.MySQL.MySQL_Test;
   OCI_Test        : Configure.Tests.OCI.OCI_Test;
   PostgreSQL_Test : Configure.Tests.PostgreSQL.PostgreSQL_Test;
   SQLite3_Test    : Configure.Tests.SQLite3.SQLite3_Test;
   Firebird_Test   : Configure.Tests.Firebird.Firebird_Test;
   Valgrind_Test   : Configure.Tests.Valgrind.Valgrind_Test;

begin
   if Is_Help_Requested then
      Ada.Text_IO.Put_Line
       ("`"
          & Ada.Directories.Simple_Name (Command_Name)
          & "' configures Matreshka to adapt to many kinds of systems.");
      Ada.Text_IO.New_Line;
      Ada.Text_IO.Put_Line ("Usage: " & Command_Name & " [OPTION]...");
      Ada.Text_IO.New_Line;
      Ada.Text_IO.Put_Line
       ("Defaults for the options are specified in brackets.");
      Ada.Text_IO.New_Line;
      Ada.Text_IO.Put_Line ("Configuration:");
      Ada.Text_IO.Put_Line
       ("  --help                  display this help and exit");

      Ada.Text_IO.New_Line;
      Dirs_Test.Help.Iterate (Help_Output'Access);

      Ada.Text_IO.New_Line;
      Ada.Text_IO.Put_Line ("Optional Packages:");

      OCI_Test.Help.Iterate (Help_Output'Access);
      PostgreSQL_Test.Help.Iterate (Help_Output'Access);
      SQLite3_Test.Help.Iterate (Help_Output'Access);
      Firebird_Test.Help.Iterate (Help_Output'Access);

      return;
   end if;

   --  Convert command line arguments into the vector.

   for J in 1 .. Ada.Command_Line.Argument_Count loop
      Arguments.Append (+Ada.Command_Line.Argument (J));
   end loop;

   Configure.Architecture;
   Configure.Operating_System;
   Configure.RTL_Version;
   Dirs_Test.Execute (Arguments);
   Install_Test.Execute (Arguments);
   Gprbuild_Test.Execute (Arguments);
   MySQL_Test.Execute (Arguments);
   OCI_Test.Execute (Arguments);
   PostgreSQL_Test.Execute (Arguments);
   SQLite3_Test.Execute (Arguments);
   Firebird_Test.Execute (Arguments);
   Valgrind_Test.Execute (Arguments);

   declare
      use Ada.Directories;
      use Ada.Strings.Unbounded.Text_IO;
      use Ada.Text_IO;
      use Maps;

      P : Cursor := Substitutions.First;

   begin
      while Has_Element (P) loop
         Put (Simple_Name (Command_Name));
         Put (": ");
         Put (Key (P));
         Put (" => ");
         Put (Element (P));
         New_Line;

         Next (P);
      end loop;
   end;

   --  Check whether all arguments in the command line are recognized and
   --  removed.

   if not Arguments.Is_Empty then
      declare
         procedure Output (Position : Unbounded_String_Vectors.Cursor);

         ------------
         -- Output --
         ------------

         procedure Output (Position : Unbounded_String_Vectors.Cursor) is
            Arg : constant Unbounded_String
              := Unbounded_String_Vectors.Element (Position);

         begin
            Warning
             ("command line argument '" & (+Arg) & "' is not recognized");
         end Output;

      begin
         Arguments.Iterate (Output'Access);
      end;
   end if;

   Configure.Instantiate ("Makefile.config");
   Configure.Instantiate ("gnat/install/matreshka_config.gpr");
   Configure.Instantiate ("gnat/matreshka_config.gpr");

exception
   when Internal_Error =>
      Set_Exit_Status (Failure);
end Configure.Driver;
