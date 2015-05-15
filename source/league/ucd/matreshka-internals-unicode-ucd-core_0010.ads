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

package Matreshka.Internals.Unicode.Ucd.Core_0010 is

   pragma Preelaborate;

   Group_0010 : aliased constant Core_Second_Stage
     := (16#2B# .. 16#2C# =>  --  102B .. 102C
          (Spacing_Mark, Neutral,
           Other, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2D# .. 16#30# =>  --  102D .. 1030
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#31#           =>  --  1031
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#32# .. 16#36# =>  --  1032 .. 1036
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#37#           =>  --  1037
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#38#           =>  --  1038
          (Spacing_Mark, Neutral,
           Other, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#39# .. 16#3A# =>  --  1039 .. 103A
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3B# .. 16#3C# =>  --  103B .. 103C
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3D# .. 16#3E# =>  --  103D .. 103E
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#40# .. 16#49# =>  --  1040 .. 1049
          (Decimal_Number, Neutral,
           Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4A# .. 16#4B# =>  --  104A .. 104B
          (Other_Punctuation, Neutral,
           Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#4C# .. 16#4F# =>  --  104C .. 104F
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#56# .. 16#57# =>  --  1056 .. 1057
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#58# .. 16#59# =>  --  1058 .. 1059
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5E# .. 16#60# =>  --  105E .. 1060
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#62#           =>  --  1062
          (Spacing_Mark, Neutral,
           Other, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#63# .. 16#64# =>  --  1063 .. 1064
          (Spacing_Mark, Neutral,
           Other, Extend, Extend, Complex_Context,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#67# .. 16#68# =>  --  1067 .. 1068
          (Spacing_Mark, Neutral,
           Other, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#69# .. 16#6D# =>  --  1069 .. 106D
          (Spacing_Mark, Neutral,
           Other, Extend, Extend, Complex_Context,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#71# .. 16#74# =>  --  1071 .. 1074
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#82#           =>  --  1082
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#83#           =>  --  1083
          (Spacing_Mark, Neutral,
           Other, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#84#           =>  --  1084
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#85# .. 16#86# =>  --  1085 .. 1086
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#87# .. 16#8C# =>  --  1087 .. 108C
          (Spacing_Mark, Neutral,
           Other, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#8D#           =>  --  108D
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#8F#           =>  --  108F
          (Spacing_Mark, Neutral,
           Other, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#90# .. 16#99# =>  --  1090 .. 1099
          (Decimal_Number, Neutral,
           Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#9A# .. 16#9B# =>  --  109A .. 109B
          (Spacing_Mark, Neutral,
           Other, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#9C#           =>  --  109C
          (Spacing_Mark, Neutral,
           Other, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#9D#           =>  --  109D
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#9E# .. 16#9F# =>  --  109E .. 109F
          (Other_Symbol, Neutral,
           Other, Other, Other, Complex_Context,
           (Grapheme_Base => True,
            others => False)),
         16#A0# .. 16#C5# =>  --  10A0 .. 10C5
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
         16#C6#           =>  --  10C6
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#C7#           =>  --  10C7
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
         16#C8# .. 16#CC# =>  --  10C8 .. 10CC
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#CD#           =>  --  10CD
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
         16#CE# .. 16#CF# =>  --  10CE .. 10CF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#D0# .. 16#FA# =>  --  10D0 .. 10FA
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#FB#           =>  --  10FB
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#FC#           =>  --  10FC
          (Modifier_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#FD# .. 16#FF# =>  --  10FD .. 10FF
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           =>
          (Other_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_0010;
