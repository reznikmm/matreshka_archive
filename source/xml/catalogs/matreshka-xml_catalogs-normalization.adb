------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  Normalization utilities for public and system identifiers.
------------------------------------------------------------------------------
with Ada.Streams;

with League.Characters.Latin;
with League.Text_Codecs;

package body Matreshka.XML_Catalogs.Normalization is

   use League.Characters.Latin;
   use type League.Characters.Universal_Character;

   PublicId_URN_Namespace : constant League.Strings.Universal_String
     := League.Strings.To_Universal_String ("urn:publicid:");

   UTF8_Codec : constant League.Text_Codecs.Text_Codec
     := League.Text_Codecs.Codec
         (League.Strings.To_Universal_String ("utf-8"));
   --  Codec to encode URI.

   ---------------------------------
   -- Normalize_Public_Identifier --
   ---------------------------------

   function Normalize_Public_Identifier
    (Public_Identifier : League.Strings.Universal_String)
       return League.Strings.Universal_String
   is
      Result   : League.Strings.Universal_String;
      Char     : League.Characters.Universal_Character;
      Is_Space : Boolean;

   begin
      --  [XML Catalogs] 6.2. Public Identifier Normalization
      --
      --  In order to accurately and interoperably compare public identifiers,
      --  catalog processors must perform normalization on public identifiers
      --  in both the catalog and the input passed to them.
      --
      --  All strings of white space in public identifiers must be normalized
      --  to single space characters (#x20), and leading and trailing white
      --  space must be removed.

      Is_Space := True;

      for J in 1 .. Public_Identifier.Length loop
         Char := Public_Identifier.Element (J);

         if Char = Space
           or Char = Carriage_Return
           or Char = Line_Feed
           or Char = Character_Tabulation
         then
            if not Is_Space then
               Is_Space := True;
               Result.Append (Space);
            end if;

         else
            Is_Space := False;
            Result.Append (Public_Identifier.Element (J));
         end if;
      end loop;

      if Is_Space and not Result.Is_Empty then
         return Result.Slice (1, Result.Length - 1);
         
      else
         return Result;
      end if;
   end Normalize_Public_Identifier;

   -------------------
   -- Normalize_URI --
   -------------------

   function Normalize_URI
    (URI : League.Strings.Universal_String)
       return League.Strings.Universal_String
   is
      use type Ada.Streams.Stream_Element;

      --  [XML Catalogs] 6.3. System Identifier and URI Normalization
      --
      --  "In order to accurately and interoperably compare system identifiers
      --  and URI references, catalog processors must perform normalization.
      --  The normalization described in this section must be performed on
      --  system identifiers and URI references passed as input to the resolver
      --  and on strings in the catalog that are compared to them.
      --
      --  URI references require encoding and escaping of certain characters.
      --  The disallowed characters include all non-ASCII characters, plus the
      --  excluded characters listed in Section 2.4 of [RFC 2396], except for
      --  the number sign (#) and percent sign (%) characters and the square
      --  bracket characters re-allowed in [RFC 2732]. These characters are
      --  summarized in Table 1, “Excluded US-ASCII Characters”.
      --
      --  Table 1. Excluded US-ASCII Characters
      --  Hex Value  Character  Hex Value  Character  Hex Value  Character
      --     00         NUL        0F         SI         1E          RS
      --     01         SOH        10         DLE        1F          US
      --     02         STX        11         DC1        20       (space)
      --     03         ETX        12         DC2        22          "
      --     04         EOT        13         DC3        3C          <
      --     05         ENQ        14         DC4        3E          >
      --     06         ACK        15         NAK        5C          \
      --     07         BEL        16         SYN        5E          ^
      --     08         BS         17         ETB        60          `
      --     09         HT         18         CAN        7B          {
      --     0A         LF         19         EM         7C          |
      --     0B         VT         1A         SUB        7D          }
      --     0C         FF         1B         ESC        7F          DEL
      --     0D         CR         1C         FS
      --     0E         SO         1D         GS
      --
      --  Catalog processors must escape disallowed characters as follows:
      --
      --  1. Each disallowed character is converted to UTF-8 [RFC 2279] as one
      --  or more bytes.
      --
      --  2. Any octets corresponding to a disallowed character are escaped
      --  with the URI escaping mechanism (that is, converted to %HH, where HH
      --  is the hexadecimal notation of the octet value). If escaping must be
      --  performed, uppercase hexadecimal characters should be used.
      --
      --  3. The original character is replaced by the resulting character
      --  sequence.  Note that this normalization process is idempotent:
      --  repeated normalization does not change a normalized URI reference."

      --  Actual algoriphm is slightly differ: it converts URI into UTF-8 and
      --  escape all disallowed characters. This produce equivalent result,
      --  because all ASCII characters are mapped to the elements with the same
      --  codes, and all non-ASCII characters are mapped to multibyte sequences
      --  with codes outside of ASCII range.

      Hex     : constant
        array (Ada.Streams.Stream_Element range 0 .. 15) of Wide_Wide_Character
          := "0123456789ABCDEF";
      Encoded : constant Ada.Streams.Stream_Element_Array
        := UTF8_Codec.Encode (URI).To_Stream_Element_Array;
      Result  : League.Strings.Universal_String;

   begin
      for J in Encoded'Range loop
         case Encoded (J) is
            when 16#00# .. 16#20#  --  NUL .. (space)
             | 16#22#              --  "
             | 16#3C#              --  <
             | 16#3E#              --  >
             | 16#5C#              --  \
             | 16#5E#              --  ^
             | 16#60#              --  `
             | 16#7B#              --  {
             | 16#7C#              --  |
             | 16#7D#              --  }
             | 16#7F#              --  DEL
             | 16#80# .. 16#FF#    --  non-ASCII codes
            =>
               Result.Append ('%');
               Result.Append (Hex (Encoded (J) / 16));
               Result.Append (Hex (Encoded (J) mod 16));

            when others =>
               Result.Append (Wide_Wide_Character'Val (Encoded (J)));
         end case;
      end loop;

      return Result;
   end Normalize_URI;

   ----------------
   -- Unwrap_URN --
   ----------------

   procedure Unwrap_URN
    (URI        : League.Strings.Universal_String;
     Identifier : out League.Strings.Universal_String;
     Unwrapped  : out Boolean)
   is
      --  [XML Catalogs] 6.4. URN "Unwrapping"
      --
      --  This OASIS Standard requires processors to implement special
      --  treatment of URNs in the publicid URN Namespace ([RFC 3151]).
      --
      --  URNs of this form must, in some contexts, be "unwrapped" by the
      --  Catalog processor. This unwrapping translates the URN form of the
      --  public identifier back into the standard ISO 8879 form for the
      --  purposes of subsequent catalog processing.
      --
      --  Unwrapping a urn:publicid: URN is accomplished by transcribing
      --  characters in the URN according to the fol- lowing table after
      --  discarding the leading urn:publicid: string:
      --
      --  URN Characters  Public Identifier Characters
      --         +               " " (space)
      --         :                    //
      --         ;                    ::
      --        %2B                   +
      --        %3A                   :
      --        %2F                   /
      --        %3B                   ;
      --        %27                   '
      --        %3F                   ?
      --        %23                   #
      --        %25                   %
      --
      --  URNs in the publicid namespace should always represent normalized
      --  public identifiers (Section 6.2, “Public Identifier Normalization”).
      --  In the event that an unwrapped public identifier is not normalized,
      --  the catalog processor must normalize it."

      Char   : League.Characters.Universal_Character;
      Char_1 : League.Characters.Universal_Character;
      Char_2 : League.Characters.Universal_Character;
      J      : Natural;

   begin
      Identifier := League.Strings.Empty_Universal_String;

      if not URI.Starts_With (PublicId_URN_Namespace) then
         --  Return when URI is not in publicid URN namespace.

         Unwrapped := False;

         return;
      end if;

      J := PublicId_URN_Namespace.Length + 1;

      while J <= URI.Length loop
         Char := URI.Element (J);

         if Char = Plus_Sign then
            Identifier.Append (Space);

         elsif Char = Colon then
            Identifier.Append (Solidus);
            Identifier.Append (Solidus);

         elsif Char = Semicolon then
            Identifier.Append (Colon);
            Identifier.Append (Colon);

         elsif Char = Percent_Sign
           and then J + 2 <= URI.Length
         then
            Char_1 := URI.Element (J + 1);
            Char_2 := URI.Element (J + 2);

            if Char_1 = Digit_Two and Char_2 = Latin_Capital_Letter_B then
               Identifier.Append (Plus_Sign);

            elsif Char_1 = Digit_Three and Char_2 = Latin_Capital_Letter_A then
               Identifier.Append (Colon);

            elsif Char_1 = Digit_Two and Char_2 = Latin_Capital_Letter_F then
               Identifier.Append (Solidus);

            elsif Char_1 = Digit_Three and Char_2 = Latin_Capital_Letter_B then
               Identifier.Append (Semicolon);

            elsif Char_1 = Digit_Two and Char_2 = Digit_Seven then
               Identifier.Append (Apostrophe);

            elsif Char_1 = Digit_Three and Char_2 = Latin_Capital_Letter_F then
               Identifier.Append (Question_Mark);

            elsif Char_1 = Digit_Two and Char_2 = Digit_Three then
               Identifier.Append (Number_Sign);

            elsif Char_1 = Digit_Two and Char_2 = Digit_Five then
               Identifier.Append (Percent_Sign);

            else
               Identifier.Append (Char);
               Identifier.Append (Char_1);
               Identifier.Append (Char_2);
            end if;

            J := J + 2;

         else
            Identifier.Append (Char);
         end if;

         J := J + 1;
      end loop;

      Identifier := Normalize_Public_Identifier (Identifier);
      Unwrapped := True;
   end Unwrap_URN;

end Matreshka.XML_Catalogs.Normalization;
