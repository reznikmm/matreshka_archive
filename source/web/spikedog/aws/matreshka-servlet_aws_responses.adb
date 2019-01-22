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
with Ada.Strings.Unbounded;

with AWS.Containers.Tables;
with AWS.Cookie;
with AWS.Headers;
with AWS.Messages;
with AWS.Response.Set;

with Matreshka.RFC2616_Dates;

package body Matreshka.Servlet_AWS_Responses is

   To_AWS_Status_Code : constant
     array (Servlet.HTTP_Responses.Status_Code) of AWS.Messages.Status_Code
       := (Servlet.HTTP_Responses.Continue               => AWS.Messages.S100,
           Servlet.HTTP_Responses.Switching_Protocols    => AWS.Messages.S101,

           Servlet.HTTP_Responses.OK                     => AWS.Messages.S200,
           Servlet.HTTP_Responses.Created                => AWS.Messages.S201,
           Servlet.HTTP_Responses.Accepted               => AWS.Messages.S202,
           Servlet.HTTP_Responses.Non_Authoritative_Information =>
                                                            AWS.Messages.S203,
           Servlet.HTTP_Responses.No_Content             => AWS.Messages.S204,
           Servlet.HTTP_Responses.Reset_Content          => AWS.Messages.S205,
           Servlet.HTTP_Responses.Partial_Content        => AWS.Messages.S206,

           Servlet.HTTP_Responses.Multiple_Choices       => AWS.Messages.S300,
           Servlet.HTTP_Responses.Moved_Permanently      => AWS.Messages.S301,
           Servlet.HTTP_Responses.Moved_Temporarily      => AWS.Messages.S302,
           Servlet.HTTP_Responses.Found                  => AWS.Messages.S302,
           Servlet.HTTP_Responses.See_Other              => AWS.Messages.S303,
           Servlet.HTTP_Responses.Not_Modified           => AWS.Messages.S304,
           Servlet.HTTP_Responses.Use_Proxy              => AWS.Messages.S305,
           Servlet.HTTP_Responses.Temporary_Redirect     => AWS.Messages.S307,

           Servlet.HTTP_Responses.Bad_Request            => AWS.Messages.S400,
           Servlet.HTTP_Responses.Unauthorized           => AWS.Messages.S401,
           Servlet.HTTP_Responses.Payment_Required       => AWS.Messages.S402,
           Servlet.HTTP_Responses.Forbidden              => AWS.Messages.S403,
           Servlet.HTTP_Responses.Not_Found              => AWS.Messages.S404,
           Servlet.HTTP_Responses.Method_Not_Allowed     => AWS.Messages.S405,
           Servlet.HTTP_Responses.Not_Acceptable         => AWS.Messages.S406,
           Servlet.HTTP_Responses.Proxy_Authentication_Required =>
                                                            AWS.Messages.S407,
           Servlet.HTTP_Responses.Request_Timeout        => AWS.Messages.S408,
           Servlet.HTTP_Responses.Conflict               => AWS.Messages.S409,
           Servlet.HTTP_Responses.Gone                   => AWS.Messages.S410,
           Servlet.HTTP_Responses.Length_Required        => AWS.Messages.S411,
           Servlet.HTTP_Responses.Precondition_Failed    => AWS.Messages.S412,
           Servlet.HTTP_Responses.Request_Entity_Too_Large =>
                                                            AWS.Messages.S413,
           Servlet.HTTP_Responses.Request_URI_Too_Long   => AWS.Messages.S414,
           Servlet.HTTP_Responses.Unsupported_Media_Type => AWS.Messages.S415,
           Servlet.HTTP_Responses.Requested_Range_Not_Satisfiable =>
                                                            AWS.Messages.S416,
           Servlet.HTTP_Responses.Expectation_Failed     => AWS.Messages.S417,

           Servlet.HTTP_Responses.Internal_Server_Error  => AWS.Messages.S500,
           Servlet.HTTP_Responses.Not_Implemented        => AWS.Messages.S501,
           Servlet.HTTP_Responses.Bad_Gateway            => AWS.Messages.S502,
           Servlet.HTTP_Responses.Service_Unavailable    => AWS.Messages.S503,
           Servlet.HTTP_Responses.Gateway_Timeout        => AWS.Messages.S504,
           Servlet.HTTP_Responses.HTTP_Version_Not_Supported =>
                                                            AWS.Messages.S505);

   Format : Matreshka.RFC2616_Dates.Format;

   ----------------
   -- Add_Cookie --
   ----------------

   overriding procedure Add_Cookie
    (Self   : in out AWS_Servlet_Response;
     Cookie : Servlet.HTTP_Cookies.Cookie)
   is
      Path     : constant League.Strings.Universal_String := Cookie.Get_Path;
      AWS_Path : constant League.Strings.Universal_String
        := (if Path.Is_Empty
              then League.Strings.To_Universal_String ("/")
              else Path);
      --  AWS sends Path attributes always, so set its value to root.

   begin
      AWS.Cookie.Set
       (Content => Self.Data,
        Key     => Cookie.Get_Name.To_UTF_8_String,
        Value   => Cookie.Get_Value.To_UTF_8_String,
        Comment => Cookie.Get_Comment.To_UTF_8_String,
        Domain  => Cookie.Get_Domain.To_UTF_8_String,
        --  XXX Must be encoded when containts non-ASCII characters.
        Max_Age => AWS.Cookie.No_Max_Age,
        --  XXX Not supported yet.
        Path    => AWS_Path.To_UTF_8_String,
        Secure  => Cookie.Get_Secure);
   end Add_Cookie;

   ---------------------
   -- Add_Date_Header --
   ---------------------

   overriding procedure Add_Date_Header
    (Self  : in out AWS_Servlet_Response;
     Name  : League.Strings.Universal_String;
     Value : League.Calendars.Date_Time)
   is
      Image : constant League.Strings.Universal_String :=
        Matreshka.RFC2616_Dates.To_String (Format, Value);
   begin
      AWS.Response.Set.Add_Header
        (Self.Data, Name.To_UTF_8_String, Image.To_UTF_8_String);
   end Add_Date_Header;

   ----------------
   -- Add_Header --
   ----------------

   overriding procedure Add_Header
    (Self  : in out AWS_Servlet_Response;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String) is
   begin
      AWS.Response.Set.Add_Header
        (Self.Data, Name.To_UTF_8_String, Value.To_UTF_8_String);
   end Add_Header;

   ------------------------
   -- Add_Integer_Header --
   ------------------------

   overriding procedure Add_Integer_Header
    (Self  : in out AWS_Servlet_Response;
     Name  : League.Strings.Universal_String;
     Value : League.Holders.Universal_Integer) is
   begin
      raise Program_Error;
      --  XXX Not implemented.
   end Add_Integer_Header;

   -----------
   -- Build --
   -----------

   function Build
    (Self : in out AWS_Servlet_Response'Class) return AWS.Response.Data is
   begin
      Self.Set_Session_Cookie;
      return Self.Data;
   end Build;

   ---------------------
   -- Contains_Header --
   ---------------------

   overriding function Contains_Header
    (Self : in out AWS_Servlet_Response;
     Name : League.Strings.Universal_String) return Boolean
   is
      List : constant AWS.Headers.List := AWS.Response.Header (Self.Data);
   begin
      return List.Exist (Name.To_UTF_8_String);
   end Contains_Header;

   ----------------------
   -- Get_Header_Names --
   ----------------------

   overriding function Get_Header_Names
    (Self : in out AWS_Servlet_Response)
       return League.String_Vectors.Universal_String_Vector
   is
      List   : constant AWS.Headers.List := AWS.Response.Header (Self.Data);
      Names  : constant AWS.Containers.Tables.VString_Array := List.Get_Names;
      Result : League.String_Vectors.Universal_String_Vector;
   begin
      for J in Names'Range loop
         Result.Append
           (League.Strings.From_UTF_8_String
              (Ada.Strings.Unbounded.To_String (Names (J))));
      end loop;

      return Result;
   end Get_Header_Names;

   -----------------
   -- Get_Headers --
   -----------------

   overriding function Get_Headers
    (Self : in out AWS_Servlet_Response;
     Name : League.Strings.Universal_String)
       return League.String_Vectors.Universal_String_Vector
   is
      List   : constant AWS.Headers.List := AWS.Response.Header (Self.Data);
      Values : constant AWS.Containers.Tables.VString_Array
        := List.Get_Values (Name.To_UTF_8_String);
      Result : League.String_Vectors.Universal_String_Vector;
   begin
      for J in Values'Range loop
         Result.Append
           (League.Strings.From_UTF_8_String
              (Ada.Strings.Unbounded.To_String (Values (J))));
      end loop;

      return Result;
   end Get_Headers;

   -----------------------
   -- Get_Output_Stream --
   -----------------------

   overriding function Get_Output_Stream
    (Self : AWS_Servlet_Response)
       return
         not null access Servlet.Output_Streams.Servlet_Output_Stream'Class is
   begin
      if AWS_Servlet_Response (Self.Output.all).Codec = null
        and not Self.Encoding.Is_Empty
      then
         AWS_Servlet_Response (Self.Output.all).Codec :=
           new League.Text_Codecs.Text_Codec'
                (League.Text_Codecs.Codec (Self.Encoding));
      end if;

      return Self.Output;
   end Get_Output_Stream;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize
    (Self    : in out AWS_Servlet_Response'Class;
     Request :
       not null Matreshka.Servlet_HTTP_Requests.HTTP_Servlet_Request_Access) is
   begin
      Matreshka.Servlet_HTTP_Responses.Initialize (Self, Request);
      Self.Stream := new AWS.Resources.Streams.Memory.Stream_Type;
      AWS.Response.Set.Stream (Self.Data, Self.Stream);
      --  Memory will be released by AWS.
      Self.Output := Self'Unchecked_Access;
   end Initialize;

   --------------
   -- Is_Ready --
   --------------

   overriding function Is_Ready (Self : AWS_Servlet_Response) return Boolean is
   begin
      --  Asynchronous mode is not supported by AWS.

      return False;
   end Is_Ready;

   ----------------
   -- Send_Error --
   ----------------

   overriding procedure Send_Error
    (Self    : in out AWS_Servlet_Response;
     Code    : Servlet.HTTP_Responses.Status_Code;
     Message : League.Strings.Universal_String) is
   begin
      AWS.Response.Set.Status_Code (Self.Data, To_AWS_Status_Code (Code));
   end Send_Error;

   -------------------
   -- Send_Redirect --
   -------------------

   overriding procedure Send_Redirect
    (Self     : in out AWS_Servlet_Response;
     Location : League.IRIs.IRI) is
   begin
      AWS.Response.Set.Status_Code (Self.Data, AWS.Messages.S302);
      AWS.Response.Set.Location
       (Self.Data, Location.To_Universal_String.To_UTF_8_String);
      AWS.Response.Set.Mode (Self.Data, AWS.Response.Header);
   end Send_Redirect;

   ----------------------------
   -- Set_Character_Encoding --
   ----------------------------

   overriding procedure Set_Character_Encoding
    (Self     : in out AWS_Servlet_Response;
     Encoding : League.Strings.Universal_String) is
   begin
      Self.Encoding := Encoding;

      if Self.Encoding.Is_Empty then
         AWS.Response.Set.Content_Type
          (Self.Data, Self.Content_Type.To_UTF_8_String);

      else
         AWS.Response.Set.Content_Type
          (Self.Data,
           Self.Content_Type.To_UTF_8_String
             & ";charset="
             & Self.Encoding.To_UTF_8_String);
      end if;
   end Set_Character_Encoding;

   ----------------------
   -- Set_Content_Type --
   ----------------------

   overriding procedure Set_Content_Type
    (Self : in out AWS_Servlet_Response;
     To   : League.Strings.Universal_String) is
   begin
      --  XXX Encoding must be extracted from passed content type and set.

      Self.Content_Type := To;

      if Self.Encoding.Is_Empty then
         AWS.Response.Set.Content_Type
          (Self.Data, Self.Content_Type.To_UTF_8_String);

      else
         AWS.Response.Set.Content_Type
          (Self.Data,
           Self.Content_Type.To_UTF_8_String
             & ";charset="
             & Self.Encoding.To_UTF_8_String);
      end if;
   end Set_Content_Type;

   ---------------------
   -- Set_Date_Header --
   ---------------------

   overriding procedure Set_Date_Header
    (Self  : in out AWS_Servlet_Response;
     Name  : League.Strings.Universal_String;
     Value : League.Calendars.Date_Time)
   is
      Image : constant League.Strings.Universal_String :=
        Matreshka.RFC2616_Dates.To_String (Format, Value);
   begin
      AWS.Response.Set.Update_Header
        (Self.Data, Name.To_UTF_8_String, Image.To_UTF_8_String);
   end Set_Date_Header;

   ----------------
   -- Set_Header --
   ----------------

   overriding procedure Set_Header
    (Self  : in out AWS_Servlet_Response;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String) is
   begin
      AWS.Response.Set.Update_Header
        (Self.Data, Name.To_UTF_8_String, Value.To_UTF_8_String);
   end Set_Header;

   ------------------------
   -- Set_Integer_Header --
   ------------------------

   overriding procedure Set_Integer_Header
    (Self  : in out AWS_Servlet_Response;
     Name  : League.Strings.Universal_String;
     Value : League.Holders.Universal_Integer) is
   begin
      raise Program_Error;
      --  XXX Not implemented.
   end Set_Integer_Header;

   ----------------
   -- Set_Status --
   ----------------

   overriding procedure Set_Status
    (Self   : in out AWS_Servlet_Response;
     Status : Servlet.HTTP_Responses.Status_Code) is
   begin
      Matreshka.Servlet_HTTP_Responses.Abstract_HTTP_Servlet_Response
       (Self).Set_Status (Status);

      AWS.Response.Set.Status_Code (Self.Data, To_AWS_Status_Code (Status));
   end Set_Status;

   ------------------------
   -- Set_Write_Listener --
   ------------------------

   overriding procedure Set_Write_Listener
    (Self     : in out AWS_Servlet_Response;
     Listener : not null access Servlet.Write_Listeners.Write_Listener'Class)
   is
   begin
      null;
   end Set_Write_Listener;

   -----------
   -- Write --
   -----------

   overriding procedure Write
    (Self : in out AWS_Servlet_Response;
     Item : Ada.Streams.Stream_Element_Array) is
   begin
      Self.Stream.Append (Item);
   end Write;

   -----------
   -- Write --
   -----------

   overriding procedure Write
    (Self : in out AWS_Servlet_Response;
     Item : League.Strings.Universal_String) is
   begin
      Self.Stream.Append (Self.Codec.Encode (Item).To_Stream_Element_Array);
   end Write;

end Matreshka.Servlet_AWS_Responses;
