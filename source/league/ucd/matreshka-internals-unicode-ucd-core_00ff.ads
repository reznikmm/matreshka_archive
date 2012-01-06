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

package Matreshka.Internals.Unicode.Ucd.Core_00FF is

   pragma Preelaborate;

   Group_00FF : aliased constant Core_Second_Stage
     := (16#00#           =>  --  FF00
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#01#           =>  --  FF01
          (Other_Punctuation, 0,
           Other, Other, S_Term, Exclamation,
           (Yes, Yes, No, No), Wide,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#02#           =>  --  FF02
          (Other_Punctuation, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Quotation_Mark
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#03#           =>  --  FF03
          (Other_Punctuation, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#04#           =>  --  FF04
          (Currency_Symbol, 0,
           Other, Other, Other, Prefix_Numeric,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#05#           =>  --  FF05
          (Other_Punctuation, 0,
           Other, Other, Other, Postfix_Numeric,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#06#           =>  --  FF06
          (Other_Punctuation, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#07#           =>  --  FF07
          (Other_Punctuation, 0,
           Other, Mid_Num_Let, Other, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Quotation_Mark
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#08#           =>  --  FF08
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#09#           =>  --  FF09
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0A#           =>  --  FF0A
          (Other_Punctuation, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0B#           =>  --  FF0B
          (Math_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0C#           =>  --  FF0C
          (Other_Punctuation, 0,
           Other, Mid_Num, S_Continue, Close_Punctuation,
           (Yes, Yes, No, No), Wide,
           (Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0D#           =>  --  FF0D
          (Dash_Punctuation, 0,
           Other, Other, S_Continue, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Dash
              | Hyphen
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0E#           =>  --  FF0E
          (Other_Punctuation, 0,
           Other, Mid_Num_Let, A_Term, Close_Punctuation,
           (Yes, Yes, No, No), Wide,
           (STerm
              | Terminal_Punctuation
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#0F#           =>  --  FF0F
          (Other_Punctuation, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#10# .. 16#19# =>  --  FF10 .. FF19
          (Decimal_Number, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Hex_Digit
              | Grapheme_Base
              | ID_Continue
              | XID_Continue
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#1A#           =>  --  FF1A
          (Other_Punctuation, 0,
           Other, Mid_Letter, S_Continue, Nonstarter,
           (Yes, Yes, No, No), Wide,
           (Terminal_Punctuation
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#1B#           =>  --  FF1B
          (Other_Punctuation, 0,
           Other, Mid_Num, Other, Nonstarter,
           (Yes, Yes, No, No), Wide,
           (Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#1C# .. 16#1E# =>  --  FF1C .. FF1E
          (Math_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#1F#           =>  --  FF1F
          (Other_Punctuation, 0,
           Other, Other, S_Term, Exclamation,
           (Yes, Yes, No, No), Wide,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#20#           =>  --  FF20
          (Other_Punctuation, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#21# .. 16#26# =>  --  FF21 .. FF26
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Ideographic,
           (Yes, Yes, No, No), Wide,
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
              | Changes_When_NFKC_Casefolded
              | Has_Lowercase_Mapping
              | Has_Case_Folding => True,
            others => False)),
         16#27# .. 16#3A# =>  --  FF27 .. FF3A
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Ideographic,
           (Yes, Yes, No, No), Wide,
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
              | Changes_When_NFKC_Casefolded
              | Has_Lowercase_Mapping
              | Has_Case_Folding => True,
            others => False)),
         16#3B#           =>  --  FF3B
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3C#           =>  --  FF3C
          (Other_Punctuation, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Other_Math
              | Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3D#           =>  --  FF3D
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3E#           =>  --  FF3E
          (Modifier_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Diacritic
              | Other_Math
              | Case_Ignorable
              | Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#3F#           =>  --  FF3F
          (Connector_Punctuation, 0,
           Other, Extend_Num_Let, Other, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#40#           =>  --  FF40
          (Modifier_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#41# .. 16#46# =>  --  FF41 .. FF46
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Ideographic,
           (Yes, Yes, No, No), Wide,
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
              | Changes_When_NFKC_Casefolded
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#47# .. 16#5A# =>  --  FF47 .. FF5A
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Ideographic,
           (Yes, Yes, No, No), Wide,
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
              | Changes_When_NFKC_Casefolded
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5B#           =>  --  FF5B
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5C#           =>  --  FF5C
          (Math_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5D#           =>  --  FF5D
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5E#           =>  --  FF5E
          (Math_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5F#           =>  --  FF5F
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#60#           =>  --  FF60
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#61#           =>  --  FF61
          (Other_Punctuation, 0,
           Other, Other, S_Term, Close_Punctuation,
           (Yes, Yes, No, No), Narrow,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#62#           =>  --  FF62
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, No, No), Narrow,
           (Quotation_Mark
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#63#           =>  --  FF63
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, No, No), Narrow,
           (Quotation_Mark
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#64#           =>  --  FF64
          (Other_Punctuation, 0,
           Other, Other, S_Continue, Close_Punctuation,
           (Yes, Yes, No, No), Narrow,
           (Terminal_Punctuation
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#65#           =>  --  FF65
          (Other_Punctuation, 0,
           Other, Other, Other, Nonstarter,
           (Yes, Yes, No, No), Narrow,
           (Hyphen
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#66#           =>  --  FF66
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Narrow,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#67# .. 16#6F# =>  --  FF67 .. FF6F
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Nonstarter,
           (Yes, Yes, No, No), Narrow,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#70#           =>  --  FF70
          (Modifier_Letter, 0,
           Other, Katakana, O_Letter, Nonstarter,
           (Yes, Yes, No, No), Narrow,
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
          (Other_Letter, 0,
           Other, Katakana, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Narrow,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#9E# .. 16#9F# =>  --  FF9E .. FF9F
          (Modifier_Letter, 0,
           Extend, Extend, Extend, Nonstarter,
           (Yes, Yes, No, No), Narrow,
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
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Narrow,
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
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#C8# .. 16#C9# =>  --  FFC8 .. FFC9
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#D0# .. 16#D1# =>  --  FFD0 .. FFD1
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#D8# .. 16#D9# =>  --  FFD8 .. FFD9
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#DD# .. 16#DF# =>  --  FFDD .. FFDF
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#E0#           =>  --  FFE0
          (Currency_Symbol, 0,
           Other, Other, Other, Postfix_Numeric,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E1#           =>  --  FFE1
          (Currency_Symbol, 0,
           Other, Other, Other, Prefix_Numeric,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E2#           =>  --  FFE2
          (Math_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E3#           =>  --  FFE3
          (Modifier_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E4#           =>  --  FFE4
          (Other_Symbol, 0,
           Other, Other, Other, Ideographic,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E5# .. 16#E6# =>  --  FFE5 .. FFE6
          (Currency_Symbol, 0,
           Other, Other, Other, Prefix_Numeric,
           (Yes, Yes, No, No), Wide,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E7#           =>  --  FFE7
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#E8#           =>  --  FFE8
          (Other_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, No, No), Narrow,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E9# .. 16#EC# =>  --  FFE9 .. FFEC
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, No, No), Narrow,
           (Grapheme_Base
              | Math
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#ED# .. 16#EE# =>  --  FFED .. FFEE
          (Other_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, No, No), Narrow,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#EF#           =>  --  FFEF
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (others => False)),
         16#F0# .. 16#F8# =>  --  FFF0 .. FFF8
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (Other_Default_Ignorable_Code_Point
              | Default_Ignorable_Code_Point
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F9# .. 16#FB# =>  --  FFF9 .. FFFB
          (Format, 0,
           Control, Format, Format, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (Case_Ignorable => True,
            others => False)),
         16#FC#           =>  --  FFFC
          (Other_Symbol, 0,
           Other, Other, Other, Contingent_Break,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#FD#           =>  --  FFFD
          (Other_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base => True,
            others => False)),
         16#FE# .. 16#FF# =>  --  FFFE .. FFFF
          (Unassigned, 0,
           Other, Other, Other, Unknown,
           (Yes, Yes, Yes, Yes), None,
           (Noncharacter_Code_Point => True,
            others => False)),
         others           =>
          (Other_Letter, 0,
           Other, A_Letter, O_Letter, Alphabetic,
           (Yes, Yes, No, No), Narrow,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_00FF;
