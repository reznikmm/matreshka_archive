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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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
with League.Strings.Internals;
with Matreshka.Internals.Strings.Compare;
with Matreshka.Internals.Strings.Operations;
with Matreshka.Internals.Text_Codecs.IANA_Registry;
with Matreshka.Internals.Text_Codecs.ISO88591;
with Matreshka.Internals.Text_Codecs.UTF16;
with Matreshka.Internals.Text_Codecs.UTF8;
with Matreshka.Internals.Unicode.Characters.General_Punctuation;
with Matreshka.Internals.Unicode.Characters.Latin;

package body Matreshka.Internals.Text_Codecs is

   use League.Strings.Internals;
   use Matreshka.Internals.Strings.Compare;
   use Matreshka.Internals.Text_Codecs.IANA_Registry;
   use Matreshka.Internals.Unicode.Characters.General_Punctuation;
   use Matreshka.Internals.Unicode.Characters.Latin;

   MIB_ISO88591 : constant Character_Set := 4;

   Decoders : array (Character_Set) of Decoder_Access
     := (MIB_ISO88591 => ISO88591.Decoder'Access,
         MIB_UTF8     => UTF8.Decoder'Access,
         MIB_UTF16BE  => UTF16.BE_Decoder'Access,
         MIB_UTF16LE  => UTF16.LE_Decoder'Access,
         others       => null);

   -------------
   -- Decoder --
   -------------

   function Decoder (Set : Character_Set) return Decoder_Access is
   begin
      return Decoders (Set);
   end Decoder;

   ----------------------
   -- To_Character_Set --
   ----------------------

   function To_Character_Set
    (Item : League.Strings.Universal_String) return Character_Set
   is
      --  Set of characters in the character set name is restricted by RFC2978
      --  IANA Charset Registration Procedures, section 2.3. Naming
      --  Requirements
      --
      --    "mime-charset = 1*mime-charset-chars
      --     mime-charset-chars = ALPHA / DIGIT /
      --                "!" / "#" / "$" / "%" / "&" /
      --                "'" / "+" / "-" / "^" / "_" /
      --                "`" / "{" / "}" / "~"
      --     ALPHA        = "A".."Z"    ; Case insensitive ASCII Letter
      --     DIGIT        = "0".."9"    ; Numeric digit"

      --  To determine matching of character set names transformation algoriphm
      --  from Unicode Technical Standard #22 Unicode Character Mapping Markup
      --  Language (CharMapML), section 1.4 Charset Alias Matching is used:
      --
      --  "Names and aliases of charsets are often spelled with small
      --  variations. To recognize accidental but unambiguous misspellings and
      --  avoid adding each possible variation to a list of recognized names,
      --  it is customary to match names case-insensitively and to ignore some
      --  punctuation. For best results, names should be compared after
      --  applying the following transformations:
      --
      --    1. Delete all characters except a-z, A-Z, and 0-9.
      --
      --    2. Map uppercase A-Z to the corresponding lowercase a-z.
      --
      --    3. From left to right, delete each 0 that is not preceded by a
      --    digit."

      Source : constant League.Strings.Universal_String := Item.To_Uppercase;
      --  Simple case mapping can be used here.
      Name   : League.Strings.Universal_String;
      Digit  : Boolean := False;
      C      : Wide_Wide_Character;

   begin
      --  Transform character set name.

      for J in 1 .. Source.Length loop
         C := Source.Element (J);

         case C is
            when 'A' .. 'Z' =>
               Name.Append (C);
               Digit := False;

            when '0' .. '9' =>
               if C /= '0' or Digit then
                  Name.Append (C);
                  Digit := True;
               end if;

            when '!' | '#' | '$' | '%' | '&' | ''' | '+' | '-' | '^' | '_'
              | '`' | '{' | '}' | '~'
            =>
               null;

            when others =>
               raise Constraint_Error
                 with "Invalid character in character set name";
         end case;
      end loop;

      --  Lookup MIB.

      for J in To_MIB'Range loop
         if Is_Equal (Get_Shared (Name), To_MIB (J).Name) then
            return To_MIB (J).MIB;
         end if;
      end loop;

      return 0;
   end To_Character_Set;

   -------------------------
   -- Unterminated_Append --
   -------------------------

   procedure Unterminated_Append
    (Buffer : in out Matreshka.Internals.Strings.Shared_String_Access;
     State  : in out Abstract_Decoder_State'Class;
     Code   : Matreshka.Internals.Unicode.Code_Point)
   is
      use type Matreshka.Internals.Unicode.Code_Unit_32;

   begin
      case State.Mode is
         when Raw =>
            Matreshka.Internals.Strings.Operations.Unterminated_Append
             (Buffer, Code);

         when XML_1_0 =>
            if Code = Carriage_Return then
               Matreshka.Internals.Strings.Operations.Unterminated_Append
                (Buffer, Line_Feed);
               State.Skip_LF := True;

            elsif Code = Line_Feed then
               if not State.Skip_LF then
                  Matreshka.Internals.Strings.Operations.Unterminated_Append
                   (Buffer, Line_Feed);
               end if;

               State.Skip_LF := False;

            else
               Matreshka.Internals.Strings.Operations.Unterminated_Append
                (Buffer, Code);
               State.Skip_LF := False;
            end if;

         when XML_1_1 =>
            if Code = Carriage_Return then
               State.Skip_LF := True;

               Matreshka.Internals.Strings.Operations.Unterminated_Append
                (Buffer, Line_Feed);

            elsif Code = Line_Feed or Code = Next_Line then
               if not State.Skip_LF then
                  Matreshka.Internals.Strings.Operations.Unterminated_Append
                   (Buffer, Line_Feed);
               end if;

               State.Skip_LF := False;

            elsif Code = Line_Separator then
               Matreshka.Internals.Strings.Operations.Unterminated_Append
                (Buffer, Line_Feed);
               State.Skip_LF := False;

            else
               Matreshka.Internals.Strings.Operations.Unterminated_Append
                (Buffer, Code);
               State.Skip_LF := False;
            end if;
      end case;
   end Unterminated_Append;

end Matreshka.Internals.Text_Codecs;
