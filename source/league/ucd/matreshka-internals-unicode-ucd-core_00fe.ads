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

package Matreshka.Internals.Unicode.Ucd.Core_00FE is

   pragma Preelaborate;

   Group_00FE : aliased constant Core_Second_Stage
     := (16#00# .. 16#0F# =>  --  FE00 .. FE0F
          (Nonspacing_Mark, 0,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Variation_Selector
              | Case_Ignorable
              | Default_Ignorable_Code_Point
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#10#           =>  --  FE10
          (Other_Punctuation, 0,
           Other, Mid_Num, S_Continue, Infix_Numeric,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#11#           =>  --  FE11
          (Other_Punctuation, 0,
           Other, Other, S_Continue, Close_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#12#           =>  --  FE12
          (Other_Punctuation, 0,
           Other, Other, Other, Close_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#13#           =>  --  FE13
          (Other_Punctuation, 0,
           Other, Mid_Letter, S_Continue, Infix_Numeric,
           (Yes, Yes, No, No), Vertical,
           (Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#14#           =>  --  FE14
          (Other_Punctuation, 0,
           Other, Mid_Num, Other, Infix_Numeric,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#15# .. 16#16# =>  --  FE15 .. FE16
          (Other_Punctuation, 0,
           Other, Other, Other, Exclamation,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#17#           =>  --  FE17
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#18#           =>  --  FE18
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#19#           =>  --  FE19
          (Other_Punctuation, 0,
           Other, Other, Other, Inseparable,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#1A# .. 16#1F# =>  --  FE1A .. FE1F
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#20# .. 16#26# =>  --  FE20 .. FE26
          (Nonspacing_Mark, 230,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#27# .. 16#2F# =>  --  FE27 .. FE2F
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#30#           =>  --  FE30
          (Other_Punctuation, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#31# .. 16#32# =>  --  FE31 .. FE32
          (Dash_Punctuation, 0,
           Other, Other, S_Continue, Ideographic,
           (Yes, Yes, No, No), Vertical,
           (Dash
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#33# .. 16#34# =>  --  FE33 .. FE34
          (Connector_Punctuation, 0,
           Other, Extend_Num_Let, Other, Ideographic,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#35#           =>  --  FE35
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#36#           =>  --  FE36
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#37#           =>  --  FE37
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#38#           =>  --  FE38
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#39#           =>  --  FE39
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3A#           =>  --  FE3A
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3B#           =>  --  FE3B
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3C#           =>  --  FE3C
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3D#           =>  --  FE3D
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3E#           =>  --  FE3E
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3F#           =>  --  FE3F
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#40#           =>  --  FE40
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#41#           =>  --  FE41
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Quotation_Mark
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#42#           =>  --  FE42
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Quotation_Mark
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#43#           =>  --  FE43
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Quotation_Mark
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#44#           =>  --  FE44
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Quotation_Mark
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#45# .. 16#46# =>  --  FE45 .. FE46
          (Other_Punctuation, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#47#           =>  --  FE47
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#48#           =>  --  FE48
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, No, No), Vertical,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#49# .. 16#4C# =>  --  FE49 .. FE4C
          (Other_Punctuation, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Compat,
           (Grapheme_Base
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#4D# .. 16#4F# =>  --  FE4D .. FE4F
          (Connector_Punctuation, 0,
           Other, Extend_Num_Let, Other, Ideographic,
           (Yes, Yes, No, No), Compat,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#50#           =>  --  FE50
          (Other_Punctuation, 0,
           Other, Mid_Num, S_Continue, Close_Punctuation,
           (Yes, Yes, No, No), Small,
           (Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#51#           =>  --  FE51
          (Other_Punctuation, 0,
           Other, Other, S_Continue, Ideographic,
           (Yes, Yes, No, No), Small,
           (Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#52#           =>  --  FE52
          (Other_Punctuation, 0,
           Other, Mid_Num_Let, A_Term, Close_Punctuation,
           (Yes, Yes, No, No), Small,
           (STerm
              | Terminal_Punctuation
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#53#           =>  --  FE53
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#54#           =>  --  FE54
          (Other_Punctuation, 0,
           Other, Mid_Num, Other, Nonstarter,
           (Yes, Yes, No, No), Small,
           (Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#55#           =>  --  FE55
          (Other_Punctuation, 0,
           Other, Mid_Letter, S_Continue, Nonstarter,
           (Yes, Yes, No, No), Small,
           (Terminal_Punctuation
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#56# .. 16#57# =>  --  FE56 .. FE57
          (Other_Punctuation, 0,
           Other, Other, S_Term, Exclamation,
           (Yes, Yes, No, No), Small,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#58#           =>  --  FE58
          (Dash_Punctuation, 0,
           Other, Other, S_Continue, Ideographic,
           (Yes, Yes, No, No), Small,
           (Dash
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#59#           =>  --  FE59
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, No, No), Small,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5A#           =>  --  FE5A
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, No, No), Small,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5B#           =>  --  FE5B
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, No, No), Small,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5C#           =>  --  FE5C
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, No, No), Small,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5D#           =>  --  FE5D
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, No, No), Small,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5E#           =>  --  FE5E
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, No, No), Small,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5F# .. 16#60# =>  --  FE5F .. FE60
          (Other_Punctuation, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Small,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#61#           =>  --  FE61
          (Other_Punctuation, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Small,
           (Other_Math
              | Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#62#           =>  --  FE62
          (Math_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Small,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#63#           =>  --  FE63
          (Dash_Punctuation, 0,
           Other, Other, S_Continue, Ideographic,
           (Yes, Yes, No, No), Small,
           (Dash
              | Hyphen
              | Other_Math
              | Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#64# .. 16#66# =>  --  FE64 .. FE66
          (Math_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Small,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#67#           =>  --  FE67
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#68#           =>  --  FE68
          (Other_Punctuation, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Small,
           (Other_Math
              | Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#69#           =>  --  FE69
          (Currency_Symbol, 0,
           Other, Other, Other, Prefix_Numeric,
           (Yes, Yes, No, No), Small,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#6A#           =>  --  FE6A
          (Other_Punctuation, 0,
           Other, Other, Other, Postfix_Numeric,
           (Yes, Yes, No, No), Small,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#6B#           =>  --  FE6B
          (Other_Punctuation, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Small,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#6C# .. 16#6F# =>  --  FE6C .. FE6F
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#70#           =>  --  FE70
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Isolated,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#71#           =>  --  FE71
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#72#           =>  --  FE72
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Isolated,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#73#           =>  --  FE73
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#74#           =>  --  FE74
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Isolated,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#75#           =>  --  FE75
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#76#           =>  --  FE76
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Isolated,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#77#           =>  --  FE77
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#78#           =>  --  FE78
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Isolated,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#79#           =>  --  FE79
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7A#           =>  --  FE7A
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Isolated,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7B#           =>  --  FE7B
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7C#           =>  --  FE7C
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Isolated,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7D#           =>  --  FE7D
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7E#           =>  --  FE7E
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Isolated,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7F#           =>  --  FE7F
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#81#           =>  --  FE81
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Isolated,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#82#           =>  --  FE82
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#83#           =>  --  FE83
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Isolated,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#84#           =>  --  FE84
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#85#           =>  --  FE85
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Isolated,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#86#           =>  --  FE86
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#87#           =>  --  FE87
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Isolated,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#88#           =>  --  FE88
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#89#           =>  --  FE89
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Isolated,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#8A#           =>  --  FE8A
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#8B#           =>  --  FE8B
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#8C#           =>  --  FE8C
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#8E#           =>  --  FE8E
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#90#           =>  --  FE90
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#91#           =>  --  FE91
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#92#           =>  --  FE92
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#94#           =>  --  FE94
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#96#           =>  --  FE96
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#97#           =>  --  FE97
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#98#           =>  --  FE98
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#9A#           =>  --  FE9A
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#9B#           =>  --  FE9B
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#9C#           =>  --  FE9C
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#9E#           =>  --  FE9E
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#9F#           =>  --  FE9F
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A0#           =>  --  FEA0
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A2#           =>  --  FEA2
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A3#           =>  --  FEA3
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A4#           =>  --  FEA4
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A6#           =>  --  FEA6
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A7#           =>  --  FEA7
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A8#           =>  --  FEA8
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#AA#           =>  --  FEAA
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#AC#           =>  --  FEAC
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#AE#           =>  --  FEAE
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B0#           =>  --  FEB0
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B2#           =>  --  FEB2
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B3#           =>  --  FEB3
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B4#           =>  --  FEB4
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B6#           =>  --  FEB6
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B7#           =>  --  FEB7
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B8#           =>  --  FEB8
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#BA#           =>  --  FEBA
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#BB#           =>  --  FEBB
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#BC#           =>  --  FEBC
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#BE#           =>  --  FEBE
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#BF#           =>  --  FEBF
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C0#           =>  --  FEC0
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C2#           =>  --  FEC2
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C3#           =>  --  FEC3
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C4#           =>  --  FEC4
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C6#           =>  --  FEC6
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C7#           =>  --  FEC7
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C8#           =>  --  FEC8
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#CA#           =>  --  FECA
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#CB#           =>  --  FECB
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#CC#           =>  --  FECC
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#CE#           =>  --  FECE
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#CF#           =>  --  FECF
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#D0#           =>  --  FED0
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#D2#           =>  --  FED2
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#D3#           =>  --  FED3
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#D4#           =>  --  FED4
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#D6#           =>  --  FED6
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#D7#           =>  --  FED7
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#D8#           =>  --  FED8
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#DA#           =>  --  FEDA
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#DB#           =>  --  FEDB
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#DC#           =>  --  FEDC
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#DE#           =>  --  FEDE
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#DF#           =>  --  FEDF
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E0#           =>  --  FEE0
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E2#           =>  --  FEE2
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E3#           =>  --  FEE3
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E4#           =>  --  FEE4
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E6#           =>  --  FEE6
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E7#           =>  --  FEE7
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E8#           =>  --  FEE8
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#EA#           =>  --  FEEA
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#EB#           =>  --  FEEB
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#EC#           =>  --  FEEC
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#EE#           =>  --  FEEE
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F0#           =>  --  FEF0
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F2#           =>  --  FEF2
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F3#           =>  --  FEF3
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Initial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F4#           =>  --  FEF4
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Medial,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F5#           =>  --  FEF5
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Isolated,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F6#           =>  --  FEF6
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F7#           =>  --  FEF7
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Isolated,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F8#           =>  --  FEF8
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F9#           =>  --  FEF9
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Isolated,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#FA#           =>  --  FEFA
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#FB#           =>  --  FEFB
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Isolated,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#FC#           =>  --  FEFC
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Final,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#FD# .. 16#FE# =>  --  FEFD .. FEFE
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#FF#           =>  --  FEFF
          (Format, 0,
           Control, Format, Format, Word_Joiner,
           (Yes, Yes, Yes, Yes), None,
           (Case_Ignorable
              | Default_Ignorable_Code_Point
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         others           =>
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Isolated,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_00FE;
