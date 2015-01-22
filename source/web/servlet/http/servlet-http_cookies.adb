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
with League.Characters;

package body Servlet.HTTP_Cookies is

   function Is_Valid_HTTP_Token
    (String : League.Strings.Universal_String) return Boolean;

   ------------
   -- Create --
   ------------

   function Create
    (Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String) return Cookie is
   begin
      if not Is_Valid_HTTP_Token (Name) then
         raise Constraint_Error with "Invalid name of cookie";
      end if;

      return
       (Name      => Name,
        Value     => Value,
        Comment   => <>,
        Domain    => <>,
        Path      => <>,
        Secure    => False,
        HTTP_Only => False);
   end Create;

   -----------------
   -- Get_Comment --
   -----------------

   function Get_Comment
    (Self : Cookie'Class) return League.Strings.Universal_String is
   begin
      return Self.Comment;
   end Get_Comment;

   ----------------
   -- Get_Domain --
   ----------------

   function Get_Domain
    (Self : Cookie'Class) return League.Strings.Universal_String is
   begin
      return Self.Domain;
   end Get_Domain;

   -------------------
   -- Get_HTTP_Only --
   -------------------

   function Get_HTTP_Only (Self : Cookie'Class) return Boolean is
   begin
      return Self.HTTP_Only;
   end Get_HTTP_Only;

   --------------
   -- Get_Name --
   --------------

   function Get_Name
    (Self : Cookie'Class) return League.Strings.Universal_String is
   begin
      return Self.Name;
   end Get_Name;

   --------------
   -- Get_Path --
   --------------

   function Get_Path
    (Self : Cookie'Class) return League.String_Vectors.Universal_String_Vector
   is
   begin
      return Self.Path;
   end Get_Path;

   --------------
   -- Get_Path --
   --------------

   function Get_Path
    (Self : Cookie'Class) return League.Strings.Universal_String
   is
      use type League.Strings.Universal_String;

   begin
      if Self.Path.Is_Empty then
         return League.Strings.Empty_Universal_String;

      else
         return '/' & Self.Path.Join ('/');
         --  XXX Path segments should be escaped.
      end if;
   end Get_Path;

   ----------------
   -- Get_Secure --
   ----------------

   function Get_Secure (Self : Cookie'Class) return Boolean is
   begin
      return Self.Secure;
   end Get_Secure;

   ---------------
   -- Get_Value --
   ---------------

   function Get_Value
    (Self : Cookie'Class) return League.Strings.Universal_String is
   begin
      return Self.Value;
   end Get_Value;

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize
    (Self  : in out Cookie;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String) is
   begin
      if not Is_Valid_HTTP_Token (Name) then
         raise Constraint_Error with "Invalid name of cookie";
      end if;

      Self.Name      := Name;
      Self.Value     := Value;
      Self.Comment.Clear;
      Self.Domain.Clear;
      Self.Path.Clear;
      Self.Secure    := False;
      Self.HTTP_Only := False;
   end Initialize;

   --------------
   -- Is_Empty --
   --------------

   function Is_Empty (Self : Cookie'Class) return Boolean is
   begin
      return Self.Name.Is_Empty;
   end Is_Empty;

   -------------------------
   -- Is_Valid_HTTP_Token --
   -------------------------

   function Is_Valid_HTTP_Token
    (String : League.Strings.Universal_String) return Boolean is
   begin
      --  [RFC 2068]
      --
      --  token          = 1*<any CHAR except CTLs or tspecials>
      --
      --  tspecials      = "(" | ")" | "<" | ">" | "@"
      --                 | "," | ";" | ":" | "\" | <">
      --                 | "/" | "[" | "]" | "?" | "="
      --                 | "{" | "}" | SP | HT
      --
      --  CHAR           = <any US-ASCII character (octets 0 - 127)>
      --  CTL            = <any US-ASCII control character
      --                   (octets 0 - 31) and DEL (127)>
      --  SP             = <US-ASCII SP, space (32)>
      --  HT             = <US-ASCII HT, horizontal-tab (9)>

      if String.Is_Empty then
         return False;

      else
         for J in 1 .. String.Length loop
            declare
               W : constant Wide_Wide_Character
                 := String (J).To_Wide_Wide_Character;

            begin
               if W in
                 Wide_Wide_Character'Val (0) .. Wide_Wide_Character'Val (32)
                   | Wide_Wide_Character'Val (127) .. Wide_Wide_Character'Last
                   | '(' | ')' | '<' | '>' | '@'
                   | ',' | ';' | ':' | '\' | '"'
                   | '/' | '[' | ']' | '?' | '='
                   | '{' | '}'
               then
                  return False;
               end if;
            end;
         end loop;

         return True;
      end if;
   end Is_Valid_HTTP_Token;

   -------------------
   -- Set_HTTP_Only --
   -------------------

   procedure Set_HTTP_Only
    (Self : in out Cookie'Class;
     To   : Boolean := True) is
   begin
      Self.HTTP_Only := To;
   end Set_HTTP_Only;

   --------------
   -- Set_Path --
   --------------

   procedure Set_Path
    (Self : in out Cookie'Class;
     To   : League.String_Vectors.Universal_String_Vector) is
   begin
      Self.Path := To;
   end Set_Path;

end Servlet.HTTP_Cookies;
