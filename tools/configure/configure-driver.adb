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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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
with Configure.Directories;
with Configure.Instantiate;
with Configure.OCI;
with Configure.Operating_System;
with Configure.PostgreSQL;
with Configure.RTL_Version;
with Configure.SQLite3;

procedure Configure.Driver is
   use Ada.Command_Line;

begin
   Configure.Directories;
   Configure.Architecture;
   Configure.Operating_System;
   Configure.RTL_Version;
   Configure.SQLite3;
   Configure.PostgreSQL;
   Configure.OCI;

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

   Configure.Instantiate ("Makefile.config");
   Configure.Instantiate ("gnat/install/config.gpr");
   Configure.Instantiate ("gnat/matreshka_config.gpr");

exception
   when Internal_Error =>
      Set_Exit_Status (Failure);
end Configure.Driver;
