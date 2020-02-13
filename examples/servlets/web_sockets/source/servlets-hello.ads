------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                            Examples Component                            --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2016-2019, Vadim Godunko <vgodunko@gmail.com>                --
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

with Servlet.Generic_Servlets;
with Servlet.HTTP_Requests;
with Servlet.HTTP_Responses;
with Servlet.HTTP_Servlets;
with Servlet.HTTP_Upgrade_Handlers;

with Web_Socket.Handlers.AWS_Handlers;
with Web_Socket.Listeners;

package Servlets.Hello is

   type Hello_Servlet is new Servlet.HTTP_Servlets.HTTP_Servlet
     with private;

private

   type WS_Handler is limited new Web_Socket.Listeners.Web_Socket_Listener with record
      WS    : aliased Web_Socket.Handlers.AWS_Handlers.AWS_Web_Socket_Handler;
      Count : Natural := 0;
   end record;

   overriding procedure On_Binary
    (Self : in out WS_Handler;
     Data : Ada.Streams.Stream_Element_Array);
   --  A WebSocket binary frame has been received.

   overriding procedure On_Close
    (Self   : in out WS_Handler;
     Status : Web_Socket.Listeners.Status_Code;
     Reason : League.Strings.Universal_String);
   --  A Close Event was received.
   --
   --  The underlying Connection will be considered closed at this point.

   overriding procedure On_Connect (Self : in out WS_Handler);
   --  A WebSocket Session has connected successfully and is ready to be used.

   overriding procedure On_Error (Self : in out WS_Handler);
   --  A WebSocket exception has occurred.
   --
   --  This is a way for the internal implementation to notify of exceptions
   --  occured during the processing of websocket.
   --
   --  Usually this occurs from bad / malformed incoming packets. (example: bad
   --  UTF8 data, frames that are too big, violations of the spec)
   --
   --  This will result in the Session being closed by the implementing side.

   overriding procedure On_Text
    (Self : in out WS_Handler;
     Text : League.Strings.Universal_String);
   --  A WebSocket Text frame was received.

   type Hello_Servlet is
     new Servlet.HTTP_Servlets.HTTP_Servlet with null record;

   overriding function Get_Servlet_Info
    (Self : Hello_Servlet) return League.Strings.Universal_String;

   overriding procedure Do_Get
    (Self     : in out Hello_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class);

   overriding function Instantiate
    (Parameters : not null access
       Servlet.Generic_Servlets.Instantiation_Parameters'Class)
         return Hello_Servlet;

end Servlets.Hello;
