------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                            Testsuite Component                           --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Wide_Wide_Text_IO;

with League.Stream_Element_Vectors;
with League.Strings;
with League.Text_Codecs;

with Web_Services.SOAP.Dispatcher;
with Web_Services.SOAP.Reply_Streams;

with SOAPConf.Reply_Streams;
with SOAPConf.Testcases.Test_T24;
with SOAPConf.Testcases.Test_T25;
with SOAPConf.Testcases.Test_T26;
with SOAPConf.Testcases.Test_T28;
with SOAPConf.Testcases.Test_T29;
with SOAPConf.Testcases.Test_T34;
with SOAPConf.Testcases.Test_T37;
with SOAPConf.Testcases.Test_T40;

with SOAPConf.Decoders;
pragma Unreferenced (SOAPConf.Decoders);
with SOAPConf.Encoders;
pragma Unreferenced (SOAPConf.Encoders);
with SOAPConf.Handlers;
pragma Unreferenced (SOAPConf.Handlers);

procedure SOAPConf.Driver is
   use type League.Strings.Universal_String;

   Codec : constant League.Text_Codecs.Text_Codec
     := League.Text_Codecs.Codec
         (League.Strings.To_Universal_String ("utf-8"));

   procedure Do_Simple_Test
    (Source   : League.Strings.Universal_String;
     Expected : League.Strings.Universal_String);

   --------------------
   -- Do_Simple_Test --
   --------------------

   procedure Do_Simple_Test
    (Source   : League.Strings.Universal_String;
     Expected : League.Strings.Universal_String)
   is
      Reply : aliased SOAPConf.Reply_Streams.Reply_Stream;

   begin
      Web_Services.SOAP.Dispatcher.Dispatch
       (Codec.Encode (Source).To_Stream_Element_Array,
        League.Strings.Empty_Universal_String,
        Reply'Unchecked_Access);

      if Codec.Decode (Reply.Output_Data) /= Expected then
         Ada.Wide_Wide_Text_IO.Put_Line
          (''' & Expected.To_Wide_Wide_String & ''');
         Ada.Wide_Wide_Text_IO.Put_Line
          (''' & Codec.Decode (Reply.Output_Data).To_Wide_Wide_String & ''');

         raise Program_Error;
      end if;
   end Do_Simple_Test;

begin
   Do_Simple_Test
    (SOAPConf.Testcases.Test_T24.Scenario.Message_A,
     SOAPConf.Testcases.Test_T24.Scenario.Message_C);
   Do_Simple_Test
    (SOAPConf.Testcases.Test_T25.Scenario.Message_A,
     SOAPConf.Testcases.Test_T25.Scenario.Message_C);
   Do_Simple_Test
    (SOAPConf.Testcases.Test_T26.Scenario.Message_A,
     SOAPConf.Testcases.Test_T26.Scenario.Message_C);
   Do_Simple_Test
    (SOAPConf.Testcases.Test_T28.Scenario.Message_A,
     SOAPConf.Testcases.Test_T28.Scenario.Message_C);
   Do_Simple_Test
    (SOAPConf.Testcases.Test_T29.Scenario.Message_A,
     SOAPConf.Testcases.Test_T29.Scenario.Message_C);
   Do_Simple_Test
    (SOAPConf.Testcases.Test_T34.Scenario.Message_A,
     SOAPConf.Testcases.Test_T34.Scenario.Message_C);
   Do_Simple_Test
    (SOAPConf.Testcases.Test_T37.Scenario.Message_A,
     SOAPConf.Testcases.Test_T37.Scenario.Message_C);
   Do_Simple_Test
    (SOAPConf.Testcases.Test_T40.Scenario.Message_A,
     SOAPConf.Testcases.Test_T40.Scenario.Message_C);
end SOAPConf.Driver;
