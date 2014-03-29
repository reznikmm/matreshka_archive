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
with League.Text_Codecs;

with XML.SAX.Input_Sources.Streams.Element_Arrays;
with XML.SAX.Simple_Readers;

with Web_Services.SOAP.Constants;
with Web_Services.SOAP.Message_Decoders;
with Web_Services.SOAP.Message_Encoders;
with Web_Services.SOAP.Modules.Registry;

package body Web_Services.SOAP.Clients is

   UTF8_Coder : constant League.Text_Codecs.Text_Codec :=
     League.Text_Codecs.Codec (League.Strings.To_Universal_String ("utf-8"));

   procedure Read_Payload
     (Response_Data : League.Stream_Element_Vectors.Stream_Element_Vector;
      Response      : out Web_Services.SOAP.Payloads.SOAP_Payload_Access);
   --  Extract Payload from Response_Data

   ----------
   -- Call --
   ----------

   procedure Call
     (Self     : in out SOAP_Client;
      Request  : Web_Services.SOAP.Payloads.SOAP_Payload_Access;
      Response : out Web_Services.SOAP.Payloads.SOAP_Payload_Access;
      User     : League.Strings.Universal_String :=
        League.Strings.Empty_Universal_String;
      Password : League.Strings.Universal_String :=
        League.Strings.Empty_Universal_String;
      Action   : League.Strings.Universal_String :=
        League.Strings.Empty_Universal_String)
   is
      Input  : Web_Services.SOAP.Messages.SOAP_Message_Access :=
        new Web_Services.SOAP.Messages.SOAP_Message;
   begin
      Input.Action := Action;
      Input.Payload := Request;

      Web_Services.SOAP.Modules.Registry.Execute_Send_Request
        (Input.all, User, Password);

      Self.Call (Input, Response);

      Web_Services.SOAP.Messages.Free (Input);
   end Call;

   ----------
   -- Call --
   ----------

   procedure Call
     (Self     : in out SOAP_Client;
      Input    : Web_Services.SOAP.Messages.SOAP_Message_Access;
      Response : out Web_Services.SOAP.Payloads.SOAP_Payload_Access)
   is
      use type League.Strings.Universal_String;

      Encoder : Web_Services.SOAP.Message_Encoders.SOAP_Message_Encoder;
      Raw     : constant League.Stream_Element_Vectors.Stream_Element_Vector
        := Encoder.Encode (Input.all);

      Content_Type  : League.Stream_Element_Vectors.Stream_Element_Vector :=
        League.Stream_Element_Vectors.To_Stream_Element_Vector
          (Constants.Application_SOAP_XML_Array);

      Response_Data : League.Stream_Element_Vectors.Stream_Element_Vector;
   begin
      if not Input.Action.Is_Empty then
         Content_Type.Append (UTF8_Coder.Encode ("; action=" & Input.Action));
      end if;

      Self.Transport.Post_Request
        (Content_Type  => Content_Type,
         Request_Data  => Raw,
         Response_Data => Response_Data);

      if Response_Data.Is_Empty then
         return;
      end if;

      Read_Payload (Response_Data, Response);
   end Call;

   -------------------
   -- Next_Response --
   -------------------

   not overriding procedure Next_Response
     (Self     : in out SOAP_Client;
      Response : out Web_Services.SOAP.Payloads.SOAP_Payload_Access)
   is
      Response_Data : League.Stream_Element_Vectors.Stream_Element_Vector;
   begin
      Self.Transport.Next_Response (Response_Data);

      if Response_Data.Is_Empty then
         return;
      end if;

      Read_Payload (Response_Data, Response);
   end Next_Response;

   ------------------
   -- Read_Payload --
   ------------------

   procedure Read_Payload
     (Response_Data : League.Stream_Element_Vectors.Stream_Element_Vector;
      Response      : out Web_Services.SOAP.Payloads.SOAP_Payload_Access)
   is
      Output  : Web_Services.SOAP.Messages.SOAP_Message_Access;
      Source  : aliased XML.SAX.Input_Sources.Streams.Element_Arrays.
          Stream_Element_Array_Input_Source;
      Decoder : aliased
        Web_Services.SOAP.Message_Decoders.SOAP_Message_Decoder;
      Reader  : aliased XML.SAX.Simple_Readers.Simple_Reader;

   begin
      --  Parse request data.

      Source.Set_Stream_Element_Array
        (Response_Data.To_Stream_Element_Array);
      Reader.Set_Content_Handler (Decoder'Unchecked_Access);
      Reader.Set_Error_Handler (Decoder'Unchecked_Access);
      Reader.Set_Lexical_Handler (Decoder'Unchecked_Access);
      Reader.Parse (Source'Access);

      if Decoder.Success then
         --  Request was decoded successfully.

         Output := Decoder.Message;
         Response := Output.Payload;
         Output.Payload := null;

         Web_Services.SOAP.Messages.Free (Output);
      end if;
   end Read_Payload;

end Web_Services.SOAP.Clients;
