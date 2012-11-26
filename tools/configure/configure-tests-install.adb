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
with Configure.Abstract_Tests;

with GNAT.Strings;
with GNAT.OS_Lib;

package body Configure.Tests.Install is

   Install_Name : constant Unbounded_String := +"INSTALL";

   -------------
   -- Execute --
   -------------

   overriding procedure Execute
    (Self      : in out Install_Test;
     Arguments : in out Unbounded_String_Vector)
   is
      use type GNAT.Strings.String_Access;

      Install_Path : constant GNAT.Strings.String_Access
        := GNAT.OS_Lib.Locate_Exec_On_Path ("install");

   begin
      if Install_Path = null then
         Self.Report_Check ("Required command not found: 'install'");

         Self.Report_Status ("Exiting");
         
         raise Internal_Error;
      end if;
      
      Substitutions.Insert
       (Install_Name, Convert_Windows_Path (+Install_Path.all));
   end Execute;

   ----------
   -- Help --
   ----------

   overriding function Help
    (Self : Install_Test) return Unbounded_String_Vector is
   begin
      return Result : Unbounded_String_Vector;
   end Help;

   ----------
   -- Name --
   ----------

   overriding function Name (Self : Install_Test) return String is
   begin
      return "install";
   end Name;

end Configure.Tests.Install;
