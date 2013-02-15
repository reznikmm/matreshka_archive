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
-- Copyright © 2013, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  Checks that dispatcher respond by appropriate SOAP Fault when SOAP Message
--  handler wasn't found.
------------------------------------------------------------------------------
with Ada.Wide_Wide_Text_IO;

with League.Strings;
with League.Text_Codecs;

with Web_Services.SOAP.Dispatcher;

with SOAPConf.Reply_Streams;

procedure Test_292 is

   use type League.Strings.Universal_String;

   Request      : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("<?xml version='1.0'?>"
            & "<SOAP-ENV:Envelope"
            & " xmlns:SOAP-ENV='http://www.w3.org/2003/05/soap-envelope'>"
            & "<SOAP-ENV:Body/>"
            & "</SOAP-ENV:Envelope>");
   Expected_1   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("<?xml version='1.0'?>"
            & "<env:Envelope"
            & " xmlns:env='http://www.w3.org/2003/05/soap-envelope'>"
            & "<env:Body>"
            & "<env:Fault>"
            & "<env:Code>"
            & "<env:Value>env:Sender</env:Value>"
            & "<env:Subcode>"
            & "<env:Value xmlns:rpc='http://www.w3.org/2003/05/soap-rpc'>"
            & "rpc:ProcedureNotPresent</env:Value>"
            & "</env:Subcode>"
            & "</env:Code>"
            & "<env:Reason>"
            & "<env:Text xml:lang='en-US'>Procedure Not Present</env:Text>"
            & "</env:Reason>"
            & "<env:Detail>SOAP message handler was not found for empty"
            & " payload element without SOAP Action</env:Detail>"
            & "</env:Fault>"
            & "</env:Body>"
            & "</env:Envelope>");
   Expected_2   : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String
         ("<?xml version='1.0'?>"
            & "<env:Envelope"
            & " xmlns:env='http://www.w3.org/2003/05/soap-envelope'>"
            & "<env:Body>"
            & "<env:Fault>"
            & "<env:Code>"
            & "<env:Value>env:Sender</env:Value>"
            & "<env:Subcode>"
            & "<env:Value xmlns:rpc='http://www.w3.org/2003/05/soap-rpc'>"
            & "rpc:ProcedureNotPresent</env:Value>"
            & "</env:Subcode>"
            & "</env:Code>"
            & "<env:Reason>"
            & "<env:Text xml:lang='en-US'>Procedure Not Present</env:Text>"
            & "</env:Reason>"
            & "<env:Detail>SOAP message handler was not found for empty"
            & " payload element with 'http://forge.ada-ru.org/test' SOAP"
            & " Action</env:Detail>"
            & "</env:Fault>"
            & "</env:Body>"
            & "</env:Envelope>");
   Codec        : constant League.Text_Codecs.Text_Codec
     := League.Text_Codecs.Codec
         (League.Strings.To_Universal_String ("utf-8"));
   Reply_Stream : aliased SOAPConf.Reply_Streams.Reply_Stream;

begin
   Web_Services.SOAP.Dispatcher.Dispatch
    (Codec.Encode (Request).To_Stream_Element_Array,
     League.Strings.Empty_Universal_String,
     Reply_Stream'Unchecked_Access);

   if Codec.Decode (Reply_Stream.Output_Data) /= Expected_1 then
      Ada.Wide_Wide_Text_IO.Put_Line (Expected_1.To_Wide_Wide_String);
      Ada.Wide_Wide_Text_IO.Put_Line
       (Codec.Decode (Reply_Stream.Output_Data).To_Wide_Wide_String);

      raise Program_Error;
   end if;

   Web_Services.SOAP.Dispatcher.Dispatch
    (Codec.Encode (Request).To_Stream_Element_Array,
     League.Strings.To_Universal_String ("http://forge.ada-ru.org/test"),
     Reply_Stream'Unchecked_Access);

   if Codec.Decode (Reply_Stream.Output_Data) /= Expected_2 then
      Ada.Wide_Wide_Text_IO.Put_Line (Expected_2.To_Wide_Wide_String);
      Ada.Wide_Wide_Text_IO.Put_Line
       (Codec.Decode (Reply_Stream.Output_Data).To_Wide_Wide_String);

      raise Program_Error;
   end if;
end Test_292;
