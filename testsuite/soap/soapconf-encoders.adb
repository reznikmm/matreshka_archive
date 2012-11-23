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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with League.Strings;
with Web_Services.SOAP.Payloads.Encoders.Registry;

with SOAPConf.Payloads;

package body SOAPConf.Encoders is

   Test_URI    : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("http://example.org/ts-tests");
   Test_Prefix : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("test");

   Response_Ok_Name : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("responseOk");

   procedure Encode_Response_OK
    (Payload : SOAPConf.Payloads.Response_Ok;
     Writer  : in out XML.SAX.Writers.SAX_Writer'Class);

   ------------
   -- Create --
   ------------

   overriding function Create
    (Dummy : not null access Boolean) return Test_Payload_Encoder is
   begin
      return X : Test_Payload_Encoder;
   end Create;

   ------------
   -- Encode --
   ------------

   overriding procedure Encode
    (Self    : Test_Payload_Encoder;
     Payload : Web_Services.SOAP.Payloads.Abstract_SOAP_Payload'Class;
     Writer  : in out XML.SAX.Writers.SAX_Writer'Class) is
   begin
      if Payload in SOAPConf.Payloads.Response_Ok then
         Encode_Response_OK (SOAPConf.Payloads.Response_Ok (Payload), Writer);

      else
         raise Program_Error;
      end if;
   end Encode;

   ------------------------
   -- Encode_Response_OK --
   ------------------------

   procedure Encode_Response_OK
    (Payload : SOAPConf.Payloads.Response_Ok;
     Writer  : in out XML.SAX.Writers.SAX_Writer'Class) is
   begin
      Writer.Start_Prefix_Mapping (Test_Prefix, Test_URI);
      Writer.Start_Element (Test_URI, Response_Ok_Name);
      Writer.Characters (Payload.Text);
      Writer.End_Element (Test_URI, Response_Ok_Name);
   end Encode_Response_OK;

begin
   Web_Services.SOAP.Payloads.Encoders.Registry.Register
    (SOAPConf.Payloads.Response_Ok'Tag, Test_Payload_Encoder'Tag);
end SOAPConf.Encoders;
