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
-- Copyright © 2011-2014, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Text_IO;
with GNAT.Expect;
with GNAT.OS_Lib;

with Configure.Instantiate;
with Configure.Internals;

package body Configure.Builder is

   use GNAT.Expect;

   function To_String (Args : GNAT.OS_Lib.Argument_List) return String;
   --  Converts argument list into printable string.

   function Build
    (Report_Log : not null access procedure (Message : String);
     Directory  : String) return Boolean;
   --  Common code for both variants of procedure.

   -----------
   -- Build --
   -----------

   function Build
    (Report_Log : not null access procedure (Message : String);
     Directory  : String) return Boolean
   is
      Args   : constant GNAT.OS_Lib.Argument_List
        := (1 => new String'("-p"),
            2 => new String'("-P" & Directory & "/check.gpr"));
      Result : Boolean;

   begin
      --  Generate project file from template when necessary.

      if Ada.Directories.Exists (Directory & "check.gpr.in") then
         Configure.Instantiate (Directory & "check.gpr", True);
      end if;

      --  Run builder.

      Report_Log ("gnatmake" & To_String (Args));

      begin
         declare
            Status : aliased Integer;
            Output : constant String :=
              Get_Command_Output ("gnatmake", Args, "", Status'Access, True);

         begin
            Report_Log (Output);
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
         Ada.Directories.Delete_File (Directory & "check.gpr");
      end if;

      return Result;
   end Build;

   -----------
   -- Build --
   -----------

   function Build
    (Test      : Configure.Abstract_Tests.Abstract_Test'Class;
     Directory : String) return Boolean
   is

      procedure Report_Log (Message : String);
      --  Reports message using test's log stream.

      ----------------
      -- Report_Log --
      ----------------

      procedure Report_Log (Message : String) is
      begin
         Test.Report_Log (Message);
      end Report_Log;

   begin
      return Build (Report_Log'Access, Directory);
   end Build;

   -----------
   -- Build --
   -----------

   function Build (Directory : String) return Boolean is

      procedure Report_Log (Message : String);
      --  Reports message using global log stream.

      ----------------
      -- Report_Log --
      ----------------

      procedure Report_Log (Message : String) is
      begin
         Ada.Text_IO.Put_Line (Configure.Internals.Log_Output, Message);
         Ada.Text_IO.Flush (Configure.Internals.Log_Output);
      end Report_Log;

   begin
      return Build (Report_Log'Access, Directory);
   end Build;

   ---------------
   -- To_String --
   ---------------

   function To_String (Args : GNAT.OS_Lib.Argument_List) return String is
      Result : Unbounded_String;

   begin
      for Index in Args'Range loop
         Append (Result, ' ');
         Append (Result, Args (Index).all);
      end loop;

      return To_String (Result);
   end To_String;

end Configure.Builder;
