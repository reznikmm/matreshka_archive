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
with Ada.Command_Line;
with Ada.Directories;
with Ada.Text_IO;
with Ada.Exceptions;

with AWS.Server;

with League.Application;

package body Spikedog.Service is

   -------------
   -- Control --
   -------------

   overriding procedure Control
     (Self    : in out Service;
      Control : Services.Control_Kind;
      Status  : Services.Status_Listener_Access) is
   begin
      case Control is
         when Services.Stop =>
            Status.Set_Status (Services.Stop_Pending);
            Self.Stop_Flag.Release;

         when others =>
            null;
      end case;
   end Control;

   ----------
   -- Name --
   ----------

   overriding function Name
     (Self : Service) return League.Strings.Universal_String is
   begin
      return Self.Application_Name;
   end Name;

   ---------
   -- Run --
   ---------

   overriding procedure Run
     (Self   : in out Service;
      Args   : League.String_Vectors.Universal_String_Vector;
      Status : Services.Status_Listener_Access)
   is
      Exec : constant String := Ada.Command_Line.Command_Name;
      Dir  : constant String := Ada.Directories.Containing_Directory (Exec);
      Temp : constant League.Strings.Universal_String :=
        League.Application.Environment.Value
          (League.Strings.To_Universal_String ("TEMP"));
      --  This is usually C:|Windows\TEMP
      Server  : Matreshka.Servlet_Servers.Server_Access;
      File    : Ada.Text_IO.File_Type;
      Success : Boolean;
   begin
      Ada.Directories.Set_Directory (Dir);
      Status.Set_Status (Services.Running);

      League.Application.Set_Application_Name (Self.Application_Name);
      League.Application.Set_Application_Version
        (League.Strings.To_Universal_String ("0.1"));
      League.Application.Set_Organization_Name
        (League.Strings.To_Universal_String ("Matreshka Project"));
      League.Application.Set_Organization_Domain
        (League.Strings.To_Universal_String ("forge.ada-ru.org"));

      Ada.Text_IO.Create
        (File, Name => Temp.To_UTF_8_String & "\spikedog.log");
      Ada.Text_IO.Put_Line (File, "Starting " & Args (1).To_UTF_8_String);
      Ada.Text_IO.Flush (File);
      Ada.Text_IO.Set_Output (File);
      Ada.Text_IO.Set_Error (File);

      Self.AWS_Server.Initialize;
      Server := Self.AWS_Server'Unchecked_Access;
      Self.Container.Initialize (Server, Success);
      Ada.Text_IO.Put_Line (File, "Initialize " & Boolean'Image (Success));

      Self.Stop_Flag.Acquire;
      Status.Set_Status (Services.Stop_Pending);
      Ada.Text_IO.Put_Line (File, "Stopping");
      Ada.Text_IO.Close (File);
      AWS.Server.Shutdown (AWS.Server.Get_Current.all);
      --  Wait till built-in HTTP server is running.
      AWS.Server.Wait (AWS.Server.No_Server);

      Status.Set_Status (Services.Stopped);
   exception
      when E: others =>
         declare
            File : Ada.Text_IO.File_Type;
         begin
            Ada.Text_IO.Create
              (File, Name => Temp.To_UTF_8_String & "\spikedog-raise.log");
            Ada.Text_IO.Put_Line
              (File, Ada.Exceptions.Exception_Information (E));
            Ada.Text_IO.Close (File);
            raise;
         end;
   end Run;

   ---------------
   -- Semaphore --
   ---------------

   protected body Semaphore is

      entry Acquire when not Busy is
      begin
         Busy := True;
      end Acquire;

      entry Release when Busy is
      begin
         Busy := False;
      end Release;

   end Semaphore;

end Spikedog.Service;
