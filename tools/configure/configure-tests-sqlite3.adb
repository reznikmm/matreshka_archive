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
with Ada.Strings.Fixed;

with Configure.Builder;
with Configure.Pkg_Config;

package body Configure.Tests.SQLite3 is

   SQLite3_LibDir_Switch : constant String := "--with-sqlite3-libdir";

   SQLite3_Package_Name : constant String := "sqlite3";

   Has_SQLite3             : constant Unbounded_String := +"HAS_SQLITE3";
   SQLite3_Library_Options : constant Unbounded_String
     := +"SQLITE3_LIBRARY_OPTIONS";

   -------------
   -- Execute --
   -------------

   overriding procedure Execute
    (Self      : in out SQLite3_Test;
     Arguments : in out Unbounded_String_Vector) is
   begin
      --  Command line parameter has preference other automatic detection.

      if Has_Parameter (Arguments, SQLite3_LibDir_Switch) then
         Substitutions.Insert
          (SQLite3_Library_Options,
           +"""-L"
              & Parameter_Value (Arguments, SQLite3_LibDir_Switch)
              & """, ""-lsqlite3""");
         Remove_Parameter (Arguments, SQLite3_LibDir_Switch);

      --  When pkg-config is installed, it is used to check whether SQLite3 is
      --  installed and to retrieve linker switches to link with it.

      elsif Configure.Pkg_Config.Has_Pkg_Config then
         if Configure.Pkg_Config.Has_Package (SQLite3_Package_Name) then
            declare
               Libs : constant String_Vectors.Vector
                 := Configure.Pkg_Config.Package_Libs (SQLite3_Package_Name);
               Opts : Unbounded_String;

            begin
               for J in Libs.First_Index .. Libs.Last_Index loop
                  if Ada.Strings.Unbounded.Length (Opts) /= 0 then
                     Ada.Strings.Unbounded.Append (Opts, ", ");
                  end if;

                  Ada.Strings.Unbounded.Append (Opts, '"');
                  Ada.Strings.Unbounded.Append (Opts, Libs.Element (J));
                  Ada.Strings.Unbounded.Append (Opts, '"');
               end loop;

               Substitutions.Insert (SQLite3_Library_Options, Opts);
            end;
         end if;
      end if;

      --  Check that SQLite3 application can be linked with specified/detected
      --  set of options.

      if Substitutions.Contains (SQLite3_Library_Options) then
         if not Configure.Builder.Build ("config.tests/sqlite3/") then
            --  Switches don't allow to build application, remove them.

            Substitutions.Delete (SQLite3_Library_Options);
         end if;
      end if;

      --  Insert empty value for substitution variable when SQLite3 driver
      --  module is disabled.

      if not Substitutions.Contains (SQLite3_Library_Options) then
         Information ("SQLite3 driver module is disabled");
         Substitutions.Insert (SQLite3_Library_Options, Null_Unbounded_String);
         Substitutions.Insert (Has_SQLite3, Null_Unbounded_String);

      else
         Substitutions.Insert (Has_SQLite3, To_Unbounded_String ("true"));
      end if;
   end Execute;

   ----------
   -- Help --
   ----------

   overriding function Help
    (Self : SQLite3_Test) return Unbounded_String_Vector is
   begin
      return Result : Unbounded_String_Vector do
         Result.Append
          (+"  "
              & SQLite3_LibDir_Switch
              & "[=ARG]");
         Result.Append
          (+"                          "
              & "enable SQLite3 support, lookup for libraries in ARG");
      end return;
   end Help;

end Configure.Tests.SQLite3;
