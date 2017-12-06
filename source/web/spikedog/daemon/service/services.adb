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

with Interfaces.C.Pointers;
with League.Strings.Internals;
with Matreshka.Internals.Strings.C;

package body Services is

   subtype LPWSTR is Matreshka.Internals.Strings.C.Utf16_Code_Unit_Access;

   type LPWSTR_Array is array (Positive range <>) of aliased LPWSTR;

   package LPWSTR_Pointers is new Interfaces.C.Pointers
     (Positive, LPWSTR, LPWSTR_Array, null);

   type LPSERVICE_MAIN_FUNCTION is access
     procedure (dwArgc : DWORD; lpszArgv : LPWSTR_Pointers.Pointer)
       with Convention => Stdcall;

   type LPHANDLER_FUNCTION_EX is access
     function
       (dwControl   : DWORD;
        dwEventType : DWORD;
        lpEventData : System.Address;
        lpContext   : access Service'Class) return DWORD
       with Convention => Stdcall;

   type SERVICE_TABLE_ENTRY is record
      lpServiceName : LPWSTR;
      lpServiceProc : LPSERVICE_MAIN_FUNCTION;
   end record;

   procedure Service_Main (dwArgc : DWORD; lpszArgv : LPWSTR_Pointers.Pointer)
     with Convention => Stdcall;

   function Handler_Ex
     (dwControl   : DWORD;
      dwEventType : DWORD;
      lpEventData : System.Address;
      lpContext   : access Service'Class) return DWORD
     with Convention => Stdcall;

   function To_LPWSTR (Value : League.Strings.Universal_String) return LPWSTR;

   Service_List : array (1 .. 1) of Service_Access;

   --------------
   -- Dispatch --
   --------------

   procedure Dispatch (Service : Service_Access) is
      use type DWORD;

      TABLE : constant array (1 .. 2) of aliased SERVICE_TABLE_ENTRY :=
        (1 => (To_LPWSTR (Service.Name), Service_Main'Access),
         2 => (null, null));

      function StartServiceCtrlDispatcher
        (lpServiceTable : access constant SERVICE_TABLE_ENTRY)
          return DWORD
            with Import,
              Convention    => Stdcall,
              External_Name => "StartServiceCtrlDispatcherW";
   begin
      Service_List (1) := Service;

      if StartServiceCtrlDispatcher (TABLE (TABLE'First)'Access)
        /= NO_ERROR
      then
         raise Program_Error;
      end if;
   end Dispatch;

   ----------------
   -- Handler_Ex --
   ----------------

   function Handler_Ex
     (dwControl   : DWORD;
      dwEventType : DWORD;
      lpEventData : System.Address;
      lpContext   : access Service'Class) return DWORD
   is
      pragma Unreferenced (dwEventType, lpEventData);
      Value : Control_Kind;
   begin
      case dwControl is
         when SERVICE_CONTROL_CONTINUE =>
            Value := Continue;
         when SERVICE_CONTROL_INTERROGATE =>
            Value := Interrogate;
         when SERVICE_CONTROL_PAUSE =>
            Value := Pause;
         when SERVICE_CONTROL_PRESHUTDOWN =>
            Value := Pre_Shutdown;
         when SERVICE_CONTROL_SHUTDOWN =>
            Value := Shutdown;
         when SERVICE_CONTROL_STOP =>
            Value := Stop;
         when others =>
            return NO_ERROR;
      end case;

      lpContext.Control
        (Control => Value,
         Status  => lpContext.Listener'Access);

      return NO_ERROR;
   end Handler_Ex;

   ------------------
   -- Service_Main --
   ------------------

   procedure Service_Main
     (dwArgc   : DWORD;
      lpszArgv : LPWSTR_Pointers.Pointer)
   is
      function RegisterServiceCtrlHandlerEx
        (lpServiceName : LPWSTR;
         lpHandlerProc : LPHANDLER_FUNCTION_EX;
         lpContext     : access Service'Class)
          return HANDLE
            with Import,
              Convention    => Stdcall,
              External_Name => "RegisterServiceCtrlHandlerExW";

      Service : Service_Access renames Service_List (1);
      Args    : League.String_Vectors.Universal_String_Vector;
      Argv    : constant LPWSTR_Array := LPWSTR_Pointers.Value
        (lpszArgv, Length => Interfaces.C.ptrdiff_t (dwArgc));
   begin
      for Arg of Argv loop
         Args.Append
           (Matreshka.Internals.Strings.C.To_Valid_Universal_String (Arg));
      end loop;

      Service.Listener.StatusHandle := RegisterServiceCtrlHandlerEx
        (lpServiceName => To_LPWSTR (Service.Name),
         lpHandlerProc => Handler_Ex'Access,
         lpContext     => Service);

      Service.Listener.Set_Status (Start_Pending);
      Service.Run (Args, Service.Listener'Access);
   exception
      when others =>
         Service.Listener.Set_Status (Stopped);
   end Service_Main;

   ----------------
   -- Set_Status --
   ----------------

   not overriding procedure Set_Status
     (Self  : in out Status_Listener;
      Value : Service_Status)
   is
      use type DWORD;

      procedure SetServiceStatus
        (hServiceStatus  : HANDLE;
         lpServiceStatus : access C_SERVICE_STATUS)
        with Import,
             Convention    => Stdcall,
             External_Name => "SetServiceStatus";

      Map : constant array (Service_Status) of DWORD :=
        (Stopped          => SERVICE_STOPPED,
         Start_Pending    => SERVICE_START_PENDING,
         Stop_Pending     => SERVICE_STOP_PENDING,
         Running          => SERVICE_RUNNING,
         Continue_Pending => SERVICE_CONTINUE_PENDING,
         Pause_Pending    => SERVICE_PAUSE_PENDING,
         Paused           => SERVICE_PAUSED);

   begin
      Self.Status.dwCurrentState := Map (Value);
      Self.Status.dwCheckPoint := Self.Status.dwCheckPoint + 1;
      SetServiceStatus (Self.StatusHandle, Self.Status'Access);
   end Set_Status;

   ---------------
   -- To_LPWSTR --
   ---------------

   function To_LPWSTR (Value : League.Strings.Universal_String)
     return LPWSTR is
   begin
      return League.Strings.Internals.Internal (Value).Value (0)'Access;
   end To_LPWSTR;

end Services;
