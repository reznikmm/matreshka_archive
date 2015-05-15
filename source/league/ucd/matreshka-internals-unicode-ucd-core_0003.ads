------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--        Localization, Internationalization, Globalization for Ada         --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012-2015, Vadim Godunko <vgodunko@gmail.com>                --
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

pragma Restrictions (No_Elaboration_Code);
--  GNAT: enforce generation of preinitialized data section instead of
--  generation of elaboration code.

package Matreshka.Internals.Unicode.Ucd.Core_0003 is

   pragma Preelaborate;

   Group_0003 : aliased constant Core_Second_Stage
     := (16#00# .. 16#04# =>  --  0300 .. 0304
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#06# .. 16#0C# =>  --  0306 .. 030C
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#0F#           =>  --  030F
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#11#           =>  --  0311
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#13# .. 16#14# =>  --  0313 .. 0314
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#1B#           =>  --  031B
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#23# .. 16#28# =>  --  0323 .. 0328
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2D# .. 16#2E# =>  --  032D .. 032E
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#30# .. 16#31# =>  --  0330 .. 0331
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#38#           =>  --  0338
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#40# .. 16#41# =>  --  0340 .. 0341
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Combining_Mark,
           (No, No, No, No), Canonical,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Full_Composition_Exclusion
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#42#           =>  --  0342
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#43#           =>  --  0343
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Combining_Mark,
           (No, No, No, No), Canonical,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Full_Composition_Exclusion
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#44#           =>  --  0344
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Combining_Mark,
           (No, No, No, No), Canonical,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Full_Composition_Exclusion
              | Expands_On_NFC
              | Expands_On_NFD
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#45#           =>  --  0345
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Diacritic
              | Other_Alphabetic
              | Other_Lowercase
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Extend
              | ID_Continue
              | Lowercase
              | XID_Continue
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#4F#           =>  --  034F
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Glue,
           (Yes, Yes, Yes, Yes), None,
           (Other_Default_Ignorable_Code_Point
              | Case_Ignorable
              | Default_Ignorable_Code_Point
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#58# .. 16#5B# =>  --  0358 .. 035B
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5C#           =>  --  035C
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Glue,
           (Yes, Yes, Yes, Yes), None,
           (Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5D# .. 16#62# =>  --  035D .. 0362
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Glue,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#63# .. 16#6F# =>  --  0363 .. 036F
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#70#           =>  --  0370
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#71#           =>  --  0371
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#72#           =>  --  0372
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#73#           =>  --  0373
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#74#           =>  --  0374
          (Modifier_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (No, No, No, No), Canonical,
           (Diacritic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Full_Composition_Exclusion
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#75#           =>  --  0375
          (Modifier_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base => True,
            others => False)),
         16#76#           =>  --  0376
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#77#           =>  --  0377
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#78# .. 16#79# =>  --  0378 .. 0379
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#7A#           =>  --  037A
          (Modifier_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7B# .. 16#7D# =>  --  037B .. 037D
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#7E#           =>  --  037E
          (Other_Punctuation, Neutral,
           Other, Mid_Num, Other, Infix_Numeric,
           (No, No, No, No), Canonical,
           (Terminal_Punctuation
              | Grapheme_Base
              | Full_Composition_Exclusion
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7F# .. 16#83# =>  --  037F .. 0383
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#84#           =>  --  0384
          (Modifier_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#85#           =>  --  0385
          (Modifier_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Yes, No, No, No), Canonical,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Expands_On_NFD
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#86#           =>  --  0386
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#87#           =>  --  0387
          (Other_Punctuation, Neutral,
           Other, Mid_Letter, Other, Alphabetic,
           (No, No, No, No), Canonical,
           (Other_ID_Continue
              | Terminal_Punctuation
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | XID_Continue
              | Full_Composition_Exclusion
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#88# .. 16#8A# =>  --  0388 .. 038A
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#8B#           =>  --  038B
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#8C#           =>  --  038C
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#8D#           =>  --  038D
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#8E# .. 16#8F# =>  --  038E .. 038F
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#90#           =>  --  0390
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#91# .. 16#A1# =>  --  0391 .. 03A1
          (Uppercase_Letter, Ambiguous,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A2#           =>  --  03A2
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#A3# .. 16#A9# =>  --  03A3 .. 03A9
          (Uppercase_Letter, Ambiguous,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#AA# .. 16#AB# =>  --  03AA .. 03AB
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#AC# .. 16#B0# =>  --  03AC .. 03B0
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#B1# .. 16#C1# =>  --  03B1 .. 03C1
          (Lowercase_Letter, Ambiguous,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C2#           =>  --  03C2
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C3# .. 16#C9# =>  --  03C3 .. 03C9
          (Lowercase_Letter, Ambiguous,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#CA# .. 16#CE# =>  --  03CA .. 03CE
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#CF#           =>  --  03CF
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#D0# .. 16#D1# =>  --  03D0 .. 03D1
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Other_Math
              | Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#D2#           =>  --  03D2
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#D3# .. 16#D4# =>  --  03D3 .. 03D4
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, No, No, No), Canonical,
           (Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#D5#           =>  --  03D5
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Other_Math
              | Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#D6#           =>  --  03D6
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#D7#           =>  --  03D7
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D8#           =>  --  03D8
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#D9#           =>  --  03D9
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#DA#           =>  --  03DA
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#DB#           =>  --  03DB
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#DC#           =>  --  03DC
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#DD#           =>  --  03DD
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#DE#           =>  --  03DE
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#DF#           =>  --  03DF
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E0#           =>  --  03E0
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E1#           =>  --  03E1
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E2#           =>  --  03E2
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E3#           =>  --  03E3
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E4#           =>  --  03E4
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E5#           =>  --  03E5
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E6#           =>  --  03E6
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E7#           =>  --  03E7
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E8#           =>  --  03E8
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E9#           =>  --  03E9
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#EA#           =>  --  03EA
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#EB#           =>  --  03EB
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#EC#           =>  --  03EC
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#ED#           =>  --  03ED
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#EE#           =>  --  03EE
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#EF#           =>  --  03EF
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F0# .. 16#F1# =>  --  03F0 .. 03F1
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Other_Math
              | Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F2#           =>  --  03F2
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F3#           =>  --  03F3
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Soft_Dotted
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F4#           =>  --  03F4
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Other_Math
              | Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F5#           =>  --  03F5
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Other_Math
              | Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F6#           =>  --  03F6
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#F7#           =>  --  03F7
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F8#           =>  --  03F8
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F9#           =>  --  03F9
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#FA#           =>  --  03FA
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#FB#           =>  --  03FB
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#FC#           =>  --  03FC
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#FD# .. 16#FF# =>  --  03FD .. 03FF
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         others           =>
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_0003;
