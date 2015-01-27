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
-- Copyright © 2014, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  Interface for receiving notification events about ServletContext lifecycle
--  changes.
--
--  In order to receive these notification events, the implementation class
--  must be registered via one of the Add_Listener methods defined on
--  Servlet_Context or in Servelt.Application package.
--
--  Implementations of this interface are invoked at their Context_Initialized
--  method in the order in which they have been declared, and at their
--  Context_Destroyed method in reverse order.
------------------------------------------------------------------------------
with Servlet.Contexts;
with Servlet.Event_Listeners;

package Servlet.Context_Listeners is

   pragma Preelaborate;

   type Servlet_Context_Listener is limited interface
     and Servlet.Event_Listeners.Event_Listener;

   type Servlet_Context_Listener_Access is
     access all Servlet_Context_Listener'Class;

   not overriding procedure Context_Destroyed
    (Self    : not null access Servlet_Context_Listener;
     Context : not null access Servlet.Contexts.Servlet_Context'Class) is null;
   --  Receives notification that the ServletContext is about to be shut down.
   --
   --  All servlets and filters will have been destroyed before any
   --  ServletContextListeners are notified of context destruction.

   not overriding procedure Context_Initialized
    (Self    : not null access Servlet_Context_Listener;
     Context : not null access Servlet.Contexts.Servlet_Context'Class) is null;
   --  Receives notification that the web application initialization process is
   --  starting.
   --
   --  All ServletContextListeners are notified of context initialization
   --  before any filters or servlets in the web application are initialized.

end Servlet.Context_Listeners;
