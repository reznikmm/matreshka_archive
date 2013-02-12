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
with Ada.Unchecked_Deallocation;

with Web_Services.SOAP.Constants;
with Web_Services.SOAP.Message_Encoders;
with Web_Services.SOAP.Messages;
with Web_Services.SOAP.Payloads.Faults;

package body Web_Services.SOAP.Reply_Streams is

   procedure Common_Send_Message
    (Self    : in out Abstract_Reply_Stream'Class;
     Message : in out Web_Services.SOAP.Messages.SOAP_Message_Access;
     Success : out Boolean);

   -------------------------
   -- Common_Send_Message --
   -------------------------

   procedure Common_Send_Message
    (Self    : in out Abstract_Reply_Stream'Class;
     Message : in out Web_Services.SOAP.Messages.SOAP_Message_Access;
     Success : out Boolean)
   is
      use League.Stream_Element_Vectors;
      use type Web_Services.SOAP.Messages.SOAP_Message_Access;
      use type Web_Services.SOAP.Payloads.SOAP_Payload_Access;

      Encoder : Web_Services.SOAP.Message_Encoders.SOAP_Message_Encoder;
      Status  : Status_Type;

   begin
      --  Compute HTTP status code.

      if Message = null then
         --  Reply message is empty.

         Status := S_202;

      elsif Message.Payload = null then
         --  There is no payload, SOAP message with empty <Body> sent.

         Status := S_200;

      elsif Message.Payload.all
        in Web_Services.SOAP.Payloads.Faults.Sender_Fault'Class
      then
         --  env:Sender SOAP fault is sent.

         Status := S_400;

      elsif Message.Payload.all
        in Web_Services.SOAP.Payloads.Faults.Abstract_SOAP_Fault'Class
      then
         --  Others SOAP fault is sent.

         Status := S_500;

      else
         --  Normal SOAP message with non-empty body is sent.

         Status := S_200;
      end if;

      --  Send message.

      if Message = null then
         Self.Send_Reply
           (Status       => Status,
            Success      => Success,
            Content_Type => Empty_Stream_Element_Vector,
            Output_Data  => Empty_Stream_Element_Vector);

      else
         Self.Send_Reply
           (Status       => Status,
            Success      => Success,
            Content_Type => Constants.MIME_Application_SOAP_XML,
            Output_Data  => Encoder.Encode (Message.all));
      end if;

      --  Deallocate message.

      Web_Services.SOAP.Messages.Free (Message);
   end Common_Send_Message;

   -------------
   -- Destroy --
   -------------

   procedure Destroy (Self : in out Reply_Stream_Access) is
      procedure Free is new Ada.Unchecked_Deallocation
        (Abstract_Reply_Stream'Class, Reply_Stream_Access);
   begin
      Self.Finalyze;
      Free (Self);
   end Destroy;

   ------------------
   -- Send_Message --
   ------------------

   procedure Send_Message
    (Self    : in out Abstract_Reply_Stream'Class;
     Message : in out Web_Services.SOAP.Messages.SOAP_Message_Access)
   is
      Ignore : Boolean;
   begin
      Common_Send_Message (Self, Message, Ignore);
   end Send_Message;

   -----------------------
   -- Send_Next_Message --
   -----------------------

   procedure Send_Next_Message
     (Self    : in out Abstract_Reply_Stream'Class;
      Message : in out Web_Services.SOAP.Messages.SOAP_Message_Access;
      Success : out Boolean) is
   begin
      --  Status doesn't matter in next messages, let it be S_200

      Common_Send_Message (Self, Message, Success);
   end Send_Next_Message;

end Web_Services.SOAP.Reply_Streams;
