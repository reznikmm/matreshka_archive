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

package Matreshka.Internals.Unicode.Ucd.Core_0020 is

   pragma Preelaborate;

   Group_0020 : aliased constant Core_Second_Stage
     := (16#00# .. 16#06# =>  --  2000 .. 2006
          (Space_Separator, Neutral,
           Other, Other, Sp, Break_After,
           (White_Space
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#07#           =>  --  2007
          (Space_Separator, Neutral,
           Other, Other, Sp, Glue,
           (White_Space
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#08# .. 16#0A# =>  --  2008 .. 200A
          (Space_Separator, Neutral,
           Other, Other, Sp, Break_After,
           (White_Space
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0B#           =>  --  200B
          (Format, Neutral,
           Control, Other, Format, ZW_Space,
           (Case_Ignorable
              | Default_Ignorable_Code_Point
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0C# .. 16#0D# =>  --  200C .. 200D
          (Format, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Join_Control
              | Other_Grapheme_Extend
              | Case_Ignorable
              | Default_Ignorable_Code_Point
              | Grapheme_Extend
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0E# .. 16#0F# =>  --  200E .. 200F
          (Format, Neutral,
           Control, Format, Format, Combining_Mark,
           (Bidi_Control
              | Pattern_White_Space
              | Case_Ignorable
              | Default_Ignorable_Code_Point
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#10#           =>  --  2010
          (Dash_Punctuation, Ambiguous,
           Other, Other, Other, Break_After,
           (Dash
              | Hyphen
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#11#           =>  --  2011
          (Dash_Punctuation, Neutral,
           Other, Other, Other, Glue,
           (Dash
              | Hyphen
              | Pattern_Syntax
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#12#           =>  --  2012
          (Dash_Punctuation, Neutral,
           Other, Other, Other, Break_After,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#13#           =>  --  2013
          (Dash_Punctuation, Ambiguous,
           Other, Other, S_Continue, Break_After,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#14#           =>  --  2014
          (Dash_Punctuation, Ambiguous,
           Other, Other, S_Continue, Break_Both,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#15#           =>  --  2015
          (Dash_Punctuation, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#16#           =>  --  2016
          (Other_Punctuation, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#17#           =>  --  2017
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#18#           =>  --  2018
          (Initial_Punctuation, Ambiguous,
           Other, Mid_Num_Let, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Case_Ignorable
              | Grapheme_Base => True,
            others => False)),
         16#19#           =>  --  2019
          (Final_Punctuation, Ambiguous,
           Other, Mid_Num_Let, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Case_Ignorable
              | Grapheme_Base => True,
            others => False)),
         16#1A#           =>  --  201A
          (Open_Punctuation, Neutral,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#1B#           =>  --  201B
          (Initial_Punctuation, Neutral,
           Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#1C#           =>  --  201C
          (Initial_Punctuation, Ambiguous,
           Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#1D#           =>  --  201D
          (Final_Punctuation, Ambiguous,
           Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#1E#           =>  --  201E
          (Open_Punctuation, Neutral,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#1F#           =>  --  201F
          (Initial_Punctuation, Neutral,
           Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#20# .. 16#21# =>  --  2020 .. 2021
          (Other_Punctuation, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#22#           =>  --  2022
          (Other_Punctuation, Ambiguous,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#23#           =>  --  2023
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#24#           =>  --  2024
          (Other_Punctuation, Ambiguous,
           Other, Mid_Num_Let, A_Term, Inseparable,
           (Pattern_Syntax
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#25# .. 16#26# =>  --  2025 .. 2026
          (Other_Punctuation, Ambiguous,
           Other, Other, Other, Inseparable,
           (Pattern_Syntax
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#27#           =>  --  2027
          (Other_Punctuation, Ambiguous,
           Other, Mid_Letter, Other, Break_After,
           (Pattern_Syntax
              | Case_Ignorable
              | Grapheme_Base => True,
            others => False)),
         16#28#           =>  --  2028
          (Line_Separator, Neutral,
           Control, Newline, Sep, Mandatory_Break,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#29#           =>  --  2029
          (Paragraph_Separator, Neutral,
           Control, Newline, Sep, Mandatory_Break,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#2A# .. 16#2E# =>  --  202A .. 202E
          (Format, Neutral,
           Control, Format, Format, Combining_Mark,
           (Bidi_Control
              | Case_Ignorable
              | Default_Ignorable_Code_Point
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#2F#           =>  --  202F
          (Space_Separator, Neutral,
           Other, Other, Sp, Glue,
           (White_Space
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#30#           =>  --  2030
          (Other_Punctuation, Ambiguous,
           Other, Other, Other, Postfix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#31#           =>  --  2031
          (Other_Punctuation, Neutral,
           Other, Other, Other, Postfix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#32#           =>  --  2032
          (Other_Punctuation, Ambiguous,
           Other, Other, Other, Postfix_Numeric,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#33#           =>  --  2033
          (Other_Punctuation, Ambiguous,
           Other, Other, Other, Postfix_Numeric,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#34#           =>  --  2034
          (Other_Punctuation, Neutral,
           Other, Other, Other, Postfix_Numeric,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#35#           =>  --  2035
          (Other_Punctuation, Ambiguous,
           Other, Other, Other, Postfix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#36# .. 16#37# =>  --  2036 .. 2037
          (Other_Punctuation, Neutral,
           Other, Other, Other, Postfix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#38#           =>  --  2038
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#39#           =>  --  2039
          (Initial_Punctuation, Neutral,
           Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#3A#           =>  --  203A
          (Final_Punctuation, Neutral,
           Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#3B#           =>  --  203B
          (Other_Punctuation, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#3C#           =>  --  203C
          (Other_Punctuation, Neutral,
           Other, Other, S_Term, Nonstarter,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3D#           =>  --  203D
          (Other_Punctuation, Neutral,
           Other, Other, S_Term, Nonstarter,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#3E#           =>  --  203E
          (Other_Punctuation, Ambiguous,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3F#           =>  --  203F
          (Connector_Punctuation, Neutral,
           Other, Extend_Num_Let, Other, Alphabetic,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#40#           =>  --  2040
          (Connector_Punctuation, Neutral,
           Other, Extend_Num_Let, Other, Alphabetic,
           (Other_Math
              | Grapheme_Base
              | ID_Continue
              | Math
              | XID_Continue => True,
            others => False)),
         16#41# .. 16#43# =>  --  2041 .. 2043
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#44#           =>  --  2044
          (Math_Symbol, Neutral,
           Other, Mid_Num, Other, Infix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#45#           =>  --  2045
          (Open_Punctuation, Neutral,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#46#           =>  --  2046
          (Close_Punctuation, Neutral,
           Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#47# .. 16#49# =>  --  2047 .. 2049
          (Other_Punctuation, Neutral,
           Other, Other, S_Term, Nonstarter,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#4A# .. 16#51# =>  --  204A .. 2051
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#52#           =>  --  2052
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#53#           =>  --  2053
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#54#           =>  --  2054
          (Connector_Punctuation, Neutral,
           Other, Extend_Num_Let, Other, Alphabetic,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#55#           =>  --  2055
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#56#           =>  --  2056
          (Other_Punctuation, Neutral,
           Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#57#           =>  --  2057
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#58# .. 16#5B# =>  --  2058 .. 205B
          (Other_Punctuation, Neutral,
           Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5C#           =>  --  205C
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5D# .. 16#5E# =>  --  205D .. 205E
          (Other_Punctuation, Neutral,
           Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5F#           =>  --  205F
          (Space_Separator, Neutral,
           Other, Other, Sp, Break_After,
           (White_Space
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#60#           =>  --  2060
          (Format, Neutral,
           Control, Format, Format, Word_Joiner,
           (Case_Ignorable
              | Default_Ignorable_Code_Point
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#61# .. 16#64# =>  --  2061 .. 2064
          (Format, Neutral,
           Control, Format, Format, Alphabetic,
           (Other_Math
              | Case_Ignorable
              | Default_Ignorable_Code_Point
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#65#           =>  --  2065
          (Unassigned, Neutral,
           Control, Other, Other, Unknown,
           (Other_Default_Ignorable_Code_Point
              | Default_Ignorable_Code_Point
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#66# .. 16#69# =>  --  2066 .. 2069
          (Format, Neutral,
           Control, Format, Format, Combining_Mark,
           (Bidi_Control
              | Case_Ignorable
              | Default_Ignorable_Code_Point
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#6A# .. 16#6F# =>  --  206A .. 206F
          (Format, Neutral,
           Control, Format, Format, Combining_Mark,
           (Deprecated
              | Case_Ignorable
              | Default_Ignorable_Code_Point
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#70#           =>  --  2070
          (Other_Number, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#71#           =>  --  2071
          (Modifier_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Soft_Dotted
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#72# .. 16#73# =>  --  2072 .. 2073
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#74#           =>  --  2074
          (Other_Number, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#75# .. 16#79# =>  --  2075 .. 2079
          (Other_Number, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7A#           =>  --  207A
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7B#           =>  --  207B
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Dash
              | Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7C#           =>  --  207C
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7D#           =>  --  207D
          (Open_Punctuation, Neutral,
           Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7E#           =>  --  207E
          (Close_Punctuation, Neutral,
           Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7F#           =>  --  207F
          (Modifier_Letter, Ambiguous,
           Other, A_Letter, Lower, Ambiguous,
           (Other_Lowercase
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#80#           =>  --  2080
          (Other_Number, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#81# .. 16#84# =>  --  2081 .. 2084
          (Other_Number, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#85# .. 16#89# =>  --  2085 .. 2089
          (Other_Number, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#8A#           =>  --  208A
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#8B#           =>  --  208B
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Dash
              | Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#8C#           =>  --  208C
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#8D#           =>  --  208D
          (Open_Punctuation, Neutral,
           Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#8E#           =>  --  208E
          (Close_Punctuation, Neutral,
           Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#8F#           =>  --  208F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#90# .. 16#9C# =>  --  2090 .. 209C
          (Modifier_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Alphabetic
              | Cased
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#9D# .. 16#9F# =>  --  209D .. 209F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#A7#           =>  --  20A7
          (Currency_Symbol, Neutral,
           Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#A8#           =>  --  20A8
          (Currency_Symbol, Neutral,
           Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A9#           =>  --  20A9
          (Currency_Symbol, Halfwidth,
           Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#AC#           =>  --  20AC
          (Currency_Symbol, Ambiguous,
           Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#B6#           =>  --  20B6
          (Currency_Symbol, Neutral,
           Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#BB#           =>  --  20BB
          (Currency_Symbol, Neutral,
           Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#BE# .. 16#CF# =>  --  20BE .. 20CF
          (Unassigned, Neutral,
           Other, Other, Other, Prefix_Numeric,
           (others => False)),
         16#D0# .. 16#DC# =>  --  20D0 .. 20DC
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue => True,
            others => False)),
         16#DD# .. 16#E0# =>  --  20DD .. 20E0
          (Enclosing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Case_Ignorable
              | Grapheme_Extend => True,
            others => False)),
         16#E1#           =>  --  20E1
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue => True,
            others => False)),
         16#E2# .. 16#E4# =>  --  20E2 .. 20E4
          (Enclosing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Case_Ignorable
              | Grapheme_Extend => True,
            others => False)),
         16#E5# .. 16#E6# =>  --  20E5 .. 20E6
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue => True,
            others => False)),
         16#E7# .. 16#EA# =>  --  20E7 .. 20EA
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#EB# .. 16#EF# =>  --  20EB .. 20EF
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue => True,
            others => False)),
         16#F0#           =>  --  20F0
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F1# .. 16#FF# =>  --  20F1 .. 20FF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Currency_Symbol, Neutral,
           Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_0020;
