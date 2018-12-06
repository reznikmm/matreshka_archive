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
with Ada.Synchronous_Task_Control;

with GNAT.Ctrl_C;

with AWS.Config.Set;
with AWS.Default;
with AWS.Net.WebSocket.Registry.Control;
with AWS.Response;
with AWS.Server.Log;
with AWS.Status;

with League.Holders;
with League.Settings;
with League.Strings;

with Matreshka.Servlet_AWS_Requests;
with Matreshka.Servlet_AWS_Responses;
with Matreshka.Servlet_Containers;
with Servlet.HTTP_Responses;
with Servlet.HTTP_Upgrade_Handlers;
with Web_Socket.Handlers.AWS_Handlers;

package body Matreshka.Servlet_Servers.AWS_Servers is

   Config           : AWS.Config.Object := AWS.Config.Get_Current;
   --  Initialize config from .ini file
   Server           : AWS.Server.HTTP;
   Shutdown_Request : Ada.Synchronous_Task_Control.Suspension_Object;
   Container        : Matreshka.Servlet_Containers.Servlet_Container_Access;

   procedure Shutdown_Request_Handler;
   --  Interrupt handler to process shutdown request from the operating system.

   task Shutdown_Controller is
      entry Start;
   end Shutdown_Controller;

   function Request_Callback
    (Request : AWS.Status.Data) return AWS.Response.Data;
   --  Handles request.

   function WebSocket_Callback
    (Socket  : AWS.Net.Socket_Access;
     Request : AWS.Status.Data) return AWS.Net.WebSocket.Object'Class;
   --  Handles request of WebSocket connection.

   procedure Read_Setting
    (Config   : in out AWS.Config.Object;
     Settings : League.Settings.Settings;
     Name     : Wide_Wide_String;
     Default  : String);
   --  Read setting with given Name or set Default if no such setting.

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Self : not null access AWS_Server'Class) is
   begin
      Shutdown_Request_Handler;
   end Finalize;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Self : not null access AWS_Server'Class) is

      function "+"
        (Text : Wide_Wide_String) return League.Strings.Universal_String
           renames League.Strings.To_Universal_String;

      Settings : League.Settings.Settings;
      Holder   : League.Holders.Holder;

   begin
      AWS.Config.Set.Reuse_Address (Config, True);
      Read_Setting (Config, Settings, "max_post_parameters", "1_000_000");
      --  Default number of POST parameters limited to 100, too small.
      Read_Setting (Config, Settings, "upload_size_limit", "1_000_000_000");
      Read_Setting (Config, Settings, "server_port", "8080");
      Read_Setting (Config, Settings, "upload_directory", ".");
      --  Upload_Directory is required to process files in POST parameters.
      Read_Setting (Config, Settings, "log_file_directory", ".");
 
      AWS.Server.Start (Server, Request_Callback'Access, Config);
      AWS.Server.Log.Start (Server);
      AWS.Server.Log.Start_Error (Server);

      AWS.Net.WebSocket.Registry.Register_Pattern
        ("/.*", WebSocket_Callback'Access);
      AWS.Net.WebSocket.Registry.Control.Start;

      Shutdown_Controller.Start;
   end Initialize;

   ------------------
   -- Read_Setting --
   ------------------

   procedure Read_Setting
    (Config   : in out AWS.Config.Object;
     Settings : League.Settings.Settings;
     Name     : Wide_Wide_String;
     Default  : String)
   is
      use type League.Strings.Universal_String;
      Holder   : League.Holders.Holder;
      Setting  : constant League.Strings.Universal_String :=
        League.Strings.To_Universal_String (Name);
      Key      : constant League.Strings.Universal_String := "/aws/" & Setting;
   begin
      if Settings.Contains (Key) then

         Holder := Settings.Value (Key);

         if League.Holders.Has_Tag
           (Holder, League.Holders.Universal_Integer_Tag)
         then

            AWS.Config.Set.Parameter
              (Config,
               Setting.To_UTF_8_String,
               League.Holders.Universal_Integer'Image
                 (League.Holders.Element (Holder)));
         else

            AWS.Config.Set.Parameter
              (Config,
               Setting.To_UTF_8_String,
               League.Holders.Element (Holder).To_UTF_8_String);
         end if;
      else

         AWS.Config.Set.Parameter (Config, Setting.To_UTF_8_String, Default);
      end if;
   end Read_Setting;

   ----------------------
   -- Request_Callback --
   ----------------------

   function Request_Callback
    (Request : AWS.Status.Data) return AWS.Response.Data
   is
      Servlet_Request  :
        aliased Matreshka.Servlet_AWS_Requests.AWS_Servlet_Request;
      Servlet_Response :
        aliased Matreshka.Servlet_AWS_Responses.AWS_Servlet_Response;

   begin
      Matreshka.Servlet_AWS_Requests.Initialize (Servlet_Request, Request);
      Matreshka.Servlet_AWS_Responses.Initialize
       (Servlet_Response, Servlet_Request'Unchecked_Access);

      Container.Dispatch
       (Servlet_Request'Unchecked_Access, Servlet_Response'Unchecked_Access);

      return Result : constant AWS.Response.Data := Servlet_Response.Build do
         Servlet_Request.Finalize;
      end return;
   end Request_Callback;

   -------------------
   -- Set_Container --
   -------------------

   overriding procedure Set_Container
    (Self      : not null access AWS_Server;
     Container : Matreshka.Servlet_Containers.Servlet_Container_Access) is
   begin
      AWS_Servers.Container := Container;
   end Set_Container;

   -------------------------
   -- Shutdown_Controller --
   -------------------------

   task body Shutdown_Controller is
   begin
      select
         accept Start;

         Ada.Synchronous_Task_Control.Set_False (Shutdown_Request);
         GNAT.Ctrl_C.Install_Handler (Shutdown_Request_Handler'Access);

      or
         terminate;
      end select;

      --  Wait till shutdown request was received.

      Ada.Synchronous_Task_Control.Suspend_Until_True (Shutdown_Request);

      --  Shutdown AWS server.

      AWS.Server.Shutdown (Server);
   end Shutdown_Controller;

   ------------------------------
   -- Shutdown_Request_Handler --
   ------------------------------

   procedure Shutdown_Request_Handler is
   begin
      Ada.Synchronous_Task_Control.Set_True (Shutdown_Request);
   end Shutdown_Request_Handler;

   ------------------------
   -- WebSocket_Callback --
   ------------------------

   function WebSocket_Callback
    (Socket  : AWS.Net.Socket_Access;
     Request : AWS.Status.Data) return AWS.Net.WebSocket.Object'Class
   is
      use type Servlet.HTTP_Responses.Status_Code;
      use type Servlet.HTTP_Upgrade_Handlers.HTTP_Upgrade_Handler_Access;

      Servlet_Request  :
        aliased Matreshka.Servlet_AWS_Requests.AWS_Servlet_Request;
      Servlet_Response :
        aliased Matreshka.Servlet_AWS_Responses.AWS_Servlet_Response;

   begin
      Matreshka.Servlet_AWS_Requests.Initialize (Servlet_Request, Request);
      Matreshka.Servlet_AWS_Responses.Initialize
       (Servlet_Response, Servlet_Request'Unchecked_Access);

      Container.Dispatch
       (Servlet_Request'Unchecked_Access, Servlet_Response'Unchecked_Access);

      if Servlet_Response.Get_Status
           = Servlet.HTTP_Responses.Switching_Protocols
        and then Servlet_Request.Get_Upgrade_Handler /= null
      then
         Servlet_Request.Finalize;

         return
           Web_Socket.Handlers.AWS_Handlers.Create
            (Socket,
             Request,
             Web_Socket.Handlers.AWS_Handlers.AWS_Web_Socket_Handler_Access
              (Servlet_Request.Get_Upgrade_Handler));

      else
         Servlet_Request.Finalize;

         raise Program_Error;
      end if;
   end WebSocket_Callback;

end Matreshka.Servlet_Servers.AWS_Servers;
