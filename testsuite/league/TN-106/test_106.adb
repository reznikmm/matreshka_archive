------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                            Testsuite Component                           --
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
--  This test checks implementation of 'Read and 'Write attributes for
--  Universal_String type.
------------------------------------------------------------------------------
with Ada.Directories;
with Ada.Streams.Stream_IO;

with League.Strings;

procedure Test_106 is

   S1 : constant League.Strings.Universal_String
     := League.Strings.Empty_Universal_String;
   S2 : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("test");

   procedure Do_Test (Item : League.Strings.Universal_String);

   -------------
   -- Do_Test --
   -------------

   procedure Do_Test (Item : League.Strings.Universal_String) is
      use type League.Strings.Universal_String;

      File : Ada.Streams.Stream_IO.File_Type;
      Aux  : League.Strings.Universal_String;

   begin
      Ada.Streams.Stream_IO.Create (File, Ada.Streams.Stream_IO.Out_File);

      League.Strings.Universal_String'Write
       (Ada.Streams.Stream_IO.Stream (File), Item);

      Ada.Streams.Stream_IO.Reset (File, Ada.Streams.Stream_IO.In_File);

      League.Strings.Universal_String'Read
       (Ada.Streams.Stream_IO.Stream (File), Aux);

      Ada.Streams.Stream_IO.Close (File);

      if Aux /= Item then
         raise Program_Error;
      end if;
   end Do_Test;

begin
   --  Check whether empty string is handled properly.

   Do_Test (S1);

   --  Check whether non-empty string is handled properly.

   Do_Test (S2);
end Test_106;
