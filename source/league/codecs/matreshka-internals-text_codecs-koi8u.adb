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

package body Matreshka.Internals.Text_Codecs.KOI8U is

   use Matreshka.Internals.Strings.Configuration;
   use Matreshka.Internals.Unicode.Characters.Latin;
   use type Matreshka.Internals.Unicode.Code_Unit_32;
   use type Matreshka.Internals.Utf16.Utf16_String_Index;

   Decode_Table : constant
     array (Ada.Streams.Stream_Element range 16#80# .. 16#FF#)
       of Matreshka.Internals.Unicode.Code_Point
            := (16#80# => 16#2500#,   --  BOX DRAWINGS LIGHT HORIZONTAL
                16#81# => 16#2502#,   --  BOX DRAWINGS LIGHT VERTICAL
                16#82# => 16#250C#,   --  BOX DRAWINGS LIGHT DOWN AND RIGHT
                16#83# => 16#2510#,   --  BOX DRAWINGS LIGHT DOWN AND LEFT
                16#84# => 16#2514#,   --  BOX DRAWINGS LIGHT UP AND RIGHT
                16#85# => 16#2518#,   --  BOX DRAWINGS LIGHT UP AND LEFT
                16#86# => 16#251C#,   --  BOX DRAWINGS LIGHT VERTICAL AND RIGHT
                16#87# => 16#2524#,   --  BOX DRAWINGS LIGHT VERTICAL AND LEFT
                16#88# => 16#252C#,   --  BOX DRAWINGS LIGHT DOWN AND HORIZONTAL
                16#89# => 16#2534#,   --  BOX DRAWINGS LIGHT UP AND HORIZONTAL
                16#8A# => 16#253C#,   --  BOX DRAWINGS LIGHT VERTICAL AND
                                      --  HORIZONTAL
                16#8B# => 16#2580#,   --  UPPER HALF BLOCK
                16#8C# => 16#2584#,   --  LOWER HALF BLOCK
                16#8D# => 16#2588#,   --  FULL BLOCK
                16#8E# => 16#258C#,   --  LEFT HALF BLOCK
                16#8F# => 16#2590#,   --  RIGHT HALF BLOCK

                16#90# => 16#2591#,   --  LIGHT SHADE
                16#91# => 16#2592#,   --  MEDIUM SHADE
                16#92# => 16#2593#,   --  DARK SHADE
                16#93# => 16#2320#,   --  TOP HALF INTEGRAL
                16#94# => 16#25A0#,   --  BLACK SQUARE
                16#95# => 16#2219#,   --  BULLET OPERATOR
                16#96# => 16#221A#,   --  SQUARE ROOT
                16#97# => 16#2248#,   --  ALMOST EQUAL TO
                16#98# => 16#2264#,   --  LESS-THAN OR EQUAL TO
                16#99# => 16#2265#,   --  GREATER-THAN OR EQUAL TO
                16#9A# => 16#00A0#,   --  NO-BREAK SPACE
                16#9B# => 16#2321#,   --  BOTTOM HALF INTEGRAL
                16#9C# => 16#00B0#,   --  DEGREE SIGN
                16#9D# => 16#00B2#,   --  SUPERSCRIPT TWO
                16#9E# => 16#00B7#,   --  MIDDLE DOT
                16#9F# => 16#00F7#,   --  DIVISION SIGN

                16#A0# => 16#2550#,   --  BOX DRAWINGS DOUBLE HORIZONTAL
                16#A1# => 16#2551#,   --  BOX DRAWINGS DOUBLE VERTICAL
                16#A2# => 16#2552#,   --  BOX DRAWINGS DOWN SINGLE AND RIGHT
                                      --  DOUBLE
                16#A3# => 16#0451#,   --  CYRILLIC SMALL LETTER IO
                16#A4# => 16#0454#,   --  CYRILLIC SMALL LETTER UKRAINIAN IE
                16#A5# => 16#2554#,   --  BOX DRAWINGS DOUBLE DOWN AND RIGHT
                16#A6# => 16#0456#,   --  CYRILLIC SMALL LETTER
                                      --  BYELORUSSIAN-UKRAINIAN I
                16#A7# => 16#0457#,   --  CYRILLIC SMALL LETTER YI
                16#A8# => 16#2557#,   --  BOX DRAWINGS DOUBLE DOWN AND LEFT
                16#A9# => 16#2558#,   --  BOX DRAWINGS UP SINGLE AND RIGHT
                                      --  DOUBLE
                16#AA# => 16#2559#,   --  BOX DRAWINGS UP DOUBLE AND RIGHT
                                      --  SINGLE
                16#AB# => 16#255A#,   --  BOX DRAWINGS DOUBLE UP AND RIGHT
                16#AC# => 16#255B#,   --  BOX DRAWINGS UP SINGLE AND LEFT
                                      --  DOUBLE
                16#AD# => 16#0491#,   --  CYRILLIC SMALL LETTER GHE WITH UPTURN
                16#AE# => 16#255D#,   --  BOX DRAWINGS DOUBLE UP AND LEFT
                16#AF# => 16#255E#,   --  BOX DRAWINGS VERTICAL SINGLE AND
                                      --  RIGHT DOUBLE

                16#B0# => 16#255F#,   --  BOX DRAWINGS VERTICAL DOUBLE AND
                                      --  RIGHT SINGLE
                16#B1# => 16#2560#,   --  BOX DRAWINGS DOUBLE VERTICAL AND
                                      --  RIGHT
                16#B2# => 16#2561#,   --  BOX DRAWINGS VERTICAL SINGLE AND LEFT
                                      --  DOUBLE
                16#B3# => 16#0401#,   --  CYRILLIC CAPITAL LETTER IO
                16#B4# => 16#0403#,   --  CYRILLIC CAPITAL LETTER GJE
                16#B5# => 16#2563#,   --  BOX DRAWINGS DOUBLE VERTICAL AND LEFT
                16#B6# => 16#0406#,   --  CYRILLIC CAPITAL LETTER
                                      --  BYELORUSSIAN-UKRAINIAN I
                16#B7# => 16#0407#,   --  CYRILLIC CAPITAL LETTER YI
                16#B8# => 16#2566#,   --  BOX DRAWINGS DOUBLE DOWN AND
                                      --  HORIZONTAL
                16#B9# => 16#2567#,   --  BOX DRAWINGS UP SINGLE AND HORIZONTAL
                                      --  DOUBLE
                16#BA# => 16#2568#,   --  BOX DRAWINGS UP DOUBLE AND HORIZONTAL
                                      --  SINGLE
                16#BB# => 16#2569#,   --  BOX DRAWINGS DOUBLE UP AND HORIZONTAL
                16#BC# => 16#256A#,   --  BOX DRAWINGS VERTICAL SINGLE AND
                                      --  HORIZONTAL DOUBLE
                16#BD# => 16#0490#,   --  CYRILLIC CAPITAL LETTER GHE WITH
                                      --  UPTURN
                16#BE# => 16#256C#,   --  BOX DRAWINGS DOUBLE VERTICAL AND
                                      --  HORIZONTAL
                16#BF# => 16#00A9#,   --  COPYRIGHT SIGN

                16#C0# => 16#044E#,   --  CYRILLIC SMALL LETTER YU
                16#C1# => 16#0430#,   --  CYRILLIC SMALL LETTER A
                16#C2# => 16#0431#,   --  CYRILLIC SMALL LETTER BE
                16#C3# => 16#0446#,   --  CYRILLIC SMALL LETTER TSE
                16#C4# => 16#0434#,   --  CYRILLIC SMALL LETTER DE
                16#C5# => 16#0435#,   --  CYRILLIC SMALL LETTER IE
                16#C6# => 16#0444#,   --  CYRILLIC SMALL LETTER EF
                16#C7# => 16#0433#,   --  CYRILLIC SMALL LETTER GHE
                16#C8# => 16#0445#,   --  CYRILLIC SMALL LETTER HA
                16#C9# => 16#0438#,   --  CYRILLIC SMALL LETTER I
                16#CA# => 16#0439#,   --  CYRILLIC SMALL LETTER SHORT I
                16#CB# => 16#043A#,   --  CYRILLIC SMALL LETTER KA
                16#CC# => 16#043B#,   --  CYRILLIC SMALL LETTER EL
                16#CD# => 16#043C#,   --  CYRILLIC SMALL LETTER EM
                16#CE# => 16#043D#,   --  CYRILLIC SMALL LETTER EN
                16#CF# => 16#043E#,   --  CYRILLIC SMALL LETTER O

                16#D0# => 16#043F#,   --  CYRILLIC SMALL LETTER PE
                16#D1# => 16#044F#,   --  CYRILLIC SMALL LETTER YA
                16#D2# => 16#0440#,   --  CYRILLIC SMALL LETTER ER
                16#D3# => 16#0441#,   --  CYRILLIC SMALL LETTER ES
                16#D4# => 16#0442#,   --  CYRILLIC SMALL LETTER TE
                16#D5# => 16#0443#,   --  CYRILLIC SMALL LETTER U
                16#D6# => 16#0436#,   --  CYRILLIC SMALL LETTER ZHE
                16#D7# => 16#0432#,   --  CYRILLIC SMALL LETTER VE
                16#D8# => 16#044C#,   --  CYRILLIC SMALL LETTER SOFT SIGN
                16#D9# => 16#044B#,   --  CYRILLIC SMALL LETTER YERU
                16#DA# => 16#0437#,   --  CYRILLIC SMALL LETTER ZE
                16#DB# => 16#0448#,   --  CYRILLIC SMALL LETTER SHA
                16#DC# => 16#044D#,   --  CYRILLIC SMALL LETTER E
                16#DD# => 16#0449#,   --  CYRILLIC SMALL LETTER SHCHA
                16#DE# => 16#0447#,   --  CYRILLIC SMALL LETTER CHE
                16#DF# => 16#044A#,   --  CYRILLIC SMALL LETTER HARD SIGN

                16#E0# => 16#042E#,   --  CYRILLIC CAPITAL LETTER YU
                16#E1# => 16#0410#,   --  CYRILLIC CAPITAL LETTER A
                16#E2# => 16#0411#,   --  CYRILLIC CAPITAL LETTER BE
                16#E3# => 16#0426#,   --  CYRILLIC CAPITAL LETTER TSE
                16#E4# => 16#0414#,   --  CYRILLIC CAPITAL LETTER DE
                16#E5# => 16#0415#,   --  CYRILLIC CAPITAL LETTER IE
                16#E6# => 16#0424#,   --  CYRILLIC CAPITAL LETTER EF
                16#E7# => 16#0413#,   --  CYRILLIC CAPITAL LETTER GHE
                16#E8# => 16#0425#,   --  CYRILLIC CAPITAL LETTER HA
                16#E9# => 16#0418#,   --  CYRILLIC CAPITAL LETTER I
                16#EA# => 16#0419#,   --  CYRILLIC CAPITAL LETTER SHORT I
                16#EB# => 16#041A#,   --  CYRILLIC CAPITAL LETTER KA
                16#EC# => 16#041B#,   --  CYRILLIC CAPITAL LETTER EL
                16#ED# => 16#041C#,   --  CYRILLIC CAPITAL LETTER EM
                16#EE# => 16#041D#,   --  CYRILLIC CAPITAL LETTER EN
                16#EF# => 16#041E#,   --  CYRILLIC CAPITAL LETTER O

                16#F0# => 16#041F#,   --  CYRILLIC CAPITAL LETTER PE
                16#F1# => 16#042F#,   --  CYRILLIC CAPITAL LETTER YA
                16#F2# => 16#0420#,   --  CYRILLIC CAPITAL LETTER ER
                16#F3# => 16#0421#,   --  CYRILLIC CAPITAL LETTER ES
                16#F4# => 16#0422#,   --  CYRILLIC CAPITAL LETTER TE
                16#F5# => 16#0423#,   --  CYRILLIC CAPITAL LETTER U
                16#F6# => 16#0416#,   --  CYRILLIC CAPITAL LETTER ZHE
                16#F7# => 16#0412#,   --  CYRILLIC CAPITAL LETTER VE
                16#F8# => 16#042C#,   --  CYRILLIC CAPITAL LETTER SOFT SIGN
                16#F9# => 16#042B#,   --  CYRILLIC CAPITAL LETTER YERU
                16#FA# => 16#0417#,   --  CYRILLIC CAPITAL LETTER ZE
                16#FB# => 16#0428#,   --  CYRILLIC CAPITAL LETTER SHA
                16#FC# => 16#042D#,   --  CYRILLIC CAPITAL LETTER E
                16#FD# => 16#0429#,   --  CYRILLIC CAPITAL LETTER SHCHA
                16#FE# => 16#0427#,   --  CYRILLIC CAPITAL LETTER CHE
                16#FF# => 16#042A#);  --  CYRILLIC CAPITAL LETTER HARD SIGN

   Encode_Table_00 : constant
     array (Matreshka.Internals.Unicode.Code_Point range 16#00A0# .. 16#00B7#)
       of Ada.Streams.Stream_Element
            := (16#00A0# => 16#9A#,   --  NO-BREAK SPACE
                16#00A1# => Question_Mark,
                16#00A2# => Question_Mark,
                16#00A3# => Question_Mark,
                16#00A4# => Question_Mark,
                16#00A5# => Question_Mark,
                16#00A6# => Question_Mark,
                16#00A7# => Question_Mark,
                16#00A8# => Question_Mark,
                16#00A9# => 16#BF#,   --  COPYRIGHT SIGN
                16#00AA# => Question_Mark,
                16#00AB# => Question_Mark,
                16#00AC# => Question_Mark,
                16#00AD# => Question_Mark,
                16#00AE# => Question_Mark,
                16#00AF# => Question_Mark,
                16#00B0# => 16#9C#,   --  DEGREE SIGN
                16#00B1# => Question_Mark,
                16#00B2# => 16#9D#,   --  SUPERSCRIPT TWO
                16#00B3# => Question_Mark,
                16#00B4# => Question_Mark,
                16#00B5# => Question_Mark,
                16#00B6# => Question_Mark,
                16#00B7# => 16#9E#);  --  MIDDLE DOT

   Encode_Table_04 : constant
     array (Matreshka.Internals.Unicode.Code_Point range 16#0401# .. 16#0456#)
       of Ada.Streams.Stream_Element
            := (16#0401# => 16#B3#,   --  CYRILLIC CAPITAL LETTER IO
                16#0402# => Question_Mark,
                16#0403# => 16#B4#,   --  CYRILLIC CAPITAL LETTER GJE
                16#0404# => Question_Mark,
                16#0405# => Question_Mark,
                16#0406# => 16#B6#,   --  CYRILLIC CAPITAL LETTER
                                      --  BYELORUSSIAN-UKRAINIAN I
                16#0407# => 16#B7#,   --  CYRILLIC CAPITAL LETTER YI
                16#0408# => Question_Mark,
                16#0409# => Question_Mark,
                16#040A# => Question_Mark,
                16#040B# => Question_Mark,
                16#040C# => Question_Mark,
                16#040D# => Question_Mark,
                16#040E# => Question_Mark,
                16#040F# => Question_Mark,

                16#0410# => 16#E1#,   --  CYRILLIC CAPITAL LETTER A
                16#0411# => 16#E2#,   --  CYRILLIC CAPITAL LETTER BE
                16#0412# => 16#F7#,   --  CYRILLIC CAPITAL LETTER VE
                16#0413# => 16#E7#,   --  CYRILLIC CAPITAL LETTER GHE
                16#0414# => 16#E4#,   --  CYRILLIC CAPITAL LETTER DE
                16#0415# => 16#E5#,   --  CYRILLIC CAPITAL LETTER IE
                16#0416# => 16#F6#,   --  CYRILLIC CAPITAL LETTER ZHE
                16#0417# => 16#FA#,   --  CYRILLIC CAPITAL LETTER ZE
                16#0418# => 16#E9#,   --  CYRILLIC CAPITAL LETTER I
                16#0419# => 16#EA#,   --  CYRILLIC CAPITAL LETTER SHORT I
                16#041A# => 16#EB#,   --  CYRILLIC CAPITAL LETTER KA
                16#041B# => 16#EC#,   --  CYRILLIC CAPITAL LETTER EL
                16#041C# => 16#ED#,   --  CYRILLIC CAPITAL LETTER EM
                16#041D# => 16#EE#,   --  CYRILLIC CAPITAL LETTER EN
                16#041E# => 16#EF#,   --  CYRILLIC CAPITAL LETTER O
                16#041F# => 16#F0#,   --  CYRILLIC CAPITAL LETTER PE

                16#0420# => 16#F2#,   --  CYRILLIC CAPITAL LETTER ER
                16#0421# => 16#F3#,   --  CYRILLIC CAPITAL LETTER ES
                16#0422# => 16#F4#,   --  CYRILLIC CAPITAL LETTER TE
                16#0423# => 16#F5#,   --  CYRILLIC CAPITAL LETTER U
                16#0424# => 16#E6#,   --  CYRILLIC CAPITAL LETTER EF
                16#0425# => 16#E8#,   --  CYRILLIC CAPITAL LETTER HA
                16#0426# => 16#E3#,   --  CYRILLIC CAPITAL LETTER TSE
                16#0427# => 16#FE#,   --  CYRILLIC CAPITAL LETTER CHE
                16#0428# => 16#FB#,   --  CYRILLIC CAPITAL LETTER SHA
                16#0429# => 16#FD#,   --  CYRILLIC CAPITAL LETTER SHCHA
                16#042A# => 16#FF#,   --  CYRILLIC CAPITAL LETTER HARD SIGN
                16#042B# => 16#F9#,   --  CYRILLIC CAPITAL LETTER YERU
                16#042C# => 16#F8#,   --  CYRILLIC CAPITAL LETTER SOFT SIGN
                16#042D# => 16#FC#,   --  CYRILLIC CAPITAL LETTER E
                16#042E# => 16#E0#,   --  CYRILLIC CAPITAL LETTER YU
                16#042F# => 16#F1#,   --  CYRILLIC CAPITAL LETTER YA

                16#0430# => 16#C1#,   --  CYRILLIC SMALL LETTER A
                16#0431# => 16#C2#,   --  CYRILLIC SMALL LETTER BE
                16#0432# => 16#D7#,   --  CYRILLIC SMALL LETTER VE
                16#0433# => 16#C7#,   --  CYRILLIC SMALL LETTER GHE
                16#0434# => 16#C4#,   --  CYRILLIC SMALL LETTER DE
                16#0435# => 16#C5#,   --  CYRILLIC SMALL LETTER IE
                16#0436# => 16#D6#,   --  CYRILLIC SMALL LETTER ZHE
                16#0437# => 16#DA#,   --  CYRILLIC SMALL LETTER ZE
                16#0438# => 16#C9#,   --  CYRILLIC SMALL LETTER I
                16#0439# => 16#CA#,   --  CYRILLIC SMALL LETTER SHORT I
                16#043A# => 16#CB#,   --  CYRILLIC SMALL LETTER KA
                16#043B# => 16#CC#,   --  CYRILLIC SMALL LETTER EL
                16#043C# => 16#CD#,   --  CYRILLIC SMALL LETTER EM
                16#043D# => 16#CE#,   --  CYRILLIC SMALL LETTER EN
                16#043E# => 16#CF#,   --  CYRILLIC SMALL LETTER O
                16#043F# => 16#D0#,   --  CYRILLIC SMALL LETTER PE

                16#0440# => 16#D2#,   --  CYRILLIC SMALL LETTER ER
                16#0441# => 16#D3#,   --  CYRILLIC SMALL LETTER ES
                16#0442# => 16#D4#,   --  CYRILLIC SMALL LETTER TE
                16#0443# => 16#D5#,   --  CYRILLIC SMALL LETTER U
                16#0444# => 16#C6#,   --  CYRILLIC SMALL LETTER EF
                16#0445# => 16#C8#,   --  CYRILLIC SMALL LETTER HA
                16#0446# => 16#C3#,   --  CYRILLIC SMALL LETTER TSE
                16#0447# => 16#DE#,   --  CYRILLIC SMALL LETTER CHE
                16#0448# => 16#DB#,   --  CYRILLIC SMALL LETTER SHA
                16#0449# => 16#DD#,   --  CYRILLIC SMALL LETTER SHCHA
                16#044A# => 16#DF#,   --  CYRILLIC SMALL LETTER HARD SIGN
                16#044B# => 16#D9#,   --  CYRILLIC SMALL LETTER YERU
                16#044C# => 16#D8#,   --  CYRILLIC SMALL LETTER SOFT SIGN
                16#044D# => 16#DC#,   --  CYRILLIC SMALL LETTER E
                16#044E# => 16#C0#,   --  CYRILLIC SMALL LETTER YU
                16#044F# => 16#D1#,   --  CYRILLIC SMALL LETTER YA

                16#0450# => Question_Mark,
                16#0451# => 16#A3#,   --  CYRILLIC SMALL LETTER IO
                16#0452# => Question_Mark,
                16#0453# => Question_Mark,
                16#0454# => 16#A4#,   --  CYRILLIC SMALL LETTER UKRAINIAN IE
                16#0455# => Question_Mark,
                16#0456# => 16#A6#,   --  CYRILLIC SMALL LETTER
                                      --  BYELORUSSIAN-UKRAINIAN I
                16#0457# => 16#A7#);  --  CYRILLIC SMALL LETTER YI

   Encode_Table_25 : constant
     array (Matreshka.Internals.Unicode.Code_Point range 16#2500# .. 16#25A0#)
       of Ada.Streams.Stream_Element
            := (16#2500# => 16#80#,   --  BOX DRAWINGS LIGHT HORIZONTAL
                16#2501# => Question_Mark,
                16#2502# => 16#81#,   --  BOX DRAWINGS LIGHT VERTICAL
                16#2503# => Question_Mark,
                16#2504# => Question_Mark,
                16#2505# => Question_Mark,
                16#2506# => Question_Mark,
                16#2507# => Question_Mark,
                16#2508# => Question_Mark,
                16#2509# => Question_Mark,
                16#250A# => Question_Mark,
                16#250B# => Question_Mark,
                16#250C# => 16#82#,   --  BOX DRAWINGS LIGHT DOWN AND RIGHT
                16#250D# => Question_Mark,
                16#250E# => Question_Mark,
                16#250F# => Question_Mark,

                16#2510# => 16#83#,   --  BOX DRAWINGS LIGHT DOWN AND LEFT
                16#2511# => Question_Mark,
                16#2512# => Question_Mark,
                16#2513# => Question_Mark,
                16#2514# => 16#84#,   --  BOX DRAWINGS LIGHT UP AND RIGHT
                16#2515# => Question_Mark,
                16#2516# => Question_Mark,
                16#2517# => Question_Mark,
                16#2518# => 16#85#,   --  BOX DRAWINGS LIGHT UP AND LEFT
                16#2519# => Question_Mark,
                16#251A# => Question_Mark,
                16#251B# => Question_Mark,
                16#251C# => 16#86#,   --  BOX DRAWINGS LIGHT VERTICAL AND RIGHT
                16#251D# => Question_Mark,
                16#251E# => Question_Mark,
                16#251F# => Question_Mark,

                16#2520# => Question_Mark,
                16#2521# => Question_Mark,
                16#2522# => Question_Mark,
                16#2523# => Question_Mark,
                16#2524# => 16#87#,   --  BOX DRAWINGS LIGHT VERTICAL AND LEFT
                16#2525# => Question_Mark,
                16#2526# => Question_Mark,
                16#2527# => Question_Mark,
                16#2528# => Question_Mark,
                16#2529# => Question_Mark,
                16#252A# => Question_Mark,
                16#252B# => Question_Mark,
                16#252C# => 16#88#,   --  BOX DRAWINGS LIGHT DOWN AND HORIZONTAL
                16#252D# => Question_Mark,
                16#252E# => Question_Mark,
                16#252F# => Question_Mark,

                16#2530# => Question_Mark,
                16#2531# => Question_Mark,
                16#2532# => Question_Mark,
                16#2533# => Question_Mark,
                16#2534# => 16#89#,   --  BOX DRAWINGS LIGHT UP AND HORIZONTAL
                16#2535# => Question_Mark,
                16#2536# => Question_Mark,
                16#2537# => Question_Mark,
                16#2538# => Question_Mark,
                16#2539# => Question_Mark,
                16#253A# => Question_Mark,
                16#253B# => Question_Mark,
                16#253C# => 16#8A#,   --  BOX DRAWINGS LIGHT VERTICAL AND
                                      --  HORIZONTAL
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

                16#2550# => 16#A0#,   --  BOX DRAWINGS DOUBLE HORIZONTAL
                16#2551# => 16#A1#,   --  BOX DRAWINGS DOUBLE VERTICAL
                16#2552# => 16#A2#,   --  BOX DRAWINGS DOWN SINGLE AND RIGHT
                                      --  DOUBLE
                16#2553# => Question_Mark,
                16#2554# => 16#A5#,   --  BOX DRAWINGS DOUBLE DOWN AND RIGHT
                16#2555# => Question_Mark,
                16#2556# => Question_Mark,
                16#2557# => 16#A8#,   --  BOX DRAWINGS DOUBLE DOWN AND LEFT
                16#2558# => 16#A9#,   --  BOX DRAWINGS UP SINGLE AND RIGHT
                                      --  DOUBLE
                16#2559# => 16#AA#,   --  BOX DRAWINGS UP DOUBLE AND RIGHT
                                      --  SINGLE
                16#255A# => 16#AB#,   --  BOX DRAWINGS DOUBLE UP AND RIGHT
                16#255B# => 16#AC#,   --  BOX DRAWINGS UP SINGLE AND LEFT
                                      --  DOUBLE
                16#255C# => Question_Mark,
                16#255D# => 16#AE#,   --  BOX DRAWINGS DOUBLE UP AND LEFT
                16#255E# => 16#AF#,   --  BOX DRAWINGS VERTICAL SINGLE AND
                                      --  RIGHT DOUBLE
                16#255F# => 16#B0#,   --  BOX DRAWINGS VERTICAL DOUBLE AND
                                      --  RIGHT SINGLE

                16#2560# => 16#B1#,   --  BOX DRAWINGS DOUBLE VERTICAL AND
                                      --  RIGHT
                16#2561# => 16#B2#,   --  BOX DRAWINGS VERTICAL SINGLE AND LEFT
                                      --  DOUBLE
                16#2562# => Question_Mark,
                16#2563# => 16#B5#,   --  BOX DRAWINGS DOUBLE VERTICAL AND LEFT
                16#2564# => Question_Mark,
                16#2565# => Question_Mark,
                16#2566# => 16#B8#,   --  BOX DRAWINGS DOUBLE DOWN AND
                                      --  HORIZONTAL
                16#2567# => 16#B9#,   --  BOX DRAWINGS UP SINGLE AND HORIZONTAL
                                      --  DOUBLE
                16#2568# => 16#BA#,   --  BOX DRAWINGS UP DOUBLE AND HORIZONTAL
                                      --  SINGLE
                16#2569# => 16#BB#,   --  BOX DRAWINGS DOUBLE UP AND HORIZONTAL
                16#256A# => 16#BC#,   --  BOX DRAWINGS VERTICAL SINGLE AND
                                      --  HORIZONTAL DOUBLE
                16#256B# => Question_Mark,
                16#256C# => 16#BE#,   --  BOX DRAWINGS DOUBLE VERTICAL AND
                                      --  HORIZONTAL
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

                16#2580# => 16#8B#,   --  UPPER HALF BLOCK
                16#2581# => Question_Mark,
                16#2582# => Question_Mark,
                16#2583# => Question_Mark,
                16#2584# => 16#8C#,   --  LOWER HALF BLOCK
                16#2585# => Question_Mark,
                16#2586# => Question_Mark,
                16#2587# => Question_Mark,
                16#2588# => 16#8D#,   --  FULL BLOCK
                16#2589# => Question_Mark,
                16#258A# => Question_Mark,
                16#258B# => Question_Mark,
                16#258C# => 16#8E#,   --  LEFT HALF BLOCK
                16#258D# => Question_Mark,
                16#258E# => Question_Mark,
                16#258F# => Question_Mark,

                16#2590# => 16#8F#,   --  RIGHT HALF BLOCK
                16#2591# => 16#90#,   --  LIGHT SHADE
                16#2592# => 16#91#,   --  MEDIUM SHADE
                16#2593# => 16#92#,   --  DARK SHADE
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

                16#25A0# => 16#94#);  --  BLACK SQUARE

   -------------------
   -- Decode_Append --
   -------------------

   overriding procedure Decode_Append
    (Self   : in out KOI8U_Decoder;
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
              KOI8U_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_Raw'Access);

         when XML_1_0 =>
            return
              KOI8U_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_XML10'Access);

         when XML_1_1 =>
            return
              KOI8U_Decoder'
               (Skip_LF          => False,
                Unchecked_Append => Unchecked_Append_XML11'Access);
      end case;
   end Decoder;

   ------------
   -- Encode --
   ------------

   overriding procedure Encode
    (Self   : in out KOI8U_Encoder;
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

            elsif Code in 16#0401# .. 16#0456# then
               --  Table translation, range 0401 .. 0456.

               Element := Encode_Table_04 (Code);

            elsif Code in 16#00A0# .. 16#00B7# then
               --  Table translation, range 00A0 .. 00B7.

               Element := Encode_Table_00 (Code);

            elsif Code in 16#2500# .. 16#25A0# then
               --  Table translation, range 2500 .. 25A0.

               Element := Encode_Table_25 (Code);

            elsif Code = 16#00F7# then
               --  16#00F7# => 16#9F#  --  DIVISION SIGN

               Element := 16#9F#;

            elsif Code = 16#0490# then
               --  16#0490# => 16#BD#  --  CYRILLIC CAPITAL LETTER GHE WITH
               --                      --  UPTURN

               Element := 16#BD#;

            elsif Code = 16#0491# then
               --  16#0491# => 16#AD#  --  CYRILLIC SMALL LETTER GHE WITH UPTURN

               Element := 16#AD#;

            elsif Code = 16#2219# then
               --  16#2219# => 16#95#  --  BULLET OPERATOR

               Element := 16#95#;

            elsif Code = 16#221A# then
               --  16#221A# => 16#96#  --  SQUARE ROOT

               Element := 16#96#;

            elsif Code = 16#2248# then
               --  16#2248# => 16#97#  --  ALMOST EQUAL TO

               Element := 16#97#;

            elsif Code = 16#2264# then
               --  16#2264# => 16#98#  --  LESS-THAN OR EQUAL TO

               Element := 16#98#;

            elsif Code = 16#2265# then
               --  16#2265# => 16#99#  --  GREATER-THAN OR EQUAL TO

               Element := 16#99#;

            elsif Code = 16#2320# then
               --  16#2320# => 16#93#  --  TOP HALF INTEGRAL

               Element := 16#93#;

            elsif Code = 16#2321# then
               --  16#2321# => 16#9B#  --  BOTTOM HALF INTEGRAL

               Element := 16#9B#;

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
      return KOI8U_Encoder'(null record);
   end Encoder;

   --------------
   -- Is_Error --
   --------------

   overriding function Is_Error (Self : KOI8U_Decoder) return Boolean is
      pragma Unreferenced (Self);

   begin
      return False;
   end Is_Error;

   -------------------
   -- Is_Mailformed --
   -------------------

   overriding function Is_Mailformed
    (Self : KOI8U_Decoder) return Boolean
   is
      pragma Unreferenced (Self);

   begin
      return False;
   end Is_Mailformed;

end Matreshka.Internals.Text_Codecs.KOI8U;
