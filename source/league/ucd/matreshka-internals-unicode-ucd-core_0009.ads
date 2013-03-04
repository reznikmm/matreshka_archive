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
-- Copyright © 2012-2013, Vadim Godunko <vgodunko@gmail.com>                --
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

package Matreshka.Internals.Unicode.Ucd.Core_0009 is

   pragma Preelaborate;

   Group_0009 : aliased constant Core_Second_Stage
     := (16#00# .. 16#02# =>  --  0900 .. 0902
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#03#           =>  --  0903
          (Spacing_Mark, 0,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#29#           =>  --  0929
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#31#           =>  --  0931
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#34#           =>  --  0934
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#3A#           =>  --  093A
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3B#           =>  --  093B
          (Spacing_Mark, 0,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3C#           =>  --  093C
          (Nonspacing_Mark, 7,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3E# .. 16#40# =>  --  093E .. 0940
          (Spacing_Mark, 0,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#41# .. 16#48# =>  --  0941 .. 0948
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#49# .. 16#4C# =>  --  0949 .. 094C
          (Spacing_Mark, 0,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D#           =>  --  094D
          (Nonspacing_Mark, 9,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4E# .. 16#4F# =>  --  094E .. 094F
          (Spacing_Mark, 0,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#51#           =>  --  0951
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#52#           =>  --  0952
          (Nonspacing_Mark, 220,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#53# .. 16#54# =>  --  0953 .. 0954
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#55# .. 16#57# =>  --  0955 .. 0957
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#58# .. 16#5F# =>  --  0958 .. 095F
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (No, No, No, No), Canonical,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Composition_Exclusion
              | Full_Composition_Exclusion
              | Expands_On_NFC
              | Expands_On_NFD
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#62# .. 16#63# =>  --  0962 .. 0963
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#64# .. 16#65# =>  --  0964 .. 0965
          (Other_Punctuation, 0,
           Other, Other, S_Term, Break_After,
           (Yes, Yes, Yes, Yes), None,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#66# .. 16#6F# =>  --  0966 .. 096F
          (Decimal_Number, 0,
           Other, Numeric, Numeric, Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#70#           =>  --  0970
          (Other_Punctuation, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#71#           =>  --  0971
          (Modifier_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#78#           =>  --  0978
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#80#           =>  --  0980
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#81#           =>  --  0981
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#82# .. 16#83# =>  --  0982 .. 0983
          (Spacing_Mark, 0,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#84#           =>  --  0984
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#8D# .. 16#8E# =>  --  098D .. 098E
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#91# .. 16#92# =>  --  0991 .. 0992
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#A9#           =>  --  09A9
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#B1#           =>  --  09B1
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#B3# .. 16#B5# =>  --  09B3 .. 09B5
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#BA# .. 16#BB# =>  --  09BA .. 09BB
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#BC#           =>  --  09BC
          (Nonspacing_Mark, 7,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BE#           =>  --  09BE
          (Spacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BF# .. 16#C0# =>  --  09BF .. 09C0
          (Spacing_Mark, 0,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C1# .. 16#C4# =>  --  09C1 .. 09C4
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C5# .. 16#C6# =>  --  09C5 .. 09C6
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#C7# .. 16#C8# =>  --  09C7 .. 09C8
          (Spacing_Mark, 0,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C9# .. 16#CA# =>  --  09C9 .. 09CA
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#CB# .. 16#CC# =>  --  09CB .. 09CC
          (Spacing_Mark, 0,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Yes, No, Yes, No), Canonical,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#CD#           =>  --  09CD
          (Nonspacing_Mark, 9,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CF# .. 16#D6# =>  --  09CF .. 09D6
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#D7#           =>  --  09D7
          (Spacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D8# .. 16#DB# =>  --  09D8 .. 09DB
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#DC# .. 16#DD# =>  --  09DC .. 09DD
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (No, No, No, No), Canonical,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Composition_Exclusion
              | Full_Composition_Exclusion
              | Expands_On_NFC
              | Expands_On_NFD
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#DE#           =>  --  09DE
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#DF#           =>  --  09DF
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (No, No, No, No), Canonical,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Composition_Exclusion
              | Full_Composition_Exclusion
              | Expands_On_NFC
              | Expands_On_NFD
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E2# .. 16#E3# =>  --  09E2 .. 09E3
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E4# .. 16#E5# =>  --  09E4 .. 09E5
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#E6# .. 16#EF# =>  --  09E6 .. 09EF
          (Decimal_Number, 0,
           Other, Numeric, Numeric, Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F2# .. 16#F3# =>  --  09F2 .. 09F3
          (Currency_Symbol, 0,
           Other, Other, Other, Postfix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#F4# .. 16#F8# =>  --  09F4 .. 09F8
          (Other_Number, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#F9#           =>  --  09F9
          (Other_Number, 0,
           Other, Other, Other, Postfix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#FA#           =>  --  09FA
          (Other_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#FB#           =>  --  09FB
          (Currency_Symbol, 0,
           Other, Other, Other, Prefix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#FC# .. 16#FF# =>  --  09FC .. 09FF
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         others           =>
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_0009;
