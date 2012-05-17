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

package body Matreshka.Internals.Text_Codecs.Windows1250 is

   use Matreshka.Internals.Strings.Configuration;
   use Matreshka.Internals.Unicode.Characters.Latin;
   use type Matreshka.Internals.Unicode.Code_Unit_32;
   use type Matreshka.Internals.Utf16.Utf16_String_Index;

   Decode_Table : constant
     array (Ada.Streams.Stream_Element range 16#80# .. 16#FF#)
       of Matreshka.Internals.Unicode.Code_Point
         := (16#80# => 16#20AC#,   --  EURO SIGN
             16#81# => Question_Mark,
             16#82# => 16#201A#,   --  SINGLE LOW-9 QUOTATION MARK
             16#83# => Question_Mark,
             16#84# => 16#201E#,   --  DOUBLE LOW-9 QUOTATION MARK
             16#85# => 16#2026#,   --  HORIZONTAL ELLIPSIS
             16#86# => 16#2020#,   --  DAGGER
             16#87# => 16#2021#,   --  DOUBLE DAGGER
             16#88# => Question_Mark,
             16#89# => 16#2030#,   --  PER MILLE SIGN
             16#8A# => 16#0160#,   --  LATIN CAPITAL LETTER S WITH CARON
             16#8B# => 16#2039#,   --  SINGLE LEFT-POINTING ANGLE QUOTATION MARK
             16#8C# => 16#015A#,   --  LATIN CAPITAL LETTER S WITH ACUTE
             16#8D# => 16#0164#,   --  LATIN CAPITAL LETTER T WITH CARON
             16#8E# => 16#017D#,   --  LATIN CAPITAL LETTER Z WITH CARON
             16#8F# => 16#0179#,   --  LATIN CAPITAL LETTER Z WITH ACUTE

             16#90# => Question_Mark,
             16#91# => 16#2018#,   --  LEFT SINGLE QUOTATION MARK
             16#92# => 16#2019#,   --  RIGHT SINGLE QUOTATION MARK
             16#93# => 16#201C#,   --  LEFT DOUBLE QUOTATION MARK
             16#94# => 16#201D#,   --  RIGHT DOUBLE QUOTATION MARK
             16#95# => 16#2022#,   --  BULLET
             16#96# => 16#2013#,   --  EN DASH
             16#97# => 16#2014#,   --  EM DASH
             16#98# => Question_Mark,
             16#99# => 16#2122#,   --  TRADE MARK SIGN
             16#9A# => 16#0161#,   --  LATIN SMALL LETTER S WITH CARON
             16#9B# => 16#203A#,   --  SINGLE RIGHT-POINTING ANGLE QUOTATION
                                   --  MARK
             16#9C# => 16#015B#,   --  LATIN SMALL LETTER S WITH ACUTE
             16#9D# => 16#0165#,   --  LATIN SMALL LETTER T WITH CARON
             16#9E# => 16#017E#,   --  LATIN SMALL LETTER Z WITH CARON
             16#9F# => 16#017A#,   --  LATIN SMALL LETTER Z WITH ACUTE

             16#A0# => 16#00A0#,   --  NO-BREAK SPACE
             16#A1# => 16#02C7#,   --  CARON
             16#A2# => 16#02D8#,   --  BREVE
             16#A3# => 16#0141#,   --  LATIN CAPITAL LETTER L WITH STROKE
             16#A4# => 16#00A4#,   --  CURRENCY SIGN
             16#A5# => 16#0104#,   --  LATIN CAPITAL LETTER A WITH OGONEK
             16#A6# => 16#00A6#,   --  BROKEN BAR
             16#A7# => 16#00A7#,   --  SECTION SIGN
             16#A8# => 16#00A8#,   --  DIAERESIS
             16#A9# => 16#00A9#,   --  COPYRIGHT SIGN
             16#AA# => 16#015E#,   --  LATIN CAPITAL LETTER S WITH CEDILLA
             16#AB# => 16#00AB#,   --  LEFT-POINTING DOUBLE ANGLE QUOTATION
                                   --  MARK
             16#AC# => 16#00AC#,   --  NOT SIGN
             16#AD# => 16#00AD#,   --  SOFT HYPHEN
             16#AE# => 16#00AE#,   --  REGISTERED SIGN
             16#AF# => 16#017B#,   --  LATIN CAPITAL LETTER Z WITH DOT ABOVE

             16#B0# => 16#00B0#,   --  DEGREE SIGN
             16#B1# => 16#00B1#,   --  PLUS-MINUS SIGN
             16#B2# => 16#02DB#,   --  OGONEK
             16#B3# => 16#0142#,   --  LATIN SMALL LETTER L WITH STROKE
             16#B4# => 16#00B4#,   --  ACUTE ACCENT
             16#B5# => 16#00B5#,   --  MICRO SIGN
             16#B6# => 16#00B6#,   --  PILCROW SIGN
             16#B7# => 16#00B7#,   --  MIDDLE DOT
             16#B8# => 16#00B8#,   --  CEDILLA
             16#B9# => 16#0105#,   --  LATIN SMALL LETTER A WITH OGONEK
             16#BA# => 16#015F#,   --  LATIN SMALL LETTER S WITH CEDILLA
             16#BB# => 16#00BB#,   --  RIGHT-POINTING DOUBLE ANGLE QUOTATION
                                   --  MARK
             16#BC# => 16#013D#,   --  LATIN CAPITAL LETTER L WITH CARON
             16#BD# => 16#02DD#,   --  DOUBLE ACUTE ACCENT
             16#BE# => 16#013E#,   --  LATIN SMALL LETTER L WITH CARON
             16#BF# => 16#017C#,   --  LATIN SMALL LETTER Z WITH DOT ABOVE

             16#C0# => 16#0154#,   --  LATIN CAPITAL LETTER R WITH ACUTE
             16#C1# => 16#00C1#,   --  LATIN CAPITAL LETTER A WITH ACUTE
             16#C2# => 16#00C2#,   --  LATIN CAPITAL LETTER A WITH CIRCUMFLEX
             16#C3# => 16#0102#,   --  LATIN CAPITAL LETTER A WITH BREVE
             16#C4# => 16#00C4#,   --  LATIN CAPITAL LETTER A WITH DIAERESIS
             16#C5# => 16#0139#,   --  LATIN CAPITAL LETTER L WITH ACUTE
             16#C6# => 16#0106#,   --  LATIN CAPITAL LETTER C WITH ACUTE
             16#C7# => 16#00C7#,   --  LATIN CAPITAL LETTER C WITH CEDILLA
             16#C8# => 16#010C#,   --  LATIN CAPITAL LETTER C WITH CARON
             16#C9# => 16#00C9#,   --  LATIN CAPITAL LETTER E WITH ACUTE
             16#CA# => 16#0118#,   --  LATIN CAPITAL LETTER E WITH OGONEK
             16#CB# => 16#00CB#,   --  LATIN CAPITAL LETTER E WITH DIAERESIS
             16#CC# => 16#011A#,   --  LATIN CAPITAL LETTER E WITH CARON
             16#CD# => 16#00CD#,   --  LATIN CAPITAL LETTER I WITH ACUTE
             16#CE# => 16#00CE#,   --  LATIN CAPITAL LETTER I WITH CIRCUMFLEX
             16#CF# => 16#010E#,   --  LATIN CAPITAL LETTER D WITH CARON

             16#D0# => 16#0110#,   --  LATIN CAPITAL LETTER D WITH STROKE
             16#D1# => 16#0143#,   --  LATIN CAPITAL LETTER N WITH ACUTE
             16#D2# => 16#0147#,   --  LATIN CAPITAL LETTER N WITH CARON
             16#D3# => 16#00D3#,   --  LATIN CAPITAL LETTER O WITH ACUTE
             16#D4# => 16#00D4#,   --  LATIN CAPITAL LETTER O WITH CIRCUMFLEX
             16#D5# => 16#0150#,   --  LATIN CAPITAL LETTER O WITH DOUBLE ACUTE
             16#D6# => 16#00D6#,   --  LATIN CAPITAL LETTER O WITH DIAERESIS
             16#D7# => 16#00D7#,   --  MULTIPLICATION SIGN
             16#D8# => 16#0158#,   --  LATIN CAPITAL LETTER R WITH CARON
             16#D9# => 16#016E#,   --  LATIN CAPITAL LETTER U WITH RING ABOVE
             16#DA# => 16#00DA#,   --  LATIN CAPITAL LETTER U WITH ACUTE
             16#DB# => 16#0170#,   --  LATIN CAPITAL LETTER U WITH DOUBLE ACUTE
             16#DC# => 16#00DC#,   --  LATIN CAPITAL LETTER U WITH DIAERESIS
             16#DD# => 16#00DD#,   --  LATIN CAPITAL LETTER Y WITH ACUTE
             16#DE# => 16#0162#,   --  LATIN CAPITAL LETTER T WITH CEDILLA
             16#DF# => 16#00DF#,   --  LATIN SMALL LETTER SHARP S

             16#E0# => 16#0155#,   --  LATIN SMALL LETTER R WITH ACUTE
             16#E1# => 16#00E1#,   --  LATIN SMALL LETTER A WITH ACUTE
             16#E2# => 16#00E2#,   --  LATIN SMALL LETTER A WITH CIRCUMFLEX
             16#E3# => 16#0103#,   --  LATIN SMALL LETTER A WITH BREVE
             16#E4# => 16#00E4#,   --  LATIN SMALL LETTER A WITH DIAERESIS
             16#E5# => 16#013A#,   --  LATIN SMALL LETTER L WITH ACUTE
             16#E6# => 16#0107#,   --  LATIN SMALL LETTER C WITH ACUTE
             16#E7# => 16#00E7#,   --  LATIN SMALL LETTER C WITH CEDILLA
             16#E8# => 16#010D#,   --  LATIN SMALL LETTER C WITH CARON
             16#E9# => 16#00E9#,   --  LATIN SMALL LETTER E WITH ACUTE
             16#EA# => 16#0119#,   --  LATIN SMALL LETTER E WITH OGONEK
             16#EB# => 16#00EB#,   --  LATIN SMALL LETTER E WITH DIAERESIS
             16#EC# => 16#011B#,   --  LATIN SMALL LETTER E WITH CARON
             16#ED# => 16#00ED#,   --  LATIN SMALL LETTER I WITH ACUTE
             16#EE# => 16#00EE#,   --  LATIN SMALL LETTER I WITH CIRCUMFLEX
             16#EF# => 16#010F#,   --  LATIN SMALL LETTER D WITH CARON

             16#F0# => 16#0111#,   --  LATIN SMALL LETTER D WITH STROKE
             16#F1# => 16#0144#,   --  LATIN SMALL LETTER N WITH ACUTE
             16#F2# => 16#0148#,   --  LATIN SMALL LETTER N WITH CARON
             16#F3# => 16#00F3#,   --  LATIN SMALL LETTER O WITH ACUTE
             16#F4# => 16#00F4#,   --  LATIN SMALL LETTER O WITH CIRCUMFLEX
             16#F5# => 16#0151#,   --  LATIN SMALL LETTER O WITH DOUBLE ACUTE
             16#F6# => 16#00F6#,   --  LATIN SMALL LETTER O WITH DIAERESIS
             16#F7# => 16#00F7#,   --  DIVISION SIGN
             16#F8# => 16#0159#,   --  LATIN SMALL LETTER R WITH CARON
             16#F9# => 16#016F#,   --  LATIN SMALL LETTER U WITH RING ABOVE
             16#FA# => 16#00FA#,   --  LATIN SMALL LETTER U WITH ACUTE
             16#FB# => 16#0171#,   --  LATIN SMALL LETTER U WITH DOUBLE ACUTE
             16#FC# => 16#00FC#,   --  LATIN SMALL LETTER U WITH DIAERESIS
             16#FD# => 16#00FD#,   --  LATIN SMALL LETTER Y WITH ACUTE
             16#FE# => 16#0163#,   --  LATIN SMALL LETTER T WITH CEDILLA
             16#FF# => 16#02D9#);  --  DOT ABOVE

   Encode_Table_00 : constant
     array (Matreshka.Internals.Unicode.Code_Point range 16#00A0# .. 16#00FD#)
       of Ada.Streams.Stream_Element
         := (16#00A0# => 16#A0#,   --  NO-BREAK SPACE
             16#00A4# => 16#A4#,   --  CURRENCY SIGN
             16#00A6# => 16#A6#,   --  BROKEN BAR
             16#00A7# => 16#A7#,   --  SECTION SIGN
             16#00A8# => 16#A8#,   --  DIAERESIS
             16#00A9# => 16#A9#,   --  COPYRIGHT SIGN
             16#00AB# => 16#AB#,   --  LEFT-POINTING DOUBLE ANGLE QUOTATION
                                   --  MARK
             16#00AC# => 16#AC#,   --  NOT SIGN
             16#00AD# => 16#AD#,   --  SOFT HYPHEN
             16#00AE# => 16#AE#,   --  REGISTERED SIGN
             16#00B0# => 16#B0#,   --  DEGREE SIGN
             16#00B1# => 16#B1#,   --  PLUS-MINUS SIGN
             16#00B4# => 16#B4#,   --  ACUTE ACCENT
             16#00B5# => 16#B5#,   --  MICRO SIGN
             16#00B6# => 16#B6#,   --  PILCROW SIGN
             16#00B7# => 16#B7#,   --  MIDDLE DOT
             16#00B8# => 16#B8#,   --  CEDILLA
             16#00BB# => 16#BB#,   --  RIGHT-POINTING DOUBLE ANGLE QUOTATION
                                   --  MARK
             16#00C1# => 16#C1#,   --  LATIN CAPITAL LETTER A WITH ACUTE
             16#00C2# => 16#C2#,   --  LATIN CAPITAL LETTER A WITH CIRCUMFLEX
             16#00C4# => 16#C4#,   --  LATIN CAPITAL LETTER A WITH DIAERESIS
             16#00C7# => 16#C7#,   --  LATIN CAPITAL LETTER C WITH CEDILLA
             16#00C9# => 16#C9#,   --  LATIN CAPITAL LETTER E WITH ACUTE
             16#00CB# => 16#CB#,   --  LATIN CAPITAL LETTER E WITH DIAERESIS
             16#00CD# => 16#CD#,   --  LATIN CAPITAL LETTER I WITH ACUTE
             16#00CE# => 16#CE#,   --  LATIN CAPITAL LETTER I WITH CIRCUMFLEX
             16#00D3# => 16#D3#,   --  LATIN CAPITAL LETTER O WITH ACUTE
             16#00D4# => 16#D4#,   --  LATIN CAPITAL LETTER O WITH CIRCUMFLEX
             16#00D6# => 16#D6#,   --  LATIN CAPITAL LETTER O WITH DIAERESIS
             16#00D7# => 16#D7#,   --  MULTIPLICATION SIGN
             16#00DA# => 16#DA#,   --  LATIN CAPITAL LETTER U WITH ACUTE
             16#00DC# => 16#DC#,   --  LATIN CAPITAL LETTER U WITH DIAERESIS
             16#00DD# => 16#DD#,   --  LATIN CAPITAL LETTER Y WITH ACUTE
             16#00DF# => 16#DF#,   --  LATIN SMALL LETTER SHARP S
             16#00E1# => 16#E1#,   --  LATIN SMALL LETTER A WITH ACUTE
             16#00E2# => 16#E2#,   --  LATIN SMALL LETTER A WITH CIRCUMFLEX
             16#00E4# => 16#E4#,   --  LATIN SMALL LETTER A WITH DIAERESIS
             16#00E7# => 16#E7#,   --  LATIN SMALL LETTER C WITH CEDILLA
             16#00E9# => 16#E9#,   --  LATIN SMALL LETTER E WITH ACUTE
             16#00EB# => 16#EB#,   --  LATIN SMALL LETTER E WITH DIAERESIS
             16#00ED# => 16#ED#,   --  LATIN SMALL LETTER I WITH ACUTE
             16#00EE# => 16#EE#,   --  LATIN SMALL LETTER I WITH CIRCUMFLEX
             16#00F3# => 16#F3#,   --  LATIN SMALL LETTER O WITH ACUTE
             16#00F4# => 16#F4#,   --  LATIN SMALL LETTER O WITH CIRCUMFLEX
             16#00F6# => 16#F6#,   --  LATIN SMALL LETTER O WITH DIAERESIS
             16#00F7# => 16#F7#,   --  DIVISION SIGN
             16#00FA# => 16#FA#,   --  LATIN SMALL LETTER U WITH ACUTE
             16#00FC# => 16#FC#,   --  LATIN SMALL LETTER U WITH DIAERESIS
             16#00FD# => 16#FD#,   --  LATIN SMALL LETTER Y WITH ACUTE
             others   => Question_Mark);

   Encode_Table_01 : constant
     array (Matreshka.Internals.Unicode.Code_Point range 16#0102# .. 16#017E#)
       of Ada.Streams.Stream_Element
         := (16#0102# => 16#C3#,   --  LATIN CAPITAL LETTER A WITH BREVE
             16#0103# => 16#E3#,   --  LATIN SMALL LETTER A WITH BREVE
             16#0104# => 16#A5#,   --  LATIN CAPITAL LETTER A WITH OGONEK
             16#0105# => 16#B9#,   --  LATIN SMALL LETTER A WITH OGONEK
             16#0106# => 16#C6#,   --  LATIN CAPITAL LETTER C WITH ACUTE
             16#0107# => 16#E6#,   --  LATIN SMALL LETTER C WITH ACUTE
             16#010C# => 16#C8#,   --  LATIN CAPITAL LETTER C WITH CARON
             16#010D# => 16#E8#,   --  LATIN SMALL LETTER C WITH CARON
             16#010E# => 16#CF#,   --  LATIN CAPITAL LETTER D WITH CARON
             16#010F# => 16#EF#,   --  LATIN SMALL LETTER D WITH CARON
             16#0110# => 16#D0#,   --  LATIN CAPITAL LETTER D WITH STROKE
             16#0111# => 16#F0#,   --  LATIN SMALL LETTER D WITH STROKE
             16#0118# => 16#CA#,   --  LATIN CAPITAL LETTER E WITH OGONEK
             16#0119# => 16#EA#,   --  LATIN SMALL LETTER E WITH OGONEK
             16#011A# => 16#CC#,   --  LATIN CAPITAL LETTER E WITH CARON
             16#011B# => 16#EC#,   --  LATIN SMALL LETTER E WITH CARON
             16#0139# => 16#C5#,   --  LATIN CAPITAL LETTER L WITH ACUTE
             16#013A# => 16#E5#,   --  LATIN SMALL LETTER L WITH ACUTE
             16#013D# => 16#BC#,   --  LATIN CAPITAL LETTER L WITH CARON
             16#013E# => 16#BE#,   --  LATIN SMALL LETTER L WITH CARON
             16#0141# => 16#A3#,   --  LATIN CAPITAL LETTER L WITH STROKE
             16#0142# => 16#B3#,   --  LATIN SMALL LETTER L WITH STROKE
             16#0143# => 16#D1#,   --  LATIN CAPITAL LETTER N WITH ACUTE
             16#0144# => 16#F1#,   --  LATIN SMALL LETTER N WITH ACUTE
             16#0147# => 16#D2#,   --  LATIN CAPITAL LETTER N WITH CARON
             16#0148# => 16#F2#,   --  LATIN SMALL LETTER N WITH CARON
             16#0150# => 16#D5#,   --  LATIN CAPITAL LETTER O WITH DOUBLE ACUTE
             16#0151# => 16#F5#,   --  LATIN SMALL LETTER O WITH DOUBLE ACUTE
             16#0154# => 16#C0#,   --  LATIN CAPITAL LETTER R WITH ACUTE
             16#0155# => 16#E0#,   --  LATIN SMALL LETTER R WITH ACUTE
             16#0158# => 16#D8#,   --  LATIN CAPITAL LETTER R WITH CARON
             16#0159# => 16#F8#,   --  LATIN SMALL LETTER R WITH CARON
             16#015A# => 16#8C#,   --  LATIN CAPITAL LETTER S WITH ACUTE
             16#015B# => 16#9C#,   --  LATIN SMALL LETTER S WITH ACUTE
             16#015E# => 16#AA#,   --  LATIN CAPITAL LETTER S WITH CEDILLA
             16#015F# => 16#BA#,   --  LATIN SMALL LETTER S WITH CEDILLA
             16#0160# => 16#8A#,   --  LATIN CAPITAL LETTER S WITH CARON
             16#0161# => 16#9A#,   --  LATIN SMALL LETTER S WITH CARON
             16#0162# => 16#DE#,   --  LATIN CAPITAL LETTER T WITH CEDILLA
             16#0163# => 16#FE#,   --  LATIN SMALL LETTER T WITH CEDILLA
             16#0164# => 16#8D#,   --  LATIN CAPITAL LETTER T WITH CARON
             16#0165# => 16#9D#,   --  LATIN SMALL LETTER T WITH CARON
             16#016E# => 16#D9#,   --  LATIN CAPITAL LETTER U WITH RING ABOVE
             16#016F# => 16#F9#,   --  LATIN SMALL LETTER U WITH RING ABOVE
             16#0170# => 16#DB#,   --  LATIN CAPITAL LETTER U WITH DOUBLE ACUTE
             16#0171# => 16#FB#,   --  LATIN SMALL LETTER U WITH DOUBLE ACUTE
             16#0179# => 16#8F#,   --  LATIN CAPITAL LETTER Z WITH ACUTE
             16#017A# => 16#9F#,   --  LATIN SMALL LETTER Z WITH ACUTE
             16#017B# => 16#AF#,   --  LATIN CAPITAL LETTER Z WITH DOT ABOVE
             16#017C# => 16#BF#,   --  LATIN SMALL LETTER Z WITH DOT ABOVE
             16#017D# => 16#8E#,   --  LATIN CAPITAL LETTER Z WITH CARON
             16#017E# => 16#9E#,   --  LATIN SMALL LETTER Z WITH CARON
             others   => Question_Mark);

   Encode_Table_02 : constant
     array (Matreshka.Internals.Unicode.Code_Point range 16#02C7# .. 16#02DD#)
       of Ada.Streams.Stream_Element
         := (16#02C7# => 16#A1#,   --  CARON
             16#02D8# => 16#A2#,   --  BREVE
             16#02D9# => 16#FF#,   --  DOT ABOVE
             16#02DB# => 16#B2#,   --  OGONEK
             16#02DD# => 16#BD#,   --  DOUBLE ACUTE ACCENT
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
             16#2039# => 16#8B#,   --  SINGLE LEFT-POINTING ANGLE QUOTATION MARK
             16#203A# => 16#9B#,   --  SINGLE RIGHT-POINTING ANGLE QUOTATION
                                   --  MARK
             others   => Question_Mark);

   -------------------
   -- Decode_Append --
   -------------------

   overriding procedure Decode_Append
    (Self   : in out Windows1250_Decoder;
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

            when 16#80# .. 16#FF# =>
               --  Table translated.

               Self.Unchecked_Append (Self, String, Decode_Table (Data (J)));
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
              Windows1250_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_Raw'Access);

         when XML_1_0 =>
            return
              Windows1250_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_XML10'Access);

         when XML_1_1 =>
            return
              Windows1250_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_XML11'Access);
      end case;
   end Decoder;

   ------------
   -- Encode --
   ------------

   overriding procedure Encode
    (Self   : in out Windows1250_Encoder;
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

            elsif Code in Encode_Table_00'Range then
               --  Table translation, range 00A0 .. 00FD

               Element := Encode_Table_00 (Code);

            elsif Code in Encode_Table_01'Range then
               --  Table translation, range 0102 .. 017E

               Element := Encode_Table_01 (Code);

            elsif Code in Encode_Table_02'Range then
               --  Table translation, range 02C7 .. 02DD

               Element := Encode_Table_02 (Code);

            elsif Code in Encode_Table_20'Range then
               --  Table translation, range 2013 .. 203A

               Element := Encode_Table_20 (Code);

            elsif Code = 16#20AC# then
               --  16#20AC# => 16#80#  --  EURO SIGN

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
      return Windows1250_Encoder'(null record);
   end Encoder;

   --------------
   -- Is_Error --
   --------------

   overriding function Is_Error (Self : Windows1250_Decoder) return Boolean is
      pragma Unreferenced (Self);

   begin
      return False;
   end Is_Error;

   -------------------
   -- Is_Mailformed --
   -------------------

   overriding function Is_Mailformed
    (Self : Windows1250_Decoder) return Boolean
   is
      pragma Unreferenced (Self);

   begin
      return False;
   end Is_Mailformed;

end Matreshka.Internals.Text_Codecs.Windows1250;
