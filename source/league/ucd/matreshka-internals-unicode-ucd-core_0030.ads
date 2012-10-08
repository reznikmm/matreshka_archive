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

pragma Restrictions (No_Elaboration_Code);
--  GNAT: enforce generation of preinitialized data section instead of
--  generation of elaboration code.

package Matreshka.Internals.Unicode.Ucd.Core_0030 is

   pragma Preelaborate;

   Group_0030 : aliased constant Core_Second_Stage
     := (16#00#           =>  --  3000
          (Space_Separator, 0,
           Other, Other, Sp, Ideographic,
           (Yes, Yes, No, No), Wide,
           (White_Space
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#01#           =>  --  3001
          (Other_Punctuation, 0,
           Other, Other, S_Continue, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#02#           =>  --  3002
          (Other_Punctuation, 0,
           Other, Other, S_Term, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#03#           =>  --  3003
          (Other_Punctuation, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#04#           =>  --  3004
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#05#           =>  --  3005
          (Modifier_Letter, 0,
           Other, A_Letter, O_Letter, Nonstarter,
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
         16#06#           =>  --  3006
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Ideographic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#07#           =>  --  3007
          (Letter_Number, 0,
           Other, Other, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Ideographic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#08#           =>  --  3008
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#09#           =>  --  3009
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0A#           =>  --  300A
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0B#           =>  --  300B
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0C#           =>  --  300C
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#0D#           =>  --  300D
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#0E#           =>  --  300E
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#0F#           =>  --  300F
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#10#           =>  --  3010
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#11#           =>  --  3011
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#12# .. 16#13# =>  --  3012 .. 3013
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#14#           =>  --  3014
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#15#           =>  --  3015
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#16#           =>  --  3016
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#17#           =>  --  3017
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#18#           =>  --  3018
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#19#           =>  --  3019
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1A#           =>  --  301A
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1B#           =>  --  301B
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1C#           =>  --  301C
          (Dash_Punctuation, 0,
           Other, Other, Other, Nonstarter,
           (Yes, Yes, Yes, Yes), None,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1D#           =>  --  301D
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#1E# .. 16#1F# =>  --  301E .. 301F
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#20#           =>  --  3020
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#21# .. 16#29# =>  --  3021 .. 3029
          (Letter_Number, 0,
           Other, Other, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Ideographic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#2A#           =>  --  302A
          (Nonspacing_Mark, 218,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2B#           =>  --  302B
          (Nonspacing_Mark, 228,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2C#           =>  --  302C
          (Nonspacing_Mark, 232,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2D#           =>  --  302D
          (Nonspacing_Mark, 222,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2E# .. 16#2F# =>  --  302E .. 302F
          (Spacing_Mark, 224,
           Extend, Extend, Extend, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Other_Grapheme_Extend
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#30#           =>  --  3030
          (Dash_Punctuation, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#31# .. 16#35# =>  --  3031 .. 3035
          (Modifier_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#36#           =>  --  3036
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Compat,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#37#           =>  --  3037
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#38# .. 16#3A# =>  --  3038 .. 303A
          (Letter_Number, 0,
           Other, Other, O_Letter, Ideographic,
           (Yes, Yes, No, No), Compat,
           (Ideographic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3B#           =>  --  303B
          (Modifier_Letter, 0,
           Other, A_Letter, O_Letter, Nonstarter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3C#           =>  --  303C
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Nonstarter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3D#           =>  --  303D
          (Other_Punctuation, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#3E# .. 16#3F# =>  --  303E .. 303F
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#40#           =>  --  3040
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#41#           =>  --  3041
          (Other_Letter, 0,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#43#           =>  --  3043
          (Other_Letter, 0,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#45#           =>  --  3045
          (Other_Letter, 0,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#47#           =>  --  3047
          (Other_Letter, 0,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#49#           =>  --  3049
          (Other_Letter, 0,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#4C#           =>  --  304C
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#4E#           =>  --  304E
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#50#           =>  --  3050
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#52#           =>  --  3052
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#54#           =>  --  3054
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#56#           =>  --  3056
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#58#           =>  --  3058
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#5A#           =>  --  305A
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#5C#           =>  --  305C
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#5E#           =>  --  305E
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#60#           =>  --  3060
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#62#           =>  --  3062
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#63#           =>  --  3063
          (Other_Letter, 0,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#65#           =>  --  3065
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#67#           =>  --  3067
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#69#           =>  --  3069
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#70# .. 16#71# =>  --  3070 .. 3071
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#73# .. 16#74# =>  --  3073 .. 3074
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#76# .. 16#77# =>  --  3076 .. 3077
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#79# .. 16#7A# =>  --  3079 .. 307A
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#7C# .. 16#7D# =>  --  307C .. 307D
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#83#           =>  --  3083
          (Other_Letter, 0,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#85#           =>  --  3085
          (Other_Letter, 0,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#87#           =>  --  3087
          (Other_Letter, 0,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8E#           =>  --  308E
          (Other_Letter, 0,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#94#           =>  --  3094
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
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
         16#95# .. 16#96# =>  --  3095 .. 3096
          (Other_Letter, 0,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#97# .. 16#98# =>  --  3097 .. 3098
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#99# .. 16#9A# =>  --  3099 .. 309A
          (Nonspacing_Mark, 8,
           Extend, Extend, Extend, Combining_Mark,
           (Maybe, Yes, Maybe, Yes), None,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#9B# .. 16#9C# =>  --  309B .. 309C
          (Modifier_Symbol, 0,
           Other, Katakana, Other, Nonstarter,
           (Yes, Yes, No, No), Compat,
           (Diacritic
              | Other_ID_Start
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#9D#           =>  --  309D
          (Modifier_Letter, 0,
           Other, Other, O_Letter, Nonstarter,
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
         16#9E#           =>  --  309E
          (Modifier_Letter, 0,
           Other, Other, O_Letter, Nonstarter,
           (Yes, No, Yes, No), Canonical,
           (Extender
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#9F#           =>  --  309F
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
           (Yes, Yes, No, No), Vertical,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A0#           =>  --  30A0
          (Dash_Punctuation, 0,
           Other, Katakana, Other, Nonstarter,
           (Yes, Yes, Yes, Yes), None,
           (Dash
              | Grapheme_Base => True,
            others => False)),
         16#A1#           =>  --  30A1
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A2#           =>  --  30A2
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A3#           =>  --  30A3
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A4#           =>  --  30A4
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A5#           =>  --  30A5
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A6#           =>  --  30A6
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A7#           =>  --  30A7
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A8#           =>  --  30A8
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A9#           =>  --  30A9
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#AA# .. 16#AB# =>  --  30AA .. 30AB
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#AC#           =>  --  30AC
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#AD#           =>  --  30AD
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#AE#           =>  --  30AE
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#AF#           =>  --  30AF
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B0#           =>  --  30B0
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#B1#           =>  --  30B1
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B2#           =>  --  30B2
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#B3#           =>  --  30B3
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B4#           =>  --  30B4
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#B5#           =>  --  30B5
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B6#           =>  --  30B6
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#B7#           =>  --  30B7
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B8#           =>  --  30B8
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#B9#           =>  --  30B9
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BA#           =>  --  30BA
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#BB#           =>  --  30BB
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BC#           =>  --  30BC
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#BD#           =>  --  30BD
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BE#           =>  --  30BE
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#BF#           =>  --  30BF
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C0#           =>  --  30C0
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#C1#           =>  --  30C1
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C2#           =>  --  30C2
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#C3#           =>  --  30C3
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C4#           =>  --  30C4
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C5#           =>  --  30C5
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#C6#           =>  --  30C6
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C7#           =>  --  30C7
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#C8#           =>  --  30C8
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C9#           =>  --  30C9
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#CA# .. 16#CF# =>  --  30CA .. 30CF
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D0# .. 16#D1# =>  --  30D0 .. 30D1
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#D2#           =>  --  30D2
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D3# .. 16#D4# =>  --  30D3 .. 30D4
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#D5#           =>  --  30D5
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D6# .. 16#D7# =>  --  30D6 .. 30D7
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#D8#           =>  --  30D8
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D9# .. 16#DA# =>  --  30D9 .. 30DA
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#DB#           =>  --  30DB
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#DC# .. 16#DD# =>  --  30DC .. 30DD
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#DE# .. 16#E2# =>  --  30DE .. 30E2
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E3#           =>  --  30E3
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E4#           =>  --  30E4
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E5#           =>  --  30E5
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E6#           =>  --  30E6
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E7#           =>  --  30E7
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E8# .. 16#ED# =>  --  30E8 .. 30ED
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#EE#           =>  --  30EE
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#EF# .. 16#F3# =>  --  30EF .. 30F3
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F4#           =>  --  30F4
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#F5# .. 16#F6# =>  --  30F5 .. 30F6
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F7# .. 16#FA# =>  --  30F7 .. 30FA
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
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
         16#FB#           =>  --  30FB
          (Other_Punctuation, 0,
           Other, Other, Other, Nonstarter,
           (Yes, Yes, Yes, Yes), None,
           (Hyphen
              | Grapheme_Base => True,
            others => False)),
         16#FC#           =>  --  30FC
          (Modifier_Letter, 0,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Extender
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#FD#           =>  --  30FD
          (Modifier_Letter, 0,
           Other, Katakana, O_Letter, Nonstarter,
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
         16#FE#           =>  --  30FE
          (Modifier_Letter, 0,
           Other, Katakana, O_Letter, Nonstarter,
           (Yes, No, Yes, No), Canonical,
           (Extender
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#FF#           =>  --  30FF
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Ideographic,
           (Yes, Yes, No, No), Vertical,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         others           =>
          (Other_Letter, 0,
           Other, Other, O_Letter, Ideographic,
           (Yes, Yes, Yes, Yes), None,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_0030;
