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

package Matreshka.Internals.Unicode.Ucd.Core_0000 is

   pragma Preelaborate;

   Group_0000 : aliased constant Core_Second_Stage
     := (16#09#           =>  --  0009
          (Control, 0,
           Control, Other, Sp, Break_After,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#0A#           =>  --  000A
          (Control, 0,
           LF, LF, LF, Line_Feed,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#0B# .. 16#0C# =>  --  000B .. 000C
          (Control, 0,
           Control, Newline, Sp, Mandatory_Break,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#0D#           =>  --  000D
          (Control, 0,
           CR, CR, CR, Carriage_Return,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#20#           =>  --  0020
          (Space_Separator, 0,
           Other, Other, Sp, Space,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_White_Space
              | White_Space
              | Grapheme_Base => True,
            others => False)),
         16#21#           =>  --  0021
          (Other_Punctuation, 0,
           Other, Other, S_Term, Exclamation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#22#           =>  --  0022
          (Other_Punctuation, 0,
           Other, Other, Close, Quotation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#23#           =>  --  0023
          (Other_Punctuation, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#24#           =>  --  0024
          (Currency_Symbol, 0,
           Other, Other, Other, Prefix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#25#           =>  --  0025
          (Other_Punctuation, 0,
           Other, Other, Other, Postfix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#26#           =>  --  0026
          (Other_Punctuation, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#27#           =>  --  0027
          (Other_Punctuation, 0,
           Other, Mid_Num_Let, Close, Quotation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Quotation_Mark
              | Case_Ignorable
              | Grapheme_Base => True,
            others => False)),
         16#28#           =>  --  0028
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#29#           =>  --  0029
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Parenthesis,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2A#           =>  --  002A
          (Other_Punctuation, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2B#           =>  --  002B
          (Math_Symbol, 0,
           Other, Other, Other, Prefix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#2C#           =>  --  002C
          (Other_Punctuation, 0,
           Other, Mid_Num, S_Continue, Infix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#2D#           =>  --  002D
          (Dash_Punctuation, 0,
           Other, Other, S_Continue, Hyphen,
           (Yes, Yes, Yes, Yes), None,
           (Dash
              | Hyphen
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2E#           =>  --  002E
          (Other_Punctuation, 0,
           Other, Mid_Num_Let, A_Term, Infix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Case_Ignorable
              | Grapheme_Base => True,
            others => False)),
         16#2F#           =>  --  002F
          (Other_Punctuation, 0,
           Other, Other, Other, Break_Symbols,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#30# .. 16#39# =>  --  0030 .. 0039
          (Decimal_Number, 0,
           Other, Numeric, Numeric, Numeric,
           (Yes, Yes, Yes, Yes), None,
           (ASCII_Hex_Digit
              | Hex_Digit
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3A#           =>  --  003A
          (Other_Punctuation, 0,
           Other, Mid_Letter, S_Continue, Infix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Terminal_Punctuation
              | Case_Ignorable
              | Grapheme_Base => True,
            others => False)),
         16#3B#           =>  --  003B
          (Other_Punctuation, 0,
           Other, Mid_Num, Other, Infix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#3C# .. 16#3E# =>  --  003C .. 003E
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#3F#           =>  --  003F
          (Other_Punctuation, 0,
           Other, Other, S_Term, Exclamation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#40#           =>  --  0040
          (Other_Punctuation, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#41# .. 16#46# =>  --  0041 .. 0046
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
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
              | Changes_When_NFKC_Casefolded
              | Has_Lowercase_Mapping
              | Has_Case_Folding => True,
            others => False)),
         16#47# .. 16#5A# =>  --  0047 .. 005A
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
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
         16#5B#           =>  --  005B
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5C#           =>  --  005C
          (Other_Punctuation, 0,
           Other, Other, Other, Prefix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5D#           =>  --  005D
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Parenthesis,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5E#           =>  --  005E
          (Modifier_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Other_Math
              | Pattern_Syntax
              | Case_Ignorable
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#5F#           =>  --  005F
          (Connector_Punctuation, 0,
           Other, Extend_Num_Let, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#60#           =>  --  0060
          (Modifier_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Pattern_Syntax
              | Case_Ignorable
              | Grapheme_Base => True,
            others => False)),
         16#61# .. 16#66# =>  --  0061 .. 0066
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
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
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#67# .. 16#68# =>  --  0067 .. 0068
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
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
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#69# .. 16#6A# =>  --  0069 .. 006A
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
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
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6B# .. 16#7A# =>  --  006B .. 007A
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
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
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7B#           =>  --  007B
          (Open_Punctuation, 0,
           Other, Other, Close, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#7C#           =>  --  007C
          (Math_Symbol, 0,
           Other, Other, Other, Break_After,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#7D#           =>  --  007D
          (Close_Punctuation, 0,
           Other, Other, Close, Close_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#7E#           =>  --  007E
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#85#           =>  --  0085
          (Control, 0,
           Control, Newline, Sep, Next_Line,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#A0#           =>  --  00A0
          (Space_Separator, 0,
           Other, Other, Sp, Glue,
           (Yes, Yes, No, No), No_Break,
           (White_Space
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A1#           =>  --  00A1
          (Other_Punctuation, 0,
           Other, Other, Other, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A2#           =>  --  00A2
          (Currency_Symbol, 0,
           Other, Other, Other, Postfix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A3# .. 16#A5# =>  --  00A3 .. 00A5
          (Currency_Symbol, 0,
           Other, Other, Other, Prefix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A6#           =>  --  00A6
          (Other_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A7#           =>  --  00A7
          (Other_Punctuation, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A8#           =>  --  00A8
          (Modifier_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, No, No), Compat,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A9#           =>  --  00A9
          (Other_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#AA#           =>  --  00AA
          (Other_Letter, 0,
           Other, A_Letter, Lower, Ambiguous,
           (Yes, Yes, No, No), Super,
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
          (Initial_Punctuation, 0,
           Other, Other, Close, Quotation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#AC#           =>  --  00AC
          (Math_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#AD#           =>  --  00AD
          (Format, 0,
           Control, Format, Format, Break_After,
           (Yes, Yes, Yes, Yes), None,
           (Hyphen
              | Case_Ignorable
              | Default_Ignorable_Code_Point
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#AE#           =>  --  00AE
          (Other_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#AF#           =>  --  00AF
          (Modifier_Symbol, 0,
           Other, Other, Other, Alphabetic,
           (Yes, Yes, No, No), Compat,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B0#           =>  --  00B0
          (Other_Symbol, 0,
           Other, Other, Other, Postfix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#B1#           =>  --  00B1
          (Math_Symbol, 0,
           Other, Other, Other, Prefix_Numeric,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B2# .. 16#B3# =>  --  00B2 .. 00B3
          (Other_Number, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, No, No), Super,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B4#           =>  --  00B4
          (Modifier_Symbol, 0,
           Other, Other, Other, Break_Before,
           (Yes, Yes, No, No), Compat,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B5#           =>  --  00B5
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, No, No), Compat,
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
              | Changes_When_NFKC_Casefolded
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping
              | Has_Case_Folding => True,
            others => False)),
         16#B6#           =>  --  00B6
          (Other_Punctuation, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#B7#           =>  --  00B7
          (Other_Punctuation, 0,
           Other, Mid_Letter, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Diacritic
              | Extender
              | Other_ID_Continue
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B8#           =>  --  00B8
          (Modifier_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, No, No), Compat,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B9#           =>  --  00B9
          (Other_Number, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, No, No), Super,
           (Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#BA#           =>  --  00BA
          (Other_Letter, 0,
           Other, A_Letter, Lower, Ambiguous,
           (Yes, Yes, No, No), Super,
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
          (Final_Punctuation, 0,
           Other, Other, Close, Quotation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#BC# .. 16#BE# =>  --  00BC .. 00BE
          (Other_Number, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, No, No), Fraction,
           (Grapheme_Base
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#BF#           =>  --  00BF
          (Other_Punctuation, 0,
           Other, Other, Other, Open_Punctuation,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#C0# .. 16#C5# =>  --  00C0 .. 00C5
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | Expands_On_NFD
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded
              | Has_Lowercase_Mapping
              | Has_Case_Folding => True,
            others => False)),
         16#C6#           =>  --  00C6
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
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
         16#C7# .. 16#CF# =>  --  00C7 .. 00CF
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | Expands_On_NFD
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded
              | Has_Lowercase_Mapping
              | Has_Case_Folding => True,
            others => False)),
         16#D0#           =>  --  00D0
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
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
         16#D1# .. 16#D6# =>  --  00D1 .. 00D6
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | Expands_On_NFD
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded
              | Has_Lowercase_Mapping
              | Has_Case_Folding => True,
            others => False)),
         16#D7#           =>  --  00D7
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D8#           =>  --  00D8
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
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
         16#D9# .. 16#DD# =>  --  00D9 .. 00DD
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | Expands_On_NFD
              | Expands_On_NFKD
              | Changes_When_NFKC_Casefolded
              | Has_Lowercase_Mapping
              | Has_Case_Folding => True,
            others => False)),
         16#DE#           =>  --  00DE
          (Uppercase_Letter, 0,
           Other, A_Letter, Upper, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
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
         16#DF#           =>  --  00DF
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
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
              | Changes_When_NFKC_Casefolded
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping
              | Has_Case_Folding => True,
            others => False)),
         16#E0# .. 16#E5# =>  --  00E0 .. 00E5
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | Expands_On_NFD
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E6#           =>  --  00E6
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
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
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E7# .. 16#EF# =>  --  00E7 .. 00EF
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | Expands_On_NFD
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F0#           =>  --  00F0
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
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
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F1# .. 16#F6# =>  --  00F1 .. 00F6
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | Expands_On_NFD
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F7#           =>  --  00F7
          (Math_Symbol, 0,
           Other, Other, Other, Ambiguous,
           (Yes, Yes, Yes, Yes), None,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#F8#           =>  --  00F8
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
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
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F9# .. 16#FD# =>  --  00F9 .. 00FD
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | Expands_On_NFD
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#FE#           =>  --  00FE
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, Yes, Yes, Yes), None,
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
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#FF#           =>  --  00FF
          (Lowercase_Letter, 0,
           Other, A_Letter, Lower, Alphabetic,
           (Yes, No, Yes, No), Canonical,
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
              | Expands_On_NFD
              | Expands_On_NFKD
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         others           =>
          (Control, 0,
           Control, Other, Other, Combining_Mark,
           (Yes, Yes, Yes, Yes), None,
           (others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_0000;
