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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This procedure detects parameters to link with SQLite3 library.
------------------------------------------------------------------------------
with Ada.Directories;
with Ada.Strings.Fixed;

with GNAT.Expect;

with Configure.Pkg_Config;
with Configure.Instantiate;

procedure Configure.SQLite3 is

   use Ada.Strings;
   use Ada.Strings.Fixed;
   use Ada.Strings.Unbounded;
   use GNAT.Expect;

   function Build_Check return Boolean;
   --  Runs gnatmake to build project, returns True on success.

   -----------------
   -- Build_Check --
   -----------------

   function Build_Check return Boolean is
   begin
      declare
         Status : aliased Integer;
         Output : constant String :=
           Get_Command_Output
            ("gnatmake",
             (1 => new String'("-p"),
              2 => new String'("-Pconfig.tests/sqlite3/check.gpr")),
             "",
             Status'Access,
             True);

      begin
         return Status = 0;
      end;

   exception
      when GNAT.Expect.Invalid_Process =>
         return False;
   end Build_Check;

   SQLite3_Package_Name : constant String := "sqlite3";

begin
   --  Command line parameter has preference other automatic detection.

   if Has_Parameter ("--with-sqlite3-libdir") then
      Substitutions.Insert
       (SQLite3_Library_Options,
        To_Unbounded_String
         ("""-L"
            & Parameter_Value ("--with-sqlite3-libdir")
            & """, ""-lsqlite3"""));

   --  When pkg-config is installed, it is used to check whether SQLite3 is
   --  installed and to retrieve linker switches to link with it.

   elsif Configure.Pkg_Config.Has_Pkg_Config then
      if Configure.Pkg_Config.Has_Package (SQLite3_Package_Name) then
         Substitutions.Insert
          (SQLite3_Library_Options,
           To_Unbounded_String
            ('"'
               & Trim
                  (Configure.Pkg_Config.Package_Libs (SQLite3_Package_Name),
                   Both)
               & '"'));
      end if;
   end if;

   --  Check that SQLite3 application can be linked with specified/detected
   --  set of options.

   if Substitutions.Contains (SQLite3_Library_Options) then
      Configure.Instantiate ("config.tests/sqlite3/check.gpr", True);

      if not Build_Check then
         --  Switches don't allow to build application, remove them.

         Substitutions.Delete (SQLite3_Library_Options);
      end if;

      if Ada.Directories.Exists ("config.tests/sqlite3/_build") then
         Ada.Directories.Delete_Tree ("config.tests/sqlite3/_build");
      end if;

      Ada.Directories.Delete_File ("config.tests/sqlite3/check.gpr");

   end if;

   --  Insert empty value for substitution variable when SQLite3 driver module
   --  is disabled.

   if not Substitutions.Contains (SQLite3_Library_Options) then
      Information ("SQLite3 driver module is disabled");
      Substitutions.Insert (SQLite3_Library_Options, Null_Unbounded_String);
   end if;
end Configure.SQLite3;
