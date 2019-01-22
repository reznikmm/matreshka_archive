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
-- Copyright © 2014-2019, Vadim Godunko <vgodunko@gmail.com>                --
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
with League.Calendars;
with League.Holders;
with League.IRIs;
with League.Strings;
with League.String_Vectors;
with Servlet.HTTP_Cookies;
with Servlet.Responses;

package Servlet.HTTP_Responses is

   pragma Preelaborate;

   type Status_Code is
    (Continue,
     --  Status code (100) indicating the client can continue.
     Switching_Protocols,
     --  Status code (101) indicating the server is switching protocols
     --  according to Upgrade header.

     OK,
     --  Status code (200) indicating the request succeeded normally.
     Created,
     --  Status code (201) indicating the request succeeded and created a new
     --  resource on the server.
     Accepted,
     --  Status code (202) indicating that a request was accepted for
     --  processing, but was not completed.
     Non_Authoritative_Information,
     --  Status code (203) indicating that the meta information presented by
     --  the client did not originate from the server.
     No_Content,
     --  Status code (204) indicating that the request succeeded but that there
     --  was no new information to return.
     Reset_Content,
     --  Status code (205) indicating that the agent SHOULD reset the document
     --  view which caused the request to be sent.
     Partial_Content,
     --  Status code (206) indicating that the server has fulfilled the partial
     --  GET request for the resource.

     Multiple_Choices,
     --  Status code (300) indicating that the requested resource corresponds
     --  to any one of a set of representations, each with its own specific
     --  location.
     Moved_Permanently,
     --  Status code (301) indicating that the resource has permanently moved
     --  to a new location, and that future references should use a new URI
     --  with their requests.
     Moved_Temporarily,
     --  Status code (302) indicating that the resource has temporarily moved
     --  to another location, but that future references should still use the
     --  original URI to access the resource.
     Found,
     --  Status code (302) indicating that the resource reside temporarily
     --  under a different URI.
     See_Other,
     --  Status code (303) indicating that the response to the request can be
     --  found under a different URI.
     Not_Modified,
     --  Status code (304) indicating that a conditional GET operation found
     --  that the resource was available and not modified.
     Use_Proxy,
     --  Status code (305) indicating that the requested resource MUST be
     --  accessed through the proxy given by the Location field.
     Temporary_Redirect,
     --  Status code (307) indicating that the requested resource resides
     --  temporarily under a different URI.

     Bad_Request,
     --  Status code (400) indicating the request sent by the client was
     --  syntactically incorrect.
     Unauthorized,
     --  Status code (401) indicating that the request requires HTTP
     --  authentication.
     Payment_Required,
     --  Status code (402) reserved for future use.
     Forbidden,
     --  Status code (403) indicating the server understood the request but
     --  refused to fulfill it.
     Not_Found,
     --  Status code (404) indicating that the requested resource is not
     --  available.
     Method_Not_Allowed,
     --  Status code (405) indicating that the method specified in the
     --  Request-Line is not allowed for the resource identified by the
     --  Request-URI.
     Not_Acceptable,
     --  Status code (406) indicating that the resource identified by the
     --  request is only capable of generating response entities which have
     --  content characteristics not acceptable according to the accept headers
     --  sent in the request.
     Proxy_Authentication_Required,
     --  Status code (407) indicating that the client MUST first authenticate
     --  itself with the proxy.
     Request_Timeout,
     --  Status code (408) indicating that the client did not produce a request
     --  within the time that the server was prepared to wait.
     Conflict,
     --  Status code (409) indicating that the request could not be completed
     --  due to a conflict with the current state of the resource.
     Gone,
     --  Status code (410) indicating that the resource is no longer available
     --  at the server and no forwarding address is known.
     Length_Required,
     --  Status code (411) indicating that the request cannot be handled
     --  without a defined Content-Length.
     Precondition_Failed,
     --  Status code (412) indicating that the precondition given in one or
     --  more of the request-header fields evaluated to false when it was
     --  tested on the server.
     Request_Entity_Too_Large,
     --  Status code (413) indicating that the server is refusing to process
     --  the request because the request entity is larger than the server is
     --  willing or able to process.
     Request_URI_Too_Long,
     --  Status code (414) indicating that the server is refusing to service
     --  the request because the Request-URI is longer than the server is
     --  willing to interpret.
     Unsupported_Media_Type,
     --  Status code (415) indicating that the server is refusing to service
     --  the request because the entity of the request is in a format not
     --  supported by the requested resource for the requested method.
     Requested_Range_Not_Satisfiable,
     --  Status code (416) indicating that the server cannot serve the
     --  requested byte range.
     Expectation_Failed,
     --  Status code (417) indicating that the server could not meet the
     --  expectation given in the Expect request header.

     Internal_Server_Error,
     --  Status code (500) indicating an error inside the HTTP server which
     --  prevented it from fulfilling the request.
     Not_Implemented,
     --  Status code (501) indicating the HTTP server does not support the
     --  functionality needed to fulfill the request.
     Bad_Gateway,
     --  Status code (502) indicating that the HTTP server received an invalid
     --  response from a server it consulted when acting as a proxy or gateway.
     Service_Unavailable,
     --  Status code (503) indicating that the HTTP server is temporarily
     --  overloaded, and unable to handle the request.
     Gateway_Timeout,
     --  Status code (504) indicating that the server did not receive a timely
     --  response from the upstream server while acting as a gateway or proxy.
     HTTP_Version_Not_Supported);
     --  Status code (505) indicating that the server does not support or
     --  refuses to support the HTTP protocol version that was used in the
     --  request message.

   type HTTP_Servlet_Response is limited interface
     and Servlet.Responses.Servlet_Response;

   not overriding procedure Add_Cookie
    (Self   : in out HTTP_Servlet_Response;
     Cookie : Servlet.HTTP_Cookies.Cookie) is abstract;
   --  Adds the specified cookie to the response. This method can be called
   --  multiple times to set more than one cookie.

   not overriding procedure Add_Date_Header
    (Self  : in out HTTP_Servlet_Response;
     Name  : League.Strings.Universal_String;
     Value : League.Calendars.Date_Time) is abstract;
   --  Adds a response header with the given name and date-value. This method
   --  allows response headers to have multiple values.

   not overriding procedure Add_Header
    (Self  : in out HTTP_Servlet_Response;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String) is abstract;
   --  Adds a response header with the given name and value. This method allows
   --  response headers to have multiple values.

   not overriding procedure Add_Integer_Header
    (Self  : in out HTTP_Servlet_Response;
     Name  : League.Strings.Universal_String;
     Value : League.Holders.Universal_Integer) is abstract;
   --  Adds a response header with the given name and integer value. This
   --  method allows response headers to have multiple values.

   not overriding function Contains_Header
    (Self : in out HTTP_Servlet_Response;
     Name : League.Strings.Universal_String) return Boolean is abstract;
   --  Returns a boolean indicating whether the named response header has
   --  already been set.

   function Get_Header
    (Self : in out HTTP_Servlet_Response'Class;
     Name : League.Strings.Universal_String)
       return League.Strings.Universal_String;
   --  Return the value for the specified header, or empty string if this
   --  header has not been set. If more than one value was added for this name,
   --  only the first is returned; use Get_Headers to retrieve all of them.

   not overriding function Get_Header_Names
    (Self : in out HTTP_Servlet_Response)
       return League.String_Vectors.Universal_String_Vector is abstract;
   --  Return all the header names set for this response.

   not overriding function Get_Headers
    (Self : in out HTTP_Servlet_Response;
     Name : League.Strings.Universal_String)
       return League.String_Vectors.Universal_String_Vector is abstract;
   --  Return all the header values associated with the specified header name.

   not overriding function Get_Status
    (Self : HTTP_Servlet_Response) return Status_Code is abstract;
   --  Gets the current status code of this response.

   procedure Send_Error
    (Self : in out HTTP_Servlet_Response'Class;
     Code : Status_Code);
   --  Sends an error response to the client using the specified status code
   --  and clears the buffer. The server will preserve cookies and may clear or
   --  update any headers needed to serve the error page as a valid response.
   --  If an error-page declaration has been made for the web application
   --  corresponding to the status code passed in, it will be served back the
   --  error page.
   --
   --  If the response has already been committed, this subprogram raise an
   --  Program_Error exception. After using this method, the response should be
   --  considered to be committed and should not be written to. 

   not overriding procedure Send_Error
    (Self    : in out HTTP_Servlet_Response;
     Code    : Status_Code;
     Message : League.Strings.Universal_String) is abstract;
   --  Sends an error response to the client using the specified status and
   --  clears the buffer. The server defaults to creating the response to look
   --  like an HTML-formatted server error page containing the specified
   --  message, setting the content type to "text/html". The server will
   --  preserve cookies and may clear or update any headers needed to serve the
   --  error page as a valid response. If an error-page declaration has been
   --  made for the web application corresponding to the status code passed in,
   --  it will be served back in preference to the suggested msg parameter and
   --  the msg parameter will be ignored.
   --
   --  If the response has already been committed, this method throws an
   --  Program_Error. After using this method, the response should be
   --  considered to be committed and should not be written to.

   not overriding procedure Send_Redirect
    (Self     : in out HTTP_Servlet_Response;
     Location : League.IRIs.IRI) is abstract;
   --  Sends a temporary redirect response to the client using the specified
   --  redirect location URL and clears the buffer. The buffer will be replaced
   --  with the data set by this method. Calling this method sets the status
   --  code to SC_FOUND 302 (Found). This method can accept relative URLs;the
   --  servlet container must convert the relative URL to an absolute URL
   --  before sending the response to the client. If the location is relative
   --  without a leading '/' the container interprets it as relative to the
   --  current request URI. If the location is relative with a leading '/' the
   --  container interprets it as relative to the servlet container root. If
   --  the location is relative with two leading '/' the container interprets
   --  it as a network-path reference (see RFC 3986: Uniform Resource
   --  Identifier (URI): Generic Syntax, section 4.2 "Relative Reference").
   --
   --  If the response has already been committed, this method throws an
   --  IllegalStateException. After using this method, the response should be
   --  considered to be committed and should not be written to.

   not overriding procedure Set_Date_Header
    (Self  : in out HTTP_Servlet_Response;
     Name  : League.Strings.Universal_String;
     Value : League.Calendars.Date_Time) is abstract;
   --  Sets a response header with the given name and date-value. If the header
   --  had already been set, the new value overwrites the previous one. The
   --  Contains_Header method can be used to test for the presence of a header
   --  before setting its value.

   not overriding procedure Set_Header
    (Self  : in out HTTP_Servlet_Response;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String) is abstract;
   --  Sets a response header with the given name and value. If the header had
   --  already been set, the new value overwrites the previous one. The
   --  Contains_Header method can be used to test for the presence of a header
   --  before setting its value.

   not overriding procedure Set_Integer_Header
    (Self  : in out HTTP_Servlet_Response;
     Name  : League.Strings.Universal_String;
     Value : League.Holders.Universal_Integer) is abstract;
   --  Sets a response header with the given name and integer value. If the
   --  header had already been set, the new value overwrites the previous one.
   --  The Contains_Header method can be used to test for the presence of a
   --  header before setting its value.

   not overriding procedure Set_Status
    (Self : in out HTTP_Servlet_Response;
     Code : Status_Code) is abstract;
   --  Sets the status code for this response.

end Servlet.HTTP_Responses;
