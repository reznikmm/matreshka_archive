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
with Ada.Strings.Unbounded;

with AWS.Attachments;
with AWS.Headers.Values;
with AWS.Messages;
with AWS.Parameters;
with AWS.Server;
with AWS.URL;

with League.IRIs;

with Servlet.HTTP_Cookies;
with Servlet.HTTP_Parameters.AWS_Parameters;

package body Matreshka.Servlet_AWS_Requests is

   --------------
   -- Finalize --
   --------------

   procedure Finalize (Self : in out AWS_Servlet_Request'Class) is
   begin
      null;
   end Finalize;

   ----------------------
   -- Get_Content_Type --
   ----------------------

   overriding function Get_Content_Type
    (Self : AWS_Servlet_Request) return League.Strings.Universal_String is
   begin
      return
        League.Strings.From_UTF_8_String
         (AWS.Status.Content_Type (Self.Request));
   end Get_Content_Type;

   ----------------
   -- Get_Cookie --
   ----------------

   overriding function Get_Cookies
    (Self : AWS_Servlet_Request)
       return Servlet.HTTP_Cookie_Sets.Cookie_Set is
   begin
      if Self.Data.Cookies_Computed then
         --  Reuse cookies when they was computed.

         return Self.Data.Cookies;
      end if;

      --  Compute cookies.

      declare
         Headers : constant AWS.Headers.List
           := AWS.Status.Header (Self.Request);
         Cookies : constant String
           := AWS.Headers.Get_Values (Headers, AWS.Messages.Cookie_Token);
         Set     : constant AWS.Headers.Values.Set
           := AWS.Headers.Values.Split (Cookies);
         Cookie  : Servlet.HTTP_Cookies.Cookie;

      begin
         Self.Data.Cookies_Computed := True;

         for J in Set'Range loop
            Servlet.HTTP_Cookies.Initialize
             (Cookie,
              League.Strings.From_UTF_8_String
               (Ada.Strings.Unbounded.To_String (Set (J).Name)),
              League.Strings.From_UTF_8_String
               (AWS.URL.Decode
                 (Ada.Strings.Unbounded.To_String (Set (J).Value))));
            --  AWS.URL.Decode is used here for compatibility with AWS.Cookies.

            Self.Data.Cookies.Append (Cookie);
         end loop;

         return Self.Data.Cookies;
      end;
   end Get_Cookies;

   -----------------
   -- Get_Headers --
   -----------------

   overriding function Get_Headers
    (Self : AWS_Servlet_Request;
     Name : League.Strings.Universal_String)
       return League.String_Vectors.Universal_String_Vector
   is
      N       : constant String := Name.To_UTF_8_String;
      Headers : constant AWS.Headers.List := AWS.Status.Header (Self.Request);
      Result  : League.String_Vectors.Universal_String_Vector;

   begin
      for J in 1 .. AWS.Headers.Count (Headers, N) loop
         Result.Append
          (League.Strings.From_UTF_8_String (AWS.Headers.Get (Headers, N, J)));
      end loop;

      return Result;
   end Get_Headers;

   ----------------------
   -- Get_Input_Stream --
   ----------------------

   overriding function Get_Input_Stream
    (Self : AWS_Servlet_Request)
       return not null access Ada.Streams.Root_Stream_Type'Class is
   begin
      --  XXX Should it be done before starting of request processing?

      if not AWS.Status.Is_Body_Uploaded (Self.Request) then
         AWS.Server.Get_Message_Body;
      end if;

      return Self.Body_Stream'Unrestricted_Access;
   end Get_Input_Stream;

   ----------------
   -- Get_Method --
   ----------------

   overriding function Get_Method
    (Self : AWS_Servlet_Request) return Servlet.HTTP_Requests.HTTP_Method is
   begin
      case AWS.Status.Method (Self.Request) is
         when AWS.Status.OPTIONS =>
            return Servlet.HTTP_Requests.Options;

         when AWS.Status.GET =>
            return Servlet.HTTP_Requests.Get;

         when AWS.Status.HEAD =>
            return Servlet.HTTP_Requests.Head;

         when AWS.Status.POST =>
            return Servlet.HTTP_Requests.Post;

         when AWS.Status.PUT =>
            return Servlet.HTTP_Requests.Put;

         when AWS.Status.DELETE =>
            return Servlet.HTTP_Requests.Delete;

         when AWS.Status.TRACE =>
            return Servlet.HTTP_Requests.Trace;

         when AWS.Status.CONNECT =>
            return Servlet.HTTP_Requests.Connect;

         when AWS.Status.EXTENSION_METHOD =>
            raise Program_Error;
      end case;
   end Get_Method;

   -------------------------
   -- Get_Parameter_Names --
   -------------------------

   overriding function Get_Parameter_Names
    (Self : AWS_Servlet_Request)
       return League.String_Vectors.Universal_String_Vector
   is
      Names  : constant AWS.Parameters.VString_Array
        := AWS.Parameters.Get_Names (AWS.Status.Parameters (Self.Request));
      Result : League.String_Vectors.Universal_String_Vector;

   begin
      for Name of Names loop
         Result.Append
          (League.Strings.From_UTF_8_String
            (Ada.Strings.Unbounded.To_String (Name)));
      end loop;

      return Result;
   end Get_Parameter_Names;

   --------------------------
   -- Get_Parameter_Values --
   --------------------------

   overriding function Get_Parameter_Values
    (Self : AWS_Servlet_Request;
     Name : League.Strings.Universal_String)
       return Servlet.HTTP_Parameter_Vectors.HTTP_Parameter_Vector
   is
      N      : constant String := Name.To_UTF_8_String;
      Result : Servlet.HTTP_Parameter_Vectors.HTTP_Parameter_Vector;

      procedure Process_Attachment_Element
       (Attachment : AWS.Attachments.Element;
        Index      : Positive;
        Quit       : in out Boolean);
      --  Process each attachment element.

      --------------------------------
      -- Process_Attachment_Element --
      --------------------------------

      procedure Process_Attachment_Element
       (Attachment : AWS.Attachments.Element;
        Index      : Positive;
        Quit       : in out Boolean)
      is
         Headers : constant AWS.Headers.List
           := AWS.Attachments.Headers (Attachment);

      begin
         if AWS.Headers.Exist
             (Headers, AWS.Messages.Content_Disposition_Token)
           and then AWS.Headers.Values.Search
                     (AWS.Headers.Get
                       (Headers, AWS.Messages.Content_Disposition_Token),
                      "name") = N
         then
            Result.Append
             (Servlet.HTTP_Parameters.AWS_Parameters.Create (Attachment));
         end if;
      end Process_Attachment_Element;

      procedure Process_Attachments is
        new AWS.Attachments.For_Every_Attachment (Process_Attachment_Element);

   begin
      Process_Attachments (AWS.Status.Attachments (Self.Request));

      return Result;
   end Get_Parameter_Values;

   --------------------------
   -- Get_Parameter_Values --
   --------------------------

   overriding function Get_Parameter_Values
    (Self : AWS_Servlet_Request;
     Name : League.Strings.Universal_String)
       return League.String_Vectors.Universal_String_Vector
   is
      Values : constant AWS.Parameters.VString_Array
        := AWS.Parameters.Get_Values
            (AWS.Status.Parameters (Self.Request), Name.To_UTF_8_String);
      Result : League.String_Vectors.Universal_String_Vector;

   begin
      for Value of Values loop
         Result.Append
          (League.Strings.From_UTF_8_String
            (Ada.Strings.Unbounded.To_String (Value)));
      end loop;

      return Result;
   end Get_Parameter_Values;

   -------------------------
   -- Get_Upgrade_Handler --
   -------------------------

   function Get_Upgrade_Handler
    (Self : AWS_Servlet_Request'Class)
       return Servlet.HTTP_Upgrade_Handlers.HTTP_Upgrade_Handler_Access is
   begin
      return Self.Data.Upgrade;
   end Get_Upgrade_Handler;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize
    (Self : in out AWS_Servlet_Request'Class;
     Data : AWS.Status.Data)
   is
      use type League.String_Vectors.Universal_String_Vector;

      Headers   : constant AWS.Headers.List := AWS.Status.Header (Data);
      AWS_URI   : constant AWS.URL.Object := AWS.Status.URI (Data);
      Protocol  : constant String := AWS.URL.Protocol_Name (AWS_URI);
      URI_Text  : constant String := AWS.Status.URI (Data);
      Path      : League.String_Vectors.Universal_String_Vector
        := League.Strings.From_UTF_8_String
            (URI_Text).Split ('/', League.Strings.Skip_Empty);
      --  XXX HTTP protocol uses some protocol specific escaping sequnces, they
      --  should be handled here.
      --  XXX Use of UTF-8 to encode URI by AWS should be checked.
      Host      : League.Strings.Universal_String;
      Delimiter : Natural;

      URL       : League.IRIs.IRI;

   begin
      --  Add empty string at the end of constructed path when URI text ends
      --  with '/' character to distinguish requests of directory or its
      --  contents.

      if URI_Text (URI_Text'Last) = '/' then
         Path.Append (League.Strings.Empty_Universal_String);
      end if;

      --  Reconstruct request's URL.

      URL.Set_Scheme (League.Strings.From_UTF_8_String (Protocol));

      if AWS.Headers.Exist (Headers, AWS.Messages.Host_Token) then
         --  When 'Host' header exists use its content to specify host and port
         --  components of original URL.

         Host :=
           League.Strings.From_UTF_8_String
            (AWS.Headers.Get (Headers, AWS.Messages.Host_Token));
         Delimiter := Host.Index (':');

         if Delimiter /= 0 then
            URL.Set_Host (Host.Head_To (Delimiter - 1));
            URL.Set_Port
             (Integer'Wide_Wide_Value
               (Host.Tail_From (Delimiter + 1).To_Wide_Wide_String));

         else
            URL.Set_Host (Host);

            --  Default port was used by client. It depends from protocol.

            if Protocol = "http" then
               URL.Set_Port (80);

            elsif Protocol = "https" then
               URL.Set_Port (443);

            else
               raise Program_Error;
            end if;
         end if;

      else
         --  Otherwise (with old HTTP 1.0 client) fallback to host:port data
         --  provided by AWS. As of AWS 3.1 this is address of socket where AWS
         --  accepts connections, so it is incorrect in case of work in
         --  internal network behind proxy/load balancer.

         URL.Set_Host
          (League.Strings.From_UTF_8_String (AWS.URL.Host (AWS_URI)));
         URL.Set_Port (AWS.URL.Port (AWS_URI));
      end if;

      URL.Set_Absolute_Path (Path);

      --  Initialize object.

      Matreshka.Servlet_HTTP_Requests.Initialize (Self, URL);
      Self.Request := Data;
      Self.Data    := Self.Data_Storage'Unchecked_Access;
   end Initialize;

   ------------------------
   -- Is_Async_Supported --
   ------------------------

   overriding function Is_Async_Supported
    (Self : not null access AWS_Servlet_Request) return Boolean
   is
      pragma Unreferenced (Self);

   begin
      --  AWS doesn't support asynchronous processing of requests.

      return False;
   end Is_Async_Supported;

   ----------
   -- Read --
   ----------

   overriding procedure Read
    (Self : in out Body_Stream_Type;
     Item : out Ada.Streams.Stream_Element_Array;
     Last : out Ada.Streams.Stream_Element_Offset) is
   begin
      AWS.Status.Read_Body (Self.Request.Request, Item, Last);
   end Read;

   -------------
   -- Upgrade --
   -------------

   overriding procedure Upgrade
    (Self    : AWS_Servlet_Request;
     Handler :
       not null Servlet.HTTP_Upgrade_Handlers.HTTP_Upgrade_Handler_Access) is
   begin
      Self.Data.Upgrade := Handler;
   end Upgrade;

   -----------
   -- Write --
   -----------

   overriding procedure Write
    (Self : in out Body_Stream_Type;
     Item : Ada.Streams.Stream_Element_Array) is
   begin
      raise Program_Error
        with "Servlet input stream doesn't allow write operations";
   end Write;

end Matreshka.Servlet_AWS_Requests;
