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
with Servlet.HTTP_Upgrade_Handlers;

with Web_Socket.Connections;
with Web_Socket.Listeners;

package Web_Socket.Handlers is

   pragma Preelaborate;

   type Web_Socket_Handler is
     abstract limited new Servlet.HTTP_Upgrade_Handlers.HTTP_Upgrade_Handler
       and Web_Socket.Connections.Connection with private;

   overriding procedure Set_Web_Socket_Listener
    (Self     : in out Web_Socket_Handler;
     Listener : not null Web_Socket.Listeners.Web_Socket_Listener_Access);

   package Constructors is

      function Create_Web_Socket return Web_Socket_Handler'Class;
--      function Create_Web_Socket
--        return Servlet.HTTP_Upgrade_Handlers.HTTP_Upgrade_Handler'Class;

   end Constructors;

private

   type Web_Socket_Handler is
     abstract limited new Servlet.HTTP_Upgrade_Handlers.HTTP_Upgrade_Handler
       and Web_Socket.Connections.Connection with
   record
      Listener : Web_Socket.Listeners.Web_Socket_Listener_Access;
   end record;

   type Constructor_Access is access function return Web_Socket_Handler'Class;

   Constructor : Constructor_Access;

end Web_Socket.Handlers;
