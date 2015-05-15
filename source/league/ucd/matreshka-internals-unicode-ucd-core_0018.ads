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

package Matreshka.Internals.Unicode.Ucd.Core_0018 is

   pragma Preelaborate;

   Group_0018 : aliased constant Core_Second_Stage
     := (16#00# .. 16#01# =>  --  1800 .. 1801
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#02#           =>  --  1802
          (Other_Punctuation, Neutral,
           Other, Other, S_Continue, Exclamation,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#03#           =>  --  1803
          (Other_Punctuation, Neutral,
           Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#04# .. 16#05# =>  --  1804 .. 1805
          (Other_Punctuation, Neutral,
           Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#06#           =>  --  1806
          (Dash_Punctuation, Neutral,
           Other, Other, Other, Break_Before,
           (Dash
              | Hyphen
              | Grapheme_Base => True,
            others => False)),
         16#07#           =>  --  1807
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#08#           =>  --  1808
          (Other_Punctuation, Neutral,
           Other, Other, S_Continue, Exclamation,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#09#           =>  --  1809
          (Other_Punctuation, Neutral,
           Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#0A#           =>  --  180A
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Extender
              | Grapheme_Base => True,
            others => False)),
         16#0B# .. 16#0D# =>  --  180B .. 180D
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Variation_Selector
              | Case_Ignorable
              | Default_Ignorable_Code_Point
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0E#           =>  --  180E
          (Format, Neutral,
           Control, Format, Format, Glue,
           (Case_Ignorable
              | Default_Ignorable_Code_Point
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0F#           =>  --  180F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#10# .. 16#19# =>  --  1810 .. 1819
          (Decimal_Number, Neutral,
           Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#1A# .. 16#1F# =>  --  181A .. 181F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#43#           =>  --  1843
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
         16#78# .. 16#7F# =>  --  1878 .. 187F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#A9#           =>  --  18A9
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#AB# .. 16#AF# =>  --  18AB .. 18AF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#F6# .. 16#FF# =>  --  18F6 .. 18FF
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

end Matreshka.Internals.Unicode.Ucd.Core_0018;
