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

package Matreshka.Internals.Unicode.Ucd.Core_0021 is

   pragma Preelaborate;

   Group_0021 : aliased constant Core_Second_Stage
     := (16#00# .. 16#01# =>  --  2100 .. 2101
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#02#           =>  --  2102
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
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
         16#03#           =>  --  2103
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#04#           =>  --  2104
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#05#           =>  --  2105
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#06#           =>  --  2106
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#07#           =>  --  2107
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
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
         16#08#           =>  --  2108
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#09#           =>  --  2109
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0A#           =>  --  210A
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0B# .. 16#0D# =>  --  210B .. 210D
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
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
         16#0E# .. 16#0F# =>  --  210E .. 210F
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#10# .. 16#12# =>  --  2110 .. 2112
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
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
         16#13#           =>  --  2113
          (Lowercase_Letter, Ambiguous,
           Other, A_Letter, Lower, Ambiguous,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#14#           =>  --  2114
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#15#           =>  --  2115
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
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
         16#16#           =>  --  2116
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#17#           =>  --  2117
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#18#           =>  --  2118
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Other_ID_Start
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#19# .. 16#1D# =>  --  2119 .. 211D
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
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
         16#1E# .. 16#1F# =>  --  211E .. 211F
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#20#           =>  --  2120
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#21# .. 16#22# =>  --  2121 .. 2122
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#23#           =>  --  2123
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#24#           =>  --  2124
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
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
         16#25#           =>  --  2125
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#26#           =>  --  2126
          (Uppercase_Letter, Ambiguous,
           Other, A_Letter, Upper, Alphabetic,
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
         16#27#           =>  --  2127
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#28#           =>  --  2128
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
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
         16#29#           =>  --  2129
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#2A#           =>  --  212A
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
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
         16#2B#           =>  --  212B
          (Uppercase_Letter, Ambiguous,
           Other, A_Letter, Upper, Ambiguous,
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
         16#2C# .. 16#2D# =>  --  212C .. 212D
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
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
         16#2E#           =>  --  212E
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Other_ID_Start
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#2F#           =>  --  212F
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#30# .. 16#31# =>  --  2130 .. 2131
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
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
         16#32#           =>  --  2132
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
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
         16#33#           =>  --  2133
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
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
         16#34#           =>  --  2134
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#35# .. 16#38# =>  --  2135 .. 2138
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#39#           =>  --  2139
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3A#           =>  --  213A
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#3B#           =>  --  213B
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3C# .. 16#3D# =>  --  213C .. 213D
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3E# .. 16#3F# =>  --  213E .. 213F
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
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
         16#40#           =>  --  2140
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#41# .. 16#44# =>  --  2141 .. 2144
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#45#           =>  --  2145
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
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
         16#46# .. 16#47# =>  --  2146 .. 2147
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#48# .. 16#49# =>  --  2148 .. 2149
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#4A#           =>  --  214A
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#4B#           =>  --  214B
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#4C# .. 16#4D# =>  --  214C .. 214D
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#4E#           =>  --  214E
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
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
         16#4F#           =>  --  214F
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#50# .. 16#52# =>  --  2150 .. 2152
          (Other_Number, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#53#           =>  --  2153
          (Other_Number, Ambiguous,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#54#           =>  --  2154
          (Other_Number, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#55#           =>  --  2155
          (Other_Number, Neutral,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#56# .. 16#5A# =>  --  2156 .. 215A
          (Other_Number, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5B#           =>  --  215B
          (Other_Number, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5C# .. 16#5D# =>  --  215C .. 215D
          (Other_Number, Ambiguous,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5E#           =>  --  215E
          (Other_Number, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5F#           =>  --  215F
          (Other_Number, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#60# .. 16#6B# =>  --  2160 .. 216B
          (Letter_Number, Ambiguous,
           Other, A_Letter, Upper, Ambiguous,
           (Other_Uppercase
              | Alphabetic
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
         16#6C# .. 16#6F# =>  --  216C .. 216F
          (Letter_Number, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Other_Uppercase
              | Alphabetic
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
         16#70# .. 16#79# =>  --  2170 .. 2179
          (Letter_Number, Ambiguous,
           Other, A_Letter, Lower, Ambiguous,
           (Other_Lowercase
              | Alphabetic
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
         16#7A# .. 16#7F# =>  --  217A .. 217F
          (Letter_Number, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Alphabetic
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
         16#80# .. 16#82# =>  --  2180 .. 2182
          (Letter_Number, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#83#           =>  --  2183
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
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
         16#84#           =>  --  2184
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
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
         16#85# .. 16#88# =>  --  2185 .. 2188
          (Letter_Number, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#89#           =>  --  2189
          (Other_Number, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#8A# .. 16#8F# =>  --  218A .. 218F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#90# .. 16#94# =>  --  2190 .. 2194
          (Math_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#95# .. 16#99# =>  --  2195 .. 2199
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#9A# .. 16#9B# =>  --  219A .. 219B
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#A0#           =>  --  21A0
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#A3#           =>  --  21A3
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#A6#           =>  --  21A6
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#A8#           =>  --  21A8
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#AE#           =>  --  21AE
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#AF#           =>  --  21AF
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#B2# .. 16#B5# =>  --  21B2 .. 21B5
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#B8# .. 16#B9# =>  --  21B8 .. 21B9
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#BA# .. 16#BB# =>  --  21BA .. 21BB
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#CE# .. 16#CF# =>  --  21CE .. 21CF
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D2#           =>  --  21D2
          (Math_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D4#           =>  --  21D4
          (Math_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#DC#           =>  --  21DC
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#DE# .. 16#E3# =>  --  21DE .. 21E3
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#E6#           =>  --  21E6
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#E7#           =>  --  21E7
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#E8# .. 16#F3# =>  --  21E8 .. 21F3
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#F4# .. 16#FF# =>  --  21F4 .. 21FF
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         others           =>
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_0021;
