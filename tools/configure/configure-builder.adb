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
with Ada.Directories;
with GNAT.Expect;

with Configure.Instantiate;

package body Configure.Builder is

   use GNAT.Expect;

   -----------
   -- Build --
   -----------

   function Build (Directory : String) return Boolean is
      Result : Boolean;

   begin
      --  Generate project file from template when necessary.

      if Ada.Directories.Exists (Directory & "check.gpr.in") then
         Configure.Instantiate (Directory & "check.gpr", True);
      end if;

      --  Run builder.

      begin
         declare
            Status : aliased Integer;
            Output : constant String :=
              Get_Command_Output
               ("gnatmake",
                (1 => new String'("-p"),
                 2 => new String'("-P" & Directory & "/check.gpr")),
                "",
                Status'Access,
                True);

         begin
            Result := Status = 0;
         end;

      exception
         when GNAT.Expect.Invalid_Process =>
            Result := False;
      end;

      --  Cleanup build directory.

      if Ada.Directories.Exists (Directory & "_build") then
         Ada.Directories.Delete_Tree (Directory & "_build");
      end if;

      --  Remove generated project file when necessary.

      if Ada.Directories.Exists (Directory & "check.gpr.in")
        and Ada.Directories.Exists (Directory & "check.gpr")
      then
         null;  --  Ada.Directories.Delete_File (Directory & "check.gpr");
      end if;

      return Result;
   end Build;

end Configure.Builder;
