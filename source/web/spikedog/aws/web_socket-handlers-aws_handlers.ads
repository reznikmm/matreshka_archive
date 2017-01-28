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
private with Ada.Strings.Unbounded;

with AWS.Net.WebSocket;
with AWS.Status;

private with League.Stream_Element_Vectors;
private with League.Strings;

package Web_Socket.Handlers.AWS_Handlers is

   type AWS_Web_Socket_Handler is new Web_Socket_Handler with private;

   type AWS_Web_Socket_Handler_Access is
     access all AWS_Web_Socket_Handler'Class;

   type AWS_Web_Socket is new AWS.Net.WebSocket.Object with private;

   function Create
    (Socket  : AWS.Net.Socket_Access;
     Request : AWS.Status.Data;
     Handler : not null AWS_Web_Socket_Handler_Access)
       return AWS_Web_Socket'Class;

private

   type AWS_Web_Socket_Handler is new Web_Socket_Handler with record
      Socket : access AWS_Web_Socket'Class;
   end record;

   overriding procedure Send_Text
    (Self : in out AWS_Web_Socket_Handler;
     Text : League.Strings.Universal_String);

   overriding procedure Send_Binary
    (Self : in out AWS_Web_Socket_Handler;
     Data : League.Stream_Element_Vectors.Stream_Element_Vector);

   type AWS_Web_Socket is new AWS.Net.WebSocket.Object with record
      Handler : AWS_Web_Socket_Handler_Access;
   end record;

   overriding procedure Adjust (Self : in out AWS_Web_Socket);

   overriding procedure On_Message
    (Self    : in out AWS_Web_Socket;
     Message : Ada.Strings.Unbounded.Unbounded_String);

   overriding procedure On_Open
    (Self : in out AWS_Web_Socket; Message : String);

   overriding procedure On_Close
    (Self : in out AWS_Web_Socket; Message : String);

   overriding procedure On_Error
    (Self : in out AWS_Web_Socket; Message : String);

end Web_Socket.Handlers.AWS_Handlers;
