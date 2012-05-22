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
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with Matreshka.Internals.Strings.Configuration;
with Matreshka.Internals.Text_Codecs.ASCII;
with Matreshka.Internals.Text_Codecs.IANA_Registry;
with Matreshka.Internals.Text_Codecs.ISO88591;
with Matreshka.Internals.Text_Codecs.SHIFTJIS;
with Matreshka.Internals.Text_Codecs.UTF16;
with Matreshka.Internals.Text_Codecs.UTF8;
with Matreshka.Internals.Text_Codecs.Windows1250;
with Matreshka.Internals.Text_Codecs.Windows1251;
with Matreshka.Internals.Text_Codecs.Windows1252;
with Matreshka.Internals.Unicode.Characters.General_Punctuation;
with Matreshka.Internals.Unicode.Characters.Latin;
with Matreshka.Internals.Utf16;

package body Matreshka.Internals.Text_Codecs is

   use Matreshka.Internals.Strings.Configuration;
   use Matreshka.Internals.Text_Codecs.IANA_Registry;
   use Matreshka.Internals.Unicode.Characters.General_Punctuation;
   use Matreshka.Internals.Unicode.Characters.Latin;
   use type Matreshka.Internals.Unicode.Code_Unit_32;

   MIB_ASCII       : constant Character_Set := 3;
   MIB_ISO88591    : constant Character_Set := 4;
   MIB_SHIFTJIS    : constant Character_Set := 17;
   MIB_WINDOWS1250 : constant Character_Set := 2250;
   MIB_WINDOWS1251 : constant Character_Set := 2251;
   MIB_WINDOWS1252 : constant Character_Set := 2252;

   Decoders : constant array (Character_Set) of Decoder_Factory
     := (MIB_ASCII       => ASCII.Decoder'Access,
         MIB_ISO88591    => ISO88591.Decoder'Access,
         MIB_SHIFTJIS    => SHIFTJIS.Decoder'Access,
         MIB_UTF8        => UTF8.Decoder'Access,
         MIB_UTF16BE     => UTF16.BE_Decoder'Access,
         MIB_UTF16LE     => UTF16.LE_Decoder'Access,
         MIB_WINDOWS1250 => Windows1250.Decoder'Access,
         MIB_WINDOWS1251 => Windows1251.Decoder'Access,
         MIB_WINDOWS1252 => Windows1252.Decoder'Access,
         others          => null);

   Encoders : constant array (Character_Set) of Encoder_Factory
     := (MIB_ASCII       => ASCII.Encoder'Access,
         MIB_ISO88591    => ISO88591.Encoder'Access,
         MIB_UTF8        => UTF8.Encoder'Access,
         MIB_WINDOWS1250 => Windows1250.Encoder'Access,
         MIB_WINDOWS1251 => Windows1251.Encoder'Access,
         MIB_WINDOWS1252 => Windows1252.Encoder'Access,
         others          => null);

   ------------
   -- Decode --
   ------------

   procedure Decode
    (Self   : in out Abstract_Decoder'Class;
     Data   : Ada.Streams.Stream_Element_Array;
     String : out Matreshka.Internals.Strings.Shared_String_Access)
   is
      use type Matreshka.Internals.Utf16.Utf16_String_Index;

   begin
      if Data'Length = 0 then
         --  Returns shared empty string object when source data is empty.

         String := Matreshka.Internals.Strings.Shared_Empty'Access;

      else
         String := Matreshka.Internals.Strings.Allocate (Data'Length);
         Self.Decode_Append (Data, String);

         if String.Unused = 0 then
            Matreshka.Internals.Strings.Dereference (String);
            String := Matreshka.Internals.Strings.Shared_Empty'Access;
         end if;
      end if;
   end Decode;

   -------------
   -- Decoder --
   -------------

   function Decoder (Set : Character_Set) return Decoder_Factory is
   begin
      return Decoders (Set);
   end Decoder;

   -------------
   -- Encoder --
   -------------

   function Encoder (Set : Character_Set) return Encoder_Factory is
   begin
      return Encoders (Set);
   end Encoder;

   ----------------------
   -- To_Character_Set --
   ----------------------

   function To_Character_Set
    (Item : League.Strings.Universal_String) return Character_Set
   is
      Name : constant League.Strings.Universal_String
        := Transform_Character_Set_Name (Item);

   begin
      if Name.Is_Empty then
         raise Constraint_Error with "Invalid name of character set";
      end if;

      --  Lookup MIB.

      for J in To_MIB'Range loop
         if String_Handler.Is_Equal
             (League.Strings.Internals.Internal (Name), To_MIB (J).Name)
         then
            return To_MIB (J).MIB;
         end if;
      end loop;

      return 0;
   end To_Character_Set;

   ----------------------------------
   -- Transform_Character_Set_Name --
   ----------------------------------

   function Transform_Character_Set_Name
    (Name : League.Strings.Universal_String)
       return League.Strings.Universal_String
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

      Source : constant League.Strings.Universal_String := Name.To_Lowercase;
      Aux    : League.Strings.Universal_String;
      C      : Wide_Wide_Character;
      Digit  : Boolean := False;

   begin
      for J in 1 .. Source.Length loop
         C := Source.Element (J).To_Wide_Wide_Character;

         case C is
            when 'a' .. 'z' =>
               Aux.Append (C);
               Digit := False;

            when '0' .. '9' =>
               if C /= '0' or Digit then
                  Aux.Append (C);
                  Digit := True;
               end if;

            when '!' | '#' | '$' | '%' | '&' | ''' | '+' | '-' | '^' | '_'
              | '`' | '{' | '}' | '~'
            =>
               if J = 1 or J = Source.Length then
                  return League.Strings.Empty_Universal_String;
               end if;

            when others =>
               return League.Strings.Empty_Universal_String;
         end case;
      end loop;

      return Aux;
   end Transform_Character_Set_Name;

   --------------------------
   -- Unchecked_Append_Raw --
   --------------------------

   procedure Unchecked_Append_Raw
    (Self   : in out Abstract_Decoder'Class;
     Buffer : not null Matreshka.Internals.Strings.Shared_String_Access;
     Code   : Matreshka.Internals.Unicode.Code_Point)
   is
      pragma Unreferenced (Self);

   begin
      Matreshka.Internals.Utf16.Unchecked_Store
       (Buffer.Value, Buffer.Unused, Code);
      Buffer.Length := Buffer.Length + 1;
   end Unchecked_Append_Raw;

   ----------------------------
   -- Unchecked_Append_XML10 --
   ----------------------------

   procedure Unchecked_Append_XML10
    (Self   : in out Abstract_Decoder'Class;
     Buffer : not null Matreshka.Internals.Strings.Shared_String_Access;
     Code   : Matreshka.Internals.Unicode.Code_Point)
   is
      pragma Suppress (Access_Check);

   begin
      if Code = Carriage_Return then
         Matreshka.Internals.Utf16.Unchecked_Store
          (Buffer.Value, Buffer.Unused, Line_Feed);
         Buffer.Length := Buffer.Length + 1;
         Self.Skip_LF := True;

      elsif Code = Line_Feed then
         if not Self.Skip_LF then
            Matreshka.Internals.Utf16.Unchecked_Store
             (Buffer.Value, Buffer.Unused, Line_Feed);
            Buffer.Length := Buffer.Length + 1;
         end if;

         Self.Skip_LF := False;

      else
         Matreshka.Internals.Utf16.Unchecked_Store
          (Buffer.Value, Buffer.Unused, Code);
         Buffer.Length := Buffer.Length + 1;
         Self.Skip_LF := False;
      end if;
   end Unchecked_Append_XML10;

   ----------------------------
   -- Unchecked_Append_XML11 --
   ----------------------------

   procedure Unchecked_Append_XML11
    (Self   : in out Abstract_Decoder'Class;
     Buffer : not null Matreshka.Internals.Strings.Shared_String_Access;
     Code   : Matreshka.Internals.Unicode.Code_Point) is
   begin
      if Code = Carriage_Return then
         Matreshka.Internals.Utf16.Unchecked_Store
          (Buffer.Value, Buffer.Unused, Line_Feed);
         Buffer.Length := Buffer.Length + 1;
         Self.Skip_LF := True;

      elsif Code = Line_Feed or Code = Next_Line then
         if not Self.Skip_LF then
            Matreshka.Internals.Utf16.Unchecked_Store
             (Buffer.Value, Buffer.Unused, Line_Feed);
            Buffer.Length := Buffer.Length + 1;
         end if;

         Self.Skip_LF := False;

      elsif Code = Line_Separator then
         Matreshka.Internals.Utf16.Unchecked_Store
          (Buffer.Value, Buffer.Unused, Line_Feed);
         Buffer.Length := Buffer.Length + 1;
         Self.Skip_LF := False;

      else
         Matreshka.Internals.Utf16.Unchecked_Store
          (Buffer.Value, Buffer.Unused, Code);
         Buffer.Length := Buffer.Length + 1;
         Self.Skip_LF := False;
      end if;
   end Unchecked_Append_XML11;

end Matreshka.Internals.Text_Codecs;
