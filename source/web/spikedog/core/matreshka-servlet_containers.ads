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
private with Ada.Containers.Hashed_Maps;
private with Ada.Containers.Vectors;

private with League.Strings.Hash;

private with Servlet.Context_Listeners;
with Servlet.Contexts;
private with Servlet.Event_Listeners;
private with Servlet.Servlets;
private with Servlet.Servlet_Registrations;
with Spikedog.Servlet_Contexts;
private with Spikedog.HTTP_Session_Managers;
with Matreshka.Servlet_Dispatchers;
with Matreshka.Servlet_HTTP_Requests;
with Matreshka.Servlet_HTTP_Responses;
with Matreshka.Servlet_Registrations;
with Matreshka.Servlet_Servers;
private with Matreshka.Spikedog_Deployment_Descriptors;

package Matreshka.Servlet_Containers is

   type Servlet_Container is
     new Matreshka.Servlet_Dispatchers.Context_Dispatcher
       and Spikedog.Servlet_Contexts.Spikedog_Servlet_Context
       and Servlet.Contexts.Servlet_Context with private;

   type Servlet_Container_Access is access all Servlet_Container'Class;

   procedure Initialize
    (Self    : not null access Servlet_Container'Class;
     Server  : not null Matreshka.Servlet_Servers.Server_Access;
     Success : out Boolean);
   --  Initializes servlet container. Specified server object must be
   --  initialized. Sets Success to False on error during application
   --  loading/startup.

   procedure Finalize (Self : not null access Servlet_Container'Class);
   --  Finalizes servlet container.

   procedure Dispatch
    (Self     : not null access Servlet_Container'Class;
     Request  : not null
       Matreshka.Servlet_HTTP_Requests.HTTP_Servlet_Request_Access;
     Response : not null
       Matreshka.Servlet_HTTP_Responses.HTTP_Servlet_Response_Access);
   --  Dispatch request to filters/servlet.

private

   type Container_States is (Uninitialized, Initialization, Initialized);

   package Servlet_Context_Listener_Vectors is
     new Ada.Containers.Vectors
          (Positive,
           Servlet.Context_Listeners.Servlet_Context_Listener_Access,
           Servlet.Context_Listeners."=");

   package Servlet_Registration_Maps is
     new Ada.Containers.Hashed_Maps
          (League.Strings.Universal_String,
           Matreshka.Servlet_Registrations.Servlet_Registration_Access,
           League.Strings.Hash,
           League.Strings."=",
           Matreshka.Servlet_Registrations."=");

   type Servlet_Container is
     new Matreshka.Servlet_Dispatchers.Context_Dispatcher
       and Spikedog.Servlet_Contexts.Spikedog_Servlet_Context
       and Servlet.Contexts.Servlet_Context with
   record
      Descriptor        :
        Matreshka.Spikedog_Deployment_Descriptors.Deployment_Descriptor_Access;
      State             : Container_States := Uninitialized;
      Context_Listeners : Servlet_Context_Listener_Vectors.Vector;
      Servlets          : Servlet_Registration_Maps.Map;
      Session_Manager   :
        Spikedog.HTTP_Session_Managers.HTTP_Session_Manager_Access;
   end record;

   overriding procedure Add_Listener
    (Self     : not null access Servlet_Container;
     Listener : not null Servlet.Event_Listeners.Event_Listener_Access);

   overriding function Add_Servlet
    (Self     : not null access Servlet_Container;
     Name     : League.Strings.Universal_String;
     Instance : not null access Servlet.Servlets.Servlet'Class)
       return access Servlet.Servlet_Registrations.Servlet_Registration'Class;

   overriding function Get_MIME_Type
    (Self : Servlet_Container;
     Path : League.Strings.Universal_String)
       return League.Strings.Universal_String;
   --  Returns the MIME type of the specified file, or null if the MIME type is
   --  not known. The MIME type is determined by the configuration of the
   --  servlet container, and may be specified in a web application deployment
   --  descriptor. Common MIME types include text/html and image/gif.

   overriding function Get_Real_Path
    (Self : Servlet_Container;
     Path : League.Strings.Universal_String)
       return League.Strings.Universal_String;
   --  Gets the real path corresponding to the given virtual path.

   overriding function Get_Servlet_Registration
    (Self         : not null access Servlet_Container;
     Servlet_Name : League.Strings.Universal_String)
       return access Servlet.Servlet_Registrations.Servlet_Registration'Class;

   overriding procedure Set_Session_Manager
    (Self    : in out Servlet_Container;
     Manager :
       not null Spikedog.HTTP_Session_Managers.HTTP_Session_Manager_Access);

end Matreshka.Servlet_Containers;
