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
with Ada.Strings.Fixed;
with GNAT.Expect;

with Configure.Builder;

package body Configure.Tests.PostgreSQL is

   Has_PostgreSQL             : constant Unbounded_String := +"HAS_POSTGRESQL";
   PostgreSQL_Library_Options : constant Unbounded_String
     := +"POSTGRESQL_LIBRARY_OPTIONS";

   -------------
   -- Execute --
   -------------

   overriding procedure Execute
    (Self      : in out PostgreSQL_Test;
     Arguments : in out Unbounded_String_Vector)
   is
      use Ada.Strings;
      use Ada.Strings.Fixed;
      use GNAT.Expect;

      function Has_Pg_Config return Boolean;
      --  Returns True when pg_config is found.

--   function Pg_Libs return Unbounded_String_Vectors.Vector;
--   --  Returns command line switches for linker.

      function Pg_Libdir return String;
      --  Returns library directory as reported by pg_config.

      -------------------
      -- Has_Pg_Config --
      -------------------

      function Has_Pg_Config return Boolean is
      begin
         declare
            Status : aliased Integer;
            Output : constant String :=
              Get_Command_Output
               ("pg_config",
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
      end Has_Pg_Config;

      ---------------
      -- Pg_Libdir --
      ---------------

      function Pg_Libdir return String is
         Status : aliased Integer;
         Output : constant String :=
           Trim
            (Get_Trimmed_Command_Output
              ("pg_config",
                (1 => new String'("--libdir")),
                 "",
                 Status'Access,
                 True),
             Both);

      begin
         if Status = 0 then
            return Output;

         else
            return "";
         end if;
      end Pg_Libdir;

--   -------------
--   -- Pg_Libs --
--   -------------
--
--   function Pg_Libs return Unbounded_String_Vectors.Vector is
--      Status : aliased Integer;
--      Output : constant String :=
--        Trim
--         (Get_Command_Output
--           ("pg_config",
--             (1 => new String'("--libs")),
--              "",
--              Status'Access,
--              True),
--          Both);
--      Aux    : Unbounded_String_Vectors.Vector;
--      First  : Positive;
--      Last   : Natural;
--
--      begin
--      if Status = 0 then
--         First := Output'First;
--         Last  := Output'First;
--
--         while Last <= Output'Last loop
--            if Output (Last) = ' ' then
--               --  Parameter separator found, add detected parameter to
--               --  result.
--
--               Aux.Append (To_Unbounded_String (Output (First .. Last - 1)));
--
--               First := Last;
--
--               --  Skip spaces.
--
--               while First <= Output'Last loop
--                  exit when Output (First) /= ' ';
--
--                  First := First + 1;
--               end loop;
--
--               Last := First;
--            end if;
--
--            Last := Last + 1;
--         end loop;
--      end if;
--
--      return Aux;
--   end Pg_Libs;

   begin
      --  Command line parameter has preference other automatic detection.

      Self.Report_Check ("checking whether to build PostgreSQL module");

      Self.Switches.Parse_Switches (Arguments);

      if Self.Switches.Is_Enabled then
         if Self.Switches.Is_Libdir_Specified then
            Substitutions.Insert
             (PostgreSQL_Library_Options,
              +"""-L"
                 & Self.Switches.Libdir
                 & """, ""-lpq""");

            Self.Report_Status ("yes (command line)");

         --  When pg_config is installed, it is used to check whether
         --  PostgreSQL is installed and to retrieve linker switches to link

         elsif Has_Pg_Config then
            Self.Report_Status ("yes (pg_config)");
            Substitutions.Insert
             (PostgreSQL_Library_Options, +"""-L" & Pg_Libdir & """, ""-lpq""");

         else
            Self.Report_Status ("no (pg_config not found)");
         end if;

      else
         Self.Report_Status ("no (command line)");
      end if;

      --  Check that PostgreSQL application can be linked with
      --  specified/detected set of options.

      if Substitutions.Contains (PostgreSQL_Library_Options) then
         Self.Report_Check
          ("checking whether PostgreSQL library is usable");

         if Configure.Builder.Build ("config.tests/postgresql/") then
            Self.Report_Status ("yes");

         else
            Self.Report_Status ("no");

            --  Switches don't allow to build application, remove them.

            Substitutions.Delete (PostgreSQL_Library_Options);
         end if;
      end if;

      --  Insert empty value for substitution variable when PostgreSQL driver
      --  module is disabled.

      if not Substitutions.Contains (PostgreSQL_Library_Options) then
         Substitutions.Insert
          (PostgreSQL_Library_Options, Null_Unbounded_String);
         Substitutions.Insert (Has_PostgreSQL, Null_Unbounded_String);

         if Self.Switches.Is_Enabled
           and Self.Switches.Is_Enable_Specified
         then
            Fatal_Error
             ("PostgreSQL library is not found but support is requested");

         else
            Information ("PostgreSQL driver module is disabled");
         end if;

      else
         Substitutions.Insert (Has_PostgreSQL, To_Unbounded_String ("true"));
      end if;
   end Execute;

   ----------
   -- Help --
   ----------

   overriding function Help
    (Self : PostgreSQL_Test) return Unbounded_String_Vector is
   begin
      return Self.Switches.Help;
   end Help;

   ----------
   -- Name --
   ----------

   overriding function Name (Self : PostgreSQL_Test) return String is
   begin
      return "postgresql";
   end Name;

end Configure.Tests.PostgreSQL;
