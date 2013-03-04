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

package Matreshka.Internals.Unicode.Ucd.Core_0022 is

   pragma Preelaborate;

   Group_0022 : aliased constant Core_Second_Stage
     := (16#00#           =>  --  2200
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#02# .. 16#03# =>  --  2202 .. 2203
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#04#           =>  --  2204
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#07# .. 16#08# =>  --  2207 .. 2208
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#09#           =>  --  2209
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#0B#           =>  --  220B
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#0C#           =>  --  220C
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#0F#           =>  --  220F
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#11#           =>  --  2211
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#12#           =>  --  2212
          (Math_Symbol, 0,
           Other, Other, Other, Prefix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#13#           =>  --  2213
          (Math_Symbol, 0,
           Other, Other, Other, Prefix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#15#           =>  --  2215
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#1A#           =>  --  221A
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#1D# .. 16#20# =>  --  221D .. 2220
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#23#           =>  --  2223
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#24#           =>  --  2224
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#25#           =>  --  2225
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#26#           =>  --  2226
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#27# .. 16#2B# =>  --  2227 .. 222B
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#2C#           =>  --  222C
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, No, No), Compat,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#2D#           =>  --  222D
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#2E#           =>  --  222E
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#2F# .. 16#30# =>  --  222F .. 2230
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#34# .. 16#37# =>  --  2234 .. 2237
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#3C# .. 16#3D# =>  --  223C .. 223D
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#41#           =>  --  2241
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#44#           =>  --  2244
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#47#           =>  --  2247
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#48#           =>  --  2248
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#49#           =>  --  2249
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#4C#           =>  --  224C
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#52#           =>  --  2252
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#60#           =>  --  2260
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#61#           =>  --  2261
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#62#           =>  --  2262
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#64# .. 16#67# =>  --  2264 .. 2267
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#6A# .. 16#6B# =>  --  226A .. 226B
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#6D#           =>  --  226D
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#6E# .. 16#6F# =>  --  226E .. 226F
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#70# .. 16#71# =>  --  2270 .. 2271
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#74# .. 16#75# =>  --  2274 .. 2275
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#78# .. 16#79# =>  --  2278 .. 2279
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#80# .. 16#81# =>  --  2280 .. 2281
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#82# .. 16#83# =>  --  2282 .. 2283
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#84# .. 16#85# =>  --  2284 .. 2285
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#86# .. 16#87# =>  --  2286 .. 2287
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#88# .. 16#89# =>  --  2288 .. 2289
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#95#           =>  --  2295
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#99#           =>  --  2299
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#A5#           =>  --  22A5
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#AC# .. 16#AF# =>  --  22AC .. 22AF
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#BF#           =>  --  22BF
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E0# .. 16#E3# =>  --  22E0 .. 22E3
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         16#EA# .. 16#ED# =>  --  22EA .. 22ED
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, No, Yes, No), Canonical,
           (Pattern_Syntax
              | Grapheme_Base
              | Math
              | Expands_On_NFD
              | Expands_On_NFKD => True,
            others => False)),
         others           =>
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_0022;
