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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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

package body Matreshka.Internals.Text_Codecs.IBM437 is

   use Matreshka.Internals.Strings.Configuration;
   use Matreshka.Internals.Unicode.Characters.Latin;
   use type Matreshka.Internals.Unicode.Code_Unit_32;
   use type Matreshka.Internals.Utf16.Utf16_String_Index;

   Decode_Table : constant
     array (Ada.Streams.Stream_Element range 16#80# .. 16#FF#)
       of Matreshka.Internals.Unicode.Code_Point
            := (16#80# => 16#00C7#,   --  LATIN CAPITAL LETTER C WITH CEDILLA
                16#81# => 16#00FC#,   --  LATIN SMALL LETTER U WITH DIAERESIS
                16#82# => 16#00E9#,   --  LATIN SMALL LETTER E WITH ACUTE
                16#83# => 16#00E2#,   --  LATIN SMALL LETTER A WITH CIRCUMFLEX
                16#84# => 16#00E4#,   --  LATIN SMALL LETTER A WITH DIAERESIS
                16#85# => 16#00E0#,   --  LATIN SMALL LETTER A WITH GRAVE
                16#86# => 16#00E5#,   --  LATIN SMALL LETTER A WITH RING ABOVE
                16#87# => 16#00E7#,   --  LATIN SMALL LETTER C WITH CEDILLA
                16#88# => 16#00EA#,   --  LATIN SMALL LETTER E WITH CIRCUMFLEX
                16#89# => 16#00EB#,   --  LATIN SMALL LETTER E WITH DIAERESIS
                16#8A# => 16#00E8#,   --  LATIN SMALL LETTER E WITH GRAVE
                16#8B# => 16#00EF#,   --  LATIN SMALL LETTER I WITH DIAERESIS
                16#8C# => 16#00EE#,   --  LATIN SMALL LETTER I WITH CIRCUMFLEX
                16#8D# => 16#00EC#,   --  LATIN SMALL LETTER I WITH GRAVE
                16#8E# => 16#00C4#,   --  LATIN CAPITAL LETTER A WITH DIAERESIS
                16#8F# => 16#00C5#,   --  LATIN CAPITAL LETTER A WITH RING
                                      --  ABOVE

                16#90# => 16#00C9#,   --  LATIN CAPITAL LETTER E WITH ACUTE
                16#91# => 16#00E6#,   --  LATIN SMALL LETTER AE
                16#92# => 16#00C6#,   --  LATIN CAPITAL LETTER AE
                16#93# => 16#00F4#,   --  LATIN SMALL LETTER O WITH CIRCUMFLEX
                16#94# => 16#00F6#,   --  LATIN SMALL LETTER O WITH DIAERESIS
                16#95# => 16#00F2#,   --  LATIN SMALL LETTER O WITH GRAVE
                16#96# => 16#00FB#,   --  LATIN SMALL LETTER U WITH CIRCUMFLEX
                16#97# => 16#00F9#,   --  LATIN SMALL LETTER U WITH GRAVE
                16#98# => 16#00FF#,   --  LATIN SMALL LETTER Y WITH DIAERESIS
                16#99# => 16#00D6#,   --  LATIN CAPITAL LETTER O WITH DIAERESIS
                16#9A# => 16#00DC#,   --  LATIN CAPITAL LETTER U WITH DIAERESIS
                16#9B# => 16#00A2#,   --  CENT SIGN
                16#9C# => 16#00A3#,   --  POUND SIGN
                16#9D# => 16#00A5#,   --  YEN SIGN
                16#9E# => 16#20A7#,   --  PESETA SIGN
                16#9F# => 16#0192#,   --  LATIN SMALL LETTER F WITH HOOK

                16#A0# => 16#00E1#,   --  LATIN SMALL LETTER A WITH ACUTE
                16#A1# => 16#00ED#,   --  LATIN SMALL LETTER I WITH ACUTE
                16#A2# => 16#00F3#,   --  LATIN SMALL LETTER O WITH ACUTE
                16#A3# => 16#00FA#,   --  LATIN SMALL LETTER U WITH ACUTE
                16#A4# => 16#00F1#,   --  LATIN SMALL LETTER N WITH TILDE
                16#A5# => 16#00D1#,   --  LATIN CAPITAL LETTER N WITH TILDE
                16#A6# => 16#00AA#,   --  FEMININE ORDINAL INDICATOR
                16#A7# => 16#00BA#,   --  MASCULINE ORDINAL INDICATOR
                16#A8# => 16#00BF#,   --  INVERTED QUESTION MARK
                16#A9# => 16#2310#,   --  REVERSED NOT SIGN
                16#AA# => 16#00AC#,   --  NOT SIGN
                16#AB# => 16#00BD#,   --  VULGAR FRACTION ONE HALF
                16#AC# => 16#00BC#,   --  VULGAR FRACTION ONE QUARTER
                16#AD# => 16#00A1#,   --  INVERTED EXCLAMATION MARK
                16#AE# => 16#00AB#,   --  LEFT-POINTING DOUBLE ANGLE QUOTATION
                                      --  MARK
                16#AF# => 16#00BB#,   --  RIGHT-POINTING DOUBLE ANGLE QUOTATION
                                      --  MARK

                16#B0# => 16#2591#,   --  LIGHT SHADE
                16#B1# => 16#2592#,   --  MEDIUM SHADE
                16#B2# => 16#2593#,   --  DARK SHADE
                16#B3# => 16#2502#,   --  BOX DRAWINGS LIGHT VERTICAL
                16#B4# => 16#2524#,   --  BOX DRAWINGS LIGHT VERTICAL AND LEFT
                16#B5# => 16#2561#,   --  BOX DRAWINGS VERTICAL SINGLE AND LEFT
                                      --  DOUBLE
                16#B6# => 16#2562#,   --  BOX DRAWINGS VERTICAL DOUBLE AND LEFT
                                      --  SINGLE
                16#B7# => 16#2556#,   --  BOX DRAWINGS DOWN DOUBLE AND LEFT
                                      --  SINGLE
                16#B8# => 16#2555#,   --  BOX DRAWINGS DOWN SINGLE AND LEFT
                                      --  DOUBLE
                16#B9# => 16#2563#,   --  BOX DRAWINGS DOUBLE VERTICAL AND LEFT
                16#BA# => 16#2551#,   --  BOX DRAWINGS DOUBLE VERTICAL
                16#BB# => 16#2557#,   --  BOX DRAWINGS DOUBLE DOWN AND LEFT
                16#BC# => 16#255D#,   --  BOX DRAWINGS DOUBLE UP AND LEFT
                16#BD# => 16#255C#,   --  BOX DRAWINGS UP DOUBLE AND LEFT SINGLE
                16#BE# => 16#255B#,   --  BOX DRAWINGS UP SINGLE AND LEFT DOUBLE
                16#BF# => 16#2510#,   --  BOX DRAWINGS LIGHT DOWN AND LEFT

                16#C0# => 16#2514#,   --  BOX DRAWINGS LIGHT UP AND RIGHT
                16#C1# => 16#2534#,   --  BOX DRAWINGS LIGHT UP AND HORIZONTAL
                16#C2# => 16#252C#,   --  BOX DRAWINGS LIGHT DOWN AND HORIZONTAL
                16#C3# => 16#251C#,   --  BOX DRAWINGS LIGHT VERTICAL AND RIGHT
                16#C4# => 16#2500#,   --  BOX DRAWINGS LIGHT HORIZONTAL
                16#C5# => 16#253C#,   --  BOX DRAWINGS LIGHT VERTICAL AND
                                      --  HORIZONTAL
                16#C6# => 16#255E#,   --  BOX DRAWINGS VERTICAL SINGLE AND
                                      --  RIGHT DOUBLE
                16#C7# => 16#255F#,   --  BOX DRAWINGS VERTICAL DOUBLE AND
                                      --  RIGHT SINGLE
                16#C8# => 16#255A#,   --  BOX DRAWINGS DOUBLE UP AND RIGHT
                16#C9# => 16#2554#,   --  BOX DRAWINGS DOUBLE DOWN AND RIGHT
                16#CA# => 16#2569#,   --  BOX DRAWINGS DOUBLE UP AND HORIZONTAL
                16#CB# => 16#2566#,   --  BOX DRAWINGS DOUBLE DOWN AND
                                      --  HORIZONTAL
                16#CC# => 16#2560#,   --  BOX DRAWINGS DOUBLE VERTICAL AND
                                      --  RIGHT
                16#CD# => 16#2550#,   --  BOX DRAWINGS DOUBLE HORIZONTAL
                16#CE# => 16#256C#,   --  BOX DRAWINGS DOUBLE VERTICAL AND
                                      --  HORIZONTAL
                16#CF# => 16#2567#,   --  BOX DRAWINGS UP SINGLE AND HORIZONTAL
                                      --  DOUBLE

                16#D0# => 16#2568#,   --  BOX DRAWINGS UP DOUBLE AND HORIZONTAL
                                      --  SINGLE
                16#D1# => 16#2564#,   --  BOX DRAWINGS DOWN SINGLE AND
                                      --  HORIZONTAL DOUBLE
                16#D2# => 16#2565#,   --  BOX DRAWINGS DOWN DOUBLE AND
                                      --  HORIZONTAL SINGLE
                16#D3# => 16#2559#,   --  BOX DRAWINGS UP DOUBLE AND RIGHT
                                      --  SINGLE
                16#D4# => 16#2558#,   --  BOX DRAWINGS UP SINGLE AND RIGHT
                                      --  DOUBLE
                16#D5# => 16#2552#,   --  BOX DRAWINGS DOWN SINGLE AND RIGHT
                                      --  DOUBLE
                16#D6# => 16#2553#,   --  BOX DRAWINGS DOWN DOUBLE AND RIGHT
                                      --  SINGLE
                16#D7# => 16#256B#,   --  BOX DRAWINGS VERTICAL DOUBLE AND
                                      --  HORIZONTAL SINGLE
                16#D8# => 16#256A#,   --  BOX DRAWINGS VERTICAL SINGLE AND
                                      --  HORIZONTAL DOUBLE
                16#D9# => 16#2518#,   --  BOX DRAWINGS LIGHT UP AND LEFT
                16#DA# => 16#250C#,   --  BOX DRAWINGS LIGHT DOWN AND RIGHT
                16#DB# => 16#2588#,   --  FULL BLOCK
                16#DC# => 16#2584#,   --  LOWER HALF BLOCK
                16#DD# => 16#258C#,   --  LEFT HALF BLOCK
                16#DE# => 16#2590#,   --  RIGHT HALF BLOCK
                16#DF# => 16#2580#,   --  UPPER HALF BLOCK

                16#E0# => 16#03B1#,   --  GREEK SMALL LETTER ALPHA
                16#E1# => 16#00DF#,   --  LATIN SMALL LETTER SHARP S
                16#E2# => 16#0393#,   --  GREEK CAPITAL LETTER GAMMA
                16#E3# => 16#03C0#,   --  GREEK SMALL LETTER PI
                16#E4# => 16#03A3#,   --  GREEK CAPITAL LETTER SIGMA
                16#E5# => 16#03C3#,   --  GREEK SMALL LETTER SIGMA
                16#E6# => 16#00B5#,   --  MICRO SIGN
                16#E7# => 16#03C4#,   --  GREEK SMALL LETTER TAU
                16#E8# => 16#03A6#,   --  GREEK CAPITAL LETTER PHI
                16#E9# => 16#0398#,   --  GREEK CAPITAL LETTER THETA
                16#EA# => 16#03A9#,   --  GREEK CAPITAL LETTER OMEGA
                16#EB# => 16#03B4#,   --  GREEK SMALL LETTER DELTA
                16#EC# => 16#221E#,   --  INFINITY
                16#ED# => 16#03C6#,   --  GREEK SMALL LETTER PHI
                16#EE# => 16#03B5#,   --  GREEK SMALL LETTER EPSILON
                16#EF# => 16#2229#,   --  INTERSECTION

                16#F0# => 16#2261#,   --  IDENTICAL TO
                16#F1# => 16#00B1#,   --  PLUS-MINUS SIGN
                16#F2# => 16#2265#,   --  GREATER-THAN OR EQUAL TO
                16#F3# => 16#2264#,   --  LESS-THAN OR EQUAL TO
                16#F4# => 16#2320#,   --  TOP HALF INTEGRAL
                16#F5# => 16#2321#,   --  BOTTOM HALF INTEGRAL
                16#F6# => 16#00F7#,   --  DIVISION SIGN
                16#F7# => 16#2248#,   --  ALMOST EQUAL TO
                16#F8# => 16#00B0#,   --  DEGREE SIGN
                16#F9# => 16#2219#,   --  BULLET OPERATOR
                16#FA# => 16#00B7#,   --  MIDDLE DOT
                16#FB# => 16#221A#,   --  SQUARE ROOT
                16#FC# => 16#207F#,   --  SUPERSCRIPT LATIN SMALL LETTER N
                16#FD# => 16#00B2#,   --  SUPERSCRIPT TWO
                16#FE# => 16#25A0#,   --  BLACK SQUARE
                16#FF# => 16#00A0#);  --  NO-BREAK SPACE

   Encode_Table_00 : constant
     array (Matreshka.Internals.Unicode.Code_Point range 16#00A0# .. 16#00FF#)
       of Ada.Streams.Stream_Element
         := (16#00A0# => 16#FF#,   --  NO-BREAK SPACE
             16#00A1# => 16#AD#,   --  INVERTED EXCLAMATION MARK
             16#00A2# => 16#9B#,   --  CENT SIGN
             16#00A3# => 16#9C#,   --  POUND SIGN
             16#00A4# => Question_Mark,
             16#00A5# => 16#9D#,   --  YEN SIGN
             16#00A6# => Question_Mark,
             16#00A7# => Question_Mark,
             16#00A8# => Question_Mark,
             16#00A9# => Question_Mark,
             16#00AA# => 16#A6#,   --  FEMININE ORDINAL INDICATOR
             16#00AB# => 16#AE#,   --  LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
             16#00AC# => 16#AA#,   --  NOT SIGN
             16#00AD# => Question_Mark,
             16#00AE# => Question_Mark,
             16#00AF# => Question_Mark,

             16#00B0# => 16#F8#,   --  DEGREE SIGN
             16#00B1# => 16#F1#,   --  PLUS-MINUS SIGN
             16#00B2# => 16#FD#,   --  SUPERSCRIPT TWO
             16#00B3# => Question_Mark,
             16#00B4# => Question_Mark,
             16#00B5# => 16#E6#,   --  MICRO SIGN
             16#00B6# => Question_Mark,
             16#00B7# => 16#FA#,   --  MIDDLE DOT
             16#00B8# => Question_Mark,
             16#00B9# => Question_Mark,
             16#00BA# => 16#A7#,   --  MASCULINE ORDINAL INDICATOR
             16#00BB# => 16#AF#,   --  RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
             16#00BC# => 16#AC#,   --  VULGAR FRACTION ONE QUARTER
             16#00BD# => 16#AB#,   --  VULGAR FRACTION ONE HALF
             16#00BE# => Question_Mark,
             16#00BF# => 16#A8#,   --  INVERTED QUESTION MARK

             16#00C0# => Question_Mark,
             16#00C1# => Question_Mark,
             16#00C2# => Question_Mark,
             16#00C3# => Question_Mark,
             16#00C4# => 16#8E#,   --  LATIN CAPITAL LETTER A WITH DIAERESIS
             16#00C5# => 16#8F#,   --  LATIN CAPITAL LETTER A WITH RING ABOVE
             16#00C6# => 16#92#,   --  LATIN CAPITAL LETTER AE
             16#00C7# => 16#80#,   --  LATIN CAPITAL LETTER C WITH CEDILLA
             16#00C8# => Question_Mark,
             16#00C9# => 16#90#,   --  LATIN CAPITAL LETTER E WITH ACUTE
             16#00CA# => Question_Mark,
             16#00CB# => Question_Mark,
             16#00CC# => Question_Mark,
             16#00CD# => Question_Mark,
             16#00CE# => Question_Mark,
             16#00CF# => Question_Mark,

             16#00D0# => Question_Mark,
             16#00D1# => 16#A5#,   --  LATIN CAPITAL LETTER N WITH TILDE
             16#00D2# => Question_Mark,
             16#00D3# => Question_Mark,
             16#00D4# => Question_Mark,
             16#00D5# => Question_Mark,
             16#00D6# => 16#99#,   --  LATIN CAPITAL LETTER O WITH DIAERESIS
             16#00D7# => Question_Mark,
             16#00D8# => Question_Mark,
             16#00D9# => Question_Mark,
             16#00DA# => Question_Mark,
             16#00DB# => Question_Mark,
             16#00DC# => 16#9A#,   --  LATIN CAPITAL LETTER U WITH DIAERESIS
             16#00DD# => Question_Mark,
             16#00DE# => Question_Mark,
             16#00DF# => 16#E1#,   --  LATIN SMALL LETTER SHARP S

             16#00E0# => 16#85#,   --  LATIN SMALL LETTER A WITH GRAVE
             16#00E1# => 16#A0#,   --  LATIN SMALL LETTER A WITH ACUTE
             16#00E2# => 16#83#,   --  LATIN SMALL LETTER A WITH CIRCUMFLEX
             16#00E3# => Question_Mark,
             16#00E4# => 16#84#,   --  LATIN SMALL LETTER A WITH DIAERESIS
             16#00E5# => 16#86#,   --  LATIN SMALL LETTER A WITH RING ABOVE
             16#00E6# => 16#91#,   --  LATIN SMALL LETTER AE
             16#00E7# => 16#87#,   --  LATIN SMALL LETTER C WITH CEDILLA
             16#00E8# => 16#8A#,   --  LATIN SMALL LETTER E WITH GRAVE
             16#00E9# => 16#82#,   --  LATIN SMALL LETTER E WITH ACUTE
             16#00EA# => 16#88#,   --  LATIN SMALL LETTER E WITH CIRCUMFLEX
             16#00EB# => 16#89#,   --  LATIN SMALL LETTER E WITH DIAERESIS
             16#00EC# => 16#8D#,   --  LATIN SMALL LETTER I WITH GRAVE
             16#00ED# => 16#A1#,   --  LATIN SMALL LETTER I WITH ACUTE
             16#00EE# => 16#8C#,   --  LATIN SMALL LETTER I WITH CIRCUMFLEX
             16#00EF# => 16#8B#,   --  LATIN SMALL LETTER I WITH DIAERESIS

             16#00F0# => Question_Mark,
             16#00F1# => 16#A4#,   --  LATIN SMALL LETTER N WITH TILDE
             16#00F2# => 16#95#,   --  LATIN SMALL LETTER O WITH GRAVE
             16#00F3# => 16#A2#,   --  LATIN SMALL LETTER O WITH ACUTE
             16#00F4# => 16#93#,   --  LATIN SMALL LETTER O WITH CIRCUMFLEX
             16#00F5# => Question_Mark,
             16#00F6# => 16#94#,   --  LATIN SMALL LETTER O WITH DIAERESIS
             16#00F7# => 16#F6#,   --  DIVISION SIGN
             16#00F8# => Question_Mark,
             16#00F9# => 16#97#,   --  LATIN SMALL LETTER U WITH GRAVE
             16#00FA# => 16#A3#,   --  LATIN SMALL LETTER U WITH ACUTE
             16#00FB# => 16#96#,   --  LATIN SMALL LETTER U WITH CIRCUMFLEX
             16#00FC# => 16#81#,   --  LATIN SMALL LETTER U WITH DIAERESIS
             16#00FD# => Question_Mark,
             16#00FE# => Question_Mark,
             16#00FF# => 16#98#);  --  LATIN SMALL LETTER Y WITH DIAERESIS

   Encode_Table_03 : constant
     array (Matreshka.Internals.Unicode.Code_Point range 16#0393# .. 16#03C6#)
       of Ada.Streams.Stream_Element
         := (16#0393# => 16#E2#,   --  GREEK CAPITAL LETTER GAMMA
             16#0394# => Question_Mark,
             16#0395# => Question_Mark,
             16#0396# => Question_Mark,
             16#0397# => Question_Mark,
             16#0398# => 16#E9#,   --  GREEK CAPITAL LETTER THETA
             16#0399# => Question_Mark,
             16#039A# => Question_Mark,
             16#039B# => Question_Mark,
             16#039C# => Question_Mark,
             16#039D# => Question_Mark,
             16#039E# => Question_Mark,
             16#039F# => Question_Mark,

             16#03A0# => Question_Mark,
             16#03A1# => Question_Mark,
             16#03A2# => Question_Mark,
             16#03A3# => 16#E4#,   --  GREEK CAPITAL LETTER SIGMA
             16#03A4# => Question_Mark,
             16#03A5# => Question_Mark,
             16#03A6# => 16#E8#,   --  GREEK CAPITAL LETTER PHI
             16#03A7# => Question_Mark,
             16#03A8# => Question_Mark,
             16#03A9# => 16#EA#,   --  GREEK CAPITAL LETTER OMEGA
             16#03AA# => Question_Mark,
             16#03AB# => Question_Mark,
             16#03AC# => Question_Mark,
             16#03AD# => Question_Mark,
             16#03AE# => Question_Mark,
             16#03AF# => Question_Mark,

             16#03B0# => Question_Mark,
             16#03B1# => 16#E0#,   --  GREEK SMALL LETTER ALPHA
             16#03B2# => Question_Mark,
             16#03B3# => Question_Mark,
             16#03B4# => 16#EB#,   --  GREEK SMALL LETTER DELTA
             16#03B5# => 16#EE#,   --  GREEK SMALL LETTER EPSILON
             16#03B6# => Question_Mark,
             16#03B7# => Question_Mark,
             16#03B8# => Question_Mark,
             16#03B9# => Question_Mark,
             16#03BA# => Question_Mark,
             16#03BB# => Question_Mark,
             16#03BC# => Question_Mark,
             16#03BD# => Question_Mark,
             16#03BE# => Question_Mark,
             16#03BF# => Question_Mark,

             16#03C0# => 16#E3#,   --  GREEK SMALL LETTER PI
             16#03C1# => Question_Mark,
             16#03C2# => Question_Mark,
             16#03C3# => 16#E5#,   --  GREEK SMALL LETTER SIGMA
             16#03C4# => 16#E7#,   --  GREEK SMALL LETTER TAU
             16#03C5# => Question_Mark,
             16#03C6# => 16#ED#);  --  GREEK SMALL LETTER PHI

   Encode_Table_22 : constant
     array (Matreshka.Internals.Unicode.Code_Point range 16#2219# .. 16#2265#)
       of Ada.Streams.Stream_Element
         := (16#2219# => 16#F9#,   --  BULLET OPERATOR
             16#221A# => 16#FB#,   --  SQUARE ROOT
             16#221B# => Question_Mark,
             16#221C# => Question_Mark,
             16#221D# => Question_Mark,
             16#221E# => 16#EC#,   --  INFINITY
             16#221F# => Question_Mark,

             16#2220# => Question_Mark,
             16#2221# => Question_Mark,
             16#2222# => Question_Mark,
             16#2223# => Question_Mark,
             16#2224# => Question_Mark,
             16#2225# => Question_Mark,
             16#2226# => Question_Mark,
             16#2227# => Question_Mark,
             16#2228# => Question_Mark,
             16#2229# => 16#EF#,   --  INTERSECTION
             16#222A# => Question_Mark,
             16#222B# => Question_Mark,
             16#222C# => Question_Mark,
             16#222D# => Question_Mark,
             16#222E# => Question_Mark,
             16#222F# => Question_Mark,

             16#2230# => Question_Mark,
             16#2231# => Question_Mark,
             16#2232# => Question_Mark,
             16#2233# => Question_Mark,
             16#2234# => Question_Mark,
             16#2235# => Question_Mark,
             16#2236# => Question_Mark,
             16#2237# => Question_Mark,
             16#2238# => Question_Mark,
             16#2239# => Question_Mark,
             16#223A# => Question_Mark,
             16#223B# => Question_Mark,
             16#223C# => Question_Mark,
             16#223D# => Question_Mark,
             16#223E# => Question_Mark,
             16#223F# => Question_Mark,

             16#2240# => Question_Mark,
             16#2241# => Question_Mark,
             16#2242# => Question_Mark,
             16#2243# => Question_Mark,
             16#2244# => Question_Mark,
             16#2245# => Question_Mark,
             16#2246# => Question_Mark,
             16#2247# => Question_Mark,
             16#2248# => 16#F7#,   --  ALMOST EQUAL TO
             16#2249# => Question_Mark,
             16#224A# => Question_Mark,
             16#224B# => Question_Mark,
             16#224C# => Question_Mark,
             16#224D# => Question_Mark,
             16#224E# => Question_Mark,
             16#224F# => Question_Mark,

             16#2250# => Question_Mark,
             16#2251# => Question_Mark,
             16#2252# => Question_Mark,
             16#2253# => Question_Mark,
             16#2254# => Question_Mark,
             16#2255# => Question_Mark,
             16#2256# => Question_Mark,
             16#2257# => Question_Mark,
             16#2258# => Question_Mark,
             16#2259# => Question_Mark,
             16#225A# => Question_Mark,
             16#225B# => Question_Mark,
             16#225C# => Question_Mark,
             16#225D# => Question_Mark,
             16#225E# => Question_Mark,
             16#225F# => Question_Mark,

             16#2260# => Question_Mark,
             16#2261# => 16#F0#,   --  IDENTICAL TO
             16#2262# => Question_Mark,
             16#2263# => Question_Mark,
             16#2264# => 16#F3#,   --  LESS-THAN OR EQUAL TO
             16#2265# => 16#F2#);  --  GREATER-THAN OR EQUAL TO

   Encode_Table_23 : constant
     array (Matreshka.Internals.Unicode.Code_Point range 16#2310# .. 16#2321#)
       of Ada.Streams.Stream_Element
         := (16#2310# => 16#A9#,   --  REVERSED NOT SIGN
             16#2311# => Question_Mark,
             16#2312# => Question_Mark,
             16#2313# => Question_Mark,
             16#2314# => Question_Mark,
             16#2315# => Question_Mark,
             16#2316# => Question_Mark,
             16#2317# => Question_Mark,
             16#2318# => Question_Mark,
             16#2319# => Question_Mark,
             16#231A# => Question_Mark,
             16#231B# => Question_Mark,
             16#231C# => Question_Mark,
             16#231D# => Question_Mark,
             16#231E# => Question_Mark,
             16#231F# => Question_Mark,

             16#2320# => 16#F4#,   --  TOP HALF INTEGRAL
             16#2321# => 16#F5#);  --  BOTTOM HALF INTEGRAL

   Encode_Table_25 : constant
     array (Matreshka.Internals.Unicode.Code_Point range 16#2500# .. 16#25A0#)
       of Ada.Streams.Stream_Element
         := (16#2500# => 16#C4#,   --  BOX DRAWINGS LIGHT HORIZONTAL
             16#2501# => Question_Mark,
             16#2502# => 16#B3#,   --  BOX DRAWINGS LIGHT VERTICAL
             16#2503# => Question_Mark,
             16#2504# => Question_Mark,
             16#2505# => Question_Mark,
             16#2506# => Question_Mark,
             16#2507# => Question_Mark,
             16#2508# => Question_Mark,
             16#2509# => Question_Mark,
             16#250A# => Question_Mark,
             16#250B# => Question_Mark,
             16#250C# => 16#DA#,   --  BOX DRAWINGS LIGHT DOWN AND RIGHT
             16#250D# => Question_Mark,
             16#250E# => Question_Mark,
             16#250F# => Question_Mark,

             16#2510# => 16#BF#,   --  BOX DRAWINGS LIGHT DOWN AND LEFT
             16#2511# => Question_Mark,
             16#2512# => Question_Mark,
             16#2513# => Question_Mark,
             16#2514# => 16#C0#,   --  BOX DRAWINGS LIGHT UP AND RIGHT
             16#2515# => Question_Mark,
             16#2516# => Question_Mark,
             16#2517# => Question_Mark,
             16#2518# => 16#D9#,   --  BOX DRAWINGS LIGHT UP AND LEFT
             16#2519# => Question_Mark,
             16#251A# => Question_Mark,
             16#251B# => Question_Mark,
             16#251C# => 16#C3#,   --  BOX DRAWINGS LIGHT VERTICAL AND RIGHT
             16#251D# => Question_Mark,
             16#251E# => Question_Mark,
             16#251F# => Question_Mark,

             16#2520# => Question_Mark,
             16#2521# => Question_Mark,
             16#2522# => Question_Mark,
             16#2523# => Question_Mark,
             16#2524# => 16#B4#,   --  BOX DRAWINGS LIGHT VERTICAL AND LEFT
             16#2525# => Question_Mark,
             16#2526# => Question_Mark,
             16#2527# => Question_Mark,
             16#2528# => Question_Mark,
             16#2529# => Question_Mark,
             16#252A# => Question_Mark,
             16#252B# => Question_Mark,
             16#252C# => 16#C2#,   --  BOX DRAWINGS LIGHT DOWN AND HORIZONTAL
             16#252D# => Question_Mark,
             16#252E# => Question_Mark,
             16#252F# => Question_Mark,

             16#2530# => Question_Mark,
             16#2531# => Question_Mark,
             16#2532# => Question_Mark,
             16#2533# => Question_Mark,
             16#2534# => 16#C1#,   --  BOX DRAWINGS LIGHT UP AND HORIZONTAL
             16#2535# => Question_Mark,
             16#2536# => Question_Mark,
             16#2537# => Question_Mark,
             16#2538# => Question_Mark,
             16#2539# => Question_Mark,
             16#253A# => Question_Mark,
             16#253B# => Question_Mark,
             16#253C# => 16#C5#,   --  BOX DRAWINGS LIGHT VERTICAL AND HORIZONTAL
             16#253D# => Question_Mark,
             16#253E# => Question_Mark,
             16#253F# => Question_Mark,

             16#2540# => Question_Mark,
             16#2541# => Question_Mark,
             16#2542# => Question_Mark,
             16#2543# => Question_Mark,
             16#2544# => Question_Mark,
             16#2545# => Question_Mark,
             16#2546# => Question_Mark,
             16#2547# => Question_Mark,
             16#2548# => Question_Mark,
             16#2549# => Question_Mark,
             16#254A# => Question_Mark,
             16#254B# => Question_Mark,
             16#254C# => Question_Mark,
             16#254D# => Question_Mark,
             16#254E# => Question_Mark,
             16#254F# => Question_Mark,

             16#2550# => 16#CD#,   --  BOX DRAWINGS DOUBLE HORIZONTAL
             16#2551# => 16#BA#,   --  BOX DRAWINGS DOUBLE VERTICAL
             16#2552# => 16#D5#,   --  BOX DRAWINGS DOWN SINGLE AND RIGHT DOUBLE
             16#2553# => 16#D6#,   --  BOX DRAWINGS DOWN DOUBLE AND RIGHT SINGLE
             16#2554# => 16#C9#,   --  BOX DRAWINGS DOUBLE DOWN AND RIGHT
             16#2555# => 16#B8#,   --  BOX DRAWINGS DOWN SINGLE AND LEFT DOUBLE
             16#2556# => 16#B7#,   --  BOX DRAWINGS DOWN DOUBLE AND LEFT SINGLE
             16#2557# => 16#BB#,   --  BOX DRAWINGS DOUBLE DOWN AND LEFT
             16#2558# => 16#D4#,   --  BOX DRAWINGS UP SINGLE AND RIGHT DOUBLE
             16#2559# => 16#D3#,   --  BOX DRAWINGS UP DOUBLE AND RIGHT SINGLE
             16#255A# => 16#C8#,   --  BOX DRAWINGS DOUBLE UP AND RIGHT
             16#255B# => 16#BE#,   --  BOX DRAWINGS UP SINGLE AND LEFT DOUBLE
             16#255C# => 16#BD#,   --  BOX DRAWINGS UP DOUBLE AND LEFT SINGLE
             16#255D# => 16#BC#,   --  BOX DRAWINGS DOUBLE UP AND LEFT
             16#255E# => 16#C6#,   --  BOX DRAWINGS VERTICAL SINGLE AND RIGHT DOUBLE
             16#255F# => 16#C7#,   --  BOX DRAWINGS VERTICAL DOUBLE AND RIGHT SINGLE

             16#2560# => 16#CC#,   --  BOX DRAWINGS DOUBLE VERTICAL AND RIGHT
             16#2561# => 16#B5#,   --  BOX DRAWINGS VERTICAL SINGLE AND LEFT DOUBLE
             16#2562# => 16#B6#,   --  BOX DRAWINGS VERTICAL DOUBLE AND LEFT SINGLE
             16#2563# => 16#B9#,   --  BOX DRAWINGS DOUBLE VERTICAL AND LEFT
             16#2564# => 16#D1#,   --  BOX DRAWINGS DOWN SINGLE AND HORIZONTAL DOUBLE
             16#2565# => 16#D2#,   --  BOX DRAWINGS DOWN DOUBLE AND HORIZONTAL SINGLE
             16#2566# => 16#CB#,   --  BOX DRAWINGS DOUBLE DOWN AND HORIZONTAL
             16#2567# => 16#CF#,   --  BOX DRAWINGS UP SINGLE AND HORIZONTAL DOUBLE
             16#2568# => 16#D0#,   --  BOX DRAWINGS UP DOUBLE AND HORIZONTAL SINGLE
             16#2569# => 16#CA#,   --  BOX DRAWINGS DOUBLE UP AND HORIZONTAL
             16#256A# => 16#D8#,   --  BOX DRAWINGS VERTICAL SINGLE AND HORIZONTAL DOUBLE
             16#256B# => 16#D7#,   --  BOX DRAWINGS VERTICAL DOUBLE AND HORIZONTAL SINGLE
             16#256C# => 16#CE#,   --  BOX DRAWINGS DOUBLE VERTICAL AND HORIZONTAL
             16#256D# => Question_Mark,
             16#256E# => Question_Mark,
             16#256F# => Question_Mark,

             16#2570# => Question_Mark,
             16#2571# => Question_Mark,
             16#2572# => Question_Mark,
             16#2573# => Question_Mark,
             16#2574# => Question_Mark,
             16#2575# => Question_Mark,
             16#2576# => Question_Mark,
             16#2577# => Question_Mark,
             16#2578# => Question_Mark,
             16#2579# => Question_Mark,
             16#257A# => Question_Mark,
             16#257B# => Question_Mark,
             16#257C# => Question_Mark,
             16#257D# => Question_Mark,
             16#257E# => Question_Mark,
             16#257F# => Question_Mark,

             16#2580# => 16#DF#,   --  UPPER HALF BLOCK
             16#2581# => Question_Mark,
             16#2582# => Question_Mark,
             16#2583# => Question_Mark,
             16#2584# => 16#DC#,   --  LOWER HALF BLOCK
             16#2585# => Question_Mark,
             16#2586# => Question_Mark,
             16#2587# => Question_Mark,
             16#2588# => 16#DB#,   --  FULL BLOCK
             16#2589# => Question_Mark,
             16#258A# => Question_Mark,
             16#258B# => Question_Mark,
             16#258C# => 16#DD#,   --  LEFT HALF BLOCK
             16#258D# => Question_Mark,
             16#258E# => Question_Mark,
             16#258F# => Question_Mark,

             16#2590# => 16#DE#,   --  RIGHT HALF BLOCK
             16#2591# => 16#B0#,   --  LIGHT SHADE
             16#2592# => 16#B1#,   --  MEDIUM SHADE
             16#2593# => 16#B2#,   --  DARK SHADE
             16#2594# => Question_Mark,
             16#2595# => Question_Mark,
             16#2596# => Question_Mark,
             16#2597# => Question_Mark,
             16#2598# => Question_Mark,
             16#2599# => Question_Mark,
             16#259A# => Question_Mark,
             16#259B# => Question_Mark,
             16#259C# => Question_Mark,
             16#259D# => Question_Mark,
             16#259E# => Question_Mark,
             16#259F# => Question_Mark,

             16#25A0# => 16#FE#);  --  BLACK SQUARE

   -------------------
   -- Decode_Append --
   -------------------

   overriding procedure Decode_Append
    (Self   : in out IBM437_Decoder;
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
              IBM437_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_Raw'Access);

         when XML_1_0 =>
            return
              IBM437_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_XML10'Access);

         when XML_1_1 =>
            return
              IBM437_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_XML11'Access);
      end case;
   end Decoder;

   ------------
   -- Encode --
   ------------

   overriding procedure Encode
    (Self   : in out IBM437_Encoder;
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
               --  Table translation, range 00A0 .. 00FF

               Element := Encode_Table_00 (Code);

            elsif Code in Encode_Table_03'Range then
               --  Table translation, range 0393 .. 03C6

               Element := Encode_Table_03 (Code);

            elsif Code in Encode_Table_22'Range then
               --  Table translation, range 2219 .. 2265

               Element := Encode_Table_22 (Code);

            elsif Code in Encode_Table_23'Range then
               --  Table translation, range 2310 .. 2321

               Element := Encode_Table_23 (Code);

            elsif Code in Encode_Table_25'Range then
               --  Table translation, range 2500 .. 25A0

               Element := Encode_Table_25 (Code);

            elsif Code = 16#0192# then
               --  16#0192# => 16#9F#  --  LATIN SMALL LETTER F WITH HOOK

               Element := 16#9F#;

            elsif Code = 16#207F# then
               --  16#207F# => 16#FC#  --  SUPERSCRIPT LATIN SMALL LETTER N

               Element := 16#FC#;

            elsif Code = 16#20A7# then
               --  16#20A7# => 16#9E#  --  PESETA SIGN

               Element := 16#9E#;

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
      return IBM437_Encoder'(null record);
   end Encoder;

   --------------
   -- Is_Error --
   --------------

   overriding function Is_Error (Self : IBM437_Decoder) return Boolean is
      pragma Unreferenced (Self);

   begin
      return False;
   end Is_Error;

   -------------------
   -- Is_Mailformed --
   -------------------

   overriding function Is_Mailformed
    (Self : IBM437_Decoder) return Boolean
   is
      pragma Unreferenced (Self);

   begin
      return False;
   end Is_Mailformed;

end Matreshka.Internals.Text_Codecs.IBM437;
