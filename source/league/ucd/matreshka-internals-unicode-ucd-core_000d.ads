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

package Matreshka.Internals.Unicode.Ucd.Core_000D is

   pragma Preelaborate;

   Group_000D : aliased constant Core_Second_Stage
     := (16#00#           =>  --  0D00
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#01#           =>  --  0D01
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#02# .. 16#03# =>  --  0D02 .. 0D03
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#04#           =>  --  0D04
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#0D#           =>  --  0D0D
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#11#           =>  --  0D11
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#3B# .. 16#3C# =>  --  0D3B .. 0D3C
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#3E#           =>  --  0D3E
          (Spacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3F# .. 16#40# =>  --  0D3F .. 0D40
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#41# .. 16#44# =>  --  0D41 .. 0D44
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#45#           =>  --  0D45
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#46# .. 16#48# =>  --  0D46 .. 0D48
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#49#           =>  --  0D49
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#4A# .. 16#4C# =>  --  0D4A .. 0D4C
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D#           =>  --  0D4D
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4F# .. 16#56# =>  --  0D4F .. 0D56
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#57#           =>  --  0D57
          (Spacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#58# .. 16#5F# =>  --  0D58 .. 0D5F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#62# .. 16#63# =>  --  0D62 .. 0D63
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#64# .. 16#65# =>  --  0D64 .. 0D65
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#66# .. 16#6F# =>  --  0D66 .. 0D6F
          (Decimal_Number, Neutral,
           Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#70# .. 16#75# =>  --  0D70 .. 0D75
          (Other_Number, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#76# .. 16#78# =>  --  0D76 .. 0D78
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#79#           =>  --  0D79
          (Other_Symbol, Neutral,
           Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#80# .. 16#81# =>  --  0D80 .. 0D81
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#82# .. 16#83# =>  --  0D82 .. 0D83
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#84#           =>  --  0D84
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#97# .. 16#99# =>  --  0D97 .. 0D99
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#B2#           =>  --  0DB2
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#BC#           =>  --  0DBC
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#BE# .. 16#BF# =>  --  0DBE .. 0DBF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#C7# .. 16#C9# =>  --  0DC7 .. 0DC9
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#CA#           =>  --  0DCA
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CB# .. 16#CE# =>  --  0DCB .. 0DCE
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#CF#           =>  --  0DCF
          (Spacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D0# .. 16#D1# =>  --  0DD0 .. 0DD1
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D2# .. 16#D4# =>  --  0DD2 .. 0DD4
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D5#           =>  --  0DD5
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#D6#           =>  --  0DD6
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D7#           =>  --  0DD7
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#D8# .. 16#DE# =>  --  0DD8 .. 0DDE
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#DF#           =>  --  0DDF
          (Spacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E0# .. 16#E5# =>  --  0DE0 .. 0DE5
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#E6# .. 16#EF# =>  --  0DE6 .. 0DEF
          (Decimal_Number, Neutral,
           Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F0# .. 16#F1# =>  --  0DF0 .. 0DF1
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#F2# .. 16#F3# =>  --  0DF2 .. 0DF3
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F4#           =>  --  0DF4
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#F5# .. 16#FF# =>  --  0DF5 .. 0DFF
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

end Matreshka.Internals.Unicode.Ucd.Core_000D;
