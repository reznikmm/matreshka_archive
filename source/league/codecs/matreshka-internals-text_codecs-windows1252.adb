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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with Matreshka.Internals.Strings.Configuration;
with Matreshka.Internals.Unicode.Characters.Latin;
with Matreshka.Internals.Utf16;

package body Matreshka.Internals.Text_Codecs.Windows1252 is

   use Matreshka.Internals.Strings.Configuration;
   use Matreshka.Internals.Unicode.Characters.Latin;
   use type Matreshka.Internals.Unicode.Code_Unit_32;
   use type Matreshka.Internals.Utf16.Utf16_String_Index;

   Decode_Table : constant
     array (Ada.Streams.Stream_Element range 16#80# .. 16#9F#)
       of Matreshka.Internals.Unicode.Code_Point
         := (16#80# => 16#20AC#,   --  EURO SIGN
             16#81# => Question_Mark,
             16#82# => 16#201A#,   --  SINGLE LOW-9 QUOTATION MARK
             16#83# => 16#0192#,   --  LATIN SMALL LETTER F WITH HOOK
             16#84# => 16#201E#,   --  DOUBLE LOW-9 QUOTATION MARK
             16#85# => 16#2026#,   --  HORIZONTAL ELLIPSIS
             16#86# => 16#2020#,   --  DAGGER
             16#87# => 16#2021#,   --  DOUBLE DAGGER
             16#88# => 16#02C6#,   --  MODIFIER LETTER CIRCUMFLEX ACCENT
             16#89# => 16#2030#,   --  PER MILLE SIGN
             16#8A# => 16#0160#,   --  LATIN CAPITAL LETTER S WITH CARON
             16#8B# => 16#2039#,   --  SINGLE LEFT-POINTING ANGLE QUOTATION
                                   --  MARK
             16#8C# => 16#0152#,   --  LATIN CAPITAL LIGATURE OE
             16#8D# => Question_Mark,
             16#8E# => 16#017D#,   --  LATIN CAPITAL LETTER Z WITH CARON
             16#8F# => Question_Mark,

             16#90# => Question_Mark,
             16#91# => 16#2018#,   --  LEFT SINGLE QUOTATION MARK
             16#92# => 16#2019#,   --  RIGHT SINGLE QUOTATION MARK
             16#93# => 16#201C#,   --  LEFT DOUBLE QUOTATION MARK
             16#94# => 16#201D#,   --  RIGHT DOUBLE QUOTATION MARK
             16#95# => 16#2022#,   --  BULLET
             16#96# => 16#2013#,   --  EN DASH
             16#97# => 16#2014#,   --  EM DASH
             16#98# => 16#02DC#,   --  SMALL TILDE
             16#99# => 16#2122#,   --  TRADE MARK SIGN
             16#9A# => 16#0161#,   --  LATIN SMALL LETTER S WITH CARON
             16#9B# => 16#203A#,   --  SINGLE RIGHT-POINTING ANGLE QUOTATION
                                   --  MARK
             16#9C# => 16#0153#,   --  LATIN SMALL LIGATURE OE
             16#9D# => Question_Mark,
             16#9E# => 16#017E#,   --  LATIN SMALL LETTER Z WITH CARON
             16#9F# => 16#0178#);  --  LATIN CAPITAL LETTER Y WITH DIAERESIS

   Encode_Table_01 : constant
     array (Matreshka.Internals.Unicode.Code_Point range 16#0152# .. 16#0192#)
       of Ada.Streams.Stream_Element
         := (16#0152# => 16#8C#,   --  LATIN CAPITAL LIGATURE OE
             16#0153# => 16#9C#,   --  LATIN SMALL LIGATURE OE
             16#0160# => 16#8A#,   --  LATIN CAPITAL LETTER S WITH CARON
             16#0161# => 16#9A#,   --  LATIN SMALL LETTER S WITH CARON
             16#0178# => 16#9F#,   --  LATIN CAPITAL LETTER Y WITH DIAERESIS
             16#017D# => 16#8E#,   --  LATIN CAPITAL LETTER Z WITH CARON
             16#017E# => 16#9E#,   --  LATIN SMALL LETTER Z WITH CARON
             16#0192# => 16#83#,   --  LATIN SMALL LETTER F WITH HOOK
             others   => Question_Mark);

   Encode_Table_20 : constant
     array (Matreshka.Internals.Unicode.Code_Point range 16#2013# .. 16#203A#)
       of Ada.Streams.Stream_Element
         := (16#2013# => 16#96#,   --  EN DASH
             16#2014# => 16#97#,   --  EM DASH
             16#2018# => 16#91#,   --  LEFT SINGLE QUOTATION MARK
             16#2019# => 16#92#,   --  RIGHT SINGLE QUOTATION MARK
             16#201A# => 16#82#,   --  SINGLE LOW-9 QUOTATION MARK
             16#201C# => 16#93#,   --  LEFT DOUBLE QUOTATION MARK
             16#201D# => 16#94#,   --  RIGHT DOUBLE QUOTATION MARK
             16#201E# => 16#84#,   --  DOUBLE LOW-9 QUOTATION MARK
             16#2020# => 16#86#,   --  DAGGER
             16#2021# => 16#87#,   --  DOUBLE DAGGER
             16#2022# => 16#95#,   --  BULLET
             16#2026# => 16#85#,   --  HORIZONTAL ELLIPSIS
             16#2030# => 16#89#,   --  PER MILLE SIGN
             16#2039# => 16#8B#,   --  SINGLE LEFT-POINTING ANGLE QUOTATION
                                   --  MARK
             16#203A# => 16#9B#,   --  SINGLE RIGHT-POINTING ANGLE QUOTATION
                                   --  MARK
             others   => Question_Mark);

   -------------------
   -- Decode_Append --
   -------------------

   overriding procedure Decode_Append
    (Self   : in out Windows1252_Decoder;
     Data   : Ada.Streams.Stream_Element_Array;
     String : in out Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Matreshka.Internals.Strings.Mutate (String, String.Unused + Data'Length);

      for J in Data'Range loop
         case Data (J) is
            when 16#00# .. 16#7F# =>
               --  Directly mapped.

               Self.Unchecked_Append
                (Self,
                 String,
                 Matreshka.Internals.Unicode.Code_Point (Data (J)));

            when 16#80# .. 16#9F# =>
               --  Table translated.

               Self.Unchecked_Append (Self, String, Decode_Table (Data (J)));

            when 16#A0# .. 16#FF# =>
               --  Directly mapped.

               Self.Unchecked_Append
                (Self,
                 String,
                 Matreshka.Internals.Unicode.Code_Point (Data (J)));
         end case;
      end loop;

      String_Handler.Fill_Null_Terminator (String);
   end Decode_Append;

   -------------
   -- Decoder --
   -------------

   function Decoder (Mode : Decoder_Mode) return Abstract_Decoder'Class is
   begin
      case Mode is
         when Raw =>
            return
              Windows1252_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_Raw'Access);

         when XML_1_0 =>
            return
              Windows1252_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_XML10'Access);

         when XML_1_1 =>
            return
              Windows1252_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_XML11'Access);
      end case;
   end Decoder;

   ------------
   -- Encode --
   ------------

   overriding procedure Encode
    (Self   : in out Windows1252_Encoder;
     String : not null Matreshka.Internals.Strings.Shared_String_Access;
     Buffer : out MISEV.Shared_Stream_Element_Vector_Access)
   is
      pragma Unreferenced (Self);

      use Matreshka.Internals.Stream_Element_Vectors;
      use Ada.Streams;

      Code     : Matreshka.Internals.Unicode.Code_Point;
      Position : Matreshka.Internals.Utf16.Utf16_String_Index := 0;
      Element  : Ada.Streams.Stream_Element;

   begin
      if String.Unused = 0 then
         Buffer := Empty_Shared_Stream_Element_Vector'Access;

      else
         Buffer :=
           Allocate (Ada.Streams.Stream_Element_Offset (String.Unused));

         while Position < String.Unused loop
            Matreshka.Internals.Utf16.Unchecked_Next
             (String.Value, Position, Code);

            if Code in 16#0000# .. 16#007F# then
               --  Direct mapping.

               Element := Stream_Element (Code);

            elsif Code in 16#00A0# .. 16#00FF# then
               --  Direct mapping.

               Element := Stream_Element (Code);

            elsif Code in Encode_Table_01'Range then
               --  Table translation, range 0152 .. 0192.

               Element := Encode_Table_01 (Code);

            elsif Code in Encode_Table_20'Range then
               --  Table translation, range 2013 .. 203A.

               Element := Encode_Table_20 (Code);

            elsif Code = 16#02C6# then
               --  16#02C6# => 16#88#   --  MODIFIER LETTER CIRCUMFLEX ACCENT

               Element := 16#88#;

            elsif Code = 16#02DC# then
               --  16#02DC# => 16#98#   --  SMALL TILDE

               Element := 16#98#;

            elsif Code = 16#20AC# then
               --  16#20AC# => 16#80#   --  EURO SIGN

               Element := 16#80#;

            elsif Code = 16#2122# then
               --  16#2122# => 16#99#  --  TRADE MARK SIGN

               Element := 16#99#;

            else
               Element := Question_Mark;
            end if;

            Buffer.Value (Buffer.Length) := Element;
            Buffer.Length := Buffer.Length + 1;
         end loop;
      end if;
   end Encode;

   -------------
   -- Encoder --
   -------------

   function Encoder return Abstract_Encoder'Class is
   begin
      return Windows1252_Encoder'(null record);
   end Encoder;

   --------------
   -- Is_Error --
   --------------

   overriding function Is_Error (Self : Windows1252_Decoder) return Boolean is
      pragma Unreferenced (Self);

   begin
      return False;
   end Is_Error;

   -------------------
   -- Is_Mailformed --
   -------------------

   overriding function Is_Mailformed
    (Self : Windows1252_Decoder) return Boolean
   is
      pragma Unreferenced (Self);

   begin
      return False;
   end Is_Mailformed;

end Matreshka.Internals.Text_Codecs.Windows1252;
