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
-- Copyright © 2015, Vadim Godunko <vgodunko@gmail.com>                     --
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
with League.String_Vectors;
with League.Strings;

package Servlet.HTTP_Cookies is

   pragma Preelaborate;

   type Cookie is tagged private;

   Empty_Cookie : constant Cookie;

   function Is_Empty (Self : Cookie'Class) return Boolean;

   function Get_Comment
    (Self : Cookie'Class) return League.Strings.Universal_String
       with Inline;
   --  Returns the comment describing the purpose of this cookie, or null if
   --  the cookie has no comment.

   function Get_Domain
    (Self : Cookie'Class) return League.Strings.Universal_String
       with Inline;
   --  Gets the domain name of this Cookie.
   --
   --  Domain names are formatted according to RFC 6265.

   function Get_HTTP_Only (Self : Cookie'Class) return Boolean
     with Inline;
   --  Checks whether this Cookie has been marked as HttpOnly.

   procedure Set_HTTP_Only
    (Self : in out Cookie'Class;
     To   : Boolean := True);
   --  Marks or unmarks this Cookie as HttpOnly.
   --
   --  If isHttpOnly is set to true, this cookie is marked as HttpOnly, by
   --  adding the HttpOnly attribute to it.
   --
   --  HttpOnly cookies are not supposed to be exposed to client-side scripting
   --  code, and may therefore help mitigate certain kinds of cross-site
   --  scripting attacks.

   function Get_Name
    (Self : Cookie'Class) return League.Strings.Universal_String
       with Inline;
   --  Returns the name of the cookie. The name cannot be changed after
   --  creation.

   function Get_Path
    (Self : Cookie'Class) return League.String_Vectors.Universal_String_Vector
       with Inline;
   function Get_Path
    (Self : Cookie'Class) return League.Strings.Universal_String;
   --  Returns the path on the server to which the browser returns this cookie.
   --  The cookie is visible to all subpaths on the server.

   procedure Set_Path
    (Self : in out Cookie'Class;
     To   : League.String_Vectors.Universal_String_Vector);
   --  Specifies a path for the cookie to which the client should return the
   --  cookie.
   --
   --  The cookie is visible to all the pages in the directory you specify, and
   --  all the pages in that directory's subdirectories. A cookie's path must
   --  include the servlet that set the cookie, for example, /catalog, which
   --  makes the cookie visible to all directories on the server under
   --  /catalog.
   --
   --  Consult RFC 6265 (available on the Internet) for more information on
   --  setting path names for cookies.

   function Get_Secure (Self : Cookie'Class) return Boolean
     with Inline;
   --  Returns true if the browser is sending cookies only over a secure
   --  protocol, or false if the browser can send cookies using any protocol.

   function Get_Value
    (Self : Cookie'Class) return League.Strings.Universal_String
       with Inline;
   --  Gets the current value of this Cookie.

   procedure Initialize
    (Self  : in out Cookie;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String);

private

   type Cookie is tagged record
      Name      : League.Strings.Universal_String;
      Value     : League.Strings.Universal_String;
      Comment   : League.Strings.Universal_String;
      Domain    : League.Strings.Universal_String;
      Path      : League.String_Vectors.Universal_String_Vector;
      Secure    : Boolean := False;
      HTTP_Only : Boolean := False;
   end record;

   Empty_Cookie : constant Cookie
     := (Name      => <>,
         Value     => <>,
         Comment   => <>,
         Domain    => <>,
         Path      => <>,
         Secure    => <>,
         HTTP_Only => <>);

end Servlet.HTTP_Cookies;
