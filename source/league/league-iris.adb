------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011-2014, Vadim Godunko <vgodunko@gmail.com>                --
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
with League.Characters.Latin;

package body League.IRIs is

   use League.Characters.Latin;

   package IRI_Parser is

      procedure Parse_IRI_Reference
       (Self : in out IRI'Class; Image : League.Strings.Universal_String);
      --  Parses 'IRI-reference' production.

   end IRI_Parser;

   package URI_Parser is

   end URI_Parser;

   procedure Normalize_Path (Self : in out IRI'Class);

   ---------
   -- "=" --
   ---------

   function "=" (Left : IRI; Right : IRI) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, """="" unimplemented");
      raise Program_Error;
      return "=" (Left, Right);
   end "=";

   --------------------
   -- Append_Segment --
   --------------------

   procedure Append_Segment
    (Self    : in out IRI'Class;
     Segment : League.Strings.Universal_String) is
   begin
      Self.Path.Append (Segment);
   end Append_Segment;

   ---------------
   -- Authority --
   ---------------

   function Authority
    (Self : IRI'Class) return League.Strings.Universal_String is
   begin
      return Result : League.Strings.Universal_String do
         --  Append user info.

         if not Self.User_Info.Is_Empty then
            Result.Append (Self.User_Info);
            Result.Append (Commercial_At);
         end if;

         --  Append host.

         Result.Append (Self.Host);

         --  Append port.

         if Self.Port /= 0 then
            Result.Append (Colon);
            Result.Append (Integer'Wide_Wide_Image (Self.Port));
         end if;
      end return;
   end Authority;

   -----------
   -- Clear --
   -----------

   procedure Clear (Self : in out IRI'Class) is
   begin
      Self.Scheme.Clear;
      Self.Has_Authority := False;
      Self.User_Info.Clear;
      Self.Host.Clear;
      Self.Port := 0;
      Self.Path_Is_Absolute := True;
      Self.Path.Clear;
      Self.Query.Clear;
      Self.Fragment.Clear;
   end Clear;

   -----------------------
   -- Encoded_Authority --
   -----------------------

   function Encoded_Authority
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Encoded_Authority unimplemented");
      raise Program_Error;
      return Encoded_Authority (Self);
   end Encoded_Authority;

   ----------------------
   -- Encoded_Fragment --
   ----------------------

   function Encoded_Fragment
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Encoded_Fragment unimplemented");
      raise Program_Error;
      return Encoded_Fragment (Self);
   end Encoded_Fragment;

   ------------------
   -- Encoded_Host --
   ------------------

   function Encoded_Host
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Encoded_Host unimplemented");
      raise Program_Error;
      return Encoded_Host (Self);
   end Encoded_Host;

   ------------------
   -- Encoded_Path --
   ------------------

   function Encoded_Path
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Encoded_Path unimplemented");
      raise Program_Error;
      return Encoded_Path (Self);
   end Encoded_Path;

   -------------------
   -- Encoded_Query --
   -------------------

   function Encoded_Query
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Encoded_Query unimplemented");
      raise Program_Error;
      return Encoded_Query (Self);
   end Encoded_Query;

   --------------------
   -- Encoded_Scheme --
   --------------------

   function Encoded_Scheme
    (Self : IRI'Class)
       return League.Stream_Element_Vectors.Stream_Element_Vector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Encoded_Scheme unimplemented");
      raise Program_Error;
      return Encoded_Scheme (Self);
   end Encoded_Scheme;

   -----------------------
   -- Encoded_User_Info --
   -----------------------

   function Encoded_User_Info
     (Self : IRI'Class)
      return League.Stream_Element_Vectors.Stream_Element_Vector
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Encoded_User_Info unimplemented");
      raise Program_Error;
      return Encoded_User_Info (Self);
   end Encoded_User_Info;

   --------------
   -- Fragment --
   --------------

   function Fragment
    (Self : IRI'Class) return League.Strings.Universal_String is
   begin
      return Self.Fragment;
   end Fragment;

   ------------------
   -- From_Encoded --
   ------------------

   function From_Encoded
    (Item : League.Stream_Element_Vectors.Stream_Element_Vector) return IRI is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "From_Encoded unimplemented");
      raise Program_Error;
      return From_Encoded (Item);
   end From_Encoded;

   ---------------------------
   -- From_Universal_String --
   ---------------------------

   function From_Universal_String
    (Item : League.Strings.Universal_String) return IRI is
   begin
      return Result : IRI do
         Result.Set_IRI (Item);
      end return;
   end From_Universal_String;

   ----------
   -- Host --
   ----------

   function Host (Self : IRI'Class) return League.Strings.Universal_String is
   begin
      return Self.Host;
   end Host;

   ----------------
   -- IRI_Parser --
   ----------------

   package body IRI_Parser is

      use type League.Characters.Universal_Character;

      --  All Parse_'production' subprograms has the same profile:
      --
      --   - Self: object where parsed data is stored;
      --
      --   - Image: textual representation of the IRI;
      --
      --   - First: index of the first character to be parsed by subprogram;
      --     and index of the first character below successfully parsed
      --     production. Parameter is unchanged on failure;
      --
      --   - Success: status of parsing.

      procedure Parse_Scheme
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean);
      --  Parses 'scheme' production up to colon delimiter. First will point to
      --  colon delimiter on success.

      procedure Parse_IHier_Part
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean);
      --  Parses 'ihier-part' production up to first unexpected character.
      --  First will point to that character.

      procedure Parse_IAuthority
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean);
      --  Parses 'iauthority' production up to first unexpected character.
      --  First will point to that character.

      procedure Parse_IPath_Abempty
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean);
      --  Parses 'ipath-abempty' production up to first unexpected character.
      --  First will point to that character.

      procedure Parse_IPath_Absolute
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean);
      --  Parses 'ipath-absolute' production up to first unexpected character.
      --  First will point to that character.

      procedure Parse_ISegment
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean);
      --  Parses 'isegment' production up to first unexpected character. First
      --  will point to that character.

      procedure Parse_IUserInfo
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean);
      --  Parses 'iuserinfo' production up to commercial at delimiter. First
      --  will point to that character.

      procedure Parse_IHost
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean);
      --  Parses 'ihost' production up to first unexpected character. First
      --  will point to that character.

      procedure Parse_IReg_Name
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean);
      --  Parses 'ireg-name' production up to first unexpected character. First
      --  will point to that character.

      procedure Parse_Port
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean);
      --  Parses 'port' production up to first unexpected character. First
      --  will point to that character.

      procedure Parse_IQuery
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean);
      --  Parses 'iquery' production up to first unexpected character. First
      --  will point to that character.

      procedure Parse_IFragment
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean);
      --  Parses 'ifragment' production up to first unexpected character. First
      --  will point to that character.

      procedure Parse_IPath_Noscheme
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean);
      --  Parses 'ipath-noscheme' production up to first unexpected character.
      --  First will point to that character.

      procedure Parse_Pct_Encoded
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean;
        Result  : in out League.Strings.Universal_String);
      --  Parses 'pct-encoded' production. First will point to the character
      --  after production. Parsed data is normalized (converted into upper
      --  case) and appended to Result.

      --  Character classification subprograms.

      function Is_ALPHA
       (C : League.Characters.Universal_Character) return Boolean;
      --  Returns True when specified character is ALPHA.

      function Is_DIGIT
       (C : League.Characters.Universal_Character) return Boolean;
      --  Returns True when specified character is DIGIT.

      function Is_HEXDIG
       (C : League.Characters.Universal_Character) return Boolean;
      --  Returns True when specified character is HEXDIG.

      function Is_IUnreserved
       (C : League.Characters.Universal_Character) return Boolean;
      --  Returns True when specified character is iunreserved.

      function Is_IPrivate
       (C : League.Characters.Universal_Character) return Boolean;
      --  Returns True when specified character is iprivate.

      function Is_Sub_Delims
       (C : League.Characters.Universal_Character) return Boolean;
      --  Returns True when specified character is sub-delims.

      --------------
      -- Is_ALPHA --
      --------------

      function Is_ALPHA
       (C : League.Characters.Universal_Character) return Boolean is
      begin
         return
          (Latin_Capital_Letter_A <= C and C <= Latin_Capital_Letter_Z)
             or (Latin_Small_Letter_A <= C and C <= Latin_Small_Letter_Z);
      end Is_ALPHA;

      --------------
      -- Is_DIGIT --
      --------------

      function Is_DIGIT
       (C : League.Characters.Universal_Character) return Boolean is
      begin
         return Digit_Zero <= C and C <= Digit_Nine;
      end Is_DIGIT;

      ---------------
      -- Is_HEXDIG --
      ---------------

      function Is_HEXDIG
       (C : League.Characters.Universal_Character) return Boolean is
      begin
         return
          (Digit_Zero <= C and C <= Digit_Nine)
             or (Latin_Capital_Letter_A <= C and C <= Latin_Capital_Letter_F)
             or (Latin_Small_Letter_A <= C and C <= Latin_Small_Letter_F);
      end Is_HEXDIG;

      -----------------
      -- Is_IPrivate --
      -----------------

      function Is_IPrivate
       (C : League.Characters.Universal_Character) return Boolean is
      begin
         --  [RFC 3987]
         --
         --  iprivate       = %xE000-F8FF / %xF0000-FFFFD / %x100000-10FFFD

         --  XXX Compatibility with Legacy IRI must be checked!

         --  XXX Not implemented completely.

         return Is_IUnreserved (C);
      end Is_IPrivate;

      --------------------
      -- Is_IUnreserved --
      --------------------

      function Is_IUnreserved
       (C : League.Characters.Universal_Character) return Boolean is
      begin
         --  [RFC 3987]
         --
         --  iunreserved    = ALPHA / DIGIT / "-" / "." / "_" / "~" / ucschar
         --
         --  ucschar        = %xA0-D7FF / %xF900-FDCF / %xFDF0-FFEF
         --                    / %x10000-1FFFD / %x20000-2FFFD / %x30000-3FFFD
         --                    / %x40000-4FFFD / %x50000-5FFFD / %x60000-6FFFD
         --                    / %x70000-7FFFD / %x80000-8FFFD / %x90000-9FFFD
         --                    / %xA0000-AFFFD / %xB0000-BFFFD / %xC0000-CFFFD
         --                    / %xD0000-DFFFD / %xE1000-EFFFD

         --  XXX Compatibility with Legacy IRI must be checked!

         --  XXX Not implemented completely.

         return
           Is_ALPHA (C)
             or (Digit_Zero <= C and C <= Digit_Nine)
             or C = Hyphen_Minus
             or C = Full_Stop
             or C = Low_Line
             or C = Tilde
             or (C.Is_Valid and No_Break_Space <= C);
      end Is_IUnreserved;

      -------------------
      -- Is_Sub_Delims --
      -------------------

      function Is_Sub_Delims
       (C : League.Characters.Universal_Character) return Boolean is
      begin
         --  sub-delims     = "!" / "$" / "&" / "'" / "(" / ")"
         --                     / "*" / "+" / "," / ";" / "="

         return
           C = Exclamation_Mark
             or C = Dollar_Sign
             or C = Ampersand
             or C = Apostrophe
             or C = Left_Parenthesis
             or C = Right_Parenthesis
             or C = Asterisk
             or C = Plus_Sign
             or C = Comma
             or C = Semicolon
             or C = Equals_Sign;
      end Is_Sub_Delims;

      ----------------------
      -- Parse_IAuthority --
      ----------------------

      procedure Parse_IAuthority
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean)
      is
         --  [RFC 3987]
         --
         --  iauthority     = [ iuserinfo "@" ] ihost [ ":" port ]

         Current : Positive := First;

      begin
         Self.Has_Authority := True;

         --  Try to parse 'iuserinfo' production. By convention, it sets
         --  Success to True when user info delimiter is not found.

         Parse_IUserInfo (Self, Image, Current, Success);

         if not Success then
            return;
         end if;

         if Image.Element (Current) = Commercial_At then
            Current := Current + 1;
         end if;

         --  Parse 'ihost' production.

         Parse_IHost (Self, Image, Current, Success);

         if not Success then
            return;
         end if;

         --  Check port delimiter and parse 'port' production.

         if Current <= Image.Length
           and then Image.Element (Current) = Colon
         then
            Current := Current + 1;
            --  Skip colon charater.

            Parse_Port (Self, Image, Current, Success);

            if not Success then
               return;
            end if;
         end if;

         First := Current;
         Success := True;
      end Parse_IAuthority;

      ---------------------
      -- Parse_IFragment --
      ---------------------

      procedure Parse_IFragment
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean)
      is
         --  [RFC 3987]
         --
         --  ifragment      = *( ipchar / "/" / "?" )
         --
         --  ipchar         = iunreserved / pct-encoded / sub-delims / ":"
         --                  / "@"

         Current : Positive := First;
         C       : League.Characters.Universal_Character;

      begin
         while Current <= Image.Length loop
            C := Image.Element (Current);

            if Is_IUnreserved (C)
              or Is_Sub_Delims (C)
              or C = Colon
              or C = Commercial_At
              or C = Solidus
              or C = Question_Mark
            then
               Self.Fragment.Append (C);
               Current := Current + 1;

            elsif C = Percent_Sign then
               Parse_Pct_Encoded
                (Self, Image, Current, Success, Self.Fragment);

               if not Success then
                  return;
               end if;

            else
               exit;
            end if;
         end loop;

         First := Current;
         Success := True;
      end Parse_IFragment;

      ----------------------
      -- Parse_IHier_Part --
      ----------------------

      procedure Parse_IHier_Part
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean)
      is
         --  [RFC 3987]
         --
         --  ihier-part     = "//" iauthority ipath-abempty
         --                  / ipath-absolute
         --                  / ipath-rootless
         --                  / ipath-empty
         --
         --  ipath-abempty  = *( "/" isegment )
         --
         --  ipath-absolute = "/" [ isegment-nz *( "/" isegment ) ]
         --
         --  ipath-rootless = isegment-nz *( "/" isegment )
         --
         --  ipath-empty    = 0<ipchar>
         --
         --  isegment       = *ipchar
         --
         --  isegment-nz    = 1*ipchar

         Current : Positive := First;

      begin
         --  Check whether first two characters are '/' and at least one
         --  additional character is present.

         if Current + 2 <= Image.Length
           and then Image.Element (Current) = Solidus
           and then Image.Element (Current + 1) = Solidus
         then
            --  Parse 'iauthority' and 'ihier-part' productions.

            Current := Current + 2;
            Parse_IAuthority (Self, Image, Current, Success);

            if not Success then
               return;
            end if;

            Parse_IPath_Abempty (Self, Image, Current, Success);

            if not Success then
               return;
            end if;

            First := Current;

         elsif Current < Image.Length
           and then Image.Element (Current) = Solidus
         then
            --  Parse 'ipath-absolute' production.

            Parse_IPath_Absolute (Self, Image, Current, Success);

            if not Success then
               return;
            end if;

            First := Current;

         elsif Current <= Image.Length then
            --  Try to parse 'ipath-rootless' production.

            --  XXX Not implemented.

            raise Program_Error;

         else
            --  'ipath-empty' production.

            Self.Path_Is_Absolute := True;
            Success := True;
         end if;
      end Parse_IHier_Part;

      -----------------
      -- Parse_IHost --
      -----------------

      procedure Parse_IHost
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean)
      is
         --  [RFC 3987]
         --
         --  ihost          = IP-literal / IPv4address / ireg-name
         --
         --  IP-literal     = "[" ( IPv6address / IPvFuture  ) "]"
         --
         --  IPv4address    = dec-octet "." dec-octet "." dec-octet "."
         --                  dec-octet
         --
         --  ireg-name      = *( iunreserved / pct-encoded / sub-delims )

      begin
         if Image.Element (First) = Left_Square_Bracket then
            --  XXX Not implemented.

            raise Program_Error;

         else
            --  'IPv4address' production is just a case of 'ireg-name'
            --  production, it is not handled in some special way.

            Parse_IReg_Name (Self, Image, First, Success);
         end if;
      end Parse_IHost;

      -------------------------
      -- Parse_IPath_Abempty --
      -------------------------

      procedure Parse_IPath_Abempty
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean)
      is
         --  [RFC 3987]
         --
         --  ipath-abempty  = *( "/" isegment )

         Current : Positive := First;

      begin
         Self.Path_Is_Absolute := True;

         while Current <= Image.Length loop
            exit when Image.Element (Current) /= Solidus;

            Current := Current + 1;
            Parse_ISegment (Self, Image, Current, Success);

            if not Success then
               return;
            end if;
         end loop;

         First := Current;
         Success := True;
      end Parse_IPath_Abempty;

      --------------------------
      -- Parse_IPath_Absolute --
      --------------------------

      procedure Parse_IPath_Absolute
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean)
      is
         --  [RFC 3987]
         --
         --  ipath-absolute = "/" [ isegment-nz *( "/" isegment ) ]
         --
         --  isegment-nz    = 1*ipchar
         --
         --  isegment       = *ipchar

         Current : Positive := First;
         Old     : Positive;

      begin
         --  Check whether first character is path separator.

         if Image.Element (Current) /= Solidus then
            Success := False;

            return;
         end if;

         Current := Current + 1;
         Self.Path_Is_Absolute := True;

         --  Parse 'isegment-nz' production. Old is used to detect that parsed
         --  segment has at least one character.

         Old := Current;
         Parse_ISegment (Self, Image, Current, Success);

         if not Success then
            return;
         end if;

         if Old = Current then
            Success := False;

            return;
         end if;

         --  Parse following segments.

         while Current <= Image.Length loop
            exit when Image.Element (Current) /= Solidus;

            Current := Current + 1;
            Parse_ISegment (Self, Image, Current, Success);

            if not Success then
               return;
            end if;
         end loop;

         First := Current;
         Success := True;
      end Parse_IPath_Absolute;

      --------------------------
      -- Parse_IPath_Noscheme --
      --------------------------

      procedure Parse_IPath_Noscheme
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean)
      is
         --  [RFC 3987]
         --
         --  ipath-noscheme = isegment-nz-nc *( "/" isegment )
         --
         --  isegment-nz-nc = 1*( iunreserved / pct-encoded / sub-delims
         --                         / "@" )

         Segment : League.Strings.Universal_String;
         Current : Positive := First;
         C       : League.Characters.Universal_Character;

      begin
         Self.Path_Is_Absolute := False;

         while Current <= Image.Length loop
            C := Image.Element (Current);

            if Is_IUnreserved (C)
              or Is_Sub_Delims (C)
              or C = Commercial_At
            then
               Segment.Append (C);
               Current := Current + 1;

            elsif C = Percent_Sign then
               Parse_Pct_Encoded (Self, Image, Current, Success, Segment);

               if not Success then
                  return;
               end if;

            else
               exit;
            end if;
         end loop;

         if Segment.Is_Empty then
            Success := False;

            return;
         end if;

         Self.Path.Append (Segment);

         while Current <= Image.Length loop
            if Image.Element (Current) = Solidus then
               Current := Current + 1;
               Parse_ISegment (Self, Image, Current, Success);

               if not Success then
                  return;
               end if;

            else
               exit;
            end if;
         end loop;

         First := Current;
         Success := True;
      end Parse_IPath_Noscheme;

      ------------------
      -- Parse_IQuery --
      ------------------

      procedure Parse_IQuery
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean)
      is
         --  [RFC 3987]
         --
         --  iquery         = *( ipchar / iprivate / "/" / "?" )
         --
         --  ipchar         = iunreserved / pct-encoded / sub-delims / ":"
         --                  / "@"

         Current : Positive := First;
         C       : League.Characters.Universal_Character;

      begin
         while Current <= Image.Length loop
            C := Image.Element (Current);

            if Is_IUnreserved (C)
              or Is_Sub_Delims (C)
              or C = Colon
              or C = Commercial_At
              or C = Solidus
              or C = Question_Mark
              or Is_IPrivate (C)
            then
               Self.Query.Append (C);
               Current := Current + 1;

            elsif C = Percent_Sign then
               Parse_Pct_Encoded (Self, Image, Current, Success, Self.Query);

               if not Success then
                  return;
               end if;

            else
               exit;
            end if;
         end loop;

         First := Current;
         Success := True;
      end Parse_IQuery;

      ---------------------
      -- Parse_IReg_Name --
      ---------------------

      procedure Parse_IReg_Name
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean)
      is
         --  [RFC 3987]
         --
         --  ireg-name      = *( iunreserved / pct-encoded / sub-delims )

         C       : League.Characters.Universal_Character;
         Current : Positive := First;

      begin
         while Current <= Image.Length loop
            C := Image.Element (Current);

            if Is_IUnreserved (C)
              or Is_Sub_Delims (C)
            then
               --  [RFC 3986]
               --
               --  "Although host is case-insensitive, producers and
               --  normalizers should use lowercase for registered names and
               --  hexadecimal addresses for the sake of uniformity, while only
               --  using uppercase letters for percent-encodings."
               --
               --  [RFC 3987] 5.3.2.1. Case Normalization
               --
               --  "When an IRI uses components of the generic syntax, the
               --  component syntax equivalence rules always apply; namely,
               --  that the scheme and US-ASCII only host are case insensitive
               --  and therefore should be normalized to lowercase.

               if Is_ALPHA (C) then
                  Self.Host.Append (C.Simple_Lowercase_Mapping);

               else
                  Self.Host.Append (C);
               end if;

               Current := Current + 1;

            elsif C = Percent_Sign then
               Parse_Pct_Encoded (Self, Image, Current, Success, Self.Host);

               if not Success then
                  Self.Host.Clear;

                  return;
               end if;

            else
               exit;
            end if;
         end loop;

         First := Current;
         Success := True;
      end Parse_IReg_Name;

      -------------------------
      -- Parse_IRI_Reference --
      -------------------------

      procedure Parse_IRI_Reference
       (Self : in out IRI'Class; Image : League.Strings.Universal_String)
      is
         --  [RFC 3987]
         --
         --  IRI-reference  = IRI / irelative-ref
         --
         --  IRI            = scheme ":" ihier-part [ "?" iquery ]
         --                        [ "#" ifragment ]
         --
         --  irelative-ref  = irelative-part [ "?" iquery ] [ "#" ifragment ]
         --
         --  irelative-part = "//" iauthority ipath-abempty
         --                      / ipath-absolute
         --                      / ipath-noscheme
         --                      / ipath-empty
         --
         --  ipath-absolute = "/" [ isegment-nz *( "/" isegment ) ]
         --
         --  ipath-noscheme = isegment-nz-nc *( "/" isegment )

         Success : Boolean;
         Current : Positive := 1;

      begin
         Self.Clear;

         --  Try to parse 'scheme' production.

         Parse_Scheme (Self, Image, Current, Success);

         if Success then
            --  Skip colon delimiter.

            Current := Current + 1;

            Parse_IHier_Part (Self, Image, Current, Success);

            if not Success then
               raise Constraint_Error;
            end if;

         elsif Current + 2 <= Image.Length
           and then Image.Element (Current) = Solidus
           and then Image.Element (Current + 1) = Solidus
         then
            --  Parse 'iauthority' and 'ihier-part' productions.

            Current := Current + 2;
            Parse_IAuthority (Self, Image, Current, Success);

            if not Success then
               raise Constraint_Error;
            end if;

            Parse_IPath_Abempty (Self, Image, Current, Success);

            if not Success then
               raise Constraint_Error;
            end if;

         elsif Current < Image.Length
           and then Image.Element (Current) = Solidus
         then
            --  Parse 'ipath-absolute' production.

            Parse_IPath_Absolute (Self, Image, Current, Success);

            if not Success then
               raise Constraint_Error;
            end if;

         elsif Current <= Image.Length then
            --  Parse 'ipath-noscheme' production.

            Parse_IPath_Noscheme (Self, Image, Current, Success);

            if not Success then
               raise Constraint_Error;
            end if;

         end if;

         --  Parse 'iquery' production if present.

         if Current <= Image.Length
           and then Image.Element (Current) = Question_Mark
         then
            --  Skip question mark delimiter.

            Current := Current + 1;

            Parse_IQuery (Self, Image, Current, Success);

            if not Success then
               raise Constraint_Error;
            end if;
         end if;

         --  Parse 'fragment' production if present.

         if Current <= Image.Length
           and then Image.Element (Current) = Number_Sign
         then
            --  Skip number sign delimiter.

            Current := Current + 1;

            Parse_IFragment (Self, Image, Current, Success);

            if not Success then
               raise Constraint_Error;
            end if;
         end if;

         if Current <= Image.Length then
            raise Constraint_Error;
         end if;
      end Parse_IRI_Reference;

      --------------------
      -- Parse_ISegment --
      --------------------

      procedure Parse_ISegment
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean)
      is
         --  [RFC 3987]
         --
         --  isegment       = *ipchar
         --
         --  ipchar         = iunreserved / pct-encoded / sub-delims / ":"
         --                  / "@"

         Segment : League.Strings.Universal_String;
         C       : League.Characters.Universal_Character;
         Current : Positive := First;

      begin
         while Current <= Image.Length loop
            C := Image.Element (Current);

            if Is_IUnreserved (C)
              or Is_Sub_Delims (C)
              or C = Colon
              or C = Commercial_At
            then
               Segment.Append (C);
               Current := Current + 1;

            elsif C = Percent_Sign then
               --  Percent encoded data.

               Parse_Pct_Encoded (Self, Image, Current, Success, Segment);

               if not Success then
                  return;
               end if;

            else
               --  Unexpected character.

               exit;
            end if;
         end loop;

         --  Append parsed segment to the list of segments when it is not
         --  empty.

         if not Segment.Is_Empty then
            Self.Path.Append (Segment);
         end if;

         First := Current;
         Success := True;
      end Parse_ISegment;

      ---------------------
      -- Parse_IUserInfo --
      ---------------------

      procedure Parse_IUserInfo
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean)
      is
         --  [RFC 3987]
         --
         --  iuserinfo      = *( iunreserved / pct-encoded / sub-delims / ":" )

         Current : Positive := First;
         C       : League.Characters.Universal_Character;

      begin
         while Current <= Image.Length loop
            C := Image.Element (Current);

            if Is_IUnreserved (C)
              or Is_Sub_Delims (C)
              or C = Colon
            then
               Self.User_Info.Append (C);
               Current := Current + 1;

            elsif C = Percent_Sign then
               Parse_Pct_Encoded
                (Self, Image, Current, Success, Self.User_Info);

               if not Success then
                  Self.User_Info.Clear;

                  return;
               end if;

            else
               exit;
            end if;
         end loop;

         Success := True;

         if Current > Image.Length
           or else Image.Element (Current) /= Commercial_At
         then
            --  By convention, character after 'iuserinfo' should be '@';
            --  otherwise it is impossible to distinguish 'ihost' and
            --  'iuserinfo'. So, clear accumulated data to be able to try parse
            --  'ihost'.

            Self.User_Info.Clear;

         else
            First := Current;
         end if;
      end Parse_IUserInfo;

      -----------------------
      -- Parse_Pct_Encoded --
      -----------------------

      procedure Parse_Pct_Encoded
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean;
        Result  : in out League.Strings.Universal_String)
      is
         --  [RFC 3987]
         --
         --  pct-encoded    = "%" HEXDIG HEXDIG

         C1 : League.Characters.Universal_Character;
         C2 : League.Characters.Universal_Character;

      begin
         if First + 2 <= Image.Length
           and Image.Element (First) = Percent_Sign
         then
            C1 := Image.Element (First + 1);
            C2 := Image.Element (First + 2);

            if Is_HEXDIG (C1) and Is_HEXDIG (C2) then
               --  Append to result parsed and normalized (converted to
               --  uppercase) characters.

               Result.Append (Percent_Sign);
               Result.Append (C1.Simple_Uppercase_Mapping);
               Result.Append (C2.Simple_Uppercase_Mapping);
               First := First + 3;
               Success := True;

            else
               Success := False;
            end if;

         else
            Success := False;
         end if;
      end Parse_Pct_Encoded;

      ----------------
      -- Parse_Port --
      ----------------

      procedure Parse_Port
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean)
      is
         --  [RFC 3987]
         --
         --  port           = *DIGIT

         C       : League.Characters.Universal_Character;
         Current : Positive := First;

      begin
         Self.Port := 0;

         while Current <= Image.Length loop
            C := Image.Element (Current);

            exit when not IS_DIGIT (C);

            Self.Port :=
              Self.Port * 10
                + (Wide_Wide_Character'Pos (C.To_Wide_Wide_Character)
                     - Wide_Wide_Character'Pos('0'));
            Current := Current + 1;
         end loop;

         Success := True;
         First := Current;
      end Parse_Port;

      ------------------
      -- Parse_Scheme --
      ------------------

      procedure Parse_Scheme
       (Self    : in out IRI'Class;
        Image   : League.Strings.Universal_String;
        First   : in out Positive;
        Success : out Boolean)
      is
         --  [RFC 3987]
         --
         --  scheme         = ALPHA *( ALPHA / DIGIT / "+" / "-" / "." )

         C       : League.Characters.Universal_Character;
         Current : Positive := First;

      begin
         --  Check that at least two characters is available (one character of
         --  the scheme and colon delimiter).

         if Image.Length <= Current then
            Success := False;

            return;
         end if;

         --  Check first character of the scheme.

         C := Image.Element (Current);

         if not Is_ALPHA (C) then
            Success := False;

            return;

         else
            --  Convert to lowercase and append to result.

            Self.Scheme.Append (C.Simple_Lowercase_Mapping);
            Current := Current + 1;
         end if;

         while Current <= Image.Length loop
            C := Image.Element (Current);

            exit when
              not Is_ALPHA (C)
                and not IS_DIGIT (C)
                and C /= Plus_Sign
                and C /= Hyphen_Minus
                and C /= Full_Stop;

            --  Convert to lowercase and append to result.

            Self.Scheme.Append (C.Simple_Lowercase_Mapping);
            Current := Current + 1;
         end loop;

         --  Check that scheme is terminated by colon delimiter.

         if C /= Colon then
            Self.Scheme.Clear;
            Success := False;

            return;
         end if;

         Success := True;
         First := Current;
      end Parse_Scheme;

   end IRI_Parser;

   --------------
   -- Is_Valid --
   --------------

   function Is_Valid (Self : IRI'Class) return Boolean is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Is_Valid unimplemented");
      raise Program_Error;
      return Is_Valid (Self);
   end Is_Valid;

   --------------------
   -- Normalize_Path --
   --------------------

   procedure Normalize_Path (Self : in out IRI'Class) is
   begin
      --  XXX Not implemented.

      null;
   end Normalize_Path;

   ----------
   -- Path --
   ----------

   function Path
    (Self : IRI'Class) return League.String_Vectors.Universal_String_Vector is
   begin
      return Self.Path;
   end Path;

   ----------
   -- Port --
   ----------

   function Port (Self : IRI'Class; Default : Natural := 0) return Natural is
   begin
      return Self.Port;
   end Port;

   -----------
   -- Query --
   -----------

   function Query (Self : IRI'Class) return League.Strings.Universal_String is
   begin
      return Self.Query;
   end Query;

   -------------
   -- Resolve --
   -------------

   function Resolve (Self : IRI'Class; Relative : IRI'Class) return IRI is
   begin
      return Result : IRI := IRI (Relative) do
         if Result.Scheme.Is_Empty then
            Result.Scheme := Self.Scheme;
         end if;

         if not Result.Has_Authority then
            Result.Has_Authority := Self.Has_Authority;
         end if;

         if Result.User_Info.Is_Empty then
            Result.User_Info := Self.User_Info;
         end if;

         if Result.Host.Is_Empty then
            Result.Host := Self.Host;
         end if;

         if Result.Port = 0 then
            Result.Port := Self.Port;
         end if;

         if not Result.Path_Is_Absolute then
            Result.Path.Prepend (Self.Path);
            Result.Path_Is_Absolute := Self.Path_Is_Absolute;
         end if;

         Normalize_Path (Result);
      end return;
   end Resolve;

   ------------
   -- Scheme --
   ------------

   function Scheme
    (Self : IRI'Class) return League.Strings.Universal_String is
   begin
      return Self.Scheme;
   end Scheme;

   -------------------
   -- Set_Authority --
   -------------------

   procedure Set_Authority
    (Self : in out IRI'Class; To : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Authority unimplemented");
      raise Program_Error;
   end Set_Authority;

   -----------------
   -- Set_Encoded --
   -----------------

   procedure Set_Encoded
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector)
   is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Encoded unimplemented");
      raise Program_Error;
   end Set_Encoded;

   ---------------------------
   -- Set_Encoded_Authority --
   ---------------------------

   procedure Set_Encoded_Authority
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Encoded_Authority unimplemented");
      raise Program_Error;
   end Set_Encoded_Authority;

   --------------------------
   -- Set_Encoded_Fragment --
   --------------------------

   procedure Set_Encoded_Fragment
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Encoded_Fragment unimplemented");
      raise Program_Error;
   end Set_Encoded_Fragment;

   ----------------------
   -- Set_Encoded_Host --
   ----------------------

   procedure Set_Encoded_Host
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Encoded_Host unimplemented");
      raise Program_Error;
   end Set_Encoded_Host;

   ----------------------
   -- Set_Encoded_Path --
   ----------------------

   procedure Set_Encoded_Path
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Encoded_Path unimplemented");
      raise Program_Error;
   end Set_Encoded_Path;

   -----------------------
   -- Set_Encoded_Query --
   -----------------------

   procedure Set_Encoded_Query
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Encoded_Query unimplemented");
      raise Program_Error;
   end Set_Encoded_Query;

   ------------------------
   -- Set_Encoded_Scheme --
   ------------------------

   procedure Set_Encoded_Scheme
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Encoded_Scheme unimplemented");
      raise Program_Error;
   end Set_Encoded_Scheme;

   ---------------------------
   -- Set_Encoded_User_Info --
   ---------------------------

   procedure Set_Encoded_User_Info
    (Self : in out IRI'Class;
     To   : League.Stream_Element_Vectors.Stream_Element_Vector) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Encoded_User_Info unimplemented");
      raise Program_Error;
   end Set_Encoded_User_Info;

   ------------------
   -- Set_Fragment --
   ------------------

   procedure Set_Fragment
    (Self : in out IRI'Class; To : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Fragment unimplemented");
      raise Program_Error;
   end Set_Fragment;

   --------------
   -- Set_Host --
   --------------

   procedure Set_Host
    (Self : in out IRI'Class; To : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Host unimplemented");
      raise Program_Error;
   end Set_Host;

   -------------
   -- Set_IRI --
   -------------

   procedure Set_IRI
    (Self : in out IRI'Class; To : League.Strings.Universal_String) is
   begin
      IRI_Parser.Parse_IRI_Reference (Self, To);
   end Set_IRI;

   --------------
   -- Set_Path --
   --------------

   procedure Set_Path
    (Self : in out IRI'Class; To : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Path unimplemented");
      raise Program_Error;
   end Set_Path;

   --------------
   -- Set_Port --
   --------------

   procedure Set_Port (Self : in out IRI'Class; To : Natural) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Port unimplemented");
      raise Program_Error;
   end Set_Port;

   ---------------
   -- Set_Query --
   ---------------

   procedure Set_Query
    (Self : in out IRI'Class; To : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Query unimplemented");
      raise Program_Error;
   end Set_Query;

   ----------------
   -- Set_Scheme --
   ----------------

   procedure Set_Scheme
    (Self : in out IRI'Class; To : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_Scheme unimplemented");
      raise Program_Error;
   end Set_Scheme;

   -------------------
   -- Set_User_Info --
   -------------------

   procedure Set_User_Info
    (Self : in out IRI'Class; To : League.Strings.Universal_String) is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "Set_User_Info unimplemented");
      raise Program_Error;
   end Set_User_Info;

   ----------------
   -- To_Encoded --
   ----------------

   function To_Encoded
    (Self : IRI'Class)
      return League.Stream_Element_Vectors.Stream_Element_Vector is
   begin
      --  Generated stub: replace with real body!
      pragma Compile_Time_Warning (Standard.True, "To_Encoded unimplemented");
      raise Program_Error;
      return To_Encoded (Self);
   end To_Encoded;

   -------------------------
   -- To_Universal_String --
   -------------------------

   function To_Universal_String
    (Self : IRI'Class) return League.Strings.Universal_String is
   begin
      return Result : League.Strings.Universal_String do
         --  Append scheme when defined.

         if not Self.Scheme.Is_Empty then
            Result.Append (Self.Scheme);
            Result.Append (Colon);
         end if;

         --  Append two solidus and authority when present.

         if Self.Has_Authority then
            Result.Append (Solidus);
            Result.Append (Solidus);
            Result.Append (Self.Authority);
         end if;

         --  Append path.

         for J in 1 .. Self.Path.Length loop
            if J /= 1 or (J = 1 and Self.Path_Is_Absolute) then
               Result.Append (Solidus);
            end if;

            Result.Append (Self.Path.Element (J));
         end loop;

         --  Append query.

         if not Self.Query.Is_Empty then
            Result.Append (Question_Mark);
            Result.Append (Self.Query);
         end if;

         --  Append fragment.

         if not Self.Fragment.Is_Empty then
            Result.Append (Number_Sign);
            Result.Append (Self.Fragment);
         end if;
      end return;
   end To_Universal_String;

   ---------------
   -- User_Info --
   ---------------

   function User_Info
    (Self : IRI'Class) return League.Strings.Universal_String is
   begin
      return Self.User_Info;
   end User_Info;

end League.IRIs;
