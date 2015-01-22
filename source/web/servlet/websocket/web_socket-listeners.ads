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
with Ada.Streams;

with League.Strings;

package Web_Socket.Listeners is

   pragma Preelaborate;

   type Status_Code is
    (Normal_Closure,              --  1000
     Going_Away,                  --  1001
     Protocol_Error,              --  1002
     Unsupported_Data,            --  1003
     No_Status_Received,          --  1005
     Abnormal_Closure,            --  1006
     Invalid_Frame_Payload_Data,  --  1007
     Policy_Violation,            --  1008
     Message_Too_Big,             --  1009
     Mandatory_Extension,         --  1010
     Internal_Server_Error,       --  1011
     TLS_Handshake);              --  1012

   type Web_Socket_Listener is limited interface;

   type Web_Socket_Listener_Access is access all Web_Socket_Listener'Class;

   not overriding procedure On_Binary
    (Self : in out Web_Socket_Listener;
     Data : Ada.Streams.Stream_Element_Array) is abstract;
   --  A WebSocket binary frame has been received.

   not overriding procedure On_Close
    (Self   : in out Web_Socket_Listener;
     Status : Status_Code;
     Reason : League.Strings.Universal_String) is abstract;
   --  A Close Event was received.
   --
   --  The underlying Connection will be considered closed at this point.

   not overriding procedure On_Connect
    (Self : in out Web_Socket_Listener) is abstract;
   --  A WebSocket Session has connected successfully and is ready to be used.

   not overriding procedure On_Error
    (Self : in out Web_Socket_Listener) is abstract;
   --  A WebSocket exception has occurred.
   --
   --  This is a way for the internal implementation to notify of exceptions
   --  occured during the processing of websocket.
   --
   --  Usually this occurs from bad / malformed incoming packets. (example: bad
   --  UTF8 data, frames that are too big, violations of the spec)
   --
   --  This will result in the Session being closed by the implementing side.

   not overriding procedure On_Text
    (Self : in out Web_Socket_Listener;
     Text : League.Strings.Universal_String) is abstract;
   --  A WebSocket Text frame was received.

end Web_Socket.Listeners;
