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
--  Defines an object to provide client request information to a servlet. The
--  servlet container creates a ServletRequest object and passes it as an
--  argument to the servlet's service method.
------------------------------------------------------------------------------
with Ada.Streams;

with League.String_Vectors;
with League.Strings;

with Servlet.Contexts;

package Servlet.Requests is

   pragma Preelaborate;

   type Servlet_Request is limited interface;

   type Servlet_Request_Access is access all Servlet_Request'Class;

   not overriding function Get_Content_Type
    (Self : Servlet_Request)
       return League.Strings.Universal_String is abstract;
   --  Returns the MIME type of the body of the request, or null if the type
   --  is not known. For HTTP servlets, same as the value of the CGI variable
   --  CONTENT_TYPE.

   not overriding function Get_Input_Stream
    (Self : Servlet_Request)
       return not null access Ada.Streams.Root_Stream_Type'Class is abstract;
   --  Retrieves the body of the request as binary data using a stream.

   function Get_Parameter
    (Self : Servlet_Request'Class;
     Name : League.Strings.Universal_String)
       return League.Strings.Universal_String;
   --  Returns the value of a request parameter as a String, or empty string if
   --  the parameter does not exist. Request parameters are extra information
   --  sent with the request. For HTTP servlets, parameters are contained in
   --  the query string or posted form data.
   --
   --  You should only use this method when you are sure the parameter has only
   --  one value. If the parameter might have more than one value, use
   --  Get_Parameter_Values.
   --
   --  If you use this method with a multivalued parameter, the value returned
   --  is equal to the first value in the array returned by
   --  Get_Parameter_Values.
   --
   --  If the parameter data was sent in the request body, such as occurs with
   --  an HTTP POST request, then reading the body directly via
   --  Get_Input_Stream or Get_Reader can interfere with the execution of this
   --  method. 

   not overriding function Get_Parameter_Names
    (Self : Servlet_Request)
       return League.String_Vectors.Universal_String_Vector is abstract;
   --  Returns an vector of String containing the names of the parameters
   --  contained in this request. If the request has no parameters, the method
   --  returns an empty vector.

   not overriding function Get_Parameter_Values
    (Self : Servlet_Request;
     Name : League.Strings.Universal_String)
       return League.String_Vectors.Universal_String_Vector is abstract;
   --  Returns an array of String objects containing all of the values the
   --  given request parameter has, or null if the parameter does not exist.
   --
   --  If the parameter has a single value, the array has a length of 1.

   not overriding function Get_Scheme
    (Self : Servlet_Request) return League.Strings.Universal_String
       is abstract;
   --  Returns the name of the scheme used to make this request, for example,
   --  http, https, or ftp. Different schemes have different rules for
   --  constructing URLs, as noted in RFC 1738.

   not overriding function Get_Server_Name
    (Self : Servlet_Request) return League.Strings.Universal_String
       is abstract;
   --  Returns the host name of the server to which the request was sent. It is
   --  the value of the part before ":" in the Host header value, if any, or
   --  the resolved server name, or the server IP address.

   not overriding function Get_Server_Port
    (Self : Servlet_Request) return Positive is abstract;
   --  Returns the port number to which the request was sent. It is the value
   --  of the part after ":" in the Host header value, if any, or the server
   --  port where the client connection was accepted on.

   not overriding function Get_Servlet_Context
    (Self : Servlet_Request)
       return access Servlet.Contexts.Servlet_Context'Class is abstract;
   --  Gets the servlet context to which this ServletRequest was last
   --  dispatched.

   not overriding function Is_Async_Supported
    (Self : not null access Servlet_Request) return Boolean is abstract;
   --  Checks if this request supports asynchronous operation.

end Servlet.Requests;
