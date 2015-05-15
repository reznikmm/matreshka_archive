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

package Matreshka.Internals.Unicode.Ucd.Core_00FF is

   pragma Preelaborate;

   Group_00FF : aliased constant Core_Second_Stage
     := (16#00#           =>  --  FF00
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#01#           =>  --  FF01
          (Other_Punctuation, Fullwidth,
           Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#02#           =>  --  FF02
          (Other_Punctuation, Fullwidth,
           Other, Other, Other, Ideographic,
           (Quotation_Mark
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#03#           =>  --  FF03
          (Other_Punctuation, Fullwidth,
           Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#04#           =>  --  FF04
          (Currency_Symbol, Fullwidth,
           Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#05#           =>  --  FF05
          (Other_Punctuation, Fullwidth,
           Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#06#           =>  --  FF06
          (Other_Punctuation, Fullwidth,
           Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#07#           =>  --  FF07
          (Other_Punctuation, Fullwidth,
           Other, Mid_Num_Let, Other, Ideographic,
           (Quotation_Mark
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#08#           =>  --  FF08
          (Open_Punctuation, Fullwidth,
           Other, Other, Close, Open_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#09#           =>  --  FF09
          (Close_Punctuation, Fullwidth,
           Other, Other, Close, Close_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0A#           =>  --  FF0A
          (Other_Punctuation, Fullwidth,
           Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0B#           =>  --  FF0B
          (Math_Symbol, Fullwidth,
           Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0C#           =>  --  FF0C
          (Other_Punctuation, Fullwidth,
           Other, Mid_Num, S_Continue, Close_Punctuation,
           (Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0D#           =>  --  FF0D
          (Dash_Punctuation, Fullwidth,
           Other, Other, S_Continue, Ideographic,
           (Dash
              | Hyphen
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0E#           =>  --  FF0E
          (Other_Punctuation, Fullwidth,
           Other, Mid_Num_Let, A_Term, Close_Punctuation,
           (STerm
              | Terminal_Punctuation
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0F#           =>  --  FF0F
          (Other_Punctuation, Fullwidth,
           Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#10# .. 16#19# =>  --  FF10 .. FF19
          (Decimal_Number, Fullwidth,
           Other, Other, Other, Ideographic,
           (Hex_Digit
              | Grapheme_Base
              | ID_Continue
              | XID_Continue
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#1A#           =>  --  FF1A
          (Other_Punctuation, Fullwidth,
           Other, Mid_Letter, S_Continue, Nonstarter,
           (Terminal_Punctuation
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#1B#           =>  --  FF1B
          (Other_Punctuation, Fullwidth,
           Other, Mid_Num, Other, Nonstarter,
           (Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#1C# .. 16#1E# =>  --  FF1C .. FF1E
          (Math_Symbol, Fullwidth,
           Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#1F#           =>  --  FF1F
          (Other_Punctuation, Fullwidth,
           Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#20#           =>  --  FF20
          (Other_Punctuation, Fullwidth,
           Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#21# .. 16#26# =>  --  FF21 .. FF26
          (Uppercase_Letter, Fullwidth,
           Other, A_Letter, Upper, Ideographic,
           (Hex_Digit
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
         16#27# .. 16#3A# =>  --  FF27 .. FF3A
          (Uppercase_Letter, Fullwidth,
           Other, A_Letter, Upper, Ideographic,
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
         16#3B#           =>  --  FF3B
          (Open_Punctuation, Fullwidth,
           Other, Other, Close, Open_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3C#           =>  --  FF3C
          (Other_Punctuation, Fullwidth,
           Other, Other, Other, Ideographic,
           (Other_Math
              | Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3D#           =>  --  FF3D
          (Close_Punctuation, Fullwidth,
           Other, Other, Close, Close_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3E#           =>  --  FF3E
          (Modifier_Symbol, Fullwidth,
           Other, Other, Other, Ideographic,
           (Diacritic
              | Other_Math
              | Case_Ignorable
              | Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3F#           =>  --  FF3F
          (Connector_Punctuation, Fullwidth,
           Other, Extend_Num_Let, Other, Ideographic,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#40#           =>  --  FF40
          (Modifier_Symbol, Fullwidth,
           Other, Other, Other, Ideographic,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#41# .. 16#46# =>  --  FF41 .. FF46
          (Lowercase_Letter, Fullwidth,
           Other, A_Letter, Lower, Ideographic,
           (Hex_Digit
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
         16#47# .. 16#5A# =>  --  FF47 .. FF5A
          (Lowercase_Letter, Fullwidth,
           Other, A_Letter, Lower, Ideographic,
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
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5B#           =>  --  FF5B
          (Open_Punctuation, Fullwidth,
           Other, Other, Close, Open_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5C#           =>  --  FF5C
          (Math_Symbol, Fullwidth,
           Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5D#           =>  --  FF5D
          (Close_Punctuation, Fullwidth,
           Other, Other, Close, Close_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5E#           =>  --  FF5E
          (Math_Symbol, Fullwidth,
           Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5F#           =>  --  FF5F
          (Open_Punctuation, Fullwidth,
           Other, Other, Close, Open_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#60#           =>  --  FF60
          (Close_Punctuation, Fullwidth,
           Other, Other, Close, Close_Punctuation,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#61#           =>  --  FF61
          (Other_Punctuation, Halfwidth,
           Other, Other, S_Term, Close_Punctuation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#62#           =>  --  FF62
          (Open_Punctuation, Halfwidth,
           Other, Other, Close, Open_Punctuation,
           (Quotation_Mark
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#63#           =>  --  FF63
          (Close_Punctuation, Halfwidth,
           Other, Other, Close, Close_Punctuation,
           (Quotation_Mark
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#64#           =>  --  FF64
          (Other_Punctuation, Halfwidth,
           Other, Other, S_Continue, Close_Punctuation,
           (Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#65#           =>  --  FF65
          (Other_Punctuation, Halfwidth,
           Other, Other, Other, Nonstarter,
           (Hyphen
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#66#           =>  --  FF66
          (Other_Letter, Halfwidth,
           Other, Katakana, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#67# .. 16#6F# =>  --  FF67 .. FF6F
          (Other_Letter, Halfwidth,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#70#           =>  --  FF70
          (Modifier_Letter, Halfwidth,
           Other, Katakana, O_Letter, Conditional_Japanese_Starter,
           (Diacritic
              | Extender
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#71# .. 16#9D# =>  --  FF71 .. FF9D
          (Other_Letter, Halfwidth,
           Other, Katakana, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#9E# .. 16#9F# =>  --  FF9E .. FF9F
          (Modifier_Letter, Halfwidth,
           Extend, Extend, Extend, Nonstarter,
           (Diacritic
              | Other_Grapheme_Extend
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | ID_Start
              | XID_Continue
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A0#           =>  --  FFA0
          (Other_Letter, Halfwidth,
           Other, A_Letter, O_Letter, Alphabetic,
           (Other_Default_Ignorable_Code_Point
              | Alphabetic
              | Default_Ignorable_Code_Point
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#BF# .. 16#C1# =>  --  FFBF .. FFC1
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#C8# .. 16#C9# =>  --  FFC8 .. FFC9
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#D0# .. 16#D1# =>  --  FFD0 .. FFD1
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#D8# .. 16#D9# =>  --  FFD8 .. FFD9
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#DD# .. 16#DF# =>  --  FFDD .. FFDF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#E0#           =>  --  FFE0
          (Currency_Symbol, Fullwidth,
           Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E1#           =>  --  FFE1
          (Currency_Symbol, Fullwidth,
           Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E2#           =>  --  FFE2
          (Math_Symbol, Fullwidth,
           Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E3#           =>  --  FFE3
          (Modifier_Symbol, Fullwidth,
           Other, Other, Other, Ideographic,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E4#           =>  --  FFE4
          (Other_Symbol, Fullwidth,
           Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E5# .. 16#E6# =>  --  FFE5 .. FFE6
          (Currency_Symbol, Fullwidth,
           Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E7#           =>  --  FFE7
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#E8#           =>  --  FFE8
          (Other_Symbol, Halfwidth,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E9# .. 16#EC# =>  --  FFE9 .. FFEC
          (Math_Symbol, Halfwidth,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#ED# .. 16#EE# =>  --  FFED .. FFEE
          (Other_Symbol, Halfwidth,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#EF#           =>  --  FFEF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#F0# .. 16#F8# =>  --  FFF0 .. FFF8
          (Unassigned, Neutral,
           Control, Other, Other, Unknown,
           (Other_Default_Ignorable_Code_Point
              | Default_Ignorable_Code_Point
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F9# .. 16#FB# =>  --  FFF9 .. FFFB
          (Format, Neutral,
           Control, Format, Format, Combining_Mark,
           (Case_Ignorable => True,
            others => False)),
         16#FC#           =>  --  FFFC
          (Other_Symbol, Neutral,
           Other, Other, Other, Contingent_Break,
           (Grapheme_Base => True,
            others => False)),
         16#FD#           =>  --  FFFD
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#FE# .. 16#FF# =>  --  FFFE .. FFFF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (Noncharacter_Code_Point => True,
            others => False)),
         others           =>
          (Other_Letter, Halfwidth,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_00FF;
