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
-- Copyright © 2017, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  Windows Service abstraction

with League.String_Vectors;
with League.Strings;

private with System;
private with Matreshka.Internals.Windows;

package Services is
   pragma Preelaborate;

   type Service_Status is
     (Stopped,
      Start_Pending,
      Stop_Pending,
      Running,
      Continue_Pending,
      Pause_Pending,
      Paused);

   type Status_Listener is tagged limited private;
   type Status_Listener_Access is not null access all Status_Listener;

   not overriding procedure Set_Status
     (Self  : in out Status_Listener;
      Value : Service_Status);

   type Service is abstract tagged limited private;
   type Service_Access is access all Service'Class;

   not overriding function Name (Self : Service)
     return League.Strings.Universal_String is abstract;

   not overriding procedure Run
     (Self   : in out Service;
      Args   : League.String_Vectors.Universal_String_Vector;
      Status : Services.Status_Listener_Access) is abstract;

   type Control_Kind is
     (Continue,      --  Notifies a paused service that it should resume.
      Interrogate,   --  Notifies a service to report its current status
                     --  information to the service control manager.
      Pause,         --  Notifies a service that it should pause.
      Pre_Shutdown,  --  Notifies a service that the system will be shutdown.
      Shutdown,      --  Notifies a service that the system is shutting down
                     --  so the service can perform cleanup tasks.
      Stop);         --  Notifies a service that it should stop.

   not overriding procedure Control
     (Self    : in out Service;
      Control : Services.Control_Kind;
      Status  : Services.Status_Listener_Access) is abstract;
   --  The control handler function is intended to receive notification and
   --  return immediately.

   procedure Dispatch (Service : Service_Access);

private

   type HANDLE is new System.Address;
   subtype DWORD is Matreshka.Internals.Windows.DWORD;

   SERVICE_FILE_SYSTEM_DRIVER : constant := 16#00000002#;
   --  The service is a file system driver.

   SERVICE_KERNEL_DRIVER : constant := 16#00000001#;
   --  The service is a device driver.

   SERVICE_WIN32_OWN_PROCESS : constant := 16#00000010#;
   --  The service runs in its own process.

   SERVICE_WIN32_SHARE_PROCESS : constant := 16#00000020#;
   --  The service shares a process with other services.

   SERVICE_USER_OWN_PROCESS : constant := 16#00000050#;
   --  The service runs in its own process under the logged-on user account.

   SERVICE_USER_SHARE_PROCESS : constant := 16#00000060#;
   --  The service shares a process with one or more other services that run
   --  under the logged-on user account.


   SERVICE_CONTINUE_PENDING : constant := 16#00000005#;
   --  The service continue is pending.
   SERVICE_PAUSE_PENDING : constant := 16#00000006#;
   --  The service pause is pending.
   SERVICE_PAUSED : constant := 16#00000007#;
   --  The service is paused.
   SERVICE_RUNNING : constant := 16#00000004#;
   --  The service is running.
   SERVICE_START_PENDING : constant := 16#00000002#;
   --  The service is starting.
   SERVICE_STOP_PENDING : constant := 16#00000003#;
   --  The service is stopping.
   SERVICE_STOPPED : constant := 16#00000001#;
   --  The service is not running.


   SERVICE_CONTROL_CONTINUE : constant := 16#00000003#;
   --  Notifies a paused service that it should resume.

   SERVICE_CONTROL_INTERROGATE : constant := 16#00000004#;
   --  Notifies a service to report its current status information to the
   --  service control manager.

   SERVICE_CONTROL_PAUSE : constant := 16#00000002#;
   --  Notifies a service that it should pause.

   SERVICE_CONTROL_PRESHUTDOWN : constant := 16#0000000F#;
   --  Notifies a service that the system will be shutting down.

   SERVICE_CONTROL_SHUTDOWN : constant := 16#00000005#;
   --  Notifies a service that the system is shutting down so the service can
   --  perform cleanup tasks.

   SERVICE_CONTROL_STOP : constant := 16#00000001#;
   --  Notifies a service that it should stop.


   SERVICE_ACCEPT_PAUSE_CONTINUE : constant := 16#00000002#;
   --  The service can be paused and continued.
   --  This control code allows the service to receive SERVICE_CONTROL_PAUSE
   --  and SERVICE_CONTROL_CONTINUE notifications.

   SERVICE_ACCEPT_PRESHUTDOWN : constant := 16#00000100#;
   --  The service can perform preshutdown tasks.
   --  This control code enables the service to receive
   --  SERVICE_CONTROL_PRESHUTDOWN notifications. Note that ControlService and
   --  ControlServiceEx cannot send this notification; only the system can
   --  send it.
   --  Windows Server 2003 and Windows XP:  This value is not supported.

   SERVICE_ACCEPT_SHUTDOWN : constant := 16#00000004#;
   --  The service is notified when system shutdown occurs.
   --  This control code allows the service to receive SERVICE_CONTROL_SHUTDOWN
   --  notifications. Note that ControlService and ControlServiceEx cannot send
   --  this notification; only the system can send it.

   SERVICE_ACCEPT_STOP : constant := 16#00000001#;
   --  The service can be stopped.
   --  This control code allows the service to receive SERVICE_CONTROL_STOP
   --  notifications.

   NO_ERROR : constant := 0;

   type C_SERVICE_STATUS is record
      dwServiceType             : DWORD := SERVICE_WIN32_OWN_PROCESS;
      dwCurrentState            : DWORD := SERVICE_STOPPED;
      dwControlsAccepted        : DWORD := SERVICE_ACCEPT_STOP;
      dwWin32ExitCode           : DWORD := NO_ERROR;
      dwServiceSpecificExitCode : DWORD := NO_ERROR;
      dwCheckPoint              : DWORD := 0;
      dwWaitHint                : DWORD := 0;
   end record
     with Convention => C;

   type Status_Listener is tagged limited record
      StatusHandle : HANDLE;
      Status       : aliased C_SERVICE_STATUS;
   end record;

   type Service is abstract tagged limited record
      Listener : aliased Status_Listener;
   end record;

end Services;
