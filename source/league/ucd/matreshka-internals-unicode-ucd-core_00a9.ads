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

package Matreshka.Internals.Unicode.Ucd.Core_00A9 is

   pragma Preelaborate;

   Group_00A9 : aliased constant Core_Second_Stage
     := (16#00# .. 16#09# =>  --  A900 .. A909
          (Decimal_Number, Neutral,
           Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#26# .. 16#2A# =>  --  A926 .. A92A
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2B# .. 16#2D# =>  --  A92B .. A92D
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2E#           =>  --  A92E
          (Other_Punctuation, Neutral,
           Other, Other, Other, Break_After,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#2F#           =>  --  A92F
          (Other_Punctuation, Neutral,
           Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#47# .. 16#51# =>  --  A947 .. A951
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#52#           =>  --  A952
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#53#           =>  --  A953
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Base
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#54# .. 16#5E# =>  --  A954 .. A95E
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#5F#           =>  --  A95F
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#60# .. 16#7C# =>  --  A960 .. A97C
          (Other_Letter, Wide,
           L, A_Letter, O_Letter, JL,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#7D# .. 16#7F# =>  --  A97D .. A97F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#80# .. 16#82# =>  --  A980 .. A982
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#83#           =>  --  A983
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B3#           =>  --  A9B3
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B4# .. 16#B5# =>  --  A9B4 .. A9B5
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B6# .. 16#B9# =>  --  A9B6 .. A9B9
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BA# .. 16#BB# =>  --  A9BA .. A9BB
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BC#           =>  --  A9BC
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BD# .. 16#BF# =>  --  A9BD .. A9BF
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C0#           =>  --  A9C0
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Base
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C1# .. 16#C6# =>  --  A9C1 .. A9C6
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#C7#           =>  --  A9C7
          (Other_Punctuation, Neutral,
           Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#C8# .. 16#C9# =>  --  A9C8 .. A9C9
          (Other_Punctuation, Neutral,
           Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#CA# .. 16#CD# =>  --  A9CA .. A9CD
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#CE#           =>  --  A9CE
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#CF#           =>  --  A9CF
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
         16#D0# .. 16#D9# =>  --  A9D0 .. A9D9
          (Decimal_Number, Neutral,
           Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#DA# .. 16#DD# =>  --  A9DA .. A9DD
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#DE# .. 16#DF# =>  --  A9DE .. A9DF
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#E0# .. 16#E4# =>  --  A9E0 .. A9E4
          (Other_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E5#           =>  --  A9E5
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E6#           =>  --  A9E6
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
         16#E7# .. 16#EF# =>  --  A9E7 .. A9EF
          (Other_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F0# .. 16#F9# =>  --  A9F0 .. A9F9
          (Decimal_Number, Neutral,
           Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#FA# .. 16#FE# =>  --  A9FA .. A9FE
          (Other_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#FF#           =>  --  A9FF
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

end Matreshka.Internals.Unicode.Ucd.Core_00A9;
