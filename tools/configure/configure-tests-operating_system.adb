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
-- Copyright © 2011-2015, Vadim Godunko <vgodunko@gmail.com>                --
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
with GNAT.Regexp;

package body Configure.Tests.Operating_System is

   Operating_System_Name : constant Ada.Strings.Unbounded.Unbounded_String
     := Ada.Strings.Unbounded.To_Unbounded_String ("OPERATING_SYSTEM");

   --------------------------
   -- Get_Operating_System --
   --------------------------

   function Get_Operating_System
    (Self : Operating_System_Test) return Operating_Systems is
   begin
      if Self.Executed then
         return Self.Operating_System;

      else
         raise Program_Error with "operating system test was not executed";
      end if;
   end Get_Operating_System;

   -------------
   -- Execute --
   -------------

   overriding procedure Execute
    (Self      : in out Operating_System_Test;
     Arguments : in out Unbounded_String_Vector)
   is
      use GNAT.Regexp;

   begin
      --  Command line parameter has preference other automatic detection.

      Self.Report_Check ("detecting target operating system");

      if Match
          (+Target_Triplet, Compile ("[a-zA-Z0-9_]*-[a-zA-Z0-9_]*-mingw.*"))
      then
         Self.Operating_System := Windows;
         Substitutions.Insert (Operating_System_Name, +"Windows");
         Is_Windows := True;
         Self.Report_Status ("Windows");

      elsif Match
          (+Target_Triplet, Compile ("[a-zA-Z0-9_]*-[a-zA-Z0-9_]*-darwin.*"))
      then
         Self.Operating_System := MacOS;
         Substitutions.Insert (Operating_System_Name, +"MacOS");
         Is_Windows := True;
         Self.Report_Status ("MacOS");

      else
         Self.Operating_System := POSIX;
         Substitutions.Insert (Operating_System_Name, +"POSIX");
         Self.Report_Status ("POSIX");
      end if;

      Self.Executed := True;
   end Execute;

   ----------
   -- Help --
   ----------

   overriding function Help
    (Self : Operating_System_Test) return Unbounded_String_Vector is
   begin
      return Result : Unbounded_String_Vector;
   end Help;

   ----------
   -- Name --
   ----------

   overriding function Name (Self : Operating_System_Test) return String is
   begin
      return "os";
   end Name;

end Configure.Tests.Operating_System;
