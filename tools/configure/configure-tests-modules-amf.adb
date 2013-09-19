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
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body Configure.Tests.Modules.AMF is

   Enable_AMF : constant Unbounded_String := +"ENABLE_AMF";

   -------------
   -- Execute --
   -------------

   overriding procedure Execute
    (Self      : in out AMF_Test;
     Arguments : in out Unbounded_String_Vector) is
   begin
      Self.Report_Check ("checking whether to build AMF module");

      Self.Switches.Parse_Switches (Arguments);

      if Self.Switches.Is_Enabled then
         if Self.Switches.Is_Enable_Specified then
            --  Command line switches takes preference.

            Substitutions.Insert (Enable_AMF, To_Unbounded_String ("true"));
            Self.Report_Status ("yes");

         elsif Substitutions.Element (Operating_System_Name) = "Windows" then
            --  On Windows it is impossible to build AMF due to GNAT bugs.

            Substitutions.Insert (Enable_AMF, To_Unbounded_String (""));
            Self.Report_Status ("no");

         else
            Substitutions.Insert (Enable_AMF, To_Unbounded_String ("true"));
            Self.Report_Status ("yes");
         end if;

      else
         Substitutions.Insert (Enable_AMF, To_Unbounded_String (""));
         Self.Report_Status ("no");
      end if;
   end Execute;

   ----------
   -- Help --
   ----------

   overriding function Help (Self : AMF_Test) return Unbounded_String_Vector is
   begin
      return Self.Switches.Help;
   end Help;

   ----------
   -- Name --
   ----------

   overriding function Name (Self : AMF_Test) return String is
   begin
      return "modules";
   end Name;

end Configure.Tests.Modules.AMF;
