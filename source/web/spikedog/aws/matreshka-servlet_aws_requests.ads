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
private with Ada.Streams;

with AWS.Status;

private with League.String_Vectors;
private with League.Strings;

with Matreshka.Servlet_HTTP_Requests;
private with Servlet.HTTP_Cookie_Sets;
private with Servlet.HTTP_Parameter_Vectors;
with Servlet.HTTP_Requests;
with Servlet.HTTP_Upgrade_Handlers;

package Matreshka.Servlet_AWS_Requests is

   type AWS_Servlet_Request is
     new Matreshka.Servlet_HTTP_Requests.Abstract_HTTP_Servlet_Request
       with private;

   procedure Initialize
    (Self : in out AWS_Servlet_Request'Class;
     Data : AWS.Status.Data);
   --  Initialize object to obtain information from given data object of AWS.

   procedure Finalize (Self : in out AWS_Servlet_Request'Class);
   --  Deallocate internal data.

   function Get_Upgrade_Handler
    (Self : AWS_Servlet_Request'Class)
       return Servlet.HTTP_Upgrade_Handlers.HTTP_Upgrade_Handler_Access;

private

   ----------------------
   -- Body_Stream_Type --
   ----------------------

   type Body_Stream_Type
         (Request : not null access AWS_Servlet_Request'Class) is
     new Ada.Streams.Root_Stream_Type with record
      null;
   end record;

   overriding procedure Read
    (Self : in out Body_Stream_Type;
     Item : out Ada.Streams.Stream_Element_Array;
     Last : out Ada.Streams.Stream_Element_Offset);

   overriding procedure Write
    (Self : in out Body_Stream_Type;
     Item : Ada.Streams.Stream_Element_Array);

   -------------------------
   -- AWS_Servlet_Request --
   -------------------------

   type Internal_Cache is record
      Cookies          : Servlet.HTTP_Cookie_Sets.Cookie_Set;
      Cookies_Computed : Boolean := False;
      Upgrade          :
        Servlet.HTTP_Upgrade_Handlers.HTTP_Upgrade_Handler_Access;
   end record;

   type AWS_Servlet_Request is
     new Matreshka.Servlet_HTTP_Requests.Abstract_HTTP_Servlet_Request with
   record
      Request      : AWS.Status.Data;
      Data         : access Internal_Cache;
      Data_Storage : aliased Internal_Cache;
      Body_Stream  : aliased Body_Stream_Type (AWS_Servlet_Request'Access);
   end record;

   overriding function Get_Content_Type
    (Self : AWS_Servlet_Request) return League.Strings.Universal_String;
   --  Returns the MIME type of the body of the request, or null if the type
   --  is not known. For HTTP servlets, same as the value of the CGI variable
   --  CONTENT_TYPE.

   overriding function Get_Cookies
    (Self : AWS_Servlet_Request)
       return Servlet.HTTP_Cookie_Sets.Cookie_Set;
   --  Returns an array containing all of the Cookie objects the client sent
   --  with this request. This method returns null if no cookies were sent.

   overriding function Get_Headers
    (Self : AWS_Servlet_Request;
     Name : League.Strings.Universal_String)
       return League.String_Vectors.Universal_String_Vector;
   --  Returns all the values of the specified request header as an Enumeration
   --  of String objects.

   overriding function Get_Input_Stream
    (Self : AWS_Servlet_Request)
       return not null access Ada.Streams.Root_Stream_Type'Class;
   --  Retrieves the body of the request as binary data using a stream.

   overriding function Get_Method
    (Self : AWS_Servlet_Request) return Servlet.HTTP_Requests.HTTP_Method;
   --  Returns the name of the HTTP method with which this request was made,
   --  for example, GET, POST, or PUT. Same as the value of the CGI variable
   --  REQUEST_METHOD.

   overriding function Get_Parameter_Names
    (Self : AWS_Servlet_Request)
       return League.String_Vectors.Universal_String_Vector;
   --  Returns an vector of String containing the names of the parameters
   --  contained in this request. If the request has no parameters, the method
   --  returns an empty vector.

   overriding function Get_Parameter_Values
    (Self : AWS_Servlet_Request;
     Name : League.Strings.Universal_String)
       return League.String_Vectors.Universal_String_Vector;
   --  Returns an array of String objects containing all of the values the
   --  given request parameter has, or null if the parameter does not exist.

   overriding function Get_Parameter_Values
    (Self : AWS_Servlet_Request;
     Name : League.Strings.Universal_String)
       return Servlet.HTTP_Parameter_Vectors.HTTP_Parameter_Vector;

   overriding function Is_Async_Supported
    (Self : not null access AWS_Servlet_Request) return Boolean;
   --  Checks if this request supports asynchronous operation.

   overriding procedure Upgrade
    (Self    : AWS_Servlet_Request;
     Handler :
       not null Servlet.HTTP_Upgrade_Handlers.HTTP_Upgrade_Handler_Access);
   --  Uses given upgrade handler for the http protocol upgrade processing.

end Matreshka.Servlet_AWS_Requests;
