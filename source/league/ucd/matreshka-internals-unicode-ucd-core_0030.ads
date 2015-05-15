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

package Matreshka.Internals.Unicode.Ucd.Core_0030 is

   pragma Preelaborate;

   Group_0030 : aliased constant Core_Second_Stage
     := (16#00#           =>  --  3000
          (Space_Separator, Fullwidth,
           Other, Other, Sp, Break_After,
           (White_Space
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#01#           =>  --  3001
          (Other_Punctuation, Wide,
           Other, Other, S_Continue, Close_Punctuation,
           (Pattern_Syntax
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#02#           =>  --  3002
          (Other_Punctuation, Wide,
           Other, Other, S_Term, Close_Punctuation,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#03#           =>  --  3003
          (Other_Punctuation, Wide,
           Other, Other, Other, Ideographic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#04#           =>  --  3004
          (Other_Symbol, Wide,
           Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#05#           =>  --  3005
          (Modifier_Letter, Wide,
           Other, A_Letter, O_Letter, Nonstarter,
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
          (Other_Letter, Wide,
           Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#07#           =>  --  3007
          (Letter_Number, Wide,
           Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#08#           =>  --  3008
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#09#           =>  --  3009
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0A#           =>  --  300A
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0B#           =>  --  300B
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0C#           =>  --  300C
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#0D#           =>  --  300D
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#0E#           =>  --  300E
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#0F#           =>  --  300F
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#10#           =>  --  3010
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#11#           =>  --  3011
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#12# .. 16#13# =>  --  3012 .. 3013
          (Other_Symbol, Wide,
           Other, Other, Other, Ideographic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#14#           =>  --  3014
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#15#           =>  --  3015
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#16#           =>  --  3016
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#17#           =>  --  3017
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#18#           =>  --  3018
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#19#           =>  --  3019
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1A#           =>  --  301A
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1B#           =>  --  301B
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1C#           =>  --  301C
          (Dash_Punctuation, Wide,
           Other, Other, Other, Nonstarter,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1D#           =>  --  301D
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#1E# .. 16#1F# =>  --  301E .. 301F
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#20#           =>  --  3020
          (Other_Symbol, Wide,
           Other, Other, Other, Ideographic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#21# .. 16#29# =>  --  3021 .. 3029
          (Letter_Number, Wide,
           Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#2A# .. 16#2D# =>  --  302A .. 302D
          (Nonspacing_Mark, Wide,
           Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2E# .. 16#2F# =>  --  302E .. 302F
          (Spacing_Mark, Wide,
           Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Grapheme_Extend
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#30#           =>  --  3030
          (Dash_Punctuation, Wide,
           Other, Other, Other, Ideographic,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#31# .. 16#34# =>  --  3031 .. 3034
          (Modifier_Letter, Wide,
           Other, Katakana, O_Letter, Ideographic,
           (Extender
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#35#           =>  --  3035
          (Modifier_Letter, Wide,
           Other, Katakana, O_Letter, Combining_Mark,
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
          (Other_Symbol, Wide,
           Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#37#           =>  --  3037
          (Other_Symbol, Wide,
           Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#38# .. 16#3A# =>  --  3038 .. 303A
          (Letter_Number, Wide,
           Other, Other, O_Letter, Ideographic,
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
          (Modifier_Letter, Wide,
           Other, A_Letter, O_Letter, Nonstarter,
           (Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3C#           =>  --  303C
          (Other_Letter, Wide,
           Other, A_Letter, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3D#           =>  --  303D
          (Other_Punctuation, Wide,
           Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#3E#           =>  --  303E
          (Other_Symbol, Wide,
           Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#3F#           =>  --  303F
          (Other_Symbol, Neutral,
           Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#40#           =>  --  3040
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#41#           =>  --  3041
          (Other_Letter, Wide,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#42#           =>  --  3042
          (Other_Letter, Wide,
           Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#43#           =>  --  3043
          (Other_Letter, Wide,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#44#           =>  --  3044
          (Other_Letter, Wide,
           Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#45#           =>  --  3045
          (Other_Letter, Wide,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#46#           =>  --  3046
          (Other_Letter, Wide,
           Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#47#           =>  --  3047
          (Other_Letter, Wide,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#48#           =>  --  3048
          (Other_Letter, Wide,
           Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#49#           =>  --  3049
          (Other_Letter, Wide,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#4A# .. 16#62# =>  --  304A .. 3062
          (Other_Letter, Wide,
           Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#63#           =>  --  3063
          (Other_Letter, Wide,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#64# .. 16#82# =>  --  3064 .. 3082
          (Other_Letter, Wide,
           Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#83#           =>  --  3083
          (Other_Letter, Wide,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#84#           =>  --  3084
          (Other_Letter, Wide,
           Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#85#           =>  --  3085
          (Other_Letter, Wide,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#86#           =>  --  3086
          (Other_Letter, Wide,
           Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#87#           =>  --  3087
          (Other_Letter, Wide,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#88# .. 16#8D# =>  --  3088 .. 308D
          (Other_Letter, Wide,
           Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8E#           =>  --  308E
          (Other_Letter, Wide,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8F# .. 16#94# =>  --  308F .. 3094
          (Other_Letter, Wide,
           Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#95# .. 16#96# =>  --  3095 .. 3096
          (Other_Letter, Wide,
           Other, Other, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#97# .. 16#98# =>  --  3097 .. 3098
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#99# .. 16#9A# =>  --  3099 .. 309A
          (Nonspacing_Mark, Wide,
           Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#9B# .. 16#9C# =>  --  309B .. 309C
          (Modifier_Symbol, Wide,
           Other, Katakana, Other, Nonstarter,
           (Diacritic
              | Other_ID_Start
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#9D# .. 16#9E# =>  --  309D .. 309E
          (Modifier_Letter, Wide,
           Other, Other, O_Letter, Nonstarter,
           (Extender
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#9F#           =>  --  309F
          (Other_Letter, Wide,
           Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A0#           =>  --  30A0
          (Dash_Punctuation, Wide,
           Other, Katakana, Other, Nonstarter,
           (Dash
              | Grapheme_Base => True,
            others => False)),
         16#A1#           =>  --  30A1
          (Other_Letter, Wide,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A3#           =>  --  30A3
          (Other_Letter, Wide,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A5#           =>  --  30A5
          (Other_Letter, Wide,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A7#           =>  --  30A7
          (Other_Letter, Wide,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A9#           =>  --  30A9
          (Other_Letter, Wide,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C3#           =>  --  30C3
          (Other_Letter, Wide,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E3#           =>  --  30E3
          (Other_Letter, Wide,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E5#           =>  --  30E5
          (Other_Letter, Wide,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E7#           =>  --  30E7
          (Other_Letter, Wide,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#EE#           =>  --  30EE
          (Other_Letter, Wide,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F5# .. 16#F6# =>  --  30F5 .. 30F6
          (Other_Letter, Wide,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#FB#           =>  --  30FB
          (Other_Punctuation, Wide,
           Other, Other, Other, Nonstarter,
           (Hyphen
              | Grapheme_Base => True,
            others => False)),
         16#FC#           =>  --  30FC
          (Modifier_Letter, Wide,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
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
         16#FD# .. 16#FE# =>  --  30FD .. 30FE
          (Modifier_Letter, Wide,
           Other, Katakana, O_Letter, Nonstarter,
           (Extender
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#FF#           =>  --  30FF
          (Other_Letter, Wide,
           Other, Katakana, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         others           =>
          (Other_Letter, Wide,
           Other, Katakana, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_0030;
