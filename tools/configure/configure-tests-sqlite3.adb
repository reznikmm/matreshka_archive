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

      Self.Report_Check ("checking whether to build SQLite3 module");

      Self.Switches.Parse_Switches (Arguments);

      if Self.Switches.Is_Enabled then
         if Self.Switches.Is_Libdir_Specified then
            Substitutions.Insert
             (SQLite3_Library_Options,
              +"""-L"
                 & Self.Switches.Libdir
                 & """, ""-lsqlite3""");

            Self.Report_Status ("yes (command line)");

         elsif Configure.Pkg_Config.Has_Pkg_Config then
            if Configure.Pkg_Config.Has_Package (SQLite3_Package_Name) then
               Self.Report_Status ("yes (pkg-config)");

               --  Check for SQLite3 version using pkg-config.

               Self.Report_Check ("checking for SQLite3 version");

               declare
                  Version : aliased Unbounded_String;

               begin
                  if Configure.Pkg_Config.Package_Version_At_Least
                      (SQLite3_Package_Name, "3.6", Version'Access)
                  then
                     Self.Report_Status (+Version);
                     Self.Report_Check ("checking for linker switches");

                     declare
                        Libs : constant String_Vectors.Vector
                          := Configure.Pkg_Config.Package_Libs
                              (SQLite3_Package_Name);
                        Opts : Unbounded_String;

                     begin
                        for J in Libs.First_Index .. Libs.Last_Index loop
                           if Length (Opts) /= 0 then
                              Append (Opts, ", ");
                           end if;

                           Append (Opts, '"');
                           Append (Opts, Libs.Element (J));
                           Append (Opts, '"');
                        end loop;

                        Substitutions.Insert (SQLite3_Library_Options, Opts);

                        Self.Report_Status (+Opts);
                     end;

                  else
                     Self.Report_Status (+Version & " (unsupported)");
                  end if;
               end;

            else
               Self.Report_Status ("no (not found)");
            end if;

         else
            Self.Report_Status ("no (pkg-config not found)");
         end if;

      else
         Self.Report_Status ("no (command line)");
      end if;

      --  Check that SQLite3 application can be linked with specified/detected
      --  set of options.

      if Substitutions.Contains (SQLite3_Library_Options) then
         Self.Report_Check
          ("checking whether SQLite3 library is usable");

         if Configure.Builder.Build ("config.tests/sqlite3/") then
            Self.Report_Status ("yes");

         else
            Self.Report_Status ("no");

            --  Switches don't allow to build application, remove them.

            Substitutions.Delete (SQLite3_Library_Options);
         end if;
      end if;

      --  Insert empty value for substitution variable when SQLite3 driver
      --  module is disabled.

      if not Substitutions.Contains (SQLite3_Library_Options) then
         Substitutions.Insert (SQLite3_Library_Options, Null_Unbounded_String);
         Substitutions.Insert (Has_SQLite3, Null_Unbounded_String);

         if Self.Switches.Is_Enabled
           and Self.Switches.Is_Enable_Specified
         then
            Fatal_Error
             ("SQLite3 library is not found but support is requested");

         else
            Information ("SQLite3 driver module is disabled");
         end if;

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
      return Self.Switches.Help;
   end Help;

   ----------
   -- Name --
   ----------

   overriding function Name (Self : SQLite3_Test) return String is
   begin
      return "sqlite3";
   end Name;

end Configure.Tests.SQLite3;
