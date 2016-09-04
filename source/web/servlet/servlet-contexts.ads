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
-- Copyright © 2014-2016, Vadim Godunko <vgodunko@gmail.com>                --
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
--  Defines a set of methods that a servlet uses to communicate with its
--  servlet container, for example, to get the MIME type of a file, dispatch
--  requests, or write to a log file.
------------------------------------------------------------------------------
with League.Strings;

with Servlet.Event_Listeners;
with Servlet.Servlet_Registrations;
limited with Servlet.Servlets;

package Servlet.Contexts is

   pragma Preelaborate;

   type Servlet_Context is limited interface;

   type Servlet_Context_Access is access all Servlet_Context'Class;

   not overriding function Add_Servlet
    (Self     : not null access Servlet_Context;
     Name     : League.Strings.Universal_String;
     Instance : not null access Servlet.Servlets.Servlet'Class)
       return access Servlet.Servlet_Registrations.Servlet_Registration'Class
         is abstract;
   --  Registers the given servlet instance with this ServletContext under the
   --  given servletName.
   --
   --  The registered servlet may be further configured via the returned
   --  ServletRegistration object.
   --
   --  If this ServletContext already contains a preliminary
   --  ServletRegistration for a servlet with the given servletName, it will be
   --  completed (by assigning the class name of the given servlet instance to
   --  it) and returned.

   procedure Add_Servlet
    (Self     : not null access Servlet_Context'Class;
     Name     : League.Strings.Universal_String;
     Instance : not null access Servlet.Servlets.Servlet'Class);

   not overriding procedure Add_Listener
    (Self     : not null access Servlet_Context;
     Listener : not null Servlet.Event_Listeners.Event_Listener_Access)
       is abstract;
   --  Adds a listener of the given class type to this ServletContext.
   --
   --  The given listenerClass must implement one or more of the following
   --  interfaces:
   --
   --    ServletContextAttributeListener
   --    ServletRequestListener
   --    ServletRequestAttributeListener
   --    HttpSessionAttributeListener
   --    HttpSessionIdListener
   --    HttpSessionListener 
   --
   --  If this ServletContext was passed to
   --  Servlet_Container_Initializer.On_Startup, then the given listener may
   --  also be an instance of ServletContextListener, in addition to the
   --  interfaces listed above.
   --
   --  If the given listenerClass implements a listener interface whose
   --  invocation order corresponds to the declaration order (i.e., if it
   --  implements ServletRequestListener, ServletContextListener, or
   --  HttpSessionListener), then the new listener will be added to the end of
   --  the ordered list of listeners of that interface.

   not overriding function Get_MIME_Type
    (Self : Servlet_Context;
     Path : League.Strings.Universal_String)
       return League.Strings.Universal_String is abstract;
   --  Returns the MIME type of the specified file, or null if the MIME type is
   --  not known. The MIME type is determined by the configuration of the
   --  servlet container, and may be specified in a web application deployment
   --  descriptor. Common MIME types include text/html and image/gif.

   not overriding function Get_Real_Path
    (Self : Servlet_Context;
     Path : League.Strings.Universal_String)
       return League.Strings.Universal_String is abstract;
   --  Gets the real path corresponding to the given virtual path.
   --
   --  For example, if path is equal to /index.html, this method will return
   --  the absolute file path on the server's filesystem to which a request of
   --  the form http://<host>:<port>/<contextPath>/index.html would be mapped,
   --  where <contextPath> corresponds to the context path of this
   --  ServletContext.
   --
   --  The real path returned will be in a form appropriate to the computer and
   --  operating system on which the servlet container is running, including
   --  the proper path separators.
   --
   --  Resources inside the /META-INF/resources directories of JAR files
   --  bundled in the application's /WEB-INF/lib directory must be considered
   --  only if the container has unpacked them from their containing JAR file,
   --  in which case the path to the unpacked location must be returned.
   --
   --  This method returns null if the servlet container is unable to translate
   --  the given virtual path to a real path.

   not overriding function Get_Servlet_Registration
    (Self         : not null access Servlet_Context;
     Servlet_Name : League.Strings.Universal_String)
       return access Servlet.Servlet_Registrations.Servlet_Registration'Class
         is abstract;
   --  Gets the Servlet_Registration corresponding to the servlet with the
   --  given Servlet_Name.

end Servlet.Contexts;
