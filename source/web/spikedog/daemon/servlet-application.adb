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
-- Copyright © 2014-2018, Vadim Godunko <vgodunko@gmail.com>                --
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
with League.Application;

with Matreshka.Servlet_Containers;
with Matreshka.Servlet_Servers.AWS_Servers;
--  with Matreshka.Servlet_Servers.FastCGI_Servers;
with Servlet.Event_Listeners;

package body Servlet.Application is

   AWS_Server : aliased Matreshka.Servlet_Servers.AWS_Servers.AWS_Server;
   --  Global object of AWS server.
   Container  : aliased Matreshka.Servlet_Containers.Servlet_Container;
   --  Global object of servlet container.

   ------------------
   -- Add_Listener --
   ------------------

   procedure Add_Listener
    (Listener : not null
       Servlet.Context_Listeners.Servlet_Context_Listener_Access) is
   begin
      Container.Add_Listener
       (Servlet.Event_Listeners.Event_Listener_Access (Listener));
   end Add_Listener;

   -------------
   -- Execute --
   -------------

   procedure Execute is
   begin
      null;
   end Execute;

   --------------
   -- Finalize --
   --------------

   procedure Finalize is
   begin
      null;
   end Finalize;

   -------------------------
   -- Get_Servlet_Context --
   -------------------------

   function Get_Servlet_Context
     return not null Servlet.Contexts.Servlet_Context_Access is
   begin
      return Container'Access;
   end Get_Servlet_Context;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize
    (Application_Name    : League.Strings.Universal_String;
     Application_Version : League.Strings.Universal_String;
     Organization_Name   : League.Strings.Universal_String;
     Organization_Domain : League.Strings.Universal_String)
   is
      Server  : Matreshka.Servlet_Servers.Server_Access;
      Success : Boolean := False;

   begin
      League.Application.Set_Application_Name (Application_Name);
      League.Application.Set_Application_Version (Application_Version);
      League.Application.Set_Organization_Name (Organization_Name);
      League.Application.Set_Organization_Domain (Organization_Domain);

--      --  Check whether application is run in FastCGI environment.
--
--      FCGI_Server.Initialize (Success);
--
--      if Success then
--         Server := FCGI_Server'Access;
--      end if;

      --  Fallback to use AWS server.

--      if not Success then
      AWS_Server.Initialize;
      Server := AWS_Server'Access;
--      end if;

      Container.Initialize (Server, Success);

      if not Success then
         AWS_Server.Finalize;
      end if;
   end Initialize;

end Servlet.Application;
