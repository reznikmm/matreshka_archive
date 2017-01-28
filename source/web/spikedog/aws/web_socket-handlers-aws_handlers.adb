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
-- Copyright © 2015, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body Web_Socket.Handlers.AWS_Handlers is

   use type Web_Socket.Listeners.Web_Socket_Listener_Access;

   function Create return Web_Socket_Handler'Class;

   ------------
   -- Adjust --
   ------------

   overriding procedure Adjust (Self : in out AWS_Web_Socket) is
   begin
      AWS.Net.WebSocket.Object (Self).Adjust;
      Self.Handler.Socket := Self'Unchecked_Access;
   end Adjust;

   ------------
   -- Create --
   ------------

   function Create return Web_Socket_Handler'Class is
   begin
      return AWS_Web_Socket_Handler'(Web_Socket_Handler with Socket => null);
   end Create;

   ------------
   -- Create --
   ------------

   function Create
    (Socket  : AWS.Net.Socket_Access;
     Request : AWS.Status.Data;
     Handler : not null AWS_Web_Socket_Handler_Access)
       return AWS_Web_Socket'Class is
   begin
      return
        Web_Socket.Handlers.AWS_Handlers.AWS_Web_Socket'
         (AWS.Net.WebSocket.Object
           (AWS.Net.WebSocket.Create (Socket, Request))
              with Handler => Handler);
   end Create;

   --------------
   -- On_Close --
   --------------

   overriding procedure On_Close
    (Self : in out AWS_Web_Socket; Message : String)
   is
      Status : Web_Socket.Listeners.Status_Code;

   begin
      if Self.Handler.Listener /= null then
         case Self.Errno is
            when 1000 =>
               Status := Web_Socket.Listeners.Normal_Closure;

            when 1001 =>
               Status := Web_Socket.Listeners.Going_Away;

            when 1002 =>
               Status := Web_Socket.Listeners.Protocol_Error;

            when 1003 =>
               Status := Web_Socket.Listeners.Unsupported_Data;

            when 1005 =>
               Status := Web_Socket.Listeners.No_Status_Received;

            when 1006 =>
               Status := Web_Socket.Listeners.Abnormal_Closure;

            when 1007 =>
               Status := Web_Socket.Listeners.Invalid_Frame_Payload_Data;

            when 1008 =>
               Status := Web_Socket.Listeners.Policy_Violation;

            when 1009 =>
               Status := Web_Socket.Listeners.Message_Too_Big;

            when 1010 =>
               Status := Web_Socket.Listeners.Mandatory_Extension;

            when 1011 =>
               Status := Web_Socket.Listeners.Internal_Server_Error;

            when 1012 =>
               Status := Web_Socket.Listeners.TLS_Handshake;

            when others =>
               raise Program_Error;
         end case;

         Self.Handler.Listener.On_Close
          (Status, League.Strings.From_UTF_8_String (Message));
      end if;
   end On_Close;

   --------------
   -- On_Error --
   --------------

   overriding procedure On_Error
    (Self : in out AWS_Web_Socket; Message : String) is
   begin
      if Self.Handler.Listener /= null then
         Self.Handler.Listener.On_Error;
      end if;
   end On_Error;

   ----------------
   -- On_Message --
   ----------------

   overriding procedure On_Message
    (Self    : in out AWS_Web_Socket;
     Message : Ada.Strings.Unbounded.Unbounded_String) is
   begin
      if Self.Handler.Listener /= null then
         Self.Handler.Listener.On_Text
          (League.Strings.From_UTF_8_String
            (Ada.Strings.Unbounded.To_String (Message)));
      end if;
   end On_Message;

   -------------
   -- On_Open --
   -------------

   overriding procedure On_Open
    (Self : in out AWS_Web_Socket; Message : String) is
   begin
      if Self.Handler.Listener /= null then
         Self.Handler.Listener.On_Connect;
      end if;
   end On_Open;

   -----------------
   -- Send_Binary --
   -----------------

   overriding procedure Send_Binary
    (Self : in out AWS_Web_Socket_Handler;
     Data : League.Stream_Element_Vectors.Stream_Element_Vector) is
   begin
      Self.Socket.Send
       (Message   => Data.To_Stream_Element_Array,
        Is_Binary => True);
   end Send_Binary;

   ---------------
   -- Send_Text --
   ---------------

   overriding procedure Send_Text
    (Self : in out AWS_Web_Socket_Handler;
     Text : League.Strings.Universal_String) is
   begin
      Self.Socket.Send
       (Message   => Text.To_UTF_8_String,
        Is_Binary => False);
   end Send_Text;

begin
   Constructor := Create'Access;
end Web_Socket.Handlers.AWS_Handlers;
