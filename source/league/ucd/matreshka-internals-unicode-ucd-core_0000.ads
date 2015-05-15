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

package Matreshka.Internals.Unicode.Ucd.Core_0000 is

   pragma Preelaborate;

   Group_0000 : aliased constant Core_Second_Stage
     := (16#09#           =>  --  0009
          (Control, Neutral,
           Control, Other, Sp, Break_After,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#0A#           =>  --  000A
          (Control, Neutral,
           LF, LF, LF, Line_Feed,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#0B# .. 16#0C# =>  --  000B .. 000C
          (Control, Neutral,
           Control, Newline, Sp, Mandatory_Break,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#0D#           =>  --  000D
          (Control, Neutral,
           CR, CR, CR, Carriage_Return,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#20#           =>  --  0020
          (Space_Separator, Narrow,
           Other, Other, Sp, Space,
           (Pattern_White_Space
              | White_Space
              | Grapheme_Base => True,
            others => False)),
         16#21#           =>  --  0021
          (Other_Punctuation, Narrow,
           Other, Other, S_Term, Exclamation,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#22#           =>  --  0022
          (Other_Punctuation, Narrow,
           Other, Double_Quote, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#23#           =>  --  0023
          (Other_Punctuation, Narrow,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#24#           =>  --  0024
          (Currency_Symbol, Narrow,
           Other, Other, Other, Prefix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#25#           =>  --  0025
          (Other_Punctuation, Narrow,
           Other, Other, Other, Postfix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#26#           =>  --  0026
          (Other_Punctuation, Narrow,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#27#           =>  --  0027
          (Other_Punctuation, Narrow,
           Other, Single_Quote, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Case_Ignorable
              | Grapheme_Base => True,
            others => False)),
         16#28#           =>  --  0028
          (Open_Punctuation, Narrow,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#29#           =>  --  0029
          (Close_Punctuation, Narrow,
           Other, Other, Close, Close_Parenthesis,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2A#           =>  --  002A
          (Other_Punctuation, Narrow,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2B#           =>  --  002B
          (Math_Symbol, Narrow,
           Other, Other, Other, Prefix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#2C#           =>  --  002C
          (Other_Punctuation, Narrow,
           Other, Mid_Num, S_Continue, Infix_Numeric,
           (Pattern_Syntax
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#2D#           =>  --  002D
          (Dash_Punctuation, Narrow,
           Other, Other, S_Continue, Hyphen,
           (Dash
              | Hyphen
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2E#           =>  --  002E
          (Other_Punctuation, Narrow,
           Other, Mid_Num_Let, A_Term, Infix_Numeric,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Case_Ignorable
              | Grapheme_Base => True,
            others => False)),
         16#2F#           =>  --  002F
          (Other_Punctuation, Narrow,
           Other, Other, Other, Break_Symbols,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#30# .. 16#39# =>  --  0030 .. 0039
          (Decimal_Number, Narrow,
           Other, Numeric, Numeric, Numeric,
           (ASCII_Hex_Digit
              | Hex_Digit
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3A#           =>  --  003A
          (Other_Punctuation, Narrow,
           Other, Mid_Letter, S_Continue, Infix_Numeric,
           (Pattern_Syntax
              | Terminal_Punctuation
              | Case_Ignorable
              | Grapheme_Base => True,
            others => False)),
         16#3B#           =>  --  003B
          (Other_Punctuation, Narrow,
           Other, Mid_Num, Other, Infix_Numeric,
           (Pattern_Syntax
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#3C# .. 16#3E# =>  --  003C .. 003E
          (Math_Symbol, Narrow,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#3F#           =>  --  003F
          (Other_Punctuation, Narrow,
           Other, Other, S_Term, Exclamation,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#40#           =>  --  0040
          (Other_Punctuation, Narrow,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#41# .. 16#46# =>  --  0041 .. 0046
          (Uppercase_Letter, Narrow,
           Other, A_Letter, Upper, Alphabetic,
           (ASCII_Hex_Digit
              | Hex_Digit
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
         16#47# .. 16#5A# =>  --  0047 .. 005A
          (Uppercase_Letter, Narrow,
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
         16#5B#           =>  --  005B
          (Open_Punctuation, Narrow,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5C#           =>  --  005C
          (Other_Punctuation, Narrow,
           Other, Other, Other, Prefix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5D#           =>  --  005D
          (Close_Punctuation, Narrow,
           Other, Other, Close, Close_Parenthesis,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5E#           =>  --  005E
          (Modifier_Symbol, Narrow,
           Other, Other, Other, Alphabetic,
           (Diacritic
              | Other_Math
              | Pattern_Syntax
              | Case_Ignorable
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#5F#           =>  --  005F
          (Connector_Punctuation, Narrow,
           Other, Extend_Num_Let, Other, Alphabetic,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#60#           =>  --  0060
          (Modifier_Symbol, Narrow,
           Other, Other, Other, Alphabetic,
           (Diacritic
              | Pattern_Syntax
              | Case_Ignorable
              | Grapheme_Base => True,
            others => False)),
         16#61# .. 16#66# =>  --  0061 .. 0066
          (Lowercase_Letter, Narrow,
           Other, A_Letter, Lower, Alphabetic,
           (ASCII_Hex_Digit
              | Hex_Digit
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
              | XID_Start => True,
            others => False)),
         16#67# .. 16#68# =>  --  0067 .. 0068
          (Lowercase_Letter, Narrow,
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
         16#69# .. 16#6A# =>  --  0069 .. 006A
          (Lowercase_Letter, Narrow,
           Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
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
              | XID_Start => True,
            others => False)),
         16#6B# .. 16#7A# =>  --  006B .. 007A
          (Lowercase_Letter, Narrow,
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
         16#7B#           =>  --  007B
          (Open_Punctuation, Narrow,
           Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#7C#           =>  --  007C
          (Math_Symbol, Narrow,
           Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#7D#           =>  --  007D
          (Close_Punctuation, Narrow,
           Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#7E#           =>  --  007E
          (Math_Symbol, Narrow,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#85#           =>  --  0085
          (Control, Neutral,
           Control, Newline, Sep, Next_Line,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#A0#           =>  --  00A0
          (Space_Separator, Neutral,
           Other, Other, Sp, Glue,
           (White_Space
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A1#           =>  --  00A1
          (Other_Punctuation, Ambiguous,
           Other, Other, Other, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A2#           =>  --  00A2
          (Currency_Symbol, Narrow,
           Other, Other, Other, Postfix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A3#           =>  --  00A3
          (Currency_Symbol, Narrow,
           Other, Other, Other, Prefix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A4#           =>  --  00A4
          (Currency_Symbol, Ambiguous,
           Other, Other, Other, Prefix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A5#           =>  --  00A5
          (Currency_Symbol, Narrow,
           Other, Other, Other, Prefix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A6#           =>  --  00A6
          (Other_Symbol, Narrow,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A7#           =>  --  00A7
          (Other_Punctuation, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A8#           =>  --  00A8
          (Modifier_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A9#           =>  --  00A9
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#AA#           =>  --  00AA
          (Other_Letter, Ambiguous,
           Other, A_Letter, Lower, Ambiguous,
           (Other_Lowercase
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#AB#           =>  --  00AB
          (Initial_Punctuation, Neutral,
           Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#AC#           =>  --  00AC
          (Math_Symbol, Narrow,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#AD#           =>  --  00AD
          (Format, Ambiguous,
           Control, Format, Format, Break_After,
           (Hyphen
              | Case_Ignorable
              | Default_Ignorable_Code_Point
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#AE#           =>  --  00AE
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#AF#           =>  --  00AF
          (Modifier_Symbol, Narrow,
           Other, Other, Other, Alphabetic,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B0#           =>  --  00B0
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Postfix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#B1#           =>  --  00B1
          (Math_Symbol, Ambiguous,
           Other, Other, Other, Prefix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B2# .. 16#B3# =>  --  00B2 .. 00B3
          (Other_Number, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B4#           =>  --  00B4
          (Modifier_Symbol, Ambiguous,
           Other, Other, Other, Break_Before,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B5#           =>  --  00B5
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B6#           =>  --  00B6
          (Other_Punctuation, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#B7#           =>  --  00B7
          (Other_Punctuation, Ambiguous,
           Other, Mid_Letter, Other, Ambiguous,
           (Diacritic
              | Extender
              | Other_ID_Continue
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B8#           =>  --  00B8
          (Modifier_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B9#           =>  --  00B9
          (Other_Number, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#BA#           =>  --  00BA
          (Other_Letter, Ambiguous,
           Other, A_Letter, Lower, Ambiguous,
           (Other_Lowercase
              | Alphabetic
              | Cased
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#BB#           =>  --  00BB
          (Final_Punctuation, Neutral,
           Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#BC# .. 16#BE# =>  --  00BC .. 00BE
          (Other_Number, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#BF#           =>  --  00BF
          (Other_Punctuation, Ambiguous,
           Other, Other, Other, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#C0# .. 16#C5# =>  --  00C0 .. 00C5
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
         16#C6#           =>  --  00C6
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
         16#C7# .. 16#CF# =>  --  00C7 .. 00CF
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
         16#D0#           =>  --  00D0
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
         16#D1# .. 16#D6# =>  --  00D1 .. 00D6
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
         16#D7#           =>  --  00D7
          (Math_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D8#           =>  --  00D8
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
         16#D9# .. 16#DD# =>  --  00D9 .. 00DD
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
         16#DE#           =>  --  00DE
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
         16#DF#           =>  --  00DF
          (Lowercase_Letter, Ambiguous,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E0# .. 16#E1# =>  --  00E0 .. 00E1
          (Lowercase_Letter, Ambiguous,
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
         16#E2# .. 16#E5# =>  --  00E2 .. 00E5
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
         16#E6#           =>  --  00E6
          (Lowercase_Letter, Ambiguous,
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
         16#E7#           =>  --  00E7
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
         16#E8# .. 16#EA# =>  --  00E8 .. 00EA
          (Lowercase_Letter, Ambiguous,
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
         16#EB#           =>  --  00EB
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
         16#EC# .. 16#ED# =>  --  00EC .. 00ED
          (Lowercase_Letter, Ambiguous,
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
         16#EE# .. 16#EF# =>  --  00EE .. 00EF
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
         16#F0#           =>  --  00F0
          (Lowercase_Letter, Ambiguous,
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
         16#F1#           =>  --  00F1
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
         16#F2# .. 16#F3# =>  --  00F2 .. 00F3
          (Lowercase_Letter, Ambiguous,
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
         16#F4# .. 16#F6# =>  --  00F4 .. 00F6
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
         16#F7#           =>  --  00F7
          (Math_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#F8# .. 16#FA# =>  --  00F8 .. 00FA
          (Lowercase_Letter, Ambiguous,
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
         16#FB#           =>  --  00FB
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
         16#FC#           =>  --  00FC
          (Lowercase_Letter, Ambiguous,
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
         16#FD#           =>  --  00FD
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
         16#FE#           =>  --  00FE
          (Lowercase_Letter, Ambiguous,
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
         16#FF#           =>  --  00FF
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
         others           =>
          (Control, Neutral,
           Control, Other, Other, Combining_Mark,
           (others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_0000;
