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
-- Copyright © 2012-2014, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Strings.Fixed;
with GNAT.Expect;

with Configure.Builder;

package body Configure.Tests.MySQL is

   Has_MySQL                : constant Unbounded_String := +"HAS_MYSQL";
   Has_Working_MySQL_Server : constant Unbounded_String
     := +"HAS_WORKING_MYSQL_SERVER";
   MySQL_Library_Options    : constant Unbounded_String
     := +"MYSQL_LIBRARY_OPTIONS";

   -------------
   -- Execute --
   -------------

   overriding procedure Execute
    (Self      : in out MySQL_Test;
     Arguments : in out Unbounded_String_Vector)
   is
      use Ada.Strings;
      use Ada.Strings.Fixed;
      use GNAT.Expect;

      function Has_MySQL_Config return Boolean;
      --  Returns True when mysql_config is found.

      function MySQL_Libs return String_Vectors.Vector;
      --  Returns command line switches for linker.

      function Has_MySQL_Client return Boolean;
      --  Returns True when mysql command line client is found.

      function Execute_MySQL_Script (File_Name : String) return Boolean;
      --  Returns True when mysql command line client successfully executes
      --  specified script.

      --------------------------
      -- Execute_MySQL_Script --
      --------------------------

      function Execute_MySQL_Script (File_Name : String) return Boolean is
      begin
         declare
            Status : aliased Integer;
            Output : constant String :=
              Get_Command_Output
               ("mysql",
                (1 => new String'("--execute=source " & File_Name),
                 2 => new String'("test")),
                "",
                Status'Access,
                True);

         begin
            return Status = 0;
         end;

      exception
         when GNAT.Expect.Invalid_Process =>
            return False;
      end Execute_MySQL_Script;

      ----------------------
      -- Has_MySQL_Client --
      ----------------------

      function Has_MySQL_Client return Boolean is
      begin
         declare
            Status : aliased Integer;
            Output : constant String :=
              Get_Command_Output
               ("mysql",
                (1 => new String'("--version")),
                "",
                Status'Access,
                True);

         begin
            return Status = 0;
         end;

      exception
         when GNAT.Expect.Invalid_Process =>
            return False;
      end Has_MySQL_Client;

      ----------------------
      -- Has_MySQL_Config --
      ----------------------

      function Has_MySQL_Config return Boolean is
      begin
         declare
            Status : aliased Integer;
            Output : constant String :=
              Get_Command_Output
               ("mysql_config",
                (1 => new String'("--version")),
                "",
                Status'Access,
                True);

         begin
            return Status = 0;
         end;

      exception
         when GNAT.Expect.Invalid_Process =>
            return False;
      end Has_MySQL_Config;

      ----------------
      -- MySQL_Libs --
      ----------------

      function MySQL_Libs return String_Vectors.Vector is
         Status : aliased Integer;
         Output : constant String :=
           Trim
            (Get_Command_Output
              ("mysql_config",
                (1 => new String'("--libs_r")),
                 "",
                 Status'Access,
                 True),
             Both);
         Aux    : String_Vectors.Vector;
         First  : Positive;
         Last   : Natural;

      begin
         if Status = 0 then
            First := Output'First;
            Last  := Output'First;

            while Last <= Output'Last loop
               if Output (Last) = ' ' then
                  --  Parameter separator found, add detected parameter to
                  --  result.

                  Aux.Append (Output (First .. Last - 1));

                  First := Last;

                  --  Skip spaces.

                  while First <= Output'Last loop
                     exit when Output (First) /= ' ';

                     First := First + 1;
                  end loop;

                  Last := First;
               end if;

               Last := Last + 1;
            end loop;
         end if;

         return Aux;
      end MySQL_Libs;

   begin
      --  Command line parameter has preference other automatic detection.

      Self.Report_Check ("checking whether to build MySQL module");

      Self.Switches.Parse_Switches (Arguments);

      if Self.Switches.Is_Enabled then
         if Self.Switches.Is_Libdir_Specified then
            Substitutions.Insert
             (MySQL_Library_Options,
              +"""-L"
                 & Self.Switches.Libdir
                 & """, ""-lmysqlclient_r""");

            Self.Report_Status ("yes (command line)");

         --  When mysql_config is installed, it is used to check whether
         --  MySQL is installed and to retrieve linker switches to link

         elsif Has_MySQL_Config then
            Self.Report_Status ("yes (mysql_config)");

            Self.Report_Check ("checking for linker switches");

            declare
               Libs : constant String_Vectors.Vector := MySQL_Libs;
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

               Substitutions.Insert (MySQL_Library_Options, Opts);

               Self.Report_Status (+Opts);
            end;

         else
            Self.Report_Status ("no (mysql_config not found)");
         end if;

      else
         Self.Report_Status ("no (command line)");
      end if;

      --  Check that MySQL application can be linked with
      --  specified/detected set of options.

      if Substitutions.Contains (MySQL_Library_Options) then
         Self.Report_Check
          ("checking whether MySQL library is usable");

         if Configure.Builder.Build ("config.tests/mysql/") then
            Self.Report_Status ("yes");

         else
            Self.Report_Status ("no");

            --  Switches don't allow to build application, remove them.

            Substitutions.Delete (MySQL_Library_Options);
         end if;
      end if;

      --  Insert empty value for substitution variable when MySQL driver
      --  module is disabled.

      if not Substitutions.Contains (MySQL_Library_Options) then
         Substitutions.Insert
          (Has_Working_MySQL_Server, Null_Unbounded_String);
         Substitutions.Insert
          (MySQL_Library_Options, Null_Unbounded_String);
         Substitutions.Insert (Has_MySQL, Null_Unbounded_String);

         if Self.Switches.Is_Enabled
           and Self.Switches.Is_Enable_Specified
         then
            Fatal_Error
             ("MySQL library is not found but support is requested");

         else
            Information ("MySQL driver module is disabled");
         end if;

      else
         Substitutions.Insert (Has_MySQL, To_Unbounded_String ("true"));

         --  Lookup for mysql command line client and availability of server
         --  for testing purposes.

         Self.Report_Check
          ("checking whether MySQL server can be used for testing");

         if Has_MySQL_Client
           and then Execute_MySQL_Script ("config.tests/mysql/check.sql")
         then
            Self.Report_Status ("yes");
            Substitutions.Insert
             (Has_Working_MySQL_Server, To_Unbounded_String ("true"));

         else
            Self.Report_Status ("no");
            Substitutions.Insert
             (MySQL_Library_Options, Null_Unbounded_String);
         end if;
      end if;
   end Execute;

   ----------
   -- Help --
   ----------

   overriding function Help
    (Self : MySQL_Test) return Unbounded_String_Vector is
   begin
      return Self.Switches.Help;
   end Help;

   ----------
   -- Name --
   ----------

   overriding function Name (Self : MySQL_Test) return String is
   begin
      return "mysql";
   end Name;

end Configure.Tests.MySQL;
