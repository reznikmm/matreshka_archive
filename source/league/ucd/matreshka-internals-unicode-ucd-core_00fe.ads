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

package Matreshka.Internals.Unicode.Ucd.Core_00FE is

   pragma Preelaborate;

   Group_00FE : aliased constant Core_Second_Stage
     := (16#00# .. 16#0F# =>  --  FE00 .. FE0F
          (Nonspacing_Mark, Ambiguous,
           Extend, Extend, Extend, Combining_Mark,
           (Variation_Selector
              | Case_Ignorable
              | Default_Ignorable_Code_Point
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#10#           =>  --  FE10
          (Other_Punctuation, Wide,
           Other, Mid_Num, S_Continue, Infix_Numeric,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#11#           =>  --  FE11
          (Other_Punctuation, Wide,
           Other, Other, S_Continue, Close_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#12#           =>  --  FE12
          (Other_Punctuation, Wide,
           Other, Other, Other, Close_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#13#           =>  --  FE13
          (Other_Punctuation, Wide,
           Other, Mid_Letter, S_Continue, Infix_Numeric,
           (Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#14#           =>  --  FE14
          (Other_Punctuation, Wide,
           Other, Mid_Num, Other, Infix_Numeric,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#15# .. 16#16# =>  --  FE15 .. FE16
          (Other_Punctuation, Wide,
           Other, Other, Other, Exclamation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#17#           =>  --  FE17
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#18#           =>  --  FE18
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#19#           =>  --  FE19
          (Other_Punctuation, Wide,
           Other, Other, Other, Inseparable,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#1A# .. 16#1F# =>  --  FE1A .. FE1F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#20# .. 16#2D# =>  --  FE20 .. FE2D
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2E# .. 16#2F# =>  --  FE2E .. FE2F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#30#           =>  --  FE30
          (Other_Punctuation, Wide,
           Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#31# .. 16#32# =>  --  FE31 .. FE32
          (Dash_Punctuation, Wide,
           Other, Other, S_Continue, Ideographic,
           (Dash
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#33# .. 16#34# =>  --  FE33 .. FE34
          (Connector_Punctuation, Wide,
           Other, Extend_Num_Let, Other, Ideographic,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#35#           =>  --  FE35
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#36#           =>  --  FE36
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#37#           =>  --  FE37
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#38#           =>  --  FE38
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#39#           =>  --  FE39
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3A#           =>  --  FE3A
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3B#           =>  --  FE3B
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3C#           =>  --  FE3C
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3D#           =>  --  FE3D
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3E#           =>  --  FE3E
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3F#           =>  --  FE3F
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#40#           =>  --  FE40
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#41#           =>  --  FE41
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Quotation_Mark
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#42#           =>  --  FE42
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Quotation_Mark
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#43#           =>  --  FE43
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Quotation_Mark
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#44#           =>  --  FE44
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Quotation_Mark
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#45# .. 16#46# =>  --  FE45 .. FE46
          (Other_Punctuation, Wide,
           Other, Other, Other, Ideographic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#47#           =>  --  FE47
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#48#           =>  --  FE48
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#49# .. 16#4C# =>  --  FE49 .. FE4C
          (Other_Punctuation, Wide,
           Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#4D# .. 16#4F# =>  --  FE4D .. FE4F
          (Connector_Punctuation, Wide,
           Other, Extend_Num_Let, Other, Ideographic,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#50#           =>  --  FE50
          (Other_Punctuation, Wide,
           Other, Mid_Num, S_Continue, Close_Punctuation,
           (Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#51#           =>  --  FE51
          (Other_Punctuation, Wide,
           Other, Other, S_Continue, Ideographic,
           (Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#52#           =>  --  FE52
          (Other_Punctuation, Wide,
           Other, Mid_Num_Let, A_Term, Close_Punctuation,
           (STerm
              | Terminal_Punctuation
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#53#           =>  --  FE53
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#54#           =>  --  FE54
          (Other_Punctuation, Wide,
           Other, Mid_Num, Other, Nonstarter,
           (Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#55#           =>  --  FE55
          (Other_Punctuation, Wide,
           Other, Mid_Letter, S_Continue, Nonstarter,
           (Terminal_Punctuation
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#56# .. 16#57# =>  --  FE56 .. FE57
          (Other_Punctuation, Wide,
           Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#58#           =>  --  FE58
          (Dash_Punctuation, Wide,
           Other, Other, S_Continue, Ideographic,
           (Dash
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#59#           =>  --  FE59
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5A#           =>  --  FE5A
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5B#           =>  --  FE5B
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5C#           =>  --  FE5C
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5D#           =>  --  FE5D
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5E#           =>  --  FE5E
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5F# .. 16#60# =>  --  FE5F .. FE60
          (Other_Punctuation, Wide,
           Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#61#           =>  --  FE61
          (Other_Punctuation, Wide,
           Other, Other, Other, Ideographic,
           (Other_Math
              | Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#62#           =>  --  FE62
          (Math_Symbol, Wide,
           Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#63#           =>  --  FE63
          (Dash_Punctuation, Wide,
           Other, Other, S_Continue, Ideographic,
           (Dash
              | Hyphen
              | Other_Math
              | Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#64# .. 16#66# =>  --  FE64 .. FE66
          (Math_Symbol, Wide,
           Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#67#           =>  --  FE67
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#68#           =>  --  FE68
          (Other_Punctuation, Wide,
           Other, Other, Other, Ideographic,
           (Other_Math
              | Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#69#           =>  --  FE69
          (Currency_Symbol, Wide,
           Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#6A#           =>  --  FE6A
          (Other_Punctuation, Wide,
           Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#6B#           =>  --  FE6B
          (Other_Punctuation, Wide,
           Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#6C# .. 16#6F# =>  --  FE6C .. FE6F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#70#           =>  --  FE70
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#72#           =>  --  FE72
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#73#           =>  --  FE73
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#74#           =>  --  FE74
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#75#           =>  --  FE75
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#76#           =>  --  FE76
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#78#           =>  --  FE78
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7A#           =>  --  FE7A
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7C#           =>  --  FE7C
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7E#           =>  --  FE7E
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#FD# .. 16#FE# =>  --  FEFD .. FEFE
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#FF#           =>  --  FEFF
          (Format, Neutral,
           Control, Format, Format, Word_Joiner,
           (Case_Ignorable
              | Default_Ignorable_Code_Point
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         others           =>
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_00FE;
