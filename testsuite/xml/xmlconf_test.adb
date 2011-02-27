------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                            Testsuite Component                           --
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
with Ada.Integer_Text_IO;
with Ada.Text_IO;

with League.Strings;
with XML.SAX.Input_Sources.Streams.Files;
with XML.SAX.Simple_Readers;

with XMLConf.Entity_Resolvers;
with XMLConf.Testsuite_Handlers;
with Put_Line;

procedure XMLConf_Test is

   use XMLConf;
   use Ada.Integer_Text_IO;
   use Ada.Text_IO;

   type Percent is delta 0.01 range 0.00 .. 100.00;

   Cwd        : constant String := Ada.Directories.Current_Directory;
   Data       : constant String := Ada.Command_Line.Argument (1);
   Dwd        : constant String := Ada.Directories.Containing_Directory (Data);
   Source     : aliased XML.SAX.Input_Sources.Streams.Files.File_Input_Source;
   Reader     : aliased XML.SAX.Simple_Readers.SAX_Simple_Reader;
   Resolver   : aliased XMLConf.Entity_Resolvers.Entity_Resolver;
   Handler    : aliased XMLConf.Testsuite_Handlers.Testsuite_Handler;
   Enabled    : Test_Flags := (others => True);
   Passed     : Natural;
   Failed     : Natural;
   Suppressed : Natural;

begin
   if Ada.Command_Line.Argument_Count > 1 then
      Enabled := (others => False);

      for J in 2 .. Ada.Command_Line.Argument_Count loop
         if Ada.Command_Line.Argument (J) = "--valid" then
            Enabled (Valid) := True;

         elsif Ada.Command_Line.Argument (J) = "--invalid" then
            Enabled (Invalid) := True;

         elsif Ada.Command_Line.Argument (J) = "--not-wellformed" then
            Enabled (Not_Wellformed) := True;

         elsif Ada.Command_Line.Argument (J) = "--error" then
            Enabled (Error) := True;

         else
            raise Program_Error;
         end if;
      end loop;
   end if;

   XML.SAX.Simple_Readers.Put_Line := Put_Line'Access;

   --  Load set of suppressed tests.

   Handler.Read_Suppressed
    (Ada.Directories.Containing_Directory (Dwd) & "/suppressed.lst");

   --  Because of limitations of current implementation in tracking relative
   --  paths for entities the current working directory is changed to the
   --  containing directory of the testsuite description file.

   Ada.Directories.Set_Directory (Dwd);
   Reader.Set_Entity_Resolver (Resolver'Unchecked_Access);
   Reader.Set_Content_Handler (Handler'Unchecked_Access);
   Reader.Set_Error_Handler (Handler'Unchecked_Access);
   Source.Open (Ada.Directories.Simple_Name (Data));
   Handler.Enabled := Enabled;
   Reader.Parse (Source'Access);
   Ada.Directories.Set_Directory (Cwd);

   Passed :=
     Handler.Results (Valid).Passed
       + Handler.Results (Invalid).Passed
       + Handler.Results (Not_Wellformed).Passed
       + Handler.Results (Error).Passed;
   Failed :=
     Handler.Results (Valid).Failed
       + Handler.Results (Invalid).Failed
       + Handler.Results (Not_Wellformed).Failed
       + Handler.Results (Error).Failed;
   Suppressed :=
     Handler.Results (Valid).Suppressed
       + Handler.Results (Invalid).Suppressed
       + Handler.Results (Not_Wellformed).Suppressed
       + Handler.Results (Error).Suppressed;

   if Failed = 0 then
      return;
   end if;

   Put_Line (" Group  Passed Failed Skiped |  Crash Output   SAX");
   Put_Line ("------- ------ ------ ------ | ------ ------ ------");

   if Enabled (Valid) then
      Put ("valid  ");
      Put (Handler.Results (Valid).Passed, 7);
      Put (Handler.Results (Valid).Failed, 7);
      Put (Handler.Results (Valid).Suppressed, 7);
      Put (" |");
      Put (Handler.Results (Valid).Crash, 7);
      Put (Handler.Results (Valid).Output, 7);
      Put (Handler.Results (Valid).SAX, 7);
      New_Line;
   end if;

   if Enabled (Invalid) then
      Put ("invalid");
      Put (Handler.Results (Invalid).Passed, 7);
      Put (Handler.Results (Invalid).Failed, 7);
      Put (Handler.Results (Invalid).Suppressed, 7);
      Put (" |");
      Put (Handler.Results (Invalid).Crash, 7);
      Put (Handler.Results (Invalid).Output, 7);
      Put (Handler.Results (Invalid).SAX, 7);
      New_Line;
   end if;

   if Enabled (Not_Wellformed) then
      Put ("not-wf ");
      Put (Handler.Results (Not_Wellformed).Passed, 7);
      Put (Handler.Results (Not_Wellformed).Failed, 7);
      Put (Handler.Results (Not_Wellformed).Suppressed, 7);
      Put (" |");
      Put (Handler.Results (Not_Wellformed).Crash, 7);
      Put (Handler.Results (Not_Wellformed).Output, 7);
      Put (Handler.Results (Not_Wellformed).SAX, 7);
      New_Line;
   end if;

   if Enabled (Error) then
      Put ("error  ");
      Put (Handler.Results (Error).Passed, 7);
      Put (Handler.Results (Error).Failed, 7);
      Put (Handler.Results (Error).Suppressed, 7);
      Put (" |");
      Put (Handler.Results (Error).Crash, 7);
      Put (Handler.Results (Error).Output, 7);
      Put (Handler.Results (Error).SAX, 7);
      New_Line;
   end if;

   Put_Line ("        ------ ------ ------ | ------ ------ ------");
   Put ("       ");
   Put
    (Handler.Results (Valid).Passed
       + Handler.Results (Invalid).Passed
       + Handler.Results (Not_Wellformed).Passed
       + Handler.Results (Error).Passed,
     7);
   Put
    (Handler.Results (Valid).Failed
       + Handler.Results (Invalid).Failed
       + Handler.Results (Not_Wellformed).Failed
       + Handler.Results (Error).Failed,
     7);
   Put
    (Handler.Results (Valid).Suppressed
       + Handler.Results (Invalid).Suppressed
       + Handler.Results (Not_Wellformed).Suppressed
       + Handler.Results (Error).Suppressed,
     7);
   Put (" |");
   Put
    (Handler.Results (Valid).Crash
       + Handler.Results (Invalid).Crash
       + Handler.Results (Not_Wellformed).Crash
       + Handler.Results (Error).Crash,
     7);
   Put
    (Handler.Results (Valid).Output
       + Handler.Results (Invalid).Output
       + Handler.Results (Not_Wellformed).Output
       + Handler.Results (Error).Output,
     7);
   Put
    (Handler.Results (Valid).SAX
       + Handler.Results (Invalid).SAX
       + Handler.Results (Not_Wellformed).SAX
       + Handler.Results (Error).SAX,
     7);
   New_Line;

   New_Line;
   Put_Line
    ("Status:"
       & Percent'Image
          (Percent
            (Float (Passed) / Float (Passed + Failed + Suppressed) * 100.0))
       & "% passed");

   if Handler.Results (Valid).Crash /= 0
     or Handler.Results (Invalid).Crash /= 0
     or Handler.Results (Not_Wellformed).Crash /= 0
     or Handler.Results (Error).Crash /= 0
   then
      raise Program_Error;
   end if;

exception
   when others =>
      Ada.Directories.Set_Directory (Cwd);

      raise;
end XMLConf_Test;
