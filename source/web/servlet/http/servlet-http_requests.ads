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
--  Extends the ServletRequest interface to provide request information for
--  HTTP servlets.
--
--  The servlet container creates an HttpServletRequest object and passes it as
--  an argument to the servlet's service methods (doGet, doPost, etc).
------------------------------------------------------------------------------
with League.IRIs;
with League.String_Vectors;
with League.Strings;

with Servlet.HTTP_Cookie_Sets;
with Servlet.HTTP_Parameters;
with Servlet.HTTP_Parameter_Vectors;
with Servlet.HTTP_Sessions;
with Servlet.HTTP_Upgrade_Handlers;
with Servlet.Requests;

package Servlet.HTTP_Requests is

   pragma Preelaborate;

   type HTTP_Method is
    (Options, Get, Head, Post, Put, Delete, Trace, Connect);

   type HTTP_Servlet_Request is limited interface
     and Servlet.Requests.Servlet_Request;

   not overriding function Change_Session_Id
    (Self : HTTP_Servlet_Request)
       return League.Strings.Universal_String is abstract;
   procedure Change_Session_Id (Self : HTTP_Servlet_Request'Class);
   --  Change the session id of the current session associated with this
   --  request and return the new session id.
   --
   --  Raises Program_Error if there is no session associates with the request.

   not overriding function Get_Context_Path
    (Self : HTTP_Servlet_Request)
       return League.String_Vectors.Universal_String_Vector is abstract;
   function Get_Context_Path
    (Self : HTTP_Servlet_Request'Class) return League.Strings.Universal_String;
   --  Returns the portion of the request URI that indicates the context of the
   --  request. The context path always comes first in a request URI. The path
   --  starts with a "/" character but does not end with a "/" character. For
   --  servlets in the default (root) context, this method returns "". The
   --  container does not decode this string.
   --
   --  It is possible that a servlet container may match a context by more than
   --  one context path. In such cases this method will return the actual
   --  context path used by the request and it may differ from the path
   --  returned by the ServletContext.getContextPath() method. The context path
   --  returned by ServletContext.getContextPath() should be considered as the
   --  prime or preferred context path of the application.

   not overriding function Get_Cookies
    (Self : HTTP_Servlet_Request)
       return Servlet.HTTP_Cookie_Sets.Cookie_Set is abstract;
   --  Returns an array containing all of the Cookie objects the client sent
   --  with this request. This method returns null if no cookies were sent.

   not overriding function Get_Headers
    (Self : HTTP_Servlet_Request;
     Name : League.Strings.Universal_String)
       return League.String_Vectors.Universal_String_Vector is abstract;
   --  Returns all the values of the specified request header as an Enumeration
   --  of String objects.
   --
   --  Some headers, such as Accept-Language can be sent by clients as several
   --  headers each with a different value rather than sending the header as a
   --  comma separated list.
   --
   --  If the request did not include any headers of the specified name, this
   --  method returns an empty Enumeration. The header name is case
   --  insensitive. You can use this method with any request header.

   not overriding function Get_Method
    (Self : HTTP_Servlet_Request) return HTTP_Method is abstract;
   --  Returns the name of the HTTP method with which this request was made,
   --  for example, GET, POST, or PUT. Same as the value of the CGI variable
   --  REQUEST_METHOD.

   function Get_Parameter
    (Self : HTTP_Servlet_Request'Class;
     Name : League.Strings.Universal_String)
       return Servlet.HTTP_Parameters.HTTP_Parameter;
   --  Gets the Parameters with the given name.

   not overriding function Get_Parameter_Values
    (Self : HTTP_Servlet_Request;
     Name : League.Strings.Universal_String)
       return Servlet.HTTP_Parameter_Vectors.HTTP_Parameter_Vector is abstract;
   --  Gets the Parameters with the given name.

   not overriding function Get_Path_Info
    (Self : HTTP_Servlet_Request)
       return League.String_Vectors.Universal_String_Vector is abstract;
   function Get_Path_Info
    (Self : HTTP_Servlet_Request'Class) return League.Strings.Universal_String;
   --  Returns any extra path information associated with the URL the client
   --  sent when it made this request. The extra path information follows the
   --  servlet path but precedes the query string and will start with a "/"
   --  character.
   --
   --  This method returns null if there was no extra path information.
   --
   --  Same as the value of the CGI variable PATH_INFO.

   not overriding function Get_Request_URL
    (Self : HTTP_Servlet_Request) return League.IRIs.IRI is abstract;
   --  Returns the URL the client used to make the request. The returned URL
   --  contains a protocol, server name, port number, and server path, but it
   --  does not include query string parameters.
   --
   --  If this request has been forwarded using RequestDispatcher.forward
   --  (ServletRequest, ServletResponse), the server path in the reconstructed
   --  URL must reflect the path used to obtain the RequestDispatcher, and not
   --  the server path specified by the client.
   --
   --  This method is useful for creating redirect messages and for reporting errors.

   not overriding function Get_Requested_Session_Id
    (Self : HTTP_Servlet_Request)
       return League.Strings.Universal_String is abstract;
   --  Returns the session ID specified by the client. This may not be the same
   --  as the ID of the current valid session for this request. If the client
   --  did not specify a session ID, this method returns null.

   not overriding function Get_Servlet_Path
    (Self : HTTP_Servlet_Request)
       return League.String_Vectors.Universal_String_Vector is abstract;
   function Get_Servlet_Path
    (Self : HTTP_Servlet_Request'Class) return League.Strings.Universal_String;
   --  Returns the part of this request's URL that calls the servlet. This path
   --  starts with a "/" character and includes either the servlet name or a
   --  path to the servlet, but does not include any extra path information or
   --  a query string. Same as the value of the CGI variable SCRIPT_NAME.
   --
   --  This method will return an empty string ("") if the servlet used to
   --  process this request was matched using the "/*" pattern.

   not overriding function Get_Session
    (Self   : HTTP_Servlet_Request;
     Create : Boolean := True)
       return access Servlet.HTTP_Sessions.HTTP_Session'Class is abstract;
   --  Returns the current HttpSession associated with this request or, if
   --  there is no current session and create is true, returns a new session.
   --
   --  If create is false and the request has no valid HttpSession, this method
   --  returns null.
   --
   --  To make sure the session is properly maintained, you must call this
   --  method before the response is committed. If the container is using
   --  cookies to maintain session integrity and is asked to create a new
   --  session when the response is committed, an IllegalStateException is
   --  thrown.

   not overriding function Is_Requested_Session_Id_Valid
    (Self : HTTP_Servlet_Request) return Boolean is abstract;
   --  Checks whether the requested session ID is still valid.
   --
   --  If the client did not specify any session ID, this method returns false.

   not overriding procedure Upgrade
    (Self    : HTTP_Servlet_Request;
     Handler :
       not null Servlet.HTTP_Upgrade_Handlers.HTTP_Upgrade_Handler_Access)
         is abstract;
   --  Uses given upgrade handler for the http protocol upgrade processing.

end Servlet.HTTP_Requests;
