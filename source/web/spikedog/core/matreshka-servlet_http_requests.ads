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
-- Copyright © 2015-2018, Vadim Godunko <vgodunko@gmail.com>                --
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
--  Base type for servlet requests. It provides:
--   - splitting of request path into context/servlet/path_info components;
--   - session management via HTTP cookie.
------------------------------------------------------------------------------
with League.IRIs;
with League.String_Vectors;
with League.Strings;

with Servlet.HTTP_Requests;
with Servlet.HTTP_Sessions;
with Servlet.Contexts;
with Spikedog.HTTP_Session_Managers;

package Matreshka.Servlet_HTTP_Requests is

   pragma Preelaborate;

   type Abstract_HTTP_Servlet_Request is
     abstract limited new Servlet.HTTP_Requests.HTTP_Servlet_Request
       with private;

   type HTTP_Servlet_Request_Access is
     access all Abstract_HTTP_Servlet_Request'Class;

   procedure Initialize
    (Self : in out Abstract_HTTP_Servlet_Request'Class;
     URL  : League.IRIs.IRI);
   --  Initialized path of the object and corresponsing respose object.

   procedure Set_Session_Manager
    (Self    : in out Abstract_HTTP_Servlet_Request'Class;
     Manager : Spikedog.HTTP_Session_Managers.HTTP_Session_Manager_Access);
   --  Sets session manager should be used to manage HTTP sessions. This called
   --  by servlet container.

   function Get_Path
    (Self : Abstract_HTTP_Servlet_Request'Class)
       return League.String_Vectors.Universal_String_Vector
         with Inline;
   --  Returns original path of the request.

   procedure Set_Context_Last_Segment
    (Self : in out Abstract_HTTP_Servlet_Request'Class;
     Last : Natural);
   --  Sets index of last segment of context path in request's path.

   procedure Set_Servlet_Last_Segment
    (Self : in out Abstract_HTTP_Servlet_Request'Class;
     Last : Natural);
   --  Sets index of last segment of servlet path in request's path.

   procedure Set_Servlet_Context
    (Self    : in out Abstract_HTTP_Servlet_Request'Class;
     Context : Servlet.Contexts.Servlet_Context_Access);
   --  Sets servlet context to which request was last dispatched.

   overriding function Get_Context_Path
    (Self : Abstract_HTTP_Servlet_Request)
       return League.String_Vectors.Universal_String_Vector;
   --  Returns the portion of the request URI that indicates the context of the
   --  request. The context path always comes first in a request URI. The path
   --  starts with a "/" character but does not end with a "/" character. For
   --  servlets in the default (root) context, this method returns "". The
   --  container does not decode this string.

   overriding function Get_Path_Info
    (Self : Abstract_HTTP_Servlet_Request)
       return League.String_Vectors.Universal_String_Vector;
   --  Returns any extra path information associated with the URL the client
   --  sent when it made this request. The extra path information follows the
   --  servlet path but precedes the query string and will start with a "/"
   --  character.

   overriding function Get_Request_URL
    (Self : Abstract_HTTP_Servlet_Request) return League.IRIs.IRI;
   --  Returns the URL the client used to make the request. The returned URL
   --  contains a protocol, server name, port number, and server path, but it
   --  does not include query string parameters.
   --
   --  If this request has been forwarded using RequestDispatcher.forward
   --  (ServletRequest, ServletResponse), the server path in the reconstructed
   --  URL must reflect the path used to obtain the RequestDispatcher, and not
   --  the server path specified by the client.

   overriding function Get_Requested_Session_Id
    (Self : Abstract_HTTP_Servlet_Request)
       return League.Strings.Universal_String;
   --  Returns the session ID specified by the client. This may not be the same
   --  as the ID of the current valid session for this request. If the client
   --  did not specify a session ID, this method returns null.

   overriding function Get_Scheme
    (Self : Abstract_HTTP_Servlet_Request)
       return League.Strings.Universal_String;
   --  Returns the name of the scheme used to make this request, for example,
   --  http, https, or ftp. Different schemes have different rules for
   --  constructing URLs, as noted in RFC 1738.

   overriding function Get_Server_Name
    (Self : Abstract_HTTP_Servlet_Request)
       return League.Strings.Universal_String;
   --  Returns the host name of the server to which the request was sent. It is
   --  the value of the part before ":" in the Host header value, if any, or
   --  the resolved server name, or the server IP address.

   overriding function Get_Server_Port
    (Self : Abstract_HTTP_Servlet_Request) return Positive;
   --  Returns the port number to which the request was sent. It is the value
   --  of the part after ":" in the Host header value, if any, or the server
   --  port where the client connection was accepted on.

   overriding function Get_Servlet_Context
    (Self : Abstract_HTTP_Servlet_Request)
       return access Servlet.Contexts.Servlet_Context'Class;
   --  Gets the servlet context to which this ServletRequest was last
   --  dispatched.

   overriding function Get_Servlet_Path
    (Self : Abstract_HTTP_Servlet_Request)
       return League.String_Vectors.Universal_String_Vector;
   --  Returns the part of this request's URL that calls the servlet. This path
   --  starts with a "/" character and includes either the servlet name or a
   --  path to the servlet, but does not include any extra path information or
   --  a query string. Same as the value of the CGI variable SCRIPT_NAME.

   overriding function Get_Session
    (Self   : Abstract_HTTP_Servlet_Request;
     Create : Boolean := True)
       return access Servlet.HTTP_Sessions.HTTP_Session'Class;
   --  Returns the current HttpSession associated with this request or, if
   --  there is no current session and create is true, returns a new session.

   overriding function Is_Requested_Session_Id_Valid
    (Self : Abstract_HTTP_Servlet_Request) return Boolean;
   --  Checks whether the requested session ID is still valid.

   overriding function Change_Session_Id
    (Self : Abstract_HTTP_Servlet_Request)
       return League.Strings.Universal_String;
   --  Change the session id of the current session associated with this
   --  request and return the new session id.

private

   type HTTP_Session_Access is
     access all Servlet.HTTP_Sessions.HTTP_Session'Class;

   type Internal_Data is record
      Session_Computed      : Boolean := False;
      Session               : HTTP_Session_Access;

      Requested_Id_Computed : Boolean := False;
      Requested_Id          : League.Strings.Universal_String;
      --  Cache for requested session id
   end record;

   type Abstract_HTTP_Servlet_Request is
     abstract limited new Servlet.HTTP_Requests.HTTP_Servlet_Request with
   record
      URL             : League.IRIs.IRI;
      Context_Last    : Natural  := 0;
      Servlet_Last    : Natural  := 0;
      --  Path information computed during request dispatching.
      Context         : Servlet.Contexts.Servlet_Context_Access;
--      Response        :
--        Matreshka.Servlet_HTTP_Responses.HTTP_Servlet_Response_Access;
      --  Response object to be used when necessay (for example to send cookie
      --  with session identifier to client).
      Session_Manager :
        Spikedog.HTTP_Session_Managers.HTTP_Session_Manager_Access;
      Data            : access Internal_Data;
      Storage         : aliased Internal_Data;
   end record;

end Matreshka.Servlet_HTTP_Requests;
