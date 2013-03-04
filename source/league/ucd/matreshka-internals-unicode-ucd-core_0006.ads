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

package Matreshka.Internals.Unicode.Ucd.Core_0006 is

   pragma Preelaborate;

   Group_0006 : aliased constant Core_Second_Stage
     := (16#00# .. 16#04# =>  --  0600 .. 0604
          (Format, 0,
           Control, Format, Format, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Case_Ignorable => True,
            others => False)),
         16#05#           =>  --  0605
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#06# .. 16#08# =>  --  0606 .. 0608
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#09# .. 16#0A# =>  --  0609 .. 060A
          (Other_Punctuation, 0,
           Other, Other, Other, Postfix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#0B#           =>  --  060B
          (Currency_Symbol, 0,
           Other, Other, Other, Postfix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#0C#           =>  --  060C
          (Other_Punctuation, 0,
           Other, Mid_Num, S_Continue, Infix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#0D#           =>  --  060D
          (Other_Punctuation, 0,
           Other, Mid_Num, S_Continue, Infix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#0E# .. 16#0F# =>  --  060E .. 060F
          (Other_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#10# .. 16#17# =>  --  0610 .. 0617
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#18#           =>  --  0618
          (Nonspacing_Mark, 30,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#19#           =>  --  0619
          (Nonspacing_Mark, 31,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#1A#           =>  --  061A
          (Nonspacing_Mark, 32,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#1B#           =>  --  061B
          (Other_Punctuation, 0,
           Other, Other, Other, Exclamation,
           (Yes, Yes, Yes, Yes), None,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#1C# .. 16#1D# =>  --  061C .. 061D
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#1E#           =>  --  061E
          (Other_Punctuation, 0,
           Other, Other, Other, Exclamation,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#1F#           =>  --  061F
          (Other_Punctuation, 0,
           Other, Other, S_Term, Exclamation,
           (Yes, Yes, Yes, Yes), None,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#22# .. 16#26# =>  --  0622 .. 0626
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
         16#40#           =>  --  0640
          (Modifier_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Extender
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#4B#           =>  --  064B
          (Nonspacing_Mark, 27,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4C#           =>  --  064C
          (Nonspacing_Mark, 28,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D#           =>  --  064D
          (Nonspacing_Mark, 29,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4E#           =>  --  064E
          (Nonspacing_Mark, 30,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4F#           =>  --  064F
          (Nonspacing_Mark, 31,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#50#           =>  --  0650
          (Nonspacing_Mark, 32,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#51#           =>  --  0651
          (Nonspacing_Mark, 33,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#52#           =>  --  0652
          (Nonspacing_Mark, 34,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#53# .. 16#54# =>  --  0653 .. 0654
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#55#           =>  --  0655
          (Nonspacing_Mark, 220,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#56#           =>  --  0656
          (Nonspacing_Mark, 220,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#57#           =>  --  0657
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#58#           =>  --  0658
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#59# .. 16#5B# =>  --  0659 .. 065B
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5C#           =>  --  065C
          (Nonspacing_Mark, 220,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5D# .. 16#5E# =>  --  065D .. 065E
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5F#           =>  --  065F
          (Nonspacing_Mark, 220,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#60# .. 16#69# =>  --  0660 .. 0669
          (Decimal_Number, 0,
           Other, Numeric, Numeric, Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#6A#           =>  --  066A
          (Other_Punctuation, 0,
           Other, Other, Other, Postfix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#6B#           =>  --  066B
          (Other_Punctuation, 0,
           Other, Numeric, Numeric, Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#6C#           =>  --  066C
          (Other_Punctuation, 0,
           Other, Mid_Num, Numeric, Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#6D#           =>  --  066D
          (Other_Punctuation, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#70#           =>  --  0670
          (Nonspacing_Mark, 35,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#73#           =>  --  0673
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Deprecated
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#75# .. 16#78# =>  --  0675 .. 0678
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C0#           =>  --  06C0
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
         16#C2#           =>  --  06C2
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
         16#D3#           =>  --  06D3
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
         16#D4#           =>  --  06D4
          (Other_Punctuation, 0,
           Other, Other, S_Term, Exclamation,
           (Yes, Yes, Yes, Yes), None,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#D6# .. 16#DC# =>  --  06D6 .. 06DC
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#DD#           =>  --  06DD
          (Format, 0,
           Control, Format, Format, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Case_Ignorable => True,
            others => False)),
         16#DE#           =>  --  06DE
          (Other_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#DF# .. 16#E0# =>  --  06DF .. 06E0
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E1# .. 16#E2# =>  --  06E1 .. 06E2
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E3#           =>  --  06E3
          (Nonspacing_Mark, 220,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E4#           =>  --  06E4
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E5# .. 16#E6# =>  --  06E5 .. 06E6
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
         16#E7# .. 16#E8# =>  --  06E7 .. 06E8
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E9#           =>  --  06E9
          (Other_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#EA#           =>  --  06EA
          (Nonspacing_Mark, 220,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#EB# .. 16#EC# =>  --  06EB .. 06EC
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#ED#           =>  --  06ED
          (Nonspacing_Mark, 220,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F0# .. 16#F9# =>  --  06F0 .. 06F9
          (Decimal_Number, 0,
           Other, Numeric, Numeric, Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#FD# .. 16#FE# =>  --  06FD .. 06FE
          (Other_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
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

end Matreshka.Internals.Unicode.Ucd.Core_0006;
