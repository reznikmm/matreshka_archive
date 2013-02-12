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
with Ada.Tags;

with League.Text_Codecs;
with XML.SAX.Input_Sources.Streams.Element_Arrays;
with XML.SAX.Simple_Readers;

with Web_Services.SOAP.Constants;
with Web_Services.SOAP.Handler_Registry;
with Web_Services.SOAP.Handlers;
with Web_Services.SOAP.Message_Decoders;
with Web_Services.SOAP.Messages;
with Web_Services.SOAP.Modules.Registry;
with Web_Services.SOAP.Payloads;

package body Web_Services.SOAP.Dispatcher is

   --------------
   -- Dispatch --
   --------------

   procedure Dispatch
    (Input_Data  : Ada.Streams.Stream_Element_Array;
     SOAP_Action : League.Strings.Universal_String;
     Stream      : Web_Services.SOAP.Reply_Streams.Reply_Stream_Access)
   is
      use type Web_Services.SOAP.Handlers.SOAP_Message_Handler;
      use type Web_Services.SOAP.Messages.SOAP_Message_Access;
      use type Web_Services.SOAP.Payloads.SOAP_Payload_Access;

      Source  : aliased
        XML.SAX.Input_Sources.Streams.Element_Arrays.
          Stream_Element_Array_Input_Source;
      Decoder : aliased
        Web_Services.SOAP.Message_Decoders.SOAP_Message_Decoder;
      Reader  : aliased XML.SAX.Simple_Readers.SAX_Simple_Reader;
      Input   : Web_Services.SOAP.Messages.SOAP_Message_Access;
      Output  : Web_Services.SOAP.Messages.SOAP_Message_Access;
      Handler : Web_Services.SOAP.Handlers.SOAP_Message_Handler;
      Handled : Boolean;

   begin
      --  Parse request data.

      Source.Set_Stream_Element_Array (Input_Data);
      Reader.Set_Content_Handler (Decoder'Unchecked_Access);
      Reader.Set_Error_Handler (Decoder'Unchecked_Access);
      Reader.Set_Lexical_Handler (Decoder'Unchecked_Access);
      Reader.Parse (Source'Access);

      if Decoder.Success then
         --  Request was decoded successfully, lookup for handler.

         Input := Decoder.Message;
         Input.Action := SOAP_Action;
         Input.Output := Stream;

         --  Execute SOAP Modules.

         Web_Services.SOAP.Modules.Registry.Execute_Receive_Request
          (Input.all, Output);

         if Output /= null then
            --  Return error when SOAP Module returns fault.

            Stream.Send_Message (Output);

            return;
         end if;

         --  Handle message using message-style handlers.

         if Input.Payload = null then
            Handler :=
              Web_Services.SOAP.Handler_Registry.Resolve (Ada.Tags.No_Tag);

         else
            Handler :=
              Web_Services.SOAP.Handler_Registry.Resolve (Input.Payload'Tag);
         end if;

         if Handler /= null then
            --  Execute handler.

            Handler (Input, Output);
            Web_Services.SOAP.Messages.Free (Input);
            Stream.Send_Message (Output);

            return;
         end if;

         --  Process request using RCI-style handlers.

         Handled := False;

         for Handler of Web_Services.SOAP.Handler_Registry.RPC_Registry loop
            Handler (Input.all, Output, Handled);

            exit when Handled;
         end loop;

         if Handled then
            --  Return when request has been handled.

            Stream.Send_Message (Output);

            return;
         end if;

         raise Program_Error;
         --  Request was not handled, fault must be created and returned.

      else
         Output := Decoder.Message;

         if Output = null then
            --  SOAP message handler detects error, but unable to generate
            --  SOAP fault.

            declare
               Ignore : Boolean;
               Codec  : constant League.Text_Codecs.Text_Codec
                 := League.Text_Codecs.Codec
                     (League.Strings.To_Universal_String ("utf-8"));

            begin
               Stream.Send_Reply
                 (Status       => Reply_Streams.S_400,
                  Success      => Ignore,
                  Content_Type => Web_Services.SOAP.Constants.MIME_Text_Plain,
                  Output_Data  => Codec.Encode (Decoder.Error_String));

               return;
            end;
         end if;

         Stream.Send_Message (Output);
      end if;
   end Dispatch;

end Web_Services.SOAP.Dispatcher;
