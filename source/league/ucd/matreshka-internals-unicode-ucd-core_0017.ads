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

package Matreshka.Internals.Unicode.Ucd.Core_0017 is

   pragma Preelaborate;

   Group_0017 : aliased constant Core_Second_Stage
     := (16#0D#           =>  --  170D
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#12# .. 16#13# =>  --  1712 .. 1713
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#14#           =>  --  1714
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Case_Ignorable
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#15# .. 16#1F# =>  --  1715 .. 171F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#32# .. 16#33# =>  --  1732 .. 1733
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#34#           =>  --  1734
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Case_Ignorable
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#35# .. 16#36# =>  --  1735 .. 1736
          (Other_Punctuation, Neutral,
           Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#37# .. 16#3F# =>  --  1737 .. 173F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#52# .. 16#53# =>  --  1752 .. 1753
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#54# .. 16#5F# =>  --  1754 .. 175F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#6D#           =>  --  176D
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#71#           =>  --  1771
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#72# .. 16#73# =>  --  1772 .. 1773
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#74# .. 16#7F# =>  --  1774 .. 177F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#80# .. 16#A2# =>  --  1780 .. 17A2
          (Other_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A3# .. 16#A4# =>  --  17A3 .. 17A4
          (Other_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Deprecated
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A5# .. 16#B3# =>  --  17A5 .. 17B3
          (Other_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B4# .. 16#B5# =>  --  17B4 .. 17B5
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Default_Ignorable_Code_Point
              | Case_Ignorable
              | Default_Ignorable_Code_Point
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B6#           =>  --  17B6
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B7# .. 16#BD# =>  --  17B7 .. 17BD
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BE# .. 16#C5# =>  --  17BE .. 17C5
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C6#           =>  --  17C6
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C7# .. 16#C8# =>  --  17C7 .. 17C8
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C9# .. 16#D1# =>  --  17C9 .. 17D1
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D2#           =>  --  17D2
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D3#           =>  --  17D3
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D4# .. 16#D5# =>  --  17D4 .. 17D5
          (Other_Punctuation, Neutral,
           Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#D6#           =>  --  17D6
          (Other_Punctuation, Neutral,
           Other, Other, Other, Nonstarter,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#D7#           =>  --  17D7
          (Modifier_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D8#           =>  --  17D8
          (Other_Punctuation, Neutral,
           Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#D9#           =>  --  17D9
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#DA#           =>  --  17DA
          (Other_Punctuation, Neutral,
           Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#DB#           =>  --  17DB
          (Currency_Symbol, Neutral,
           Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#DC#           =>  --  17DC
          (Other_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#DD#           =>  --  17DD
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#DE# .. 16#DF# =>  --  17DE .. 17DF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#E0# .. 16#E9# =>  --  17E0 .. 17E9
          (Decimal_Number, Neutral,
           Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#EA# .. 16#EF# =>  --  17EA .. 17EF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#F0# .. 16#F9# =>  --  17F0 .. 17F9
          (Other_Number, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#FA# .. 16#FF# =>  --  17FA .. 17FF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_0017;
