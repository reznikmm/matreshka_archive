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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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

with League.Strings;
with XML.SAX.Input_Sources.Streams.Test_Sockets;
with XML.SAX.Simple_Readers;

with Put_Line;
with Read_File;
with SAX_Events_Writers;

procedure Test_26 is

   use type League.Strings.Universal_String;

   Expected : constant League.Strings.Universal_String
     := Read_File (Ada.Command_Line.Argument (1));

   Source   : aliased
     XML.SAX.Input_Sources.Streams.Test_Sockets.Test_Socket_Input_Source;
   Reader   : aliased XML.SAX.Simple_Readers.SAX_Simple_Reader;
   Writer   : aliased SAX_Events_Writers.SAX_Events_Writer;

begin
   Reader.Set_Content_Handler (Writer'Unchecked_Access);
   Reader.Set_Input_Source (Source'Access);
   Reader.Parse;
   Reader.Parse;
   Writer.Done;

   if Expected /= Writer.Text then
      Put_Line (League.Strings.To_Universal_String ("Expected:"));
      Put_Line (Expected);
      Put_Line (League.Strings.To_Universal_String ("Actual:"));
      Put_Line (Writer.Text);

      raise Program_Error;
   end if;
end Test_26;
