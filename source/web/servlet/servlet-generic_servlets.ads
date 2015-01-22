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
-- Copyright © 2014-2015, Vadim Godunko <vgodunko@gmail.com>                --
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
--  Defines a generic, protocol-independent servlet. To write an HTTP servlet
--  for use on the Web, extend HttpServlet instead.
--
--  GenericServlet implements the Servlet and ServletConfig interfaces.
--  GenericServlet may be directly extended by a servlet, although it's more
--  common to extend a protocol-specific subclass such as HttpServlet.
--
--  GenericServlet makes writing servlets easier. It provides simple versions
--  of the lifecycle methods init and destroy and of the methods in the
--  ServletConfig interface. GenericServlet also implements the log method,
--  declared in the ServletContext interface.
--
--  To write a generic servlet, you need only override the abstract service
--  method.
------------------------------------------------------------------------------
with League.Strings;

private with Matreshka.Servlets;
with Servlet.Configs;
with Servlet.Servlets;

package Servlet.Generic_Servlets is

   pragma Preelaborate;

   type Generic_Servlet is
     abstract limited new Servlet.Servlets.Servlet
       and Servlet.Configs.Servlet_Config with private;

   overriding procedure Initialize
    (Self   : in out Generic_Servlet;
     Config : not null access Standard.Servlet.Configs.Servlet_Config'Class);
   --  Called by the servlet container to indicate to a servlet that the
   --  servlet is being placed into service.

   overriding function Get_Servlet_Config
    (Self : Generic_Servlet)
       return access Standard.Servlet.Configs.Servlet_Config'Class;
   --  Returns a ServletConfig object, which contains initialization and
   --  startup parameters for this servlet. The ServletConfig object returned
   --  is the one passed to the init method.

   overriding function Get_Servlet_Name
    (Self : Generic_Servlet) return League.Strings.Universal_String;
   --  Returns the name of this servlet instance. See
   --  ServletConfig.getServletName().

private

   type Generic_Servlet is
     abstract limited new Matreshka.Servlets.Abstract_Servlet
       and Servlet.Configs.Servlet_Config with
   record
      Config : access Servlet.Configs.Servlet_Config'Class;
   end record;

end Servlet.Generic_Servlets;
