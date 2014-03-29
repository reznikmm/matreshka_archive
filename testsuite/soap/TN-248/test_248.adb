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
-- Copyright © 2012-2014, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Unchecked_Deallocation;

with League.Strings;
with League.Text_Codecs;
with XML.SAX.Simple_Readers;
with XML.SAX.String_Input_Sources;

with Web_Services.SOAP.Message_Decoders;
with Web_Services.SOAP.Message_Encoders;
with Web_Services.SOAP.Messages;

with Test_248_Decoders;

procedure Test_248 is

   procedure Do_Test
    (Request : Wide_Wide_String;
     Reply   : Wide_Wide_String);

   -------------
   -- Do_Test --
   -------------

   procedure Do_Test
    (Request : Wide_Wide_String;
     Reply   : Wide_Wide_String)
   is
      use type League.Strings.Universal_String;

      Source  : aliased XML.SAX.String_Input_Sources.String_Input_Source;
      Decoder :
        aliased Web_Services.SOAP.Message_Decoders.SOAP_Message_Decoder;
      Reader  : aliased XML.SAX.Simple_Readers.Simple_Reader;
      Encoder : Web_Services.SOAP.Message_Encoders.SOAP_Message_Encoder;
      Codec   : League.Text_Codecs.Text_Codec :=
        League.Text_Codecs.Codec
         (League.Strings.To_Universal_String ("utf-8"));
      Message : Web_Services.SOAP.Messages.SOAP_Message_Access;

   begin
      Source.Set_String (League.Strings.To_Universal_String (Request));
      Reader.Set_Content_Handler (Decoder'Unchecked_Access);
      Reader.Set_Error_Handler (Decoder'Unchecked_Access);
      Reader.Parse (Source'Unchecked_Access);

      if Decoder.Success then
         raise Program_Error;
      end if;

      Message := Decoder.Message;

      if Codec.Decode (Encoder.Encode (Message.all).To_Stream_Element_Array)
           /= League.Strings.To_Universal_String (Reply)
      then
         Ada.Wide_Wide_Text_IO.Put_Line
          (Codec.Decode
            (Encoder.Encode
              (Message.all).To_Stream_Element_Array).To_Wide_Wide_String);

         raise Program_Error;
      end if;

      Web_Services.SOAP.Messages.Free (Message);
   end Do_Test;

begin
   --  Empty string, XML reader must report fatal error.

   Do_Test
    ("",
     "<?xml version='1.0'?>"
       & "<env:Envelope xmlns:env='http://www.w3.org/2003/05/soap-envelope'>"
       & "<env:Body>"
       & "<env:Fault>"
       & "<env:Code>"
       & "<env:Value>env:Sender</env:Value>"
       & "</env:Code>"
       & "<env:Reason>"
       & "<env:Text xml:lang='en-US'>XML error: syntax error</env:Text>"
       & "</env:Reason>"
       & "</env:Fault>"
       & "</env:Body>"
       & "</env:Envelope>");

   --  Not wellformed XML.

   Do_Test
    ("<?xml version='1.0'?>"
       & "<SOAP-ENV:Envelope"
       & "  xmlns:SOAP-ENV='http://www.w3.org/2003/05/soap-envelope'>"
       & "<SOAP-ENV:Body>"
       & "</SOAP-ENV:Envelope>",
     "<?xml version='1.0'?>"
       & "<env:Envelope xmlns:env='http://www.w3.org/2003/05/soap-envelope'>"
       & "<env:Body>"
       & "<env:Fault>"
       & "<env:Code>"
       & "<env:Value>env:Sender</env:Value>"
       & "</env:Code>"
       & "<env:Reason>"
       & "<env:Text xml:lang='en-US'>"
       & "XML error: [3 WFC: Element Type Match] end tag name must match"
       & " start tag name"
       & "</env:Text>"
       & "</env:Reason>"
       & "</env:Fault>"
       & "</env:Body>"
       & "</env:Envelope>");

   --  Body decoder for namespace of child element of SOAP:Body element was not
   --  registered.

   Do_Test
    ("<?xml version='1.0'?>"
       & "<SOAP-ENV:Envelope"
       & "  xmlns:SOAP-ENV='http://www.w3.org/2003/05/soap-envelope'"
       & "  xmlns:ns1='http://www.example.com/'>"
       & "<SOAP-ENV:Body>"
       & "<ns1:Operation/>"
       & "</SOAP-ENV:Body>"
       & "</SOAP-ENV:Envelope>",
     "<?xml version='1.0'?>"
       & "<env:Envelope xmlns:env='http://www.w3.org/2003/05/soap-envelope'>"
       & "<env:Body>"
       & "<env:Fault>"
       & "<env:Code>"
       & "<env:Value>env:Sender</env:Value>"
       & "</env:Code>"
       & "<env:Reason>"
       & "<env:Text xml:lang='en-US'>"
       & "Unknown namespace URI 'http://www.example.com/'"
       & " of the child element of SOAP:Body"
       & "</env:Text>"
       & "</env:Reason>"
       & "</env:Fault>"
       & "</env:Body>"
       & "</env:Envelope>");

   --  Error is reported by body decoder (start of root element).

   Do_Test
    ("<?xml version='1.0'?>"
       & "<SOAP-ENV:Envelope"
       & "  xmlns:SOAP-ENV='http://www.w3.org/2003/05/soap-envelope'"
       & "  xmlns:ns1='http://matreshka.forge.ada-ru.org/'>"
       & "<SOAP-ENV:Body>"
       & "<ns1:Error/>"
       & "</SOAP-ENV:Body>"
       & "</SOAP-ENV:Envelope>",
     "<?xml version='1.0'?>"
       & "<env:Envelope xmlns:env='http://www.w3.org/2003/05/soap-envelope'>"
       & "<env:Body>"
       & "<env:Fault>"
       & "<env:Code>"
       & "<env:Value>env:Sender</env:Value>"
       & "</env:Code>"
       & "<env:Reason>"
       & "<env:Text xml:lang='en-US'>"
       & "Message body decoder reports error"
       & "</env:Text>"
       & "</env:Reason>"
       & "</env:Fault>"
       & "</env:Body>"
       & "</env:Envelope>");

   --  Error is reported by body decoder (start of child element).

   Do_Test
    ("<?xml version='1.0'?>"
       & "<SOAP-ENV:Envelope"
       & "  xmlns:SOAP-ENV='http://www.w3.org/2003/05/soap-envelope'"
       & "  xmlns:ns1='http://matreshka.forge.ada-ru.org/'>"
       & "<SOAP-ENV:Body>"
       & "<ns1:Message>"
       & "<ns1:Error/>"
       & "</ns1:Message>"
       & "</SOAP-ENV:Body>"
       & "</SOAP-ENV:Envelope>",
     "<?xml version='1.0'?>"
       & "<env:Envelope xmlns:env='http://www.w3.org/2003/05/soap-envelope'>"
       & "<env:Body>"
       & "<env:Fault>"
       & "<env:Code>"
       & "<env:Value>env:Sender</env:Value>"
       & "</env:Code>"
       & "<env:Reason>"
       & "<env:Text xml:lang='en-US'>"
       & "Message body decoder reports error"
       & "</env:Text>"
       & "</env:Reason>"
       & "</env:Fault>"
       & "</env:Body>"
       & "</env:Envelope>");

   --  Error is reported by body decoder (end of element).

   Do_Test
    ("<?xml version='1.0'?>"
       & "<SOAP-ENV:Envelope"
       & "  xmlns:SOAP-ENV='http://www.w3.org/2003/05/soap-envelope'"
       & "  xmlns:ns1='http://matreshka.forge.ada-ru.org/'>"
       & "<SOAP-ENV:Body>"
       & "<ns1:EndError/>"
       & "</SOAP-ENV:Body>"
       & "</SOAP-ENV:Envelope>",
     "<?xml version='1.0'?>"
       & "<env:Envelope xmlns:env='http://www.w3.org/2003/05/soap-envelope'>"
       & "<env:Body>"
       & "<env:Fault>"
       & "<env:Code>"
       & "<env:Value>env:Sender</env:Value>"
       & "</env:Code>"
       & "<env:Reason>"
       & "<env:Text xml:lang='en-US'>"
       & "Message body decoder reports error"
       & "</env:Text>"
       & "</env:Reason>"
       & "</env:Fault>"
       & "</env:Body>"
       & "</env:Envelope>");

   --  Error is reported by body decoder (character data).

   Do_Test
    ("<?xml version='1.0'?>"
       & "<SOAP-ENV:Envelope"
       & "  xmlns:SOAP-ENV='http://www.w3.org/2003/05/soap-envelope'"
       & "  xmlns:ns1='http://matreshka.forge.ada-ru.org/'>"
       & "<SOAP-ENV:Body>"
       & "<ns1:Message>Error</ns1:Message>"
       & "</SOAP-ENV:Body>"
       & "</SOAP-ENV:Envelope>",
     "<?xml version='1.0'?>"
       & "<env:Envelope xmlns:env='http://www.w3.org/2003/05/soap-envelope'>"
       & "<env:Body>"
       & "<env:Fault>"
       & "<env:Code>"
       & "<env:Value>env:Sender</env:Value>"
       & "</env:Code>"
       & "<env:Reason>"
       & "<env:Text xml:lang='en-US'>"
       & "Message body decoder reports error"
       & "</env:Text>"
       & "</env:Reason>"
       & "</env:Fault>"
       & "</env:Body>"
       & "</env:Envelope>");
end Test_248;
