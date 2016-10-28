------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               Web Framework                              --
--                                                                          --
--                            Web API Definition                            --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2016, Vadim Godunko <vgodunko@gmail.com>                     --
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

with WebAPI.DOM.Documents;
with WebAPI.DOM.Events;
with WebAPI.XHR.Event_Targets;
with WebAPI.XHR.Form_Datas;

package WebAPI.XHR.Requests is

   pragma Preelaborate;

   type XML_Http_Request is limited new WebAPI.XHR.Event_Targets.Event_Target
     with private;

   --  The following is the event handler (and its corresponding event handler
   --  event type) that must be supported as attribute solely by the
   --  XMLHttpRequest object:
   --
   --  * "readystatechange"

   type XML_Http_Request_Access is access all XML_Http_Request;

   subtype State is Natural range 0 .. 4;

   not overriding function Get_Ready_State
    (Self : not null access constant XML_Http_Request)
       return State
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "readyState";
   --  The XMLHttpRequest object can be in several states. The readyState
   --  attribute must return the current state, which must be one of the
   --  following values:

   UNSENT : constant State := 0;
   --  The object has been constructed.
   OPENED : constant State := 1;
   --  The open() method has been successfully invoked. During this state
   --  request headers can be set using setRequestHeader() and the request
   --  can be made using the send() method.
   HEADERS_RECEIVED : constant State := 2;
   --  All redirects (if any) have been followed and all HTTP headers of the
   --  final response have been received. Several response members of the
   --  object are now available.
   LOADING : constant State := 3;
   --  The response entity body is being received.
   DONE : constant State := 4;
   --  The data transfer has been completed or something went wrong during the
   --  transfer (e.g. infinite redirects).

   not overriding procedure Open
    (Self     : not null access constant XML_Http_Request;
     Method   : League.Strings.Universal_String;
     URL      : League.Strings.Universal_String;
     Async    : Boolean := True;
     Username : League.Strings.Universal_String :=
       League.Strings.Empty_Universal_String;
     Password : League.Strings.Universal_String :=
       League.Strings.Empty_Universal_String)
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "open";
   --  Sets the request method, request URL, and synchronous flag.

   not overriding procedure Set_Request_Header
    (Self   : not null access XML_Http_Request;
     Header : League.Strings.Universal_String;
     Value  : League.Strings.Universal_String)
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "setRequestHeader";
   --  Appends an header to the list of author request headers, or if header is
   --  already in the list of author request headers, combines its value with
   --  value.

   not overriding function Get_Timeout
    (Self : not null access constant XML_Http_Request)
       return Natural
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "timeout";

   not overriding procedure Set_Timeout
    (Self  : not null access XML_Http_Request;
     Value : Natural)
         with Import     => True,
              Convention => JavaScript_Property_Setter,
              Link_Name  => "timeout";
   --  Can be set to a time in milliseconds. When set to a non-zero value will
   --  cause fetching to terminate after the given time has passed. When the
   --  time has passed, the request has not yet completed, and the synchronous
   --  flag is unset, a timeout event will then be dispatched, or a
   --  "TimeoutError" exception will be thrown otherwise (for the send()
   --  method).

   not overriding function Get_With_Credentials
    (Self : not null access constant XML_Http_Request)
       return Boolean
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "withCredentials";
   --  True when user credentials are to be included in a cross-origin request.
   --  False when they are to be excluded in a cross-origin request and when
   --  cookies are to be ignored in its response. Initially false.

   not overriding procedure Set_With_Credentials
    (Self  : not null access XML_Http_Request;
     Value : Boolean)
         with Import     => True,
              Convention => JavaScript_Property_Setter,
              Link_Name  => "withCredentials";

   not overriding function Get_Upload
    (Self : not null access constant XML_Http_Request)
       return access WebAPI.XHR.Event_Targets.Event_Target'Class
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "upload";
   --  Returns the associated XMLHttpRequestUpload object. It can be used to
   --  gather transmission information when data is transferred to a server.

   not overriding procedure Send
    (Self : not null access XML_Http_Request;
     Data : League.Strings.Universal_String)
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "send";
   --  Initiates the request. The optional argument provides the request entity
   --  body. The argument is ignored if request method is GET or HEAD.
   
   not overriding procedure Send
    (Self : not null access XML_Http_Request;
     Data : access WebAPI.XHR.Form_Datas.Form_Data'Class := null)
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "send";
   
   not overriding procedure Abort_Request
    (Self     : not null access XML_Http_Request)
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "abort";
   --  Cancels any network activity.

   --  Response

   not overriding function Get_Status
    (Self : not null access constant XML_Http_Request)
       return Natural
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "status";
   --  Returns the HTTP status code.

   not overriding function Get_Status_Text
    (Self : not null access constant XML_Http_Request)
       return League.Strings.Universal_String
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "statusText";
   --  Returns the HTTP status text.

   not overriding function Get_Response_Header
    (Self   : not null access constant XML_Http_Request;
     Header : League.Strings.Universal_String)
       return League.Strings.Universal_String
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "getResponseHeader";
   --  Returns the header field value from the response of which the field name
   --  matches header, unless the field name is Set-Cookie or Set-Cookie2.

   not overriding function Get_All_Response_Headers
    (Self   : not null access constant XML_Http_Request;
     Header : League.Strings.Universal_String)
       return League.Strings.Universal_String
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "getAllResponseHeaders";
   --  Returns all headers from the response, with the exception of those whose
   --  field name is Set-Cookie or Set-Cookie2.

   not overriding procedure Override_Mime_Type
    (Self : not null access constant XML_Http_Request;
     MIME : WebAPI.DOM_String)
         with Import     => True,
              Convention => JavaScript_Method,
              Link_Name  => "overrideMimeType";
   --  Sets the Content-Type header for the response to mime.

   not overriding function Get_Response_Type
    (Self : not null access constant XML_Http_Request)
       return League.Strings.Universal_String
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "responseType";
   --  Returns the response type.

   not overriding procedure Set_Response_Type
    (Self  : not null access XML_Http_Request;
     Value : League.Strings.Universal_String)
         with Import     => True,
              Convention => JavaScript_Property_Setter,
              Link_Name  => "responseType";
   --  Can be set to change the response type. Values are: the empty string
   --  (default), "arraybuffer", "blob", "document", "json", and "text".

   not overriding function Get_Response_Text
    (Self : not null access constant XML_Http_Request)
       return WebAPI.DOM_String
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "responseText";
   --  Returns the text response entity body.

   not overriding function Get_Response_XML
    (Self : not null access constant XML_Http_Request)
       return WebAPI.DOM.Documents.Document_Access
         with Import     => True,
              Convention => JavaScript_Property_Getter,
              Link_Name  => "responseXML";
   --  Returns the document response entity body.

private

   type XML_Http_Request is limited new WebAPI.XHR.Event_Targets.Event_Target
     with null record
         with Export     => True,
              Convention => JavaScript,
              Link_Name  => "XMLHttpRequest";

   overriding function Dispatch_Event
    (Self  : not null access XML_Http_Request;
     Event : not null access WebAPI.DOM.Events.Event'Class)
     return Boolean
       with Import     => True,
            Convention => JavaScript_Method,
            Link_Name  => "dispatchEvent";
   
end WebAPI.XHR.Requests;
