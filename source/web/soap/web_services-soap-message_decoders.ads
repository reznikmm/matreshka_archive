------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                        Runtime Library Component                         --
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
--  SOAP message decoder process events from SAX parser.
------------------------------------------------------------------------------
with League.Strings;
with XML.SAX.Attributes;
with XML.SAX.Content_Handlers;
with XML.SAX.Error_Handlers;
with XML.SAX.Parse_Exceptions;
with XML.SAX.Lexical_Handlers;

private with Web_Services.SOAP.Payloads.Decoders;
private with Web_Services.SOAP.Headers.Decoders;
with Web_Services.SOAP.Messages;

package Web_Services.SOAP.Message_Decoders is

   type SOAP_Message_Decoder is
     limited new XML.SAX.Content_Handlers.SAX_Content_Handler
       and XML.SAX.Error_Handlers.SAX_Error_Handler
       and XML.SAX.Lexical_Handlers.SAX_Lexical_Handler with private;

   function Success (Self : SOAP_Message_Decoder'Class) return Boolean;

   function Message
    (Self : SOAP_Message_Decoder'Class)
       return Web_Services.SOAP.Messages.SOAP_Message_Access;

private

   type States is
    (Initial,         --  Initial state.
     SOAP_Envelope,   --  SOAP Envelope element has been processed.
     SOAP_Header,     --  SOAP Header element has been processed.
     Header_Element,  --  SOAP Header child element has been processed.
     Header_Ignore,   --  Ignore child and grandchildren of SOAP Header.
     SOAP_Body,       --  SOAP Body element has beed processed.
     Body_Element,    --  SOAP Body child element has been processed.
     Body_Ignore);    --  Ignore child and grandchildren of SOAP Header.

   type Modes is
    (Strict,               --  Strict mode: all 'SHOULD' assertions are
                           --  checked.
     Conformant);          --  Relaxed mode to pass SOAP conformance testsuite;
                           --  some 'SHOULD' assertions aren't checked.

   type SOAP_Message_Decoder is
     limited new XML.SAX.Content_Handlers.SAX_Content_Handler
       and XML.SAX.Error_Handlers.SAX_Error_Handler
       and XML.SAX.Lexical_Handlers.SAX_Lexical_Handler with
   record
      Mode            : Modes  := Conformant;
      State           : States := Initial;
      Depth           : Natural := 0;
      Payload_Decoder :
        Web_Services.SOAP.Payloads.Decoders.SOAP_Payload_Decoder_Access;
      Header_Decoder  :
        Web_Services.SOAP.Headers.Decoders.SOAP_Header_Decoder_Access;
      Message         : Web_Services.SOAP.Messages.SOAP_Message_Access;
      Success         : Boolean := True;
   end record;

   overriding procedure Characters
    (Self    : in out SOAP_Message_Decoder;
     Text    : League.Strings.Universal_String;
     Success : in out Boolean);

   overriding procedure End_Element
    (Self           : in out SOAP_Message_Decoder;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Success        : in out Boolean);

   overriding procedure Error
    (Self       : in out SOAP_Message_Decoder;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception;
     Success    : in out Boolean);
   --  Stops processing of the message.

   overriding function Error_String
    (Self : SOAP_Message_Decoder) return League.Strings.Universal_String;
   --  Returns error information as string.

   overriding procedure Fatal_Error
    (Self       : in out SOAP_Message_Decoder;
     Occurrence : XML.SAX.Parse_Exceptions.SAX_Parse_Exception);
   --  Stops processing of the message.

   overriding procedure Processing_Instruction
    (Self    : in out SOAP_Message_Decoder;
     Target  : League.Strings.Universal_String;
     Data    : League.Strings.Universal_String;
     Success : in out Boolean);
   --  Handles processing instructions in XML stream. Processing instructions
   --  are prohibited in SOAP messages, this subprogram always sets Success to
   --  False.

   overriding procedure Start_Document
    (Self    : in out SOAP_Message_Decoder;
     Success : in out Boolean);
   --  Handles start of processing of document. Used for initialization.

   overriding procedure Start_DTD
    (Self      : in out SOAP_Message_Decoder;
     Name      : League.Strings.Universal_String;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String;
     Success   : in out Boolean);

   overriding procedure Start_Element
    (Self           : in out SOAP_Message_Decoder;
     Namespace_URI  : League.Strings.Universal_String;
     Local_Name     : League.Strings.Universal_String;
     Qualified_Name : League.Strings.Universal_String;
     Attributes     : XML.SAX.Attributes.SAX_Attributes;
     Success        : in out Boolean);

end Web_Services.SOAP.Message_Decoders;
