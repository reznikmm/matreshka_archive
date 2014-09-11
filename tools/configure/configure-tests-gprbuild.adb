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
-- Copyright © 2013-2014, Vadim Godunko <vgodunko@gmail.com>                --
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
with GNAT.Expect;
with GNAT.OS_Lib;
with GNAT.Regpat;
with GNAT.Strings;

with Configure.Abstract_Tests;

package body Configure.Tests.Gprbuild is

   Gprbuild_Name         : constant Unbounded_String := +"GPRBUILD";
   Has_Gprbuild2014_Name : constant Unbounded_String := +"HAS_GPRBUILD2014";

   -------------
   -- Execute --
   -------------

   overriding procedure Execute
    (Self      : in out Gprbuild_Test;
     Arguments : in out Unbounded_String_Vector)
   is
      use type GNAT.Strings.String_Access;

      Gprbuild_Path : constant GNAT.Strings.String_Access
        := GNAT.OS_Lib.Locate_Exec_On_Path ("gprbuild");

   begin
      --  Check whether 'gprbuild' executable is available.

      Self.Report_Check ("looking for GPRbuild");

      if Gprbuild_Path = null then
         Self.Report_Status ("not found");
         
         raise Internal_Error;
      end if;

      Substitutions.Insert
       (Gprbuild_Name, Convert_Windows_Path (+Gprbuild_Path.all));

      Self.Report_Status (Gprbuild_Path.all);

      --  Check version of GPRbuild, GPRBUILD GPL 2014 has critial bug and
      --  workaround should be activated.

      Self.Report_Check ("checking GPRbuild version");

      declare
         use GNAT.Expect;
         use GNAT.Regpat;

         Gprbuild_Process : Process_Descriptor;
         Result           : Expect_Match;
         Matches          : Match_Array (0 .. 1);

      begin
         Non_Blocking_Spawn
          (Gprbuild_Process,
           Gprbuild_Path.all,
           (1 => new String'("--version")),
           4096,
           True);
         Expect
          (Gprbuild_Process, Result, "GPRBUILD (GPL 2014|2014)", Matches);
         Close (Gprbuild_Process);

         if Matches (0) /= No_Match then
            Substitutions.Insert (Has_Gprbuild2014_Name, +"true");
            Self.Report_Status ("GPL 2014 workaround activated");

         else
            Substitutions.Insert (Has_Gprbuild2014_Name, Null_Unbounded_String);
            Self.Report_Status ("ok");
         end if;
      end;
   end Execute;

   ----------
   -- Help --
   ----------

   overriding function Help
    (Self : Gprbuild_Test) return Unbounded_String_Vector is
   begin
      return Result : Unbounded_String_Vector;
   end Help;

   ----------
   -- Name --
   ----------

   overriding function Name (Self : Gprbuild_Test) return String is
   begin
      return "gprbuild";
   end Name;

end Configure.Tests.Gprbuild;
