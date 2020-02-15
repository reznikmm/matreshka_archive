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
-- Copyright © 2014-2020, Vadim Godunko <vgodunko@gmail.com>                --
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
with Ada.Exceptions;
with Ada.Tags.Generic_Dispatching_Constructor;
with Ada.Text_IO;

with Servlet.Container_Initializers;
with Servlet.Generic_Servlets;
with XML.SAX.File_Input_Sources;
with XML.SAX.Simple_Readers;

with Matreshka.Servlet_Defaults;
with Matreshka.Spikedog_Deployment_Descriptors.Parsers;

package body Matreshka.Servlet_Containers is

   use type League.Strings.Universal_String;

   function Instantiate_Servlet is
     new Ada.Tags.Generic_Dispatching_Constructor
          (Servlet.Generic_Servlets.Generic_Servlet,
           Servlet.Generic_Servlets.Instantiation_Parameters'Class,
           Servlet.Generic_Servlets.Instantiate);

   package Loader is

      procedure Load
       (Container   : in out Servlet_Container'Class;
        Initializer : out
          Servlet.Container_Initializers.Servlet_Container_Initializer_Access);

   end Loader;

   package body Loader is separate;

   ------------------
   -- Add_Listener --
   ------------------

   overriding procedure Add_Listener
    (Self     : not null access Servlet_Container;
     Listener : not null Servlet.Event_Listeners.Event_Listener_Access)
   is
      Success : Boolean := False;

   begin
      if Self.State = Initialized then
         raise Servlet.Illegal_State_Exception
           with "servlet context has already been initialized";
      end if;

      --  Check for support of Servlet_Context_Listener interface and register
      --  listener in appropriate state of servlet context.

      if Listener.all
           in Servlet.Context_Listeners.Servlet_Context_Listener'Class
      then
         if Self.State = Uninitialized then
            Self.Context_Listeners.Append
             (Servlet.Context_Listeners.Servlet_Context_Listener_Access
               (Listener));
            Success := True;

         else
            raise Servlet.Illegal_State_Exception
              with "Servlet_Container_Listener can't be added";
         end if;
      end if;

      if not Success then
         raise Servlet.Illegal_Argument_Exception
           with "listener doesn't supports any of expected interfaces";
      end if;
   end Add_Listener;

   -----------------
   -- Add_Servlet --
   -----------------

   overriding function Add_Servlet
    (Self     : not null access Servlet_Container;
     Name     : League.Strings.Universal_String;
     Instance : not null access Servlet.Servlets.Servlet'Class)
       return access Servlet.Servlet_Registrations.Servlet_Registration'Class
   is
      use type Matreshka.Servlet_Registrations.Servlet_Access;

      Object       : constant Matreshka.Servlet_Registrations.Servlet_Access
        := Matreshka.Servlet_Registrations.Servlet_Access (Instance);
      Registration :
        Matreshka.Servlet_Registrations.Servlet_Registration_Access;

   begin
      if Self.State = Initialized then
         raise Servlet.Illegal_State_Exception
           with "servlet context has already been initialized";
      end if;

      if Name.Is_Empty then
         raise Servlet.Illegal_Argument_Exception with "servlet name is empty";
      end if;

      if Instance.all
           not in Servlet.Generic_Servlets.Generic_Servlet'Class
      then
         raise Servlet.Illegal_Argument_Exception
           with "not descedant of base servlet type";
      end if;

      --  Check whether servlet instance or servlet name was registered.

      for Registration of Self.Servlets loop
         if Registration.Servlet = Object or Registration.Name = Name then
            return null;
         end if;
      end loop;

      Registration :=
        new Matreshka.Servlet_Registrations.Servlet_Registration'
             (Context => Self,
              Name    => Name,
              Servlet => Object);
      Self.Servlets.Insert (Name, Registration);

      --  Initialize servlet.

      begin
         Registration.Servlet.Initialize (Registration);

      exception
         when X : others =>
            Ada.Text_IO.Put_Line
             (Ada.Text_IO.Standard_Error,
              "Exception during servlet '"
                & Name.To_UTF_8_String
                & "' initialization:");
            Ada.Text_IO.Put_Line
             (Ada.Text_IO.Standard_Error,
              Ada.Exceptions.Exception_Information (X));

            raise;
      end;

      return Registration;
   end Add_Servlet;

   --------------
   -- Dispatch --
   --------------

   procedure Dispatch
    (Self     : not null access Servlet_Container'Class;
     Request  : not null
       Matreshka.Servlet_HTTP_Requests.HTTP_Servlet_Request_Access;
     Response : not null
       Matreshka.Servlet_HTTP_Responses.HTTP_Servlet_Response_Access)
   is
      Servlet : Matreshka.Servlet_Registrations.Servlet_Registration_Access;

   begin
      Self.Dispatch (Request.all, Request.Get_Path, 1, Servlet);
      Request.Set_Session_Manager (Self.Session_Manager);
      Request.Set_Servlet_Context (Self);
      Servlet.Servlet.Service (Request.all, Response.all);
   end Dispatch;

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Self : not null access Servlet_Container'Class) is
   begin
      for Listener of reverse Self.Context_Listeners loop
         Listener.Context_Destroyed (Self);
      end loop;

      Self.State := Uninitialized;
   end Finalize;

   -------------------
   -- Get_MIME_Type --
   -------------------

   overriding function Get_MIME_Type
    (Self : Servlet_Container;
     Path : League.Strings.Universal_String)
       return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

   begin
      if Path.Ends_With (".atom") then
         return League.Strings.To_Universal_String ("application/atom+xml");

      elsif Path.Ends_With (".css") then
         return League.Strings.To_Universal_String ("text/css");

      elsif Path.Ends_With (".frag") then
         return League.Strings.To_Universal_String ("x-shader/x-fragment");

      elsif Path.Ends_With (".gif") then
         return League.Strings.To_Universal_String ("image/gif");

      elsif Path.Ends_With (".html") then
         return League.Strings.To_Universal_String ("text/html");

      elsif Path.Ends_With (".jpeg") then
         return League.Strings.To_Universal_String ("image/jpeg");

      elsif Path.Ends_With (".js") then
         return League.Strings.To_Universal_String ("text/javascript");

      elsif Path.Ends_With (".mjs") then
         return League.Strings.To_Universal_String ("text/javascript");

      elsif Path.Ends_With (".pdf") then
         return League.Strings.To_Universal_String ("application/pdf");

      elsif Path.Ends_With (".png") then
         return League.Strings.To_Universal_String ("image/png");

      elsif Path.Ends_With (".svg") then
         return League.Strings.To_Universal_String ("image/svg+xml");

      elsif Path.Ends_With (".tiff") then
         return League.Strings.To_Universal_String ("image/tiff");

      elsif Path.Ends_With (".txt") then
         return League.Strings.To_Universal_String ("text/plain");

      elsif Path.Ends_With (".vert") then
         return League.Strings.To_Universal_String ("x-shader/x-vertex");

      elsif Path.Ends_With (".wasm") then
         return League.Strings.To_Universal_String ("application/wasm");

      elsif Path.Ends_With (".xml") then
         --  "text/xml" requires to specify character encoding in Content-Type
         --  header, otherwise US-ASCII is used. "application/xml" doesn't
         --  require to provide character encoding in Content-Type header, in
         --  this case XML processor uses encoding from document.

         return League.Strings.To_Universal_String ("application/xml");

      else
         return League.Strings.Empty_Universal_String;
      end if;
   end Get_MIME_Type;
      
   -------------------
   -- Get_Real_Path --
   -------------------

   overriding function Get_Real_Path
    (Self : Servlet_Container;
     Path : League.Strings.Universal_String)
       return League.Strings.Universal_String
   is
      pragma Unreferenced (Self);

   begin
      return "install" & Path;
   end Get_Real_Path;

   ------------------------------
   -- Get_Servlet_Registration --
   ------------------------------

   overriding function Get_Servlet_Registration
    (Self         : not null access Servlet_Container;
     Servlet_Name : League.Strings.Universal_String)
       return access Servlet.Servlet_Registrations.Servlet_Registration'Class is
   begin
      for Registration of Self.Servlets loop
         if Registration.Name = Servlet_Name then
            return Registration;
         end if;
      end loop;

      return null;
   end Get_Servlet_Registration;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize
    (Self    : not null access Servlet_Container'Class;
     Server  : not null Matreshka.Servlet_Servers.Server_Access;
     Success : out Boolean)
   is
      Source      : aliased XML.SAX.File_Input_Sources.File_Input_Source;
      Reader      : XML.SAX.Simple_Readers.Simple_Reader;
      Parser      : aliased
        Matreshka.Spikedog_Deployment_Descriptors.Parsers
          .Deployment_Descriptor_Parser;
      Descriptor  :
        Matreshka.Spikedog_Deployment_Descriptors.Deployment_Descriptor_Access;
      Initializer :
          Servlet.Container_Initializers.Servlet_Container_Initializer_Access;
      Aux         : Boolean;

   begin
      Success := False;

      --  Load deployment descriptor.

      Descriptor :=
        new Matreshka.Spikedog_Deployment_Descriptors.Deployment_Descriptor;

      Reader.Set_Input_Source (Source'Unchecked_Access);
      Reader.Set_Content_Handler (Parser'Unchecked_Access);
      Parser.Set_Deployment_Descriptor (Descriptor);

      Source.Open_By_File_Name
       (League.Strings.To_Universal_String ("install/WEB-INF/web.xml"));
      Reader.Parse;
      Source.Close;

      --  Start initialization of container.

      Self.State := Initialization;
      Self.Descriptor := Descriptor;
      Server.Set_Container (Self);
      --  XXX Can container be connected to server later, after successful
      --  initialization?

      --  Load and startup application.

      begin
         Loader.Load (Self.all, Initializer);
         Initializer.On_Startup (Self.all);

      exception
         when X : others =>
            Ada.Text_IO.Put_Line
             (Ada.Text_IO.Standard_Error,
              "Exception during application load/startup:");
            Ada.Text_IO.Put_Line
             (Ada.Text_IO.Standard_Error,
              Ada.Exceptions.Exception_Information (X));

            return;
      end;

      --  Notify ServletContextListeners about initialization of context

      for Listener of Self.Context_Listeners loop
         Listener.Context_Initialized (Self);
      end loop;

      --  Instantiate servlets defined by deployment descriptor

      for Descriptor of Self.Descriptor.Servlets loop
         declare
            P : aliased Servlet.Generic_Servlets.Instantiation_Parameters;
            S : constant Matreshka.Servlet_Registrations.Servlet_Access
              := new Servlet.Generic_Servlets.Generic_Servlet'Class'
                      (Instantiate_Servlet
                        (Ada.Tags.Internal_Tag
                          (Descriptor.Tag.To_UTF_8_String),
                         P'Access));

         begin
            Self.Add_Servlet (Descriptor.Name, S);
         end;
      end loop;

      --  Add URL mappings

      for Descriptor of Self.Descriptor.Servlet_Mappings loop
         Self.Get_Servlet_Registration
          (Descriptor.Name).Add_Mapping (Descriptor.URL_Patterns);
      end loop;

      Self.State := Initialized;

      --  Setup default servlet for context.

      Self.Add_Mapping
       (new Matreshka.Servlet_Registrations.Servlet_Registration'
             (Context => Self,
              Name    => League.Strings.Empty_Universal_String,
              Servlet => new Matreshka.Servlet_Defaults.Default_Servlet),
        League.Strings.To_Universal_String ("/"),
        Aux);

      Success := True;
   end Initialize;

   -------------------------
   -- Set_Session_Manager --
   -------------------------

   overriding procedure Set_Session_Manager
    (Self    : in out Servlet_Container;
     Manager :
       not null Spikedog.HTTP_Session_Managers.HTTP_Session_Manager_Access) is
   begin
      Self.Session_Manager := Manager;
   end Set_Session_Manager;

end Matreshka.Servlet_Containers;
