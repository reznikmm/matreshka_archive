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

package Matreshka.Internals.Unicode.Ucd.Core_00AA is

   pragma Preelaborate;

   Group_00AA : aliased constant Core_Second_Stage
     := (16#00# .. 16#28# =>  --  AA00 .. AA28
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#29# .. 16#2E# =>  --  AA29 .. AA2E
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2F# .. 16#30# =>  --  AA2F .. AA30
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#31# .. 16#32# =>  --  AA31 .. AA32
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#33# .. 16#34# =>  --  AA33 .. AA34
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#35# .. 16#36# =>  --  AA35 .. AA36
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#37# .. 16#3F# =>  --  AA37 .. AA3F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#40# .. 16#42# =>  --  AA40 .. AA42
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#43#           =>  --  AA43
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#44# .. 16#4B# =>  --  AA44 .. AA4B
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#4C#           =>  --  AA4C
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D#           =>  --  AA4D
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4E# .. 16#4F# =>  --  AA4E .. AA4F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#50# .. 16#59# =>  --  AA50 .. AA59
          (Decimal_Number, Neutral,
           Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5A# .. 16#5B# =>  --  AA5A .. AA5B
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#5C#           =>  --  AA5C
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#5D# .. 16#5F# =>  --  AA5D .. AA5F
          (Other_Punctuation, Neutral,
           Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#70#           =>  --  AA70
          (Modifier_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Extender
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#77# .. 16#79# =>  --  AA77 .. AA79
          (Other_Symbol, Neutral,
           Other, Other, Other, Complex_Context,
           (Grapheme_Base => True,
            others => False)),
         16#7B#           =>  --  AA7B
          (Spacing_Mark, Neutral,
           Other, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#7C#           =>  --  AA7C
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#7D#           =>  --  AA7D
          (Spacing_Mark, Neutral,
           Other, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B0#           =>  --  AAB0
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B2# .. 16#B4# =>  --  AAB2 .. AAB4
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B5# .. 16#B6# =>  --  AAB5 .. AAB6
          (Other_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Logical_Order_Exception
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B7# .. 16#B8# =>  --  AAB7 .. AAB8
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B9#           =>  --  AAB9
          (Other_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Logical_Order_Exception
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BB# .. 16#BC# =>  --  AABB .. AABC
          (Other_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Logical_Order_Exception
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BE#           =>  --  AABE
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BF#           =>  --  AABF
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C0#           =>  --  AAC0
          (Other_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C1#           =>  --  AAC1
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C2#           =>  --  AAC2
          (Other_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C3# .. 16#DA# =>  --  AAC3 .. AADA
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#DD#           =>  --  AADD
          (Modifier_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Extender
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#DE#           =>  --  AADE
          (Other_Punctuation, Neutral,
           Other, Other, Other, Complex_Context,
           (Grapheme_Base => True,
            others => False)),
         16#DF#           =>  --  AADF
          (Other_Punctuation, Neutral,
           Other, Other, Other, Complex_Context,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#E0# .. 16#EA# =>  --  AAE0 .. AAEA
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#EB#           =>  --  AAEB
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#EC# .. 16#ED# =>  --  AAEC .. AAED
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#EE# .. 16#EF# =>  --  AAEE .. AAEF
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F0# .. 16#F1# =>  --  AAF0 .. AAF1
          (Other_Punctuation, Neutral,
           Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#F2#           =>  --  AAF2
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F3# .. 16#F4# =>  --  AAF3 .. AAF4
          (Modifier_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Extender
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F5#           =>  --  AAF5
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F6#           =>  --  AAF6
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F7# .. 16#FF# =>  --  AAF7 .. AAFF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Other_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_00AA;
