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
-- Copyright © 2014, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Servlet.Generic_Servlets;
with Servlet.HTTP_Requests;
with Servlet.HTTP_Responses;
with Servlet.Requests;
with Servlet.Responses;

package Servlet.HTTP_Servlets is

   pragma Preelaborate;

   type HTTP_Servlet is
     abstract new Servlet.Generic_Servlets.Generic_Servlet with private;

   not overriding procedure Do_Delete
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class);
   --  Called by the server (via the service method) to allow a servlet to
   --  handle a DELETE request. The DELETE operation allows a client to remove
   --  a document or Web page from the server.
   --
   --  This method does not need to be either safe or idempotent. Operations
   --  requested through DELETE can have side effects for which users can be
   --  held accountable. When using this method, it may be useful to save a
   --  copy of the affected URL in temporary storage.
   --
   --  If the HTTP DELETE request is incorrectly formatted, doDelete returns an
   --  HTTP "Bad Request" message.

   not overriding procedure Do_Get
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class);
   --  Called by the server (via the service method) to allow a servlet to
   --  handle a GET request.
   --
   --  Overriding this method to support a GET request also automatically
   --  supports an HTTP HEAD request. A HEAD request is a GET request that
   --  returns no body in the response, only the request header fields.
   --
   --  When overriding this method, read the request data, write the response
   --  headers, get the response's writer or output stream object, and finally,
   --  write the response data. It's best to include content type and encoding.
   --  When using a PrintWriter object to return the response, set the content
   --  type before accessing the PrintWriter object.
   --
   --  The servlet container must write the headers before committing the
   --  response, because in HTTP the headers must be sent before the response
   --  body.
   --
   --  Where possible, set the Content-Length header (with the
   --  ServletResponse.setContentLength(int) method), to allow the servlet
   --  container to use a persistent connection to return its response to the
   --  client, improving performance. The content length is automatically set
   --  if the entire response fits inside the response buffer.
   --
   --  When using HTTP 1.1 chunked encoding (which means that the response has
   --  a Transfer-Encoding header), do not set the Content-Length header.
   --
   --  The GET method should be safe, that is, without any side effects for
   --  which users are held responsible. For example, most form queries have no
   --  side effects. If a client request is intended to change stored data, the
   --  request should use some other HTTP method.
   --
   --  The GET method should also be idempotent, meaning that it can be safely
   --  repeated. Sometimes making a method safe also makes it idempotent. For
   --  example, repeating queries is both safe and idempotent, but buying a
   --  product online or modifying data is neither safe nor idempotent.
   --
   --  If the request is incorrectly formatted, doGet returns an HTTP "Bad
   --  Request" message.

   not overriding procedure Do_Head
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class);
   --  Receives an HTTP HEAD request from the protected service method and
   --  handles the request. The client sends a HEAD request when it wants to
   --  see only the headers of a response, such as Content-Type or
   --  Content-Length. The HTTP HEAD method counts the output bytes in the
   --  response to set the Content-Length header accurately.
   --
   --  If you override this method, you can avoid computing the response body
   --  and just set the response headers directly to improve performance. Make
   --  sure that the doHead method you write is both safe and idempotent (that
   --  is, protects itself from being called multiple times for one HTTP HEAD
   --  request).
   --
   --  If the HTTP HEAD request is incorrectly formatted, doHead returns an
   --  HTTP "Bad Request" message.

   not overriding procedure Do_Options
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class);
   --  Called by the server (via the service method) to allow a servlet to
   --  handle a OPTIONS request. The OPTIONS request determines which HTTP
   --  methods the server supports and returns an appropriate header.

   not overriding procedure Do_Post
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class);
   --  Called by the server (via the service method) to allow a servlet to
   --  handle a POST request. The HTTP POST method allows the client to send
   --  data of unlimited length to the Web server a single time and is useful
   --  when posting information such as credit card numbers.
   --
   --  When overriding this method, read the request data, write the response
   --  headers, get the response's writer or output stream object, and finally,
   --  write the response data. It's best to include content type and encoding.
   --  When using a PrintWriter object to return the response, set the content
   --  type before accessing the PrintWriter object.
   --
   --  The servlet container must write the headers before committing the
   --  response, because in HTTP the headers must be sent before the response
   --  body.
   --
   --  Where possible, set the Content-Length header (with the
   --  ServletResponse.setContentLength(int) method), to allow the servlet
   --  container to use a persistent connection to return its response to the
   --  client, improving performance. The content length is automatically set
   --  if the entire response fits inside the response buffer.
   --
   --  When using HTTP 1.1 chunked encoding (which means that the response has
   --  a Transfer-Encoding header), do not set the Content-Length header.
   --
   --  This method does not need to be either safe or idempotent. Operations
   --  requested through POST can have side effects for which the user can be
   --  held accountable, for example, updating stored data or buying items
   --  online.
   --
   --  If the HTTP POST request is incorrectly formatted, doPost returns an
   --  HTTP "Bad Request" message.

   not overriding procedure Do_Put
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class);
   --  Called by the server (via the service method) to allow a servlet to
   --  handle a PUT request. The PUT operation allows a client to place a file
   --  on the server and is similar to sending a file by FTP.
   --
   --  When overriding this method, leave intact any content headers sent with
   --  the request (including Content-Length, Content-Type,
   --  Content-Transfer-Encoding, Content-Encoding, Content-Base,
   --  Content-Language, Content-Location, Content-MD5, and Content-Range). If
   --  your method cannot handle a content header, it must issue an error
   --  message (HTTP 501 - Not Implemented) and discard the request. For more
   --  information on HTTP 1.1, see RFC 2616 .
   --
   --  This method does not need to be either safe or idempotent. Operations
   --  that doPut performs can have side effects for which the user can be held
   --  accountable. When using this method, it may be useful to save a copy of
   --  the affected URL in temporary storage.
   --
   --  If the HTTP PUT request is incorrectly formatted, doPut returns an HTTP
   --  "Bad Request" message.

   not overriding procedure Do_Trace
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.HTTP_Requests.HTTP_Servlet_Request'Class;
     Response : in out Servlet.HTTP_Responses.HTTP_Servlet_Response'Class);
   --  Called by the server (via the service method) to allow a servlet to
   --  handle a TRACE request. A TRACE returns the headers sent with the TRACE
   --  request to the client, so that they can be used in debugging. There's no
   --  need to override this method.

   overriding procedure Service
    (Self     : in out HTTP_Servlet;
     Request  : Servlet.Requests.Servlet_Request'Class;
     Response : in out Servlet.Responses.Servlet_Response'Class);

private

   type HTTP_Servlet is
     abstract new Servlet.Generic_Servlets.Generic_Servlet with null record;

end Servlet.HTTP_Servlets;
