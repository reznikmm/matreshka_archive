------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2009 Vadim Godunko <vgodunko@gmail.com>                      --
--                                                                          --
-- Matreshka is free software;  you can  redistribute it  and/or modify  it --
-- under terms of the  GNU General Public License as published  by the Free --
-- Software  Foundation;  either version 2,  or (at your option)  any later --
-- version.  Matreshka  is distributed in the hope that it will be  useful, --
-- but   WITHOUT  ANY  WARRANTY;  without  even  the  implied  warranty  of --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General --
-- Public License for more details.  You should have received a copy of the --
-- GNU General Public License distributed with Matreshka; see file COPYING. --
-- If not, write  to  the  Free Software Foundation,  51  Franklin  Street, --
-- Fifth Floor, Boston, MA 02110-1301, USA.                                 --
--                                                                          --
-- As a special exception,  if other files  instantiate  generics from this --
-- unit, or you link  this unit with other files  to produce an executable, --
-- this  unit  does not  by itself cause  the resulting  executable  to  be --
-- covered  by the  GNU  General  Public  License.  This exception does not --
-- however invalidate  any other reasons why  the executable file  might be --
-- covered by the  GNU Public License.                                      --
--                                                                          --
------------------------------------------------------------------------------
--  This package is generated automatically
------------------------------------------------------------------------------

package Matreshka.Internals.Ucd.Core is

   pragma Preelaborate;

   Group_0000 : aliased constant Core_Second_Stage
     := (16#09#           =>
          (Control, 0, Control, Other, Sp, Break_After,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#0A#           =>
          (Control, 0, LF, LF, LF, Line_Feed,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#0B# .. 16#0C# =>
          (Control, 0, Control, Newline, Sp, Mandatory_Break,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#0D#           =>
          (Control, 0, CR, CR, CR, Carriage_Return,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#20#           =>
          (Space_Separator, 0, Other, Other, Sp, Space,
           (Pattern_White_Space
              | White_Space
              | Grapheme_Base => True,
            others => False)),
         16#21#           =>
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#22#           =>
          (Other_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#23#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#24#           =>
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#25#           =>
          (Other_Punctuation, 0, Other, Other, Other, Postfix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#26#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#27#           =>
          (Other_Punctuation, 0, Other, Mid_Num_Let, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#28#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#29#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2A#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2B#           =>
          (Math_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#2C#           =>
          (Other_Punctuation, 0, Other, Mid_Num, S_Continue, Infix_Numeric,
           (Pattern_Syntax
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#2D#           =>
          (Dash_Punctuation, 0, Other, Other, S_Continue, Hyphen,
           (Dash
              | Hyphen
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2E#           =>
          (Other_Punctuation, 0, Other, Mid_Num_Let, A_Term, Infix_Numeric,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#2F#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_Symbols,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#30# .. 16#39# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (ASCII_Hex_Digit
              | Hex_Digit
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3A#           =>
          (Other_Punctuation, 0, Other, Mid_Letter, S_Continue, Infix_Numeric,
           (Pattern_Syntax
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#3B#           =>
          (Other_Punctuation, 0, Other, Mid_Num, Other, Infix_Numeric,
           (Pattern_Syntax
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#3C# .. 16#3E# =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#3F#           =>
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#40#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#41# .. 16#46# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (ASCII_Hex_Digit
              | Hex_Digit
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#47# .. 16#5A# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5B#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5C#           =>
          (Other_Punctuation, 0, Other, Other, Other, Prefix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5D#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5E#           =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#5F#           =>
          (Connector_Punctuation, 0, Other, Extend_Num_Let, Other, Alphabetic,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#60#           =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#61# .. 16#66# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (ASCII_Hex_Digit
              | Hex_Digit
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#67# .. 16#68# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#69# .. 16#6A# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6B# .. 16#7A# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7B#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#7C#           =>
          (Math_Symbol, 0, Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#7D#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#7E#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#85#           =>
          (Control, 0, Control, Newline, Sep, Next_Line,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#A0#           =>
          (Space_Separator, 0, Other, Other, Sp, Glue,
           (White_Space
              | Grapheme_Base => True,
            others => False)),
         16#A1#           =>
          (Other_Punctuation, 0, Other, Other, Other, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A2#           =>
          (Currency_Symbol, 0, Other, Other, Other, Postfix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A3# .. 16#A5# =>
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A6#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A7#           =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A8#           =>
          (Modifier_Symbol, 0, Other, Other, Other, Ambiguous,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#A9#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#AA#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Ambiguous,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#AB#           =>
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#AC#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#AD#           =>
          (Format, 0, Control, Format, Format, Break_After,
           (Hyphen
              | Default_Ignorable_Code_Point => True,
            others => False)),
         16#AE#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#AF#           =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#B0#           =>
          (Other_Symbol, 0, Other, Other, Other, Postfix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#B1#           =>
          (Math_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B2# .. 16#B3# =>
          (Other_Number, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#B4#           =>
          (Modifier_Symbol, 0, Other, Other, Other, Break_Before,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#B5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B6#           =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#B7#           =>
          (Other_Punctuation, 0, Other, Mid_Letter, Other, Ambiguous,
           (Diacritic
              | Extender
              | Other_ID_Continue
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B8#           =>
          (Modifier_Symbol, 0, Other, Other, Other, Ambiguous,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#B9#           =>
          (Other_Number, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#BA#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Ambiguous,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BB#           =>
          (Final_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#BC# .. 16#BE# =>
          (Other_Number, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#BF#           =>
          (Other_Punctuation, 0, Other, Other, Other, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#C0# .. 16#D6# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#D7#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D8# .. 16#DE# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#DF#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E0# .. 16#F6# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F7#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         others           => (Control, 0, Control, Other, Other, Combining_Mark,
                              (others => False)));

   Group_0001 : aliased constant Core_Second_Stage
     := (16#01#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#03#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#05#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#07#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#09#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#11#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#13#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#15#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#17#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#19#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#21#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#23#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#25#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#27#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#29#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#31#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#33#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#35#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#37#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#38#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3A#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3C#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3E#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#40#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#42#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#44#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#46#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#48#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#49#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#4B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#51#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#53#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#55#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#57#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#59#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#61#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#63#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#65#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#67#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#69#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#71#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#73#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#75#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#77#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7A#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7C#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7E# .. 16#80# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#83#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#85#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#88#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8C#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#92#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#95#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#99# .. 16#9A# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#9B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#9E#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A1#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A8#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AA# .. 16#AB# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#AD#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B0#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B4#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B6#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B9#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BA#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BB#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BD#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BE#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BF#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C0# .. 16#C3# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C4#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C5#           =>
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C6#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C7#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C8#           =>
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C9#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CA#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CB#           =>
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CC#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CE#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D0#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D2#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D4#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D6#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D8#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DA#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DC# .. 16#DD# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DF#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E1#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E7#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E9#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#EB#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#ED#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#EF#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F0#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F1#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F2#           =>
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F9#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#FB#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#FD#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         others           => (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | Uppercase
                                 | XID_Continue
                                 | XID_Start
                                 | Has_Lowercase_Mapping => True,
                               others => False)));

   Group_0002 : aliased constant Core_Second_Stage
     := (16#00#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#01#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#02#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#03#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#04#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#05#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#06#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#07#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#08#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#09#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0A#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#0B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0C#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#0D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0E#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#0F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#10#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#11#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#12#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#13#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#14#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#15#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#16#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#17#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#18#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#19#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1A#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#1B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1C#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#1D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1E#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#1F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#20#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#22#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#23#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#24#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#25#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#26#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#27#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#28#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#29#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2A#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#2B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2C#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#2D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2E#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#2F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#30#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#31#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#32#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#33#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3A# .. 16#3B# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#3C#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3D# .. 16#3E# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#41#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#42#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#43# .. 16#46# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#47#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#48#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#49#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4A#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4C#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4E#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4F# .. 16#51# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#53# .. 16#54# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#56# .. 16#57# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#59#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#60#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#63#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#68#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#69#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#71# .. 16#72# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#75#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#80#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#83#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#88# .. 16#8C# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#92#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#94#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#9D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B0# .. 16#B1# =>
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B2#           =>
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Diacritic
              | Other_Lowercase
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B3# .. 16#B8# =>
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B9# .. 16#BF# =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C0# .. 16#C1# =>
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C2# .. 16#C5# =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#C6#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C7#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Ambiguous,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C8#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Break_Before,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C9# .. 16#CB# =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Ambiguous,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#CC#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Break_Before,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#CD#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Ambiguous,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#CE# .. 16#CF# =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D0#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Ambiguous,
           (Diacritic
              | Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D1#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D2# .. 16#D7# =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#D8# .. 16#DB# =>
          (Modifier_Symbol, 0, Other, Other, Other, Ambiguous,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#DC#           =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#DD#           =>
          (Modifier_Symbol, 0, Other, Other, Other, Ambiguous,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#DE#           =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#DF#           =>
          (Modifier_Symbol, 0, Other, Other, Other, Break_Before,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#E0# .. 16#E4# =>
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E5# .. 16#EB# =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#EC#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#ED#           =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#EE#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | Lowercase
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_0003 : aliased constant Core_Second_Stage
     := (16#00# .. 16#14# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#15#           =>
          (Nonspacing_Mark, 232, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#16# .. 16#19# =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#1A#           =>
          (Nonspacing_Mark, 232, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#1B#           =>
          (Nonspacing_Mark, 216, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#1C# .. 16#20# =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#21# .. 16#22# =>
          (Nonspacing_Mark, 202, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#23# .. 16#26# =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#27# .. 16#28# =>
          (Nonspacing_Mark, 202, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#29# .. 16#33# =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#34# .. 16#38# =>
          (Nonspacing_Mark, 1, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#39# .. 16#3C# =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3D# .. 16#3F# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#40# .. 16#41# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Deprecated
              | Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#42# .. 16#44# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#45#           =>
          (Nonspacing_Mark, 240, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Other_Lowercase
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | Lowercase
              | XID_Continue
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#46#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#47# .. 16#49# =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4A# .. 16#4C# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D# .. 16#4E# =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4F#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Glue,
           (Other_Default_Ignorable_Code_Point
              | Default_Ignorable_Code_Point
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#50# .. 16#52# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#53# .. 16#56# =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#57#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#58#           =>
          (Nonspacing_Mark, 232, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#59# .. 16#5A# =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5B#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5C#           =>
          (Nonspacing_Mark, 233, Extend, Extend, Extend, Glue,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5D# .. 16#5E# =>
          (Nonspacing_Mark, 234, Extend, Extend, Extend, Glue,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5F#           =>
          (Nonspacing_Mark, 233, Extend, Extend, Extend, Glue,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#60# .. 16#61# =>
          (Nonspacing_Mark, 234, Extend, Extend, Extend, Glue,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#62#           =>
          (Nonspacing_Mark, 233, Extend, Extend, Extend, Glue,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#63# .. 16#6F# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#70#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#72#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#74#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#75#           =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#76#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#78# .. 16#79# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#7A#           =>
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase => True,
            others => False)),
         16#7E#           =>
          (Other_Punctuation, 0, Other, Mid_Num, Other, Infix_Numeric,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#7F# .. 16#83# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#84# .. 16#85# =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#86#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#87#           =>
          (Other_Punctuation, 0, Other, Mid_Letter, Other, Alphabetic,
           (Other_ID_Continue
              | Terminal_Punctuation
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#88# .. 16#8A# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#8B#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#8C#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#8D#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#8E# .. 16#8F# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#90#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#91# .. 16#A1# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#A2#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A3# .. 16#AB# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#B0#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#CF#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#D0# .. 16#D1# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D2#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D3# .. 16#D4# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D8#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#DA#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#DC#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#DE#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#E0#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#E2#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#E4#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#E6#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#E8#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#EA#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#EC#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#EE#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#F0# .. 16#F1# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F4#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#F5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F6#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#F7#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#F9# .. 16#FA# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#FC#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | Lowercase
                                 | XID_Continue
                                 | XID_Start
                                 | Has_Uppercase_Mapping
                                 | Has_Titlecase_Mapping => True,
                               others => False)));

   Group_0004 : aliased constant Core_Second_Stage
     := (16#30# .. 16#55# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#56#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#57#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#58#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#59# .. 16#5F# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#61#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#63#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#65#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#67#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#69#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#71#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#73#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#75#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#77#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#79#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#81#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#82#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#83# .. 16#87# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#88# .. 16#89# =>
          (Enclosing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend => True,
            others => False)),
         16#8B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#91#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#93#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#95#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#97#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#99#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#9B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#9D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#9F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A1#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A7#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A9#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AB#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AD#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AF#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B1#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B7#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B9#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BB#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BD#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BF#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C2#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C4#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C6#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C8#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CA#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CC#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CE# .. 16#CF# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D1#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D7#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D9#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DB#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DD#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DF#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E1#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E7#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E9#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#EB#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#ED#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#EF#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F1#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F7#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F9#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#FB#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#FD#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         others           => (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | Uppercase
                                 | XID_Continue
                                 | XID_Start
                                 | Has_Lowercase_Mapping => True,
                               others => False)));

   Group_0005 : aliased constant Core_Second_Stage
     := (16#01#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#03#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#05#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#07#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#09#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#11#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#13#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#15#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#17#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#19#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#21#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#23#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#24# .. 16#30# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#57# .. 16#58# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#59#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#5A# .. 16#5B# =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#5C#           =>
          (Other_Punctuation, 0, Other, Other, S_Term, Alphabetic,
           (STerm
              | Grapheme_Base => True,
            others => False)),
         16#5D#           =>
          (Other_Punctuation, 0, Other, Other, S_Continue, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#5E#           =>
          (Other_Punctuation, 0, Other, Other, S_Term, Alphabetic,
           (STerm
              | Grapheme_Base => True,
            others => False)),
         16#5F#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#60#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#61# .. 16#86# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#87#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#88#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#89#           =>
          (Other_Punctuation, 0, Other, Mid_Num, S_Term, Infix_Numeric,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#8A#           =>
          (Dash_Punctuation, 0, Other, Other, Other, Break_After,
           (Dash
              | Hyphen
              | Grapheme_Base => True,
            others => False)),
         16#8B# .. 16#90# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#91#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#92# .. 16#95# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#96#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#97# .. 16#99# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#9A#           =>
          (Nonspacing_Mark, 222, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#9B#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#9C# .. 16#A1# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#A2#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#A3# .. 16#A7# =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#A8# .. 16#A9# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#AA#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#AB# .. 16#AC# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#AD#           =>
          (Nonspacing_Mark, 222, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#AE#           =>
          (Nonspacing_Mark, 228, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#AF#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B0#           =>
          (Nonspacing_Mark, 10, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B1#           =>
          (Nonspacing_Mark, 11, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B2#           =>
          (Nonspacing_Mark, 12, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B3#           =>
          (Nonspacing_Mark, 13, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B4#           =>
          (Nonspacing_Mark, 14, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B5#           =>
          (Nonspacing_Mark, 15, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B6#           =>
          (Nonspacing_Mark, 16, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B7#           =>
          (Nonspacing_Mark, 17, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B8#           =>
          (Nonspacing_Mark, 18, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B9# .. 16#BA# =>
          (Nonspacing_Mark, 19, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BB#           =>
          (Nonspacing_Mark, 20, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BC#           =>
          (Nonspacing_Mark, 21, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BD#           =>
          (Nonspacing_Mark, 22, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BE#           =>
          (Dash_Punctuation, 0, Other, Other, Other, Break_After,
           (Dash
              | Grapheme_Base => True,
            others => False)),
         16#BF#           =>
          (Nonspacing_Mark, 23, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C0#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#C1#           =>
          (Nonspacing_Mark, 24, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C2#           =>
          (Nonspacing_Mark, 25, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C3#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#C4#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C5#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C6#           =>
          (Other_Punctuation, 0, Other, Other, Other, Exclamation,
           (Grapheme_Base => True,
            others => False)),
         16#C7#           =>
          (Nonspacing_Mark, 18, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C8# .. 16#CF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D0# .. 16#EA# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#EB# .. 16#EF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F0# .. 16#F2# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F3#           =>
          (Other_Punctuation, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#F4#           =>
          (Other_Punctuation, 0, Other, Mid_Letter, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           => (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | Uppercase
                                 | XID_Continue
                                 | XID_Start
                                 | Has_Lowercase_Mapping => True,
                               others => False)));

   Group_0006 : aliased constant Core_Second_Stage
     := (16#00# .. 16#03# =>
          (Format, 0, Control, Format, Format, Alphabetic,
           (others => False)),
         16#04# .. 16#05# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#06# .. 16#08# =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#09# .. 16#0A# =>
          (Other_Punctuation, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#0B#           =>
          (Currency_Symbol, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#0C#           =>
          (Other_Punctuation, 0, Other, Mid_Num, S_Continue, Infix_Numeric,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#0D#           =>
          (Other_Punctuation, 0, Other, Mid_Num, S_Continue, Infix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#0E# .. 16#0F# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#10# .. 16#17# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#18#           =>
          (Nonspacing_Mark, 30, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#19#           =>
          (Nonspacing_Mark, 31, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#1A#           =>
          (Nonspacing_Mark, 32, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#1B#           =>
          (Other_Punctuation, 0, Other, Other, Other, Exclamation,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#1C# .. 16#1D# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#1E#           =>
          (Other_Punctuation, 0, Other, Other, Other, Exclamation,
           (Grapheme_Base => True,
            others => False)),
         16#1F#           =>
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#20#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#40#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#4B#           =>
          (Nonspacing_Mark, 27, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4C#           =>
          (Nonspacing_Mark, 28, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D#           =>
          (Nonspacing_Mark, 29, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4E#           =>
          (Nonspacing_Mark, 30, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4F#           =>
          (Nonspacing_Mark, 31, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#50#           =>
          (Nonspacing_Mark, 32, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#51#           =>
          (Nonspacing_Mark, 33, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#52#           =>
          (Nonspacing_Mark, 34, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#53# .. 16#54# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#55# .. 16#56# =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#57#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#58#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#59# .. 16#5B# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5C#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5D# .. 16#5E# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5F#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#60# .. 16#69# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#6A#           =>
          (Other_Punctuation, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#6B#           =>
          (Other_Punctuation, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#6C#           =>
          (Other_Punctuation, 0, Other, Mid_Num, Numeric, Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#6D#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#70#           =>
          (Nonspacing_Mark, 35, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D4#           =>
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#D6# .. 16#DC# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#DD#           =>
          (Format, 0, Control, Format, Format, Alphabetic,
           (others => False)),
         16#DE#           =>
          (Enclosing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend => True,
            others => False)),
         16#DF# .. 16#E0# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E1# .. 16#E2# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E3#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E4#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E5# .. 16#E6# =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E7# .. 16#E8# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E9#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#EA#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#EB# .. 16#EC# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#ED#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F0# .. 16#F9# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#FD# .. 16#FE# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_0007 : aliased constant Core_Second_Stage
     := (16#00# .. 16#02# =>
          (Other_Punctuation, 0, Other, Other, S_Term, Alphabetic,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#03# .. 16#0A# =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#0B#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#0C#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#0D#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#0E#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#0F#           =>
          (Format, 0, Control, Format, Format, Alphabetic,
           (others => False)),
         16#11#           =>
          (Nonspacing_Mark, 36, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#30#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#31#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#32# .. 16#33# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#34#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#35# .. 16#36# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#37# .. 16#39# =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3A#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3B# .. 16#3C# =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3D#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3E#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3F#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#40# .. 16#41# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#42#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#43#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#44#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#45#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#46#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#47#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#48#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#49# .. 16#4A# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4B# .. 16#4C# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A6# .. 16#B0# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B2# .. 16#BF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C0# .. 16#C9# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#EB# .. 16#F1# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F2#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F3#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F4# .. 16#F5# =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F6#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#F7#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#F8#           =>
          (Other_Punctuation, 0, Other, Mid_Num, S_Continue, Infix_Numeric,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#F9#           =>
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#FA#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_0008 : aliased constant Core_Second_Stage
     := (others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_0009 : aliased constant Core_Second_Stage
     := (16#00#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#01# .. 16#02# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#03#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3A# .. 16#3B# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3C#           =>
          (Nonspacing_Mark, 7, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3E# .. 16#40# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#41# .. 16#48# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#49# .. 16#4C# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D#           =>
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4E# .. 16#4F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#51#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#52#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#53# .. 16#54# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#55# .. 16#57# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#62# .. 16#63# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#64# .. 16#65# =>
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#66# .. 16#6F# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#70#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#71#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#73# .. 16#7A# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#80#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#81#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#82# .. 16#83# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#84#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#8D# .. 16#8E# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#91# .. 16#92# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A9#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B1#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B3# .. 16#B5# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BA# .. 16#BB# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BC#           =>
          (Nonspacing_Mark, 7, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BE#           =>
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BF# .. 16#C0# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C1# .. 16#C4# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C5# .. 16#C6# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C7# .. 16#C8# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C9# .. 16#CA# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#CB# .. 16#CC# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CD#           =>
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CF# .. 16#D6# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D7#           =>
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D8# .. 16#DB# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#DE#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#E2# .. 16#E3# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E4# .. 16#E5# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#E6# .. 16#EF# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F2# .. 16#F3# =>
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#F4# .. 16#F9# =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#FA#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_000A : aliased constant Core_Second_Stage
     := (16#00#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#01# .. 16#02# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#03#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#04#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#0B# .. 16#0E# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#11# .. 16#12# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#29#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#31#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#34#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#37#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3A# .. 16#3B# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3C#           =>
          (Nonspacing_Mark, 7, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3D#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3E# .. 16#40# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#41# .. 16#42# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#43# .. 16#46# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#47# .. 16#48# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#49# .. 16#4A# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#4B# .. 16#4C# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D#           =>
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4E# .. 16#50# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#51#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#52# .. 16#58# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5D#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5F# .. 16#65# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#66# .. 16#6F# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#70# .. 16#71# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#75#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#76# .. 16#80# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#81# .. 16#82# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#83#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#84#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#8E#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#92#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A9#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B1#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B4#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BA# .. 16#BB# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BC#           =>
          (Nonspacing_Mark, 7, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BE# .. 16#C0# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C1# .. 16#C5# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C6#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C7# .. 16#C8# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C9#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CA#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#CB# .. 16#CC# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CD#           =>
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CE# .. 16#CF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D1# .. 16#DF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#E2# .. 16#E3# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E4# .. 16#E5# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#E6# .. 16#EF# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F0#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F1#           =>
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_000B : aliased constant Core_Second_Stage
     := (16#01#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#02# .. 16#03# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#05# .. 16#0C# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#0F# .. 16#10# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#13# .. 16#28# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#2A# .. 16#30# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#32# .. 16#33# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#35# .. 16#39# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3C#           =>
          (Nonspacing_Mark, 7, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3D#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3E#           =>
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3F#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#40#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#41# .. 16#44# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#47# .. 16#48# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4B# .. 16#4C# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D#           =>
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#56#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#57#           =>
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5C# .. 16#5D# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#5F# .. 16#61# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#62# .. 16#63# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#66# .. 16#6F# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#70#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#71#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#82#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#83#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#85# .. 16#8A# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8E# .. 16#90# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#92# .. 16#95# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#99# .. 16#9A# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#9C#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#9E# .. 16#9F# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A3# .. 16#A4# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A8# .. 16#AA# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#AE# .. 16#B9# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BE#           =>
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BF#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C0#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C1# .. 16#C2# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C6# .. 16#C8# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CA# .. 16#CC# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CD#           =>
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D0#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D7#           =>
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E6# .. 16#EF# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F0# .. 16#F2# =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#F3# .. 16#F8# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#F9#           =>
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#FA#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_000C : aliased constant Core_Second_Stage
     := (16#00#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#01# .. 16#03# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#04#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#0D#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#11#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#29#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#34#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3A# .. 16#3C# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3E# .. 16#40# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#41# .. 16#44# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#45#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#46# .. 16#48# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#49#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#4A# .. 16#4C# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D#           =>
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4E# .. 16#54# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#55#           =>
          (Nonspacing_Mark, 84, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#56#           =>
          (Nonspacing_Mark, 91, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#57#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5A# .. 16#5F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#62# .. 16#63# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#64# .. 16#65# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#66# .. 16#6F# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#70# .. 16#77# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#78# .. 16#7E# =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#7F#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#80# .. 16#81# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#82# .. 16#83# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#84#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#8D#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#91#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A9#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B4#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BA# .. 16#BB# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BC#           =>
          (Nonspacing_Mark, 7, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BE#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BF#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C0# .. 16#C1# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C2#           =>
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C3# .. 16#C4# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C5#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C6#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C7# .. 16#C8# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C9#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#CA# .. 16#CB# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CC#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CD#           =>
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CE# .. 16#D4# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D5# .. 16#D6# =>
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D7# .. 16#DD# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#DF#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#E2# .. 16#E3# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E4# .. 16#E5# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#E6# .. 16#EF# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F0#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F1# .. 16#F2# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_000D : aliased constant Core_Second_Stage
     := (16#00# .. 16#01# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#02# .. 16#03# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#04#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#0D#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#11#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#29#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3A# .. 16#3C# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3E#           =>
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3F# .. 16#40# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#41# .. 16#44# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#45#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#46# .. 16#48# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#49#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#4A# .. 16#4C# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D#           =>
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4E# .. 16#56# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#57#           =>
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#58# .. 16#5F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#62# .. 16#63# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#64# .. 16#65# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#66# .. 16#6F# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#70# .. 16#75# =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#76# .. 16#78# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#79#           =>
          (Other_Symbol, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#80# .. 16#81# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#82# .. 16#83# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#84#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#97# .. 16#99# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B2#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BC#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BE# .. 16#BF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C7# .. 16#C9# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#CA#           =>
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CB# .. 16#CE# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#CF#           =>
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D0# .. 16#D1# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D2# .. 16#D4# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D5#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D6#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D7#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D8# .. 16#DE# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#DF#           =>
          (Spacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E0# .. 16#F1# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F2# .. 16#F3# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#F4#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_000E : aliased constant Core_Second_Stage
     := (16#01# .. 16#2F# =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#30#           =>
          (Other_Letter, 0, Extend, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#31#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#32#           =>
          (Other_Letter, 0, Extend, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#33#           =>
          (Other_Letter, 0, Extend, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue => True,
            others => False)),
         16#34# .. 16#37# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#38# .. 16#39# =>
          (Nonspacing_Mark, 103, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3A#           =>
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3F#           =>
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#40# .. 16#44# =>
          (Other_Letter, 0, Prepend, Other, O_Letter, Complex_Context,
           (Logical_Order_Exception
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#45#           =>
          (Other_Letter, 0, Extend, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#46#           =>
          (Modifier_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#47#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#48# .. 16#4B# =>
          (Nonspacing_Mark, 107, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4C#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4E#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4F#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#50# .. 16#59# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5A# .. 16#5B# =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#81# .. 16#82# =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#84#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#87# .. 16#88# =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8A#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8D#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#94# .. 16#97# =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#99# .. 16#9F# =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A1# .. 16#A3# =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A5#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A7#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#AA# .. 16#AB# =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#AD# .. 16#AF# =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B0#           =>
          (Other_Letter, 0, Extend, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B1#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B2#           =>
          (Other_Letter, 0, Extend, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B3#           =>
          (Other_Letter, 0, Extend, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue => True,
            others => False)),
         16#B4# .. 16#B7# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B8# .. 16#B9# =>
          (Nonspacing_Mark, 118, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BB# .. 16#BC# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BD#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C0# .. 16#C4# =>
          (Other_Letter, 0, Prepend, Other, O_Letter, Complex_Context,
           (Logical_Order_Exception
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C6#           =>
          (Modifier_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C8# .. 16#CB# =>
          (Nonspacing_Mark, 122, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CC#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CD#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D0# .. 16#D9# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#DC# .. 16#DD# =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_000F : aliased constant Core_Second_Stage
     := (16#00#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#01# .. 16#03# =>
          (Other_Symbol, 0, Other, Other, Other, Break_Before,
           (Grapheme_Base => True,
            others => False)),
         16#04#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_Before,
           (Grapheme_Base => True,
            others => False)),
         16#05#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#06# .. 16#07# =>
          (Other_Punctuation, 0, Other, Other, Other, Break_Before,
           (Grapheme_Base => True,
            others => False)),
         16#08#           =>
          (Other_Punctuation, 0, Other, Other, Other, Glue,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#09# .. 16#0A# =>
          (Other_Punctuation, 0, Other, Other, Other, Break_Before,
           (Grapheme_Base => True,
            others => False)),
         16#0B#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#0C#           =>
          (Other_Punctuation, 0, Other, Other, Other, Glue,
           (Grapheme_Base => True,
            others => False)),
         16#0D# .. 16#11# =>
          (Other_Punctuation, 0, Other, Other, Other, Exclamation,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#12#           =>
          (Other_Punctuation, 0, Other, Other, Other, Glue,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#13#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#14#           =>
          (Other_Symbol, 0, Other, Other, Other, Exclamation,
           (Grapheme_Base => True,
            others => False)),
         16#15# .. 16#17# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#18# .. 16#19# =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#1A# .. 16#1F# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#20# .. 16#29# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2A# .. 16#33# =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#34#           =>
          (Other_Symbol, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#35#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#36#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#37#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#38#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#39#           =>
          (Nonspacing_Mark, 216, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3A#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3B#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3C#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3D#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3E# .. 16#3F# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#40# .. 16#47# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#49# .. 16#6C# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#71#           =>
          (Nonspacing_Mark, 129, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#72#           =>
          (Nonspacing_Mark, 130, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#73#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#74#           =>
          (Nonspacing_Mark, 132, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#75# .. 16#79# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#7A# .. 16#7D# =>
          (Nonspacing_Mark, 130, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#7E#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#7F#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Break_After,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#80#           =>
          (Nonspacing_Mark, 130, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#81#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#82# .. 16#83# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#84#           =>
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#85#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#86# .. 16#87# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#88# .. 16#8B# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#90# .. 16#97# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#99# .. 16#BC# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BE# .. 16#BF# =>
          (Other_Symbol, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#C0# .. 16#C5# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#C6#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C7# .. 16#CC# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#CE# .. 16#CF# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#D0# .. 16#D1# =>
          (Other_Punctuation, 0, Other, Other, Other, Break_Before,
           (Grapheme_Base => True,
            others => False)),
         16#D2#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#D3#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_Before,
           (Grapheme_Base => True,
            others => False)),
         16#D4#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_0010 : aliased constant Core_Second_Stage
     := (16#2B# .. 16#2C# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2D# .. 16#30# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#31#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#32# .. 16#36# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#37#           =>
          (Nonspacing_Mark, 7, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#38#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#39# .. 16#3A# =>
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3B# .. 16#3C# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3D# .. 16#3E# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#40# .. 16#49# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4A# .. 16#4B# =>
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#4C# .. 16#4F# =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#56# .. 16#57# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#58# .. 16#59# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5E# .. 16#60# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#62#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#63# .. 16#64# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#67# .. 16#68# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#69# .. 16#6D# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#71# .. 16#74# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#82#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#83# .. 16#84# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#85# .. 16#86# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#87# .. 16#8C# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#8D#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#8F#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#90# .. 16#99# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#9A# .. 16#9D# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#9E# .. 16#9F# =>
          (Other_Symbol, 0, Other, Other, Other, Complex_Context,
           (Grapheme_Base => True,
            others => False)),
         16#A0# .. 16#C5# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#C6# .. 16#CF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D0# .. 16#FA# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#FB#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#FC#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_0011 : aliased constant Core_Second_Stage
     := (16#5A# .. 16#5E# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5F#           =>
          (Other_Letter, 0, L, A_Letter, O_Letter, JL,
           (Other_Default_Ignorable_Code_Point
              | Alphabetic
              | Default_Ignorable_Code_Point
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#60#           =>
          (Other_Letter, 0, V, A_Letter, O_Letter, JV,
           (Other_Default_Ignorable_Code_Point
              | Alphabetic
              | Default_Ignorable_Code_Point
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#61# .. 16#A2# =>
          (Other_Letter, 0, V, A_Letter, O_Letter, JV,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A3# .. 16#A7# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A8# .. 16#F9# =>
          (Other_Letter, 0, T, A_Letter, O_Letter, JT,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Other_Letter, 0, L, A_Letter, O_Letter, JL,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_0012 : aliased constant Core_Second_Stage
     := (16#49#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#4E# .. 16#4F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#57#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#59#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5E# .. 16#5F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#89#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#8E# .. 16#8F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B1#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B6# .. 16#B7# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BF#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C1#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C6# .. 16#C7# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D7#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_0013 : aliased constant Core_Second_Stage
     := (16#11#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#16# .. 16#17# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5B# .. 16#5E# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5F#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#60#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#61#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#62#           =>
          (Other_Punctuation, 0, Other, Other, S_Term, Alphabetic,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#63# .. 16#66# =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#67# .. 16#68# =>
          (Other_Punctuation, 0, Other, Other, S_Term, Alphabetic,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#69# .. 16#71# =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Other_ID_Continue
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#72# .. 16#7C# =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#7D# .. 16#7F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#90# .. 16#99# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#9A# .. 16#9F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_0014 : aliased constant Core_Second_Stage
     := (16#00#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_0015 : aliased constant Core_Second_Stage
     := (others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_0016 : aliased constant Core_Second_Stage
     := (16#6D#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#6E#           =>
          (Other_Punctuation, 0, Other, Other, S_Term, Alphabetic,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#77# .. 16#7F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#80#           =>
          (Space_Separator, 0, Other, Other, Sp, Break_After,
           (White_Space
              | Grapheme_Base => True,
            others => False)),
         16#9B#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#9C#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#9D# .. 16#9F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#EB# .. 16#ED# =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#EE# .. 16#F0# =>
          (Letter_Number, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_0017 : aliased constant Core_Second_Stage
     := (16#0D#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#12# .. 16#13# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#14#           =>
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#15# .. 16#1F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#32# .. 16#33# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#34#           =>
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#35# .. 16#36# =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#37# .. 16#3F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#52# .. 16#53# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#54# .. 16#5F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#6D#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#71#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#72# .. 16#73# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#74# .. 16#7F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#80# .. 16#A2# =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A3#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Deprecated
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A4# .. 16#B3# =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B4# .. 16#B5# =>
          (Format, 0, Control, Format, Format, Complex_Context,
           (Default_Ignorable_Code_Point => True,
            others => False)),
         16#B6#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B7# .. 16#BD# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BE# .. 16#C5# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C6#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C7# .. 16#C8# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C9# .. 16#D1# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D2#           =>
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D3#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Complex_Context,
           (Deprecated
              | Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D4# .. 16#D5# =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#D6#           =>
          (Other_Punctuation, 0, Other, Other, Other, Nonstarter,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#D7#           =>
          (Modifier_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D8#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#D9#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#DA#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#DB#           =>
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#DC#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#DD#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#DE# .. 16#DF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#E0# .. 16#E9# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#EA# .. 16#EF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F0# .. 16#F9# =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_0018 : aliased constant Core_Second_Stage
     := (16#00# .. 16#01# =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#02#           =>
          (Other_Punctuation, 0, Other, Other, S_Continue, Exclamation,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#03#           =>
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#04# .. 16#05# =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#06#           =>
          (Dash_Punctuation, 0, Other, Other, Other, Break_Before,
           (Dash
              | Hyphen
              | Grapheme_Base => True,
            others => False)),
         16#07#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#08#           =>
          (Other_Punctuation, 0, Other, Other, S_Continue, Exclamation,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#09#           =>
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#0A#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#0B# .. 16#0D# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Variation_Selector
              | Default_Ignorable_Code_Point
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#0E#           =>
          (Space_Separator, 0, Other, Other, Sp, Glue,
           (White_Space
              | Grapheme_Base => True,
            others => False)),
         16#0F#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#10# .. 16#19# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#1A# .. 16#1F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#43#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#78# .. 16#7F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A9#           =>
          (Nonspacing_Mark, 228, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_0019 : aliased constant Core_Second_Stage
     := (16#00# .. 16#1C# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#1D# .. 16#1F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#20# .. 16#22# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#23# .. 16#26# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#27# .. 16#28# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#29# .. 16#2B# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2C# .. 16#2F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#30# .. 16#31# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#32#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#33# .. 16#38# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#39#           =>
          (Nonspacing_Mark, 222, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3A#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3B#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3C# .. 16#3F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#40#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#41# .. 16#43# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#44# .. 16#45# =>
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#46# .. 16#4F# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#6E# .. 16#6F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#75# .. 16#7F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#AA# .. 16#AF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B0# .. 16#C0# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C8# .. 16#C9# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CA# .. 16#CF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D0# .. 16#D9# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#DA# .. 16#DD# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#DE# .. 16#DF# =>
          (Other_Punctuation, 0, Other, Other, Other, Complex_Context,
           (Grapheme_Base => True,
            others => False)),
         others           => (Other_Letter, 0, Other, Other, O_Letter, Complex_Context,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_001A : aliased constant Core_Second_Stage
     := (16#00# .. 16#16# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#17#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#18#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#19# .. 16#1B# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#1E# .. 16#1F# =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_001B : aliased constant Core_Second_Stage
     := (16#00# .. 16#03# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#04#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#34#           =>
          (Nonspacing_Mark, 7, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#35#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#36# .. 16#3A# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3B#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3C#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3D# .. 16#41# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#42#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#43#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#44#           =>
          (Spacing_Mark, 9, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Base
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4C# .. 16#4F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#50# .. 16#59# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5A# .. 16#5B# =>
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#5C#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#5D#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#5E# .. 16#5F# =>
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#60#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#61# .. 16#6A# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#6B#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#6C#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#6D# .. 16#73# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#74# .. 16#7C# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#7D# .. 16#7F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#80# .. 16#81# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#82#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#A1#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#A2# .. 16#A5# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#A6# .. 16#A7# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#A8# .. 16#A9# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#AA#           =>
          (Spacing_Mark, 9, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Base
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#AB# .. 16#AD# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B0# .. 16#B9# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_001C : aliased constant Core_Second_Stage
     := (16#00# .. 16#23# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#24# .. 16#2B# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2C# .. 16#33# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#34# .. 16#35# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#36#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Extender
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#37#           =>
          (Nonspacing_Mark, 7, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3B# .. 16#3C# =>
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#3D# .. 16#3F# =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#40# .. 16#49# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D# .. 16#4F# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#50# .. 16#59# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5A# .. 16#77# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#78# .. 16#7A# =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#7B#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#7C# .. 16#7D# =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#7E# .. 16#7F# =>
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_001D : aliased constant Core_Second_Stage
     := (16#2C# .. 16#61# =>
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Diacritic
              | Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#62#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Diacritic
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#63# .. 16#6A# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#78#           =>
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#79#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#96#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#9B# .. 16#A3# =>
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A4#           =>
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A5# .. 16#A7# =>
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A8#           =>
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A9# .. 16#BF# =>
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C0# .. 16#C1# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C2#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C3#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C4# .. 16#C9# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CA#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CB# .. 16#CC# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CD#           =>
          (Nonspacing_Mark, 234, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CE#           =>
          (Nonspacing_Mark, 214, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CF#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D0#           =>
          (Nonspacing_Mark, 202, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#D1# .. 16#E6# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E7# .. 16#FD# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#FE#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         others           => (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | Lowercase
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_001E : aliased constant Core_Second_Stage
     := (16#01#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#03#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#05#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#07#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#09#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#0F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#11#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#13#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#15#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#17#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#19#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#1F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#21#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#23#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#25#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#27#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#29#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#31#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#33#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#35#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#37#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#39#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#41#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#43#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#45#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#47#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#49#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#51#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#53#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#55#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#57#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#59#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#61#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#63#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#65#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#67#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#69#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#71#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#73#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#75#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#77#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#79#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#81#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#83#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#85#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#87#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#89#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#91#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#93#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#95#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#96# .. 16#9A# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#9B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#9C# .. 16#9D# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#9F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A1#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A7#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A9#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AB#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AD#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AF#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B1#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B7#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B9#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BB#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BD#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BF#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C1#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C7#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C9#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CB#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CD#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CF#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D1#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D7#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D9#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DB#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DD#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DF#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E1#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E7#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E9#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#EB#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#ED#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#EF#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F1#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F7#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#F9#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#FB#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#FD#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         others           => (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | Uppercase
                                 | XID_Continue
                                 | XID_Start
                                 | Has_Lowercase_Mapping => True,
                               others => False)));

   Group_001F : aliased constant Core_Second_Stage
     := (16#08# .. 16#0F# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#16# .. 16#17# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#18# .. 16#1D# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#1E# .. 16#1F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#28# .. 16#2F# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#38# .. 16#3F# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#46# .. 16#47# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#48# .. 16#4D# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4E# .. 16#4F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#50#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#52#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#54#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#56#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#58#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#59#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5A#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5B#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5C#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5D#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5E#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5F#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#68# .. 16#6F# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#7E# .. 16#7F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#88# .. 16#8F# =>
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#98# .. 16#9F# =>
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#A8# .. 16#AF# =>
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#B2#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B4#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B5#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B6# .. 16#B7# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B8# .. 16#BB# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#BC#           =>
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#BD#           =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#BF# .. 16#C1# =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#C2#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C4#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C5#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C6# .. 16#C7# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C8# .. 16#CB# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#CC#           =>
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#CD# .. 16#CF# =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#D2# .. 16#D3# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D4# .. 16#D5# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D6# .. 16#D7# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D8# .. 16#DB# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#DC#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#DD# .. 16#DF# =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#E2# .. 16#E4# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E6# .. 16#E7# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E8# .. 16#EC# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#ED# .. 16#EF# =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#F0# .. 16#F1# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F2#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F4#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F5#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F6# .. 16#F7# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F8# .. 16#FB# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#FC#           =>
          (Titlecase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#FD#           =>
          (Modifier_Symbol, 0, Other, Other, Other, Break_Before,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#FE#           =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         others           => (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | Lowercase
                                 | XID_Continue
                                 | XID_Start
                                 | Has_Uppercase_Mapping
                                 | Has_Titlecase_Mapping => True,
                               others => False)));

   Group_0020 : aliased constant Core_Second_Stage
     := (16#00# .. 16#06# =>
          (Space_Separator, 0, Other, Other, Sp, Break_After,
           (White_Space
              | Grapheme_Base => True,
            others => False)),
         16#07#           =>
          (Space_Separator, 0, Other, Other, Sp, Glue,
           (White_Space
              | Grapheme_Base => True,
            others => False)),
         16#08# .. 16#0A# =>
          (Space_Separator, 0, Other, Other, Sp, Break_After,
           (White_Space
              | Grapheme_Base => True,
            others => False)),
         16#0B#           =>
          (Format, 0, Control, Format, Format, ZW_Space,
           (Default_Ignorable_Code_Point => True,
            others => False)),
         16#0C# .. 16#0D# =>
          (Format, 0, Extend, Extend, Extend, Combining_Mark,
           (Join_Control
              | Other_Grapheme_Extend
              | Default_Ignorable_Code_Point
              | Grapheme_Extend => True,
            others => False)),
         16#0E# .. 16#0F# =>
          (Format, 0, Control, Format, Format, Combining_Mark,
           (Bidi_Control
              | Pattern_White_Space
              | Default_Ignorable_Code_Point => True,
            others => False)),
         16#10#           =>
          (Dash_Punctuation, 0, Other, Other, Other, Break_After,
           (Dash
              | Hyphen
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#11#           =>
          (Dash_Punctuation, 0, Other, Other, Other, Glue,
           (Dash
              | Hyphen
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#12#           =>
          (Dash_Punctuation, 0, Other, Other, Other, Break_After,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#13#           =>
          (Dash_Punctuation, 0, Other, Other, S_Continue, Break_After,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#14#           =>
          (Dash_Punctuation, 0, Other, Other, S_Continue, Break_Both,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#15#           =>
          (Dash_Punctuation, 0, Other, Other, Other, Ambiguous,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#16#           =>
          (Other_Punctuation, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#17#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#18#           =>
          (Initial_Punctuation, 0, Other, Mid_Num_Let, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#19#           =>
          (Final_Punctuation, 0, Other, Mid_Num_Let, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#1A#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#1B# .. 16#1C# =>
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#1D#           =>
          (Final_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#1E#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#1F#           =>
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#20# .. 16#21# =>
          (Other_Punctuation, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#22# .. 16#23# =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#24#           =>
          (Other_Punctuation, 0, Other, Mid_Num_Let, A_Term, Inseparable,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#25# .. 16#26# =>
          (Other_Punctuation, 0, Other, Other, Other, Inseparable,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#27#           =>
          (Other_Punctuation, 0, Other, Mid_Letter, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#28#           =>
          (Line_Separator, 0, Control, Newline, Sep, Mandatory_Break,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#29#           =>
          (Paragraph_Separator, 0, Control, Newline, Sep, Mandatory_Break,
           (Pattern_White_Space
              | White_Space => True,
            others => False)),
         16#2A# .. 16#2E# =>
          (Format, 0, Control, Format, Format, Combining_Mark,
           (Bidi_Control
              | Default_Ignorable_Code_Point => True,
            others => False)),
         16#2F#           =>
          (Space_Separator, 0, Other, Other, Sp, Glue,
           (White_Space
              | Grapheme_Base => True,
            others => False)),
         16#30# .. 16#31# =>
          (Other_Punctuation, 0, Other, Other, Other, Postfix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#32# .. 16#34# =>
          (Other_Punctuation, 0, Other, Other, Other, Postfix_Numeric,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#35# .. 16#37# =>
          (Other_Punctuation, 0, Other, Other, Other, Postfix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#38#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#39#           =>
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#3A#           =>
          (Final_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#3B#           =>
          (Other_Punctuation, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#3C# .. 16#3D# =>
          (Other_Punctuation, 0, Other, Other, S_Term, Nonstarter,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#3E#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#3F#           =>
          (Connector_Punctuation, 0, Other, Extend_Num_Let, Other, Alphabetic,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#40#           =>
          (Connector_Punctuation, 0, Other, Extend_Num_Let, Other, Alphabetic,
           (Other_Math
              | Grapheme_Base
              | ID_Continue
              | Math
              | XID_Continue => True,
            others => False)),
         16#41# .. 16#43# =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#44#           =>
          (Math_Symbol, 0, Other, Mid_Num, Other, Infix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#45#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#46#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#47# .. 16#49# =>
          (Other_Punctuation, 0, Other, Other, S_Term, Nonstarter,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#4A# .. 16#51# =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#52#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#53#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#54#           =>
          (Connector_Punctuation, 0, Other, Extend_Num_Let, Other, Alphabetic,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#55#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#56#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#57#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#58# .. 16#5B# =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5C#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5D# .. 16#5E# =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5F#           =>
          (Space_Separator, 0, Other, Other, Sp, Break_After,
           (White_Space
              | Grapheme_Base => True,
            others => False)),
         16#60#           =>
          (Format, 0, Control, Format, Format, Word_Joiner,
           (Default_Ignorable_Code_Point => True,
            others => False)),
         16#61# .. 16#64# =>
          (Format, 0, Control, Format, Format, Alphabetic,
           (Other_Math
              | Default_Ignorable_Code_Point
              | Math => True,
            others => False)),
         16#65# .. 16#69# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Other_Default_Ignorable_Code_Point
              | Default_Ignorable_Code_Point => True,
            others => False)),
         16#6A# .. 16#6F# =>
          (Format, 0, Control, Format, Format, Combining_Mark,
           (Deprecated
              | Default_Ignorable_Code_Point => True,
            others => False)),
         16#70#           =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#71#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#74#           =>
          (Other_Number, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#75# .. 16#79# =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#7A#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#7B#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Dash
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#7C#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#7D#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#7E#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#7F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Ambiguous,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#80#           =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#81# .. 16#84# =>
          (Other_Number, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#85# .. 16#89# =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#8A#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#8B#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Dash
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8C#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#8D#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8E#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#90# .. 16#94# =>
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A0# .. 16#A6# =>
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#A7#           =>
          (Currency_Symbol, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#A8# .. 16#B5# =>
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#D0# .. 16#D1# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue => True,
            others => False)),
         16#D2# .. 16#D3# =>
          (Nonspacing_Mark, 1, Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue => True,
            others => False)),
         16#D4# .. 16#D7# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue => True,
            others => False)),
         16#D8# .. 16#DA# =>
          (Nonspacing_Mark, 1, Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue => True,
            others => False)),
         16#DB# .. 16#DC# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue => True,
            others => False)),
         16#DD# .. 16#E0# =>
          (Enclosing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend => True,
            others => False)),
         16#E1#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue => True,
            others => False)),
         16#E2# .. 16#E4# =>
          (Enclosing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend => True,
            others => False)),
         16#E5# .. 16#E6# =>
          (Nonspacing_Mark, 1, Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue => True,
            others => False)),
         16#E7#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E8#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#E9#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#EA#           =>
          (Nonspacing_Mark, 1, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#EB#           =>
          (Nonspacing_Mark, 1, Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue => True,
            others => False)),
         16#EC# .. 16#EF# =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Other_Math
              | Grapheme_Extend
              | ID_Continue
              | Math
              | XID_Continue => True,
            others => False)),
         16#F0#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_0021 : aliased constant Core_Second_Stage
     := (16#00# .. 16#01# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#02#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#03#           =>
          (Other_Symbol, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#04#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#05#           =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#06#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#07#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#08#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#09#           =>
          (Other_Symbol, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#0A#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#0B# .. 16#0D# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#0E# .. 16#0F# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#10# .. 16#12# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#13#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Ambiguous,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#14#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#15#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#16#           =>
          (Other_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#17#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#18#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_ID_Start
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#19# .. 16#1D# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#1E# .. 16#20# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#21# .. 16#22# =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#23#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#24#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#25#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#26#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#27#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#28#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#29#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#2A#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#2B#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Ambiguous,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#2C# .. 16#2D# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#2E#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_ID_Start
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#2F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#30# .. 16#31# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#32#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#33#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#34#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#35# .. 16#38# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#39#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3A# .. 16#3B# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#3C# .. 16#3D# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3E# .. 16#3F# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#40# .. 16#44# =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#45#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#46# .. 16#47# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#48# .. 16#49# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#4A#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#4B#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#4C# .. 16#4D# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#4E#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4F#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#50# .. 16#52# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#53#           =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#54# .. 16#55# =>
          (Other_Number, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#56# .. 16#5A# =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#5B#           =>
          (Other_Number, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#5C# .. 16#5D# =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#5E#           =>
          (Other_Number, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#5F#           =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#60# .. 16#6B# =>
          (Letter_Number, 0, Other, A_Letter, Upper, Ambiguous,
           (Other_Uppercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#6C# .. 16#6F# =>
          (Letter_Number, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Uppercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#70# .. 16#79# =>
          (Letter_Number, 0, Other, A_Letter, Lower, Ambiguous,
           (Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7A# .. 16#7F# =>
          (Letter_Number, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#80# .. 16#82# =>
          (Letter_Number, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#83#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#84#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#85# .. 16#88# =>
          (Letter_Number, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#89# .. 16#8F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#90# .. 16#94# =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#95# .. 16#99# =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#9A# .. 16#9B# =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#A0#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#A3#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#A6#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#A8#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#AE#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#AF#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#B2# .. 16#B5# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#B8# .. 16#BB# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#CE# .. 16#CF# =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D2#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D4#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#DC#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#DE# .. 16#E3# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#E6# .. 16#F3# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         others           => (Other_Symbol, 0, Other, Other, Other, Alphabetic,
                              (Other_Math
                                 | Pattern_Syntax
                                 | Grapheme_Base
                                 | Math => True,
                               others => False)));

   Group_0022 : aliased constant Core_Second_Stage
     := (16#00#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#02# .. 16#03# =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#07# .. 16#08# =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#0B#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#0F#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#11#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#12#           =>
          (Math_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#13#           =>
          (Math_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#15#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#1A#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#1D# .. 16#20# =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#23#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#25#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#27# .. 16#2C# =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#2E#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#34# .. 16#37# =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#3C# .. 16#3D# =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#48#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#4C#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#52#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#60# .. 16#61# =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#64# .. 16#67# =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#6A# .. 16#6B# =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#6E# .. 16#6F# =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#82# .. 16#83# =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#86# .. 16#87# =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#95#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#99#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#A5#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#BF#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         others           => (Math_Symbol, 0, Other, Other, Other, Alphabetic,
                              (Pattern_Syntax
                                 | Grapheme_Base
                                 | Math => True,
                               others => False)));

   Group_0023 : aliased constant Core_Second_Stage
     := (16#08# .. 16#0B# =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#12#           =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#20# .. 16#21# =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#29#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2A#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#7C#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#9B# .. 16#B3# =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B4# .. 16#B5# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B7#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D0#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#DC# .. 16#E1# =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E2#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         others           => (Other_Symbol, 0, Other, Other, Other, Alphabetic,
                              (Pattern_Syntax
                                 | Grapheme_Base => True,
                               others => False)));

   Group_0024 : aliased constant Core_Second_Stage
     := (16#00# .. 16#26# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#27# .. 16#3F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#40# .. 16#4A# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#4B# .. 16#5F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#9C# .. 16#B5# =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#B6# .. 16#CF# =>
          (Other_Symbol, 0, Other, A_Letter, Upper, Ambiguous,
           (Other_Alphabetic
              | Other_Uppercase
              | Alphabetic
              | Grapheme_Base
              | Uppercase
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#D0# .. 16#E9# =>
          (Other_Symbol, 0, Other, A_Letter, Lower, Ambiguous,
           (Other_Alphabetic
              | Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | Lowercase
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         others           => (Other_Number, 0, Other, Other, Other, Ambiguous,
                              (Grapheme_Base => True,
                               others => False)));

   Group_0025 : aliased constant Core_Second_Stage
     := (16#4C# .. 16#4F# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#75# .. 16#7F# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#90# .. 16#91# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#96# .. 16#9F# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#A0# .. 16#A1# =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#A2#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#AA# .. 16#AD# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#AE# .. 16#B1# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B2# .. 16#B3# =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B4# .. 16#B5# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B6#           =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B7#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B8# .. 16#BB# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#BC# .. 16#BD# =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#BE# .. 16#BF# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#C0#           =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#C1#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#C2# .. 16#C5# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#C6# .. 16#C7# =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#C9#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#CA#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#CB#           =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#CC# .. 16#CD# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#CF# .. 16#D1# =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D2# .. 16#D3# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D4# .. 16#E1# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#E2#           =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E4#           =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E6#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#E7# .. 16#EC# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#ED# .. 16#EE# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#F0# .. 16#F7# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         others           => (Other_Symbol, 0, Other, Other, Other, Ambiguous,
                              (Pattern_Syntax
                                 | Grapheme_Base => True,
                               others => False)));

   Group_0026 : aliased constant Core_Second_Stage
     := (16#05# .. 16#06# =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#09#           =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0E# .. 16#0F# =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#14# .. 16#17# =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1C#           =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1E#           =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#40#           =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#42#           =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#60# .. 16#61# =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#62#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#63#           =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#64# .. 16#65# =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#67# .. 16#6A# =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6C#           =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6D#           =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#6E#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#6F#           =>
          (Math_Symbol, 0, Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#9E# .. 16#9F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#BD# .. 16#BF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         others           => (Other_Symbol, 0, Other, Other, Other, Alphabetic,
                              (Pattern_Syntax
                                 | Grapheme_Base => True,
                               others => False)));

   Group_0027 : aliased constant Core_Second_Stage
     := (16#00#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#05#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#0A# .. 16#0B# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#28#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#4C#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#4E#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#53# .. 16#55# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#57#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#5B# .. 16#5E# =>
          (Other_Symbol, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#5F# .. 16#60# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#62# .. 16#63# =>
          (Other_Symbol, 0, Other, Other, Other, Exclamation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#68#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#69#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6A#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6B#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6C#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6D#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6E#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#6F#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#70#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#71#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#72#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#73#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#74#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#75#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#76# .. 16#93# =>
          (Other_Number, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         16#95# .. 16#97# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#B0#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#BF#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#C0# .. 16#C4# =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#C5#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#C6#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#C7# .. 16#CA# =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#CB#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#CC#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#CD# .. 16#CF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#D0# .. 16#E5# =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E6#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E7#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E8#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E9#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#EA#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#EB#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#EC#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#ED#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#EE#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#EF#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         others           => (Other_Symbol, 0, Other, Other, Other, Alphabetic,
                              (Pattern_Syntax
                                 | Grapheme_Base => True,
                               others => False)));

   Group_0028 : aliased constant Core_Second_Stage
     := (others           => (Other_Symbol, 0, Other, Other, Other, Alphabetic,
                              (Pattern_Syntax
                                 | Grapheme_Base => True,
                               others => False)));

   Group_0029 : aliased constant Core_Second_Stage
     := (16#83#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#84#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#85#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#86#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#87#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#88#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#89#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8A#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8B#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8C#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8D#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8E#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#8F#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#90#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#91#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#92#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#93#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#94#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#95#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#96#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#97#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#98#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D8#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D9#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#DA#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#DB#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#FC#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#FD#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         others           => (Math_Symbol, 0, Other, Other, Other, Alphabetic,
                              (Pattern_Syntax
                                 | Grapheme_Base
                                 | Math => True,
                               others => False)));

   Group_002A : aliased constant Core_Second_Stage
     := (others           => (Math_Symbol, 0, Other, Other, Other, Alphabetic,
                              (Pattern_Syntax
                                 | Grapheme_Base
                                 | Math => True,
                               others => False)));

   Group_002B : aliased constant Core_Second_Stage
     := (16#00# .. 16#2F# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#30# .. 16#44# =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#45# .. 16#46# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#47# .. 16#4C# =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#50# .. 16#54# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (Pattern_Syntax => True,
                               others => False)));

   Group_002C : aliased constant Core_Second_Stage
     := (16#2F#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#30# .. 16#5E# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5F#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#61#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#65# .. 16#66# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#68#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6A#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6C#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#70#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#71#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#73#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#74#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#76#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#77# .. 16#7B# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#7C#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#7D#           =>
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#7E# .. 16#7F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#81#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#83#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#85#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#87#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#89#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#91#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#93#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#95#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#97#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#99#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#9B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#9D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#9F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A1#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A7#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#A9#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AB#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AD#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#AF#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B1#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B7#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#B9#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BB#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BD#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#BF#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C1#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C7#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#C9#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CB#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CD#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#CF#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D1#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D5#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D7#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#D9#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DB#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DD#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#DF#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E1#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E3#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#E4#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E5# .. 16#EA# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#EB# .. 16#F8# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F9#           =>
          (Other_Punctuation, 0, Other, Other, Other, Exclamation,
           (Grapheme_Base => True,
            others => False)),
         16#FA# .. 16#FC# =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#FD#           =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#FE#           =>
          (Other_Punctuation, 0, Other, Other, Other, Exclamation,
           (Grapheme_Base => True,
            others => False)),
         others           => (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | Uppercase
                                 | XID_Continue
                                 | XID_Start
                                 | Has_Lowercase_Mapping => True,
                               others => False)));

   Group_002D : aliased constant Core_Second_Stage
     := (16#00# .. 16#25# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#26# .. 16#2F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#66# .. 16#6E# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#6F#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#70# .. 16#7F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#97# .. 16#9F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A7#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#AF#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B7#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BF#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C7#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#CF#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D7#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#DF#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_002E : aliased constant Core_Second_Stage
     := (16#00# .. 16#01# =>
          (Other_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#02#           =>
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#03#           =>
          (Final_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#04#           =>
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#05#           =>
          (Final_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#06# .. 16#08# =>
          (Other_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#09#           =>
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0A#           =>
          (Final_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0B#           =>
          (Other_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0C#           =>
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0D#           =>
          (Final_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0E# .. 16#15# =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#16#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#17#           =>
          (Dash_Punctuation, 0, Other, Other, Other, Break_After,
           (Dash
              | Hyphen
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#18#           =>
          (Other_Punctuation, 0, Other, Other, Other, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#19#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1A#           =>
          (Dash_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1B#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1C#           =>
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1D#           =>
          (Final_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1E# .. 16#1F# =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#20#           =>
          (Initial_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#21#           =>
          (Final_Punctuation, 0, Other, Other, Close, Quotation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#22#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#23#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#24#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#25#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#26#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#27#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#28#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#29#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2A# .. 16#2D# =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#2E#           =>
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#2F#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Pattern_Syntax
              | Alphabetic
              | Grapheme_Base => True,
            others => False)),
         16#30#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#31# .. 16#7F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         16#9A#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           => (Other_Symbol, 0, Other, Other, Other, Ideographic,
                              (Radical
                                 | Grapheme_Base => True,
                               others => False)));

   Group_002F : aliased constant Core_Second_Stage
     := (16#D6# .. 16#EF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F0# .. 16#F1# =>
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (IDS_Binary_Operator
              | Grapheme_Base => True,
            others => False)),
         16#F2# .. 16#F3# =>
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (IDS_Trinary_Operator
              | Grapheme_Base => True,
            others => False)),
         16#F4# .. 16#FB# =>
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (IDS_Binary_Operator
              | Grapheme_Base => True,
            others => False)),
         others           => (Other_Symbol, 0, Other, Other, Other, Ideographic,
                              (Radical
                                 | Grapheme_Base => True,
                               others => False)));

   Group_0030 : aliased constant Core_Second_Stage
     := (16#00#           =>
          (Space_Separator, 0, Other, Other, Sp, Ideographic,
           (White_Space
              | Grapheme_Base => True,
            others => False)),
         16#01#           =>
          (Other_Punctuation, 0, Other, Other, S_Continue, Close_Punctuation,
           (Pattern_Syntax
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#02#           =>
          (Other_Punctuation, 0, Other, Other, S_Term, Close_Punctuation,
           (Pattern_Syntax
              | STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#03#           =>
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#04#           =>
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#05#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Nonstarter,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#06#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#07#           =>
          (Letter_Number, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#08#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#09#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0A#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0B#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#0C#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#0D#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#0E#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#0F#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#10#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#11#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#12# .. 16#13# =>
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#14#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#15#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#16#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#17#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#18#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#19#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1A#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1B#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1C#           =>
          (Dash_Punctuation, 0, Other, Other, Other, Nonstarter,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1D#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#1E# .. 16#1F# =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#20#           =>
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#21# .. 16#29# =>
          (Letter_Number, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#2A#           =>
          (Nonspacing_Mark, 218, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2B#           =>
          (Nonspacing_Mark, 228, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2C#           =>
          (Nonspacing_Mark, 232, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2D#           =>
          (Nonspacing_Mark, 222, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2E# .. 16#2F# =>
          (Nonspacing_Mark, 224, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#30#           =>
          (Dash_Punctuation, 0, Other, Other, Other, Ideographic,
           (Dash
              | Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#31# .. 16#35# =>
          (Modifier_Letter, 0, Other, Katakana, O_Letter, Ideographic,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#36# .. 16#37# =>
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#38# .. 16#3A# =>
          (Letter_Number, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3B#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3C#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3D#           =>
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#3E# .. 16#3F# =>
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#40#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#41#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#42#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#43#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#44#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#45#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#46#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#47#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#48#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#49#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#4A# .. 16#62# =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#63#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#64# .. 16#82# =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#83#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#84#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#85#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#86#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#87#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#88# .. 16#8D# =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8E#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8F# .. 16#94# =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#95# .. 16#96# =>
          (Other_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#97# .. 16#98# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#99# .. 16#9A# =>
          (Nonspacing_Mark, 8, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#9B# .. 16#9C# =>
          (Modifier_Symbol, 0, Other, Katakana, Other, Nonstarter,
           (Diacritic
              | Other_ID_Start
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         16#9D# .. 16#9E# =>
          (Modifier_Letter, 0, Other, Other, O_Letter, Nonstarter,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#9F#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A0#           =>
          (Dash_Punctuation, 0, Other, Katakana, Other, Nonstarter,
           (Dash
              | Grapheme_Base => True,
            others => False)),
         16#A1#           =>
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A3#           =>
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A5#           =>
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A7#           =>
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A9#           =>
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C3#           =>
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E3#           =>
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E5#           =>
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E7#           =>
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#EE#           =>
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F5# .. 16#F6# =>
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#FB#           =>
          (Other_Punctuation, 0, Other, Other, Other, Nonstarter,
           (Hyphen
              | Grapheme_Base => True,
            others => False)),
         16#FC#           =>
          (Modifier_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Diacritic
              | Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#FD# .. 16#FE# =>
          (Modifier_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Other_Letter, 0, Other, Katakana, O_Letter, Ideographic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_0031 : aliased constant Core_Second_Stage
     := (16#00# .. 16#04# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#2E# .. 16#30# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#64#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Ideographic,
           (Other_Default_Ignorable_Code_Point
              | Alphabetic
              | Default_Ignorable_Code_Point
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8F#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#90# .. 16#91# =>
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#92# .. 16#95# =>
          (Other_Number, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#96# .. 16#9F# =>
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#B8# .. 16#BF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C0# .. 16#E3# =>
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#E4# .. 16#EF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Ideographic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_0032 : aliased constant Core_Second_Stage
     := (16#1F#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#20# .. 16#29# =>
          (Other_Number, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#44# .. 16#4F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#51# .. 16#5F# =>
          (Other_Number, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#80# .. 16#89# =>
          (Other_Number, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#B1# .. 16#BF# =>
          (Other_Number, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#D0# .. 16#FE# =>
          (Other_Symbol, 0, Other, Katakana, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         others           => (Other_Symbol, 0, Other, Other, Other, Ideographic,
                              (Grapheme_Base => True,
                               others => False)));

   Group_0033 : aliased constant Core_Second_Stage
     := (16#00# .. 16#57# =>
          (Other_Symbol, 0, Other, Katakana, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         others           => (Other_Symbol, 0, Other, Other, Other, Ideographic,
                              (Grapheme_Base => True,
                               others => False)));

   Group_0034 : aliased constant Core_Second_Stage
     := (others           => (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
                              (Ideographic
                                 | Unified_Ideograph
                                 | Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_004D : aliased constant Core_Second_Stage
     := (16#B6# .. 16#BF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           => (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
                              (Ideographic
                                 | Unified_Ideograph
                                 | Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_009F : aliased constant Core_Second_Stage
     := (others           => (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
                              (Ideographic
                                 | Unified_Ideograph
                                 | Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_00A0 : aliased constant Core_Second_Stage
     := (16#15#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Nonstarter,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Ideographic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_00A1 : aliased constant Core_Second_Stage
     := (others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Ideographic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_00A4 : aliased constant Core_Second_Stage
     := (16#8D# .. 16#8F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#90# .. 16#C6# =>
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Ideographic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_00A6 : aliased constant Core_Second_Stage
     := (16#00# .. 16#0B# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#0C#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#0D#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#0E#           =>
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#0F#           =>
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#10# .. 16#1F# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#20# .. 16#29# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2A# .. 16#2B# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#40#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#41#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#42#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#43#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#44#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#45#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#46#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#47#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#48#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#49#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4A#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4C#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4E#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#50#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#51#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#52#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#53#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#54#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#55#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#56#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#57#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#58#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#59#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5A#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5C#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5E#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#62#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#63#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#64#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#65#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#66#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#67#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#68#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#69#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6A#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#6B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6C#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#6D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6E#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#6F#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#70# .. 16#72# =>
          (Enclosing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend => True,
            others => False)),
         16#73#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#7C# .. 16#7D# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#7E#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#7F#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#80#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#81#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#82#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#83#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#84#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#85#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#86#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#87#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#88#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#89#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8A#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#8B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8C#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#8D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#8E#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#8F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#90#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#91#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#92#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#93#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#94#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#95#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#96#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#97#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_00A7 : aliased constant Core_Second_Stage
     := (16#00# .. 16#16# =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#17# .. 16#1F# =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#20# .. 16#21# =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#22#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#23#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#24#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#25#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#26#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#27#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#28#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#29#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2A#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#2B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2C#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#2D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#2E#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#2F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#30# .. 16#31# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#32#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#33#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#34#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#35#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#36#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#37#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#38#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#39#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3A#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#3B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3C#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#3D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#3E#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#3F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#40#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#41#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#42#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#43#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#44#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#45#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#46#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#47#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#48#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#49#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4A#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4C#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#4E#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#4F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#50#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#51#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#52#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#53#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#54#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#55#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#56#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#57#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#58#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#59#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5A#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5C#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5E#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#5F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#60#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#61#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#62#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#63#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#64#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#65#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#66#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#67#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#68#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#69#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6A#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#6B#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6C#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#6D#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#6E#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#6F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#70#           =>
          (Modifier_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Lowercase
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#71# .. 16#78# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#79#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#7A#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7B#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#7C#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#7D# .. 16#7E# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#7F#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#80#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#81#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#82#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#83#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#84#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#85#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#86#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#87#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#88#           =>
          (Modifier_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Diacritic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#89# .. 16#8A# =>
          (Modifier_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#8B#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#8C#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_00A8 : aliased constant Core_Second_Stage
     := (16#02#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#06#           =>
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#0B#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#23# .. 16#24# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#25# .. 16#26# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#27#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#28# .. 16#2B# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#2C# .. 16#3F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#74# .. 16#75# =>
          (Other_Punctuation, 0, Other, Other, Other, Break_Before,
           (Grapheme_Base => True,
            others => False)),
         16#76# .. 16#77# =>
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#78# .. 16#7F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#80# .. 16#81# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B4# .. 16#C3# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C4#           =>
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C5# .. 16#CD# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#CE# .. 16#CF# =>
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#D0# .. 16#D9# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_00A9 : aliased constant Core_Second_Stage
     := (16#00# .. 16#09# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#0A# .. 16#25# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#26# .. 16#2A# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2B# .. 16#2D# =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2E#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#2F#           =>
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#30# .. 16#46# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#47# .. 16#51# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#52#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#53#           =>
          (Spacing_Mark, 9, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Base
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5F#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_00AA : aliased constant Core_Second_Stage
     := (16#00# .. 16#28# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#29# .. 16#2E# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2F# .. 16#30# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#31# .. 16#32# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#33# .. 16#34# =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#35# .. 16#36# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#40# .. 16#42# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#43#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#44# .. 16#4B# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#4C#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#4D#           =>
          (Spacing_Mark, 0, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#50# .. 16#59# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#5C#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#5D# .. 16#5F# =>
          (Other_Punctuation, 0, Other, Other, S_Term, Break_After,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_00AC : aliased constant Core_Second_Stage
     := (16#00#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#1C#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#38#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#54#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#70#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8C#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A8#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C4#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E0#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#FC#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Other_Letter, 0, LVT, A_Letter, O_Letter, H3,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_00AD : aliased constant Core_Second_Stage
     := (16#18#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#34#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#50#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#6C#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#88#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A4#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C0#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#DC#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F8#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Other_Letter, 0, LVT, A_Letter, O_Letter, H3,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_00AE : aliased constant Core_Second_Stage
     := (16#14#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#30#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#4C#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#68#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#84#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A0#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BC#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D8#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F4#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Other_Letter, 0, LVT, A_Letter, O_Letter, H3,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_00AF : aliased constant Core_Second_Stage
     := (16#10#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#2C#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#48#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#64#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#80#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#9C#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B8#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D4#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F0#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Other_Letter, 0, LVT, A_Letter, O_Letter, H3,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_00B0 : aliased constant Core_Second_Stage
     := (16#0C#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#28#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#44#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#60#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#7C#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#98#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B4#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#D0#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#EC#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Other_Letter, 0, LVT, A_Letter, O_Letter, H3,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_00B1 : aliased constant Core_Second_Stage
     := (16#08#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#24#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#40#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#5C#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#78#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#94#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#B0#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#CC#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E8#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Other_Letter, 0, LVT, A_Letter, O_Letter, H3,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_00B2 : aliased constant Core_Second_Stage
     := (16#04#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#20#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3C#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#58#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#74#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#90#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#AC#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C8#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#E4#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Other_Letter, 0, LVT, A_Letter, O_Letter, H3,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_00D7 : aliased constant Core_Second_Stage
     := (16#18#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#34#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#50#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#6C#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#88#           =>
          (Other_Letter, 0, LV, A_Letter, O_Letter, H2,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Other_Letter, 0, LVT, A_Letter, O_Letter, H3,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_00D8 : aliased constant Core_Second_Stage
     := (others           => (Surrogate, 0, Other, Other, Other, Surrogate,
                              (others => False)));

   Group_00E0 : aliased constant Core_Second_Stage
     := (others           => (Private_Use, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_00F9 : aliased constant Core_Second_Stage
     := (others           => (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
                              (Ideographic
                                 | Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_00FA : aliased constant Core_Second_Stage
     := (16#0E# .. 16#0F# =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Unified_Ideograph
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#11#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Unified_Ideograph
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#13# .. 16#14# =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Unified_Ideograph
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#1F#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Unified_Ideograph
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#21#           =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Unified_Ideograph
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#23# .. 16#24# =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Unified_Ideograph
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#27# .. 16#29# =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Unified_Ideograph
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#2E# .. 16#2F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#6B# .. 16#6F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           => (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
                              (Ideographic
                                 | Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_00FB : aliased constant Core_Second_Stage
     := (16#00# .. 16#06# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#07# .. 16#12# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#13# .. 16#17# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#18# .. 16#1C# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#1E#           =>
          (Nonspacing_Mark, 26, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#29#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#37#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3D#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3F#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#42#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#45#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B2# .. 16#D2# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_00FC : aliased constant Core_Second_Stage
     := (16#5E# .. 16#63# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_00FD : aliased constant Core_Second_Stage
     := (16#3E#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#3F#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#40# .. 16#4F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#90# .. 16#91# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C8# .. 16#CF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D0# .. 16#EF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Noncharacter_Code_Point => True,
            others => False)),
         16#FA# .. 16#FB# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         16#FC#           =>
          (Currency_Symbol, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#FD#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_00FE : aliased constant Core_Second_Stage
     := (16#00# .. 16#0F# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Variation_Selector
              | Default_Ignorable_Code_Point
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#10#           =>
          (Other_Punctuation, 0, Other, Mid_Num, S_Continue, Infix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#11#           =>
          (Other_Punctuation, 0, Other, Other, S_Continue, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#12#           =>
          (Other_Punctuation, 0, Other, Other, Other, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#13#           =>
          (Other_Punctuation, 0, Other, Mid_Letter, S_Continue, Infix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#14#           =>
          (Other_Punctuation, 0, Other, Mid_Num, Other, Infix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#15# .. 16#16# =>
          (Other_Punctuation, 0, Other, Other, Other, Exclamation,
           (Grapheme_Base => True,
            others => False)),
         16#17#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#18#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#19#           =>
          (Other_Punctuation, 0, Other, Other, Other, Inseparable,
           (Grapheme_Base => True,
            others => False)),
         16#1A# .. 16#1F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#20# .. 16#26# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#27# .. 16#2F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#30#           =>
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#31# .. 16#32# =>
          (Dash_Punctuation, 0, Other, Other, S_Continue, Ideographic,
           (Dash
              | Grapheme_Base => True,
            others => False)),
         16#33# .. 16#34# =>
          (Connector_Punctuation, 0, Other, Extend_Num_Let, Other, Ideographic,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#35#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#36#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#37#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#38#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#39#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3A#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3B#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3C#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3D#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3E#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3F#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#40#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#41#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#42#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#43#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#44#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#45# .. 16#46# =>
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#47#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#48#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#49# .. 16#4C# =>
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#4D# .. 16#4F# =>
          (Connector_Punctuation, 0, Other, Extend_Num_Let, Other, Ideographic,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#50#           =>
          (Other_Punctuation, 0, Other, Mid_Num, S_Continue, Close_Punctuation,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#51#           =>
          (Other_Punctuation, 0, Other, Other, S_Continue, Ideographic,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#52#           =>
          (Other_Punctuation, 0, Other, Mid_Num_Let, A_Term, Close_Punctuation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#53#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#54#           =>
          (Other_Punctuation, 0, Other, Mid_Num, Other, Nonstarter,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#55#           =>
          (Other_Punctuation, 0, Other, Mid_Letter, S_Continue, Nonstarter,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#56# .. 16#57# =>
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#58#           =>
          (Dash_Punctuation, 0, Other, Other, S_Continue, Ideographic,
           (Dash
              | Grapheme_Base => True,
            others => False)),
         16#59#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#5A#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#5B#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#5C#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#5D#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#5E#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#5F# .. 16#60# =>
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#61#           =>
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#62#           =>
          (Math_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#63#           =>
          (Dash_Punctuation, 0, Other, Other, S_Continue, Ideographic,
           (Dash
              | Hyphen
              | Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#64# .. 16#66# =>
          (Math_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#67#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#68#           =>
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#69#           =>
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#6A#           =>
          (Other_Punctuation, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#6B#           =>
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#6C# .. 16#6F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#70#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         16#72#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         16#74#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         16#75#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#76#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         16#78#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         16#7A#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         16#7C#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         16#7E#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start => True,
            others => False)),
         16#FD# .. 16#FE# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_00FF : aliased constant Core_Second_Stage
     := (16#00#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#01#           =>
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#02#           =>
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#03#           =>
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#04#           =>
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#05#           =>
          (Other_Punctuation, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#06#           =>
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#07#           =>
          (Other_Punctuation, 0, Other, Mid_Num_Let, Other, Ideographic,
           (Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#08#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#09#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#0A#           =>
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#0B#           =>
          (Math_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#0C#           =>
          (Other_Punctuation, 0, Other, Mid_Num, S_Continue, Close_Punctuation,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#0D#           =>
          (Dash_Punctuation, 0, Other, Other, S_Continue, Ideographic,
           (Dash
              | Hyphen
              | Grapheme_Base => True,
            others => False)),
         16#0E#           =>
          (Other_Punctuation, 0, Other, Mid_Num_Let, A_Term, Close_Punctuation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#0F#           =>
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#10# .. 16#19# =>
          (Decimal_Number, 0, Other, Other, Other, Ideographic,
           (Hex_Digit
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#1A#           =>
          (Other_Punctuation, 0, Other, Mid_Letter, S_Continue, Nonstarter,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#1B#           =>
          (Other_Punctuation, 0, Other, Mid_Num, Other, Nonstarter,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#1C# .. 16#1E# =>
          (Math_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#1F#           =>
          (Other_Punctuation, 0, Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#20#           =>
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#21# .. 16#26# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Ideographic,
           (Hex_Digit
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#27# .. 16#3A# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#3B#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3C#           =>
          (Other_Punctuation, 0, Other, Other, Other, Ideographic,
           (Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#3D#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#3E#           =>
          (Modifier_Symbol, 0, Other, Other, Other, Ideographic,
           (Diacritic
              | Other_Math
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#3F#           =>
          (Connector_Punctuation, 0, Other, Extend_Num_Let, Other, Ideographic,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#40#           =>
          (Modifier_Symbol, 0, Other, Other, Other, Ideographic,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#41# .. 16#46# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Ideographic,
           (Hex_Digit
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#47# .. 16#5A# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Ideographic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#5B#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#5C#           =>
          (Math_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#5D#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#5E#           =>
          (Math_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#5F#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#60#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Grapheme_Base => True,
            others => False)),
         16#61#           =>
          (Other_Punctuation, 0, Other, Other, S_Term, Close_Punctuation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#62#           =>
          (Open_Punctuation, 0, Other, Other, Close, Open_Punctuation,
           (Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#63#           =>
          (Close_Punctuation, 0, Other, Other, Close, Close_Punctuation,
           (Quotation_Mark
              | Grapheme_Base => True,
            others => False)),
         16#64#           =>
          (Other_Punctuation, 0, Other, Other, S_Continue, Close_Punctuation,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#65#           =>
          (Other_Punctuation, 0, Other, Other, Other, Nonstarter,
           (Hyphen
              | Grapheme_Base => True,
            others => False)),
         16#66#           =>
          (Other_Letter, 0, Other, Katakana, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#67# .. 16#6F# =>
          (Other_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#70#           =>
          (Modifier_Letter, 0, Other, Katakana, O_Letter, Nonstarter,
           (Diacritic
              | Extender
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#71# .. 16#9D# =>
          (Other_Letter, 0, Other, Katakana, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#9E# .. 16#9F# =>
          (Modifier_Letter, 0, Extend, Extend, Extend, Nonstarter,
           (Diacritic
              | Other_Grapheme_Extend
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | ID_Start
              | XID_Continue => True,
            others => False)),
         16#A0#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Other_Default_Ignorable_Code_Point
              | Alphabetic
              | Default_Ignorable_Code_Point
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BF# .. 16#C1# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C8# .. 16#C9# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D0# .. 16#D1# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D8# .. 16#D9# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#DD# .. 16#DF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#E0#           =>
          (Currency_Symbol, 0, Other, Other, Other, Postfix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#E1#           =>
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#E2#           =>
          (Math_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#E3#           =>
          (Modifier_Symbol, 0, Other, Other, Other, Ideographic,
           (Diacritic
              | Grapheme_Base => True,
            others => False)),
         16#E4#           =>
          (Other_Symbol, 0, Other, Other, Other, Ideographic,
           (Grapheme_Base => True,
            others => False)),
         16#E5# .. 16#E6# =>
          (Currency_Symbol, 0, Other, Other, Other, Prefix_Numeric,
           (Grapheme_Base => True,
            others => False)),
         16#E7#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#E8#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#E9# .. 16#EC# =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#ED# .. 16#EE# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#EF#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#F0# .. 16#F8# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (Other_Default_Ignorable_Code_Point
              | Default_Ignorable_Code_Point => True,
            others => False)),
         16#F9# .. 16#FB# =>
          (Format, 0, Control, Format, Format, Combining_Mark,
           (others => False)),
         16#FC#           =>
          (Other_Symbol, 0, Other, Other, Other, Contingent_Break,
           (Grapheme_Base => True,
            others => False)),
         16#FD#           =>
          (Other_Symbol, 0, Other, Other, Other, Ambiguous,
           (Grapheme_Base => True,
            others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_0100 : aliased constant Core_Second_Stage
     := (16#0C#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#27#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3B#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3E#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#4E# .. 16#4F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#5E# .. 16#7F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_0101 : aliased constant Core_Second_Stage
     := (16#00# .. 16#01# =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#02#           =>
          (Other_Symbol, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#03# .. 16#06# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#07# .. 16#33# =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#34# .. 16#36# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#40# .. 16#74# =>
          (Letter_Number, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#75# .. 16#78# =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#8A#           =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#8B# .. 16#8F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#9C# .. 16#CF# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#FD#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         others           => (Other_Symbol, 0, Other, Other, Other, Alphabetic,
                              (Grapheme_Base => True,
                               others => False)));

   Group_0102 : aliased constant Core_Second_Stage
     := (16#80# .. 16#9C# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A0# .. 16#D0# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_0103 : aliased constant Core_Second_Stage
     := (16#1F#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#20# .. 16#23# =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#24# .. 16#2F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#41#           =>
          (Letter_Number, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#4A#           =>
          (Letter_Number, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#4B# .. 16#7F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#9E#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#9F#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#C4# .. 16#C7# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#D0#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#D1# .. 16#D5# =>
          (Letter_Number, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
                              (Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_0104 : aliased constant Core_Second_Stage
     := (16#00# .. 16#27# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Has_Lowercase_Mapping => True,
            others => False)),
         16#28# .. 16#4F# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Has_Uppercase_Mapping
              | Has_Titlecase_Mapping => True,
            others => False)),
         16#50# .. 16#9D# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A0# .. 16#A9# =>
          (Decimal_Number, 0, Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_0108 : aliased constant Core_Second_Stage
     := (16#00# .. 16#05# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#08#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#0A# .. 16#35# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#37# .. 16#38# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3C#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3F#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_0109 : aliased constant Core_Second_Stage
     := (16#00# .. 16#15# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#16# .. 16#19# =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#1F#           =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#20# .. 16#39# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3F#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_010A : aliased constant Core_Second_Stage
     := (16#00#           =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#01# .. 16#03# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#05# .. 16#06# =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#0C#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#0D#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#0E#           =>
          (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#0F#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#10# .. 16#13# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#15# .. 16#17# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#19# .. 16#33# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#38#           =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#39#           =>
          (Nonspacing_Mark, 1, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3A#           =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3F#           =>
          (Nonspacing_Mark, 9, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#40# .. 16#47# =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#50# .. 16#57# =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Grapheme_Base => True,
            others => False)),
         16#58#           =>
          (Other_Punctuation, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_0123 : aliased constant Core_Second_Stage
     := (16#00# .. 16#6E# =>
          (Other_Letter, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_0124 : aliased constant Core_Second_Stage
     := (16#00# .. 16#62# =>
          (Letter_Number, 0, Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#70# .. 16#73# =>
          (Other_Punctuation, 0, Other, Other, Other, Break_After,
           (Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_01D0 : aliased constant Core_Second_Stage
     := (others           => (Other_Symbol, 0, Other, Other, Other, Alphabetic,
                              (Grapheme_Base => True,
                               others => False)));

   Group_01D1 : aliased constant Core_Second_Stage
     := (16#27# .. 16#28# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#65#           =>
          (Spacing_Mark, 216, Extend, Extend, Extend, Combining_Mark,
           (Other_Grapheme_Extend
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#66#           =>
          (Spacing_Mark, 216, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#67# .. 16#69# =>
          (Nonspacing_Mark, 1, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#6D#           =>
          (Spacing_Mark, 226, Spacing_Mark, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#6E# .. 16#72# =>
          (Spacing_Mark, 216, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Other_Grapheme_Extend
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#73# .. 16#7A# =>
          (Format, 0, Control, Format, Format, Combining_Mark,
           (Default_Ignorable_Code_Point => True,
            others => False)),
         16#7B# .. 16#82# =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#85# .. 16#89# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#8A# .. 16#8B# =>
          (Nonspacing_Mark, 220, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#AA# .. 16#AD# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         others           => (Other_Symbol, 0, Other, Other, Other, Alphabetic,
                              (Grapheme_Base => True,
                               others => False)));

   Group_01D2 : aliased constant Core_Second_Stage
     := (16#00# .. 16#41# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#42# .. 16#44# =>
          (Nonspacing_Mark, 230, Extend, Extend, Extend, Combining_Mark,
           (Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#45#           =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_01D3 : aliased constant Core_Second_Stage
     := (16#00# .. 16#56# =>
          (Other_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#60# .. 16#71# =>
          (Other_Number, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_01D4 : aliased constant Core_Second_Stage
     := (16#1A# .. 16#21# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#22# .. 16#23# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#24# .. 16#33# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#4E# .. 16#54# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#55#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#56# .. 16#57# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#58# .. 16#67# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#82# .. 16#89# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8A# .. 16#8B# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8C# .. 16#9B# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#9D#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A0# .. 16#A1# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A3# .. 16#A4# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#A7# .. 16#A8# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#AD#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#B6# .. 16#B9# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BA#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BB#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BC#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#BD#           =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BE# .. 16#BF# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C0# .. 16#C3# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C4#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C5# .. 16#CF# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#EA# .. 16#F1# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F2# .. 16#F3# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
                              (Other_Math
                                 | Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | Math
                                 | Uppercase
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_01D5 : aliased constant Core_Second_Stage
     := (16#00# .. 16#03# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#06#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#0B# .. 16#0C# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#15#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#1D#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#1E# .. 16#25# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#26# .. 16#27# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#28# .. 16#37# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#3A#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#3F#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#45#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#47# .. 16#49# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#51#           =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#52# .. 16#59# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#5A# .. 16#5B# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#5C# .. 16#6B# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#86# .. 16#8D# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8E# .. 16#8F# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#90# .. 16#9F# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#BA# .. 16#C1# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C2# .. 16#C3# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#C4# .. 16#D3# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#EE# .. 16#F5# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#F6# .. 16#F7# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
                              (Other_Math
                                 | Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | Math
                                 | Uppercase
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_01D6 : aliased constant Core_Second_Stage
     := (16#00# .. 16#07# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#22# .. 16#29# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#2A# .. 16#2B# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#2C# .. 16#3B# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#56# .. 16#5D# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#5E# .. 16#5F# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#60# .. 16#6F# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#8A# .. 16#91# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#92# .. 16#93# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Soft_Dotted
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#94# .. 16#A5# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A6# .. 16#A7# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         16#C1#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#C2# .. 16#DA# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#DB#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#DC# .. 16#E1# =>
          (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | Math
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#FB#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         others           => (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
                              (Other_Math
                                 | Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | Math
                                 | Uppercase
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_01D7 : aliased constant Core_Second_Stage
     := (16#15#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#1C# .. 16#34# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#35#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#4F#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#56# .. 16#6E# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#6F#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#89#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#90# .. 16#A8# =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A9#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#C3#           =>
          (Math_Symbol, 0, Other, Other, Other, Alphabetic,
           (Grapheme_Base
              | Math => True,
            others => False)),
         16#CA#           =>
          (Uppercase_Letter, 0, Other, A_Letter, Upper, Alphabetic,
           (Other_Math
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Math
              | Uppercase
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#CC# .. 16#CD# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           => (Lowercase_Letter, 0, Other, A_Letter, Lower, Alphabetic,
                              (Other_Math
                                 | Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | Lowercase
                                 | Math
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_01F0 : aliased constant Core_Second_Stage
     := (16#2C# .. 16#2F# =>
          (Unassigned, 0, Other, Other, Other, Unknown,
           (others => False)),
         others           => (Other_Symbol, 0, Other, Other, Other, Alphabetic,
                              (Grapheme_Base => True,
                               others => False)));

   Group_01FF : aliased constant Core_Second_Stage
     := (others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_02A6 : aliased constant Core_Second_Stage
     := (others           => (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
                              (Ideographic
                                 | Unified_Ideograph
                                 | Alphabetic
                                 | Grapheme_Base
                                 | ID_Continue
                                 | ID_Start
                                 | XID_Continue
                                 | XID_Start => True,
                               others => False)));

   Group_02FA : aliased constant Core_Second_Stage
     := (16#00# .. 16#1D# =>
          (Other_Letter, 0, Other, Other, O_Letter, Ideographic,
           (Ideographic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Group_0E00 : aliased constant Core_Second_Stage
     := (16#01#           =>
          (Format, 0, Control, Format, Format, Combining_Mark,
           (Deprecated
              | Default_Ignorable_Code_Point => True,
            others => False)),
         16#20# .. 16#7F# =>
          (Format, 0, Control, Format, Format, Combining_Mark,
           (Deprecated
              | Default_Ignorable_Code_Point => True,
            others => False)),
         others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (Other_Default_Ignorable_Code_Point
                                 | Default_Ignorable_Code_Point => True,
                               others => False)));

   Group_0E01 : aliased constant Core_Second_Stage
     := (others           => (Nonspacing_Mark, 0, Extend, Extend, Extend, Combining_Mark,
                              (Variation_Selector
                                 | Default_Ignorable_Code_Point
                                 | Grapheme_Extend
                                 | ID_Continue
                                 | XID_Continue => True,
                               others => False)));

   Group_0E02 : aliased constant Core_Second_Stage
     := (others           => (Unassigned, 0, Other, Other, Other, Unknown,
                              (Other_Default_Ignorable_Code_Point
                                 | Default_Ignorable_Code_Point => True,
                               others => False)));

   Group_0FFF : aliased constant Core_Second_Stage
     := (others           => (Private_Use, 0, Other, Other, Other, Unknown,
                              (others => False)));

   Property : aliased constant Core_First_Stage
     := (16#0000# => Group_0000'Access, 16#0001# => Group_0001'Access,
         16#0002# => Group_0002'Access, 16#0003# => Group_0003'Access,
         16#0004# => Group_0004'Access, 16#0005# => Group_0005'Access,
         16#0006# => Group_0006'Access, 16#0007# => Group_0007'Access,
         16#0009# => Group_0009'Access, 16#000A# => Group_000A'Access,
         16#000B# => Group_000B'Access, 16#000C# => Group_000C'Access,
         16#000D# => Group_000D'Access, 16#000E# => Group_000E'Access,
         16#000F# => Group_000F'Access, 16#0010# => Group_0010'Access,
         16#0011# => Group_0011'Access, 16#0012# => Group_0012'Access,
         16#0013# => Group_0013'Access, 16#0014# => Group_0014'Access,
         16#0015# => Group_0015'Access, 16#0016# => Group_0016'Access,
         16#0017# => Group_0017'Access, 16#0018# => Group_0018'Access,
         16#0019# => Group_0019'Access, 16#001A# => Group_001A'Access,
         16#001B# => Group_001B'Access, 16#001C# => Group_001C'Access,
         16#001D# => Group_001D'Access, 16#001E# => Group_001E'Access,
         16#001F# => Group_001F'Access, 16#0020# => Group_0020'Access,
         16#0021# => Group_0021'Access, 16#0022# => Group_0022'Access,
         16#0023# => Group_0023'Access, 16#0024# => Group_0024'Access,
         16#0025# => Group_0025'Access, 16#0026# => Group_0026'Access,
         16#0027# => Group_0027'Access, 16#0028# => Group_0028'Access,
         16#0029# => Group_0029'Access, 16#002A# => Group_002A'Access,
         16#002B# => Group_002B'Access, 16#002C# => Group_002C'Access,
         16#002D# => Group_002D'Access, 16#002E# => Group_002E'Access,
         16#002F# => Group_002F'Access, 16#0030# => Group_0030'Access,
         16#0031# => Group_0031'Access, 16#0032# => Group_0032'Access,
         16#0033# => Group_0033'Access, 16#0034# => Group_0034'Access,
         16#0035# => Group_0034'Access, 16#0036# => Group_0034'Access,
         16#0037# => Group_0034'Access, 16#0038# => Group_0034'Access,
         16#0039# => Group_0034'Access, 16#003A# => Group_0034'Access,
         16#003B# => Group_0034'Access, 16#003C# => Group_0034'Access,
         16#003D# => Group_0034'Access, 16#003E# => Group_0034'Access,
         16#003F# => Group_0034'Access, 16#0040# => Group_0034'Access,
         16#0041# => Group_0034'Access, 16#0042# => Group_0034'Access,
         16#0043# => Group_0034'Access, 16#0044# => Group_0034'Access,
         16#0045# => Group_0034'Access, 16#0046# => Group_0034'Access,
         16#0047# => Group_0034'Access, 16#0048# => Group_0034'Access,
         16#0049# => Group_0034'Access, 16#004A# => Group_0034'Access,
         16#004B# => Group_0034'Access, 16#004C# => Group_0034'Access,
         16#004D# => Group_004D'Access, 16#004E# => Group_0034'Access,
         16#004F# => Group_0034'Access, 16#0050# => Group_0034'Access,
         16#0051# => Group_0034'Access, 16#0052# => Group_0034'Access,
         16#0053# => Group_0034'Access, 16#0054# => Group_0034'Access,
         16#0055# => Group_0034'Access, 16#0056# => Group_0034'Access,
         16#0057# => Group_0034'Access, 16#0058# => Group_0034'Access,
         16#0059# => Group_0034'Access, 16#005A# => Group_0034'Access,
         16#005B# => Group_0034'Access, 16#005C# => Group_0034'Access,
         16#005D# => Group_0034'Access, 16#005E# => Group_0034'Access,
         16#005F# => Group_0034'Access, 16#0060# => Group_0034'Access,
         16#0061# => Group_0034'Access, 16#0062# => Group_0034'Access,
         16#0063# => Group_0034'Access, 16#0064# => Group_0034'Access,
         16#0065# => Group_0034'Access, 16#0066# => Group_0034'Access,
         16#0067# => Group_0034'Access, 16#0068# => Group_0034'Access,
         16#0069# => Group_0034'Access, 16#006A# => Group_0034'Access,
         16#006B# => Group_0034'Access, 16#006C# => Group_0034'Access,
         16#006D# => Group_0034'Access, 16#006E# => Group_0034'Access,
         16#006F# => Group_0034'Access, 16#0070# => Group_0034'Access,
         16#0071# => Group_0034'Access, 16#0072# => Group_0034'Access,
         16#0073# => Group_0034'Access, 16#0074# => Group_0034'Access,
         16#0075# => Group_0034'Access, 16#0076# => Group_0034'Access,
         16#0077# => Group_0034'Access, 16#0078# => Group_0034'Access,
         16#0079# => Group_0034'Access, 16#007A# => Group_0034'Access,
         16#007B# => Group_0034'Access, 16#007C# => Group_0034'Access,
         16#007D# => Group_0034'Access, 16#007E# => Group_0034'Access,
         16#007F# => Group_0034'Access, 16#0080# => Group_0034'Access,
         16#0081# => Group_0034'Access, 16#0082# => Group_0034'Access,
         16#0083# => Group_0034'Access, 16#0084# => Group_0034'Access,
         16#0085# => Group_0034'Access, 16#0086# => Group_0034'Access,
         16#0087# => Group_0034'Access, 16#0088# => Group_0034'Access,
         16#0089# => Group_0034'Access, 16#008A# => Group_0034'Access,
         16#008B# => Group_0034'Access, 16#008C# => Group_0034'Access,
         16#008D# => Group_0034'Access, 16#008E# => Group_0034'Access,
         16#008F# => Group_0034'Access, 16#0090# => Group_0034'Access,
         16#0091# => Group_0034'Access, 16#0092# => Group_0034'Access,
         16#0093# => Group_0034'Access, 16#0094# => Group_0034'Access,
         16#0095# => Group_0034'Access, 16#0096# => Group_0034'Access,
         16#0097# => Group_0034'Access, 16#0098# => Group_0034'Access,
         16#0099# => Group_0034'Access, 16#009A# => Group_0034'Access,
         16#009B# => Group_0034'Access, 16#009C# => Group_0034'Access,
         16#009D# => Group_0034'Access, 16#009E# => Group_0034'Access,
         16#009F# => Group_009F'Access, 16#00A0# => Group_00A0'Access,
         16#00A1# => Group_00A1'Access, 16#00A2# => Group_00A1'Access,
         16#00A3# => Group_00A1'Access, 16#00A4# => Group_00A4'Access,
         16#00A5# => Group_0015'Access, 16#00A6# => Group_00A6'Access,
         16#00A7# => Group_00A7'Access, 16#00A8# => Group_00A8'Access,
         16#00A9# => Group_00A9'Access, 16#00AA# => Group_00AA'Access,
         16#00AC# => Group_00AC'Access, 16#00AD# => Group_00AD'Access,
         16#00AE# => Group_00AE'Access, 16#00AF# => Group_00AF'Access,
         16#00B0# => Group_00B0'Access, 16#00B1# => Group_00B1'Access,
         16#00B2# => Group_00B2'Access, 16#00B3# => Group_00AC'Access,
         16#00B4# => Group_00AD'Access, 16#00B5# => Group_00AE'Access,
         16#00B6# => Group_00AF'Access, 16#00B7# => Group_00B0'Access,
         16#00B8# => Group_00B1'Access, 16#00B9# => Group_00B2'Access,
         16#00BA# => Group_00AC'Access, 16#00BB# => Group_00AD'Access,
         16#00BC# => Group_00AE'Access, 16#00BD# => Group_00AF'Access,
         16#00BE# => Group_00B0'Access, 16#00BF# => Group_00B1'Access,
         16#00C0# => Group_00B2'Access, 16#00C1# => Group_00AC'Access,
         16#00C2# => Group_00AD'Access, 16#00C3# => Group_00AE'Access,
         16#00C4# => Group_00AF'Access, 16#00C5# => Group_00B0'Access,
         16#00C6# => Group_00B1'Access, 16#00C7# => Group_00B2'Access,
         16#00C8# => Group_00AC'Access, 16#00C9# => Group_00AD'Access,
         16#00CA# => Group_00AE'Access, 16#00CB# => Group_00AF'Access,
         16#00CC# => Group_00B0'Access, 16#00CD# => Group_00B1'Access,
         16#00CE# => Group_00B2'Access, 16#00CF# => Group_00AC'Access,
         16#00D0# => Group_00AD'Access, 16#00D1# => Group_00AE'Access,
         16#00D2# => Group_00AF'Access, 16#00D3# => Group_00B0'Access,
         16#00D4# => Group_00B1'Access, 16#00D5# => Group_00B2'Access,
         16#00D6# => Group_00AC'Access, 16#00D7# => Group_00D7'Access,
         16#00D8# => Group_00D8'Access, 16#00D9# => Group_00D8'Access,
         16#00DA# => Group_00D8'Access, 16#00DB# => Group_00D8'Access,
         16#00DC# => Group_00D8'Access, 16#00DD# => Group_00D8'Access,
         16#00DE# => Group_00D8'Access, 16#00DF# => Group_00D8'Access,
         16#00E0# => Group_00E0'Access, 16#00E1# => Group_00E0'Access,
         16#00E2# => Group_00E0'Access, 16#00E3# => Group_00E0'Access,
         16#00E4# => Group_00E0'Access, 16#00E5# => Group_00E0'Access,
         16#00E6# => Group_00E0'Access, 16#00E7# => Group_00E0'Access,
         16#00E8# => Group_00E0'Access, 16#00E9# => Group_00E0'Access,
         16#00EA# => Group_00E0'Access, 16#00EB# => Group_00E0'Access,
         16#00EC# => Group_00E0'Access, 16#00ED# => Group_00E0'Access,
         16#00EE# => Group_00E0'Access, 16#00EF# => Group_00E0'Access,
         16#00F0# => Group_00E0'Access, 16#00F1# => Group_00E0'Access,
         16#00F2# => Group_00E0'Access, 16#00F3# => Group_00E0'Access,
         16#00F4# => Group_00E0'Access, 16#00F5# => Group_00E0'Access,
         16#00F6# => Group_00E0'Access, 16#00F7# => Group_00E0'Access,
         16#00F8# => Group_00E0'Access, 16#00F9# => Group_00F9'Access,
         16#00FA# => Group_00FA'Access, 16#00FB# => Group_00FB'Access,
         16#00FC# => Group_00FC'Access, 16#00FD# => Group_00FD'Access,
         16#00FE# => Group_00FE'Access, 16#00FF# => Group_00FF'Access,
         16#0100# => Group_0100'Access, 16#0101# => Group_0101'Access,
         16#0102# => Group_0102'Access, 16#0103# => Group_0103'Access,
         16#0104# => Group_0104'Access, 16#0108# => Group_0108'Access,
         16#0109# => Group_0109'Access, 16#010A# => Group_010A'Access,
         16#0120# => Group_0015'Access, 16#0121# => Group_0015'Access,
         16#0122# => Group_0015'Access, 16#0123# => Group_0123'Access,
         16#0124# => Group_0124'Access, 16#01D0# => Group_01D0'Access,
         16#01D1# => Group_01D1'Access, 16#01D2# => Group_01D2'Access,
         16#01D3# => Group_01D3'Access, 16#01D4# => Group_01D4'Access,
         16#01D5# => Group_01D5'Access, 16#01D6# => Group_01D6'Access,
         16#01D7# => Group_01D7'Access, 16#01F0# => Group_01F0'Access,
         16#01FF# => Group_01FF'Access, 16#0200# => Group_0034'Access,
         16#0201# => Group_0034'Access, 16#0202# => Group_0034'Access,
         16#0203# => Group_0034'Access, 16#0204# => Group_0034'Access,
         16#0205# => Group_0034'Access, 16#0206# => Group_0034'Access,
         16#0207# => Group_0034'Access, 16#0208# => Group_0034'Access,
         16#0209# => Group_0034'Access, 16#020A# => Group_0034'Access,
         16#020B# => Group_0034'Access, 16#020C# => Group_0034'Access,
         16#020D# => Group_0034'Access, 16#020E# => Group_0034'Access,
         16#020F# => Group_0034'Access, 16#0210# => Group_0034'Access,
         16#0211# => Group_0034'Access, 16#0212# => Group_0034'Access,
         16#0213# => Group_0034'Access, 16#0214# => Group_0034'Access,
         16#0215# => Group_0034'Access, 16#0216# => Group_0034'Access,
         16#0217# => Group_0034'Access, 16#0218# => Group_0034'Access,
         16#0219# => Group_0034'Access, 16#021A# => Group_0034'Access,
         16#021B# => Group_0034'Access, 16#021C# => Group_0034'Access,
         16#021D# => Group_0034'Access, 16#021E# => Group_0034'Access,
         16#021F# => Group_0034'Access, 16#0220# => Group_0034'Access,
         16#0221# => Group_0034'Access, 16#0222# => Group_0034'Access,
         16#0223# => Group_0034'Access, 16#0224# => Group_0034'Access,
         16#0225# => Group_0034'Access, 16#0226# => Group_0034'Access,
         16#0227# => Group_0034'Access, 16#0228# => Group_0034'Access,
         16#0229# => Group_0034'Access, 16#022A# => Group_0034'Access,
         16#022B# => Group_0034'Access, 16#022C# => Group_0034'Access,
         16#022D# => Group_0034'Access, 16#022E# => Group_0034'Access,
         16#022F# => Group_0034'Access, 16#0230# => Group_0034'Access,
         16#0231# => Group_0034'Access, 16#0232# => Group_0034'Access,
         16#0233# => Group_0034'Access, 16#0234# => Group_0034'Access,
         16#0235# => Group_0034'Access, 16#0236# => Group_0034'Access,
         16#0237# => Group_0034'Access, 16#0238# => Group_0034'Access,
         16#0239# => Group_0034'Access, 16#023A# => Group_0034'Access,
         16#023B# => Group_0034'Access, 16#023C# => Group_0034'Access,
         16#023D# => Group_0034'Access, 16#023E# => Group_0034'Access,
         16#023F# => Group_0034'Access, 16#0240# => Group_0034'Access,
         16#0241# => Group_0034'Access, 16#0242# => Group_0034'Access,
         16#0243# => Group_0034'Access, 16#0244# => Group_0034'Access,
         16#0245# => Group_0034'Access, 16#0246# => Group_0034'Access,
         16#0247# => Group_0034'Access, 16#0248# => Group_0034'Access,
         16#0249# => Group_0034'Access, 16#024A# => Group_0034'Access,
         16#024B# => Group_0034'Access, 16#024C# => Group_0034'Access,
         16#024D# => Group_0034'Access, 16#024E# => Group_0034'Access,
         16#024F# => Group_0034'Access, 16#0250# => Group_0034'Access,
         16#0251# => Group_0034'Access, 16#0252# => Group_0034'Access,
         16#0253# => Group_0034'Access, 16#0254# => Group_0034'Access,
         16#0255# => Group_0034'Access, 16#0256# => Group_0034'Access,
         16#0257# => Group_0034'Access, 16#0258# => Group_0034'Access,
         16#0259# => Group_0034'Access, 16#025A# => Group_0034'Access,
         16#025B# => Group_0034'Access, 16#025C# => Group_0034'Access,
         16#025D# => Group_0034'Access, 16#025E# => Group_0034'Access,
         16#025F# => Group_0034'Access, 16#0260# => Group_0034'Access,
         16#0261# => Group_0034'Access, 16#0262# => Group_0034'Access,
         16#0263# => Group_0034'Access, 16#0264# => Group_0034'Access,
         16#0265# => Group_0034'Access, 16#0266# => Group_0034'Access,
         16#0267# => Group_0034'Access, 16#0268# => Group_0034'Access,
         16#0269# => Group_0034'Access, 16#026A# => Group_0034'Access,
         16#026B# => Group_0034'Access, 16#026C# => Group_0034'Access,
         16#026D# => Group_0034'Access, 16#026E# => Group_0034'Access,
         16#026F# => Group_0034'Access, 16#0270# => Group_0034'Access,
         16#0271# => Group_0034'Access, 16#0272# => Group_0034'Access,
         16#0273# => Group_0034'Access, 16#0274# => Group_0034'Access,
         16#0275# => Group_0034'Access, 16#0276# => Group_0034'Access,
         16#0277# => Group_0034'Access, 16#0278# => Group_0034'Access,
         16#0279# => Group_0034'Access, 16#027A# => Group_0034'Access,
         16#027B# => Group_0034'Access, 16#027C# => Group_0034'Access,
         16#027D# => Group_0034'Access, 16#027E# => Group_0034'Access,
         16#027F# => Group_0034'Access, 16#0280# => Group_0034'Access,
         16#0281# => Group_0034'Access, 16#0282# => Group_0034'Access,
         16#0283# => Group_0034'Access, 16#0284# => Group_0034'Access,
         16#0285# => Group_0034'Access, 16#0286# => Group_0034'Access,
         16#0287# => Group_0034'Access, 16#0288# => Group_0034'Access,
         16#0289# => Group_0034'Access, 16#028A# => Group_0034'Access,
         16#028B# => Group_0034'Access, 16#028C# => Group_0034'Access,
         16#028D# => Group_0034'Access, 16#028E# => Group_0034'Access,
         16#028F# => Group_0034'Access, 16#0290# => Group_0034'Access,
         16#0291# => Group_0034'Access, 16#0292# => Group_0034'Access,
         16#0293# => Group_0034'Access, 16#0294# => Group_0034'Access,
         16#0295# => Group_0034'Access, 16#0296# => Group_0034'Access,
         16#0297# => Group_0034'Access, 16#0298# => Group_0034'Access,
         16#0299# => Group_0034'Access, 16#029A# => Group_0034'Access,
         16#029B# => Group_0034'Access, 16#029C# => Group_0034'Access,
         16#029D# => Group_0034'Access, 16#029E# => Group_0034'Access,
         16#029F# => Group_0034'Access, 16#02A0# => Group_0034'Access,
         16#02A1# => Group_0034'Access, 16#02A2# => Group_0034'Access,
         16#02A3# => Group_0034'Access, 16#02A4# => Group_0034'Access,
         16#02A5# => Group_0034'Access, 16#02A6# => Group_02A6'Access,
         16#02F8# => Group_00F9'Access, 16#02F9# => Group_00F9'Access,
         16#02FA# => Group_02FA'Access, 16#02FF# => Group_01FF'Access,
         16#03FF# => Group_01FF'Access, 16#04FF# => Group_01FF'Access,
         16#05FF# => Group_01FF'Access, 16#06FF# => Group_01FF'Access,
         16#07FF# => Group_01FF'Access, 16#08FF# => Group_01FF'Access,
         16#09FF# => Group_01FF'Access, 16#0AFF# => Group_01FF'Access,
         16#0BFF# => Group_01FF'Access, 16#0CFF# => Group_01FF'Access,
         16#0DFF# => Group_01FF'Access, 16#0E00# => Group_0E00'Access,
         16#0E01# => Group_0E01'Access, 16#0E02# => Group_0E02'Access,
         16#0E03# => Group_0E02'Access, 16#0E04# => Group_0E02'Access,
         16#0E05# => Group_0E02'Access, 16#0E06# => Group_0E02'Access,
         16#0E07# => Group_0E02'Access, 16#0E08# => Group_0E02'Access,
         16#0E09# => Group_0E02'Access, 16#0E0A# => Group_0E02'Access,
         16#0E0B# => Group_0E02'Access, 16#0E0C# => Group_0E02'Access,
         16#0E0D# => Group_0E02'Access, 16#0E0E# => Group_0E02'Access,
         16#0E0F# => Group_0E02'Access, 16#0EFF# => Group_01FF'Access,
         16#0F00# => Group_00E0'Access, 16#0F01# => Group_00E0'Access,
         16#0F02# => Group_00E0'Access, 16#0F03# => Group_00E0'Access,
         16#0F04# => Group_00E0'Access, 16#0F05# => Group_00E0'Access,
         16#0F06# => Group_00E0'Access, 16#0F07# => Group_00E0'Access,
         16#0F08# => Group_00E0'Access, 16#0F09# => Group_00E0'Access,
         16#0F0A# => Group_00E0'Access, 16#0F0B# => Group_00E0'Access,
         16#0F0C# => Group_00E0'Access, 16#0F0D# => Group_00E0'Access,
         16#0F0E# => Group_00E0'Access, 16#0F0F# => Group_00E0'Access,
         16#0F10# => Group_00E0'Access, 16#0F11# => Group_00E0'Access,
         16#0F12# => Group_00E0'Access, 16#0F13# => Group_00E0'Access,
         16#0F14# => Group_00E0'Access, 16#0F15# => Group_00E0'Access,
         16#0F16# => Group_00E0'Access, 16#0F17# => Group_00E0'Access,
         16#0F18# => Group_00E0'Access, 16#0F19# => Group_00E0'Access,
         16#0F1A# => Group_00E0'Access, 16#0F1B# => Group_00E0'Access,
         16#0F1C# => Group_00E0'Access, 16#0F1D# => Group_00E0'Access,
         16#0F1E# => Group_00E0'Access, 16#0F1F# => Group_00E0'Access,
         16#0F20# => Group_00E0'Access, 16#0F21# => Group_00E0'Access,
         16#0F22# => Group_00E0'Access, 16#0F23# => Group_00E0'Access,
         16#0F24# => Group_00E0'Access, 16#0F25# => Group_00E0'Access,
         16#0F26# => Group_00E0'Access, 16#0F27# => Group_00E0'Access,
         16#0F28# => Group_00E0'Access, 16#0F29# => Group_00E0'Access,
         16#0F2A# => Group_00E0'Access, 16#0F2B# => Group_00E0'Access,
         16#0F2C# => Group_00E0'Access, 16#0F2D# => Group_00E0'Access,
         16#0F2E# => Group_00E0'Access, 16#0F2F# => Group_00E0'Access,
         16#0F30# => Group_00E0'Access, 16#0F31# => Group_00E0'Access,
         16#0F32# => Group_00E0'Access, 16#0F33# => Group_00E0'Access,
         16#0F34# => Group_00E0'Access, 16#0F35# => Group_00E0'Access,
         16#0F36# => Group_00E0'Access, 16#0F37# => Group_00E0'Access,
         16#0F38# => Group_00E0'Access, 16#0F39# => Group_00E0'Access,
         16#0F3A# => Group_00E0'Access, 16#0F3B# => Group_00E0'Access,
         16#0F3C# => Group_00E0'Access, 16#0F3D# => Group_00E0'Access,
         16#0F3E# => Group_00E0'Access, 16#0F3F# => Group_00E0'Access,
         16#0F40# => Group_00E0'Access, 16#0F41# => Group_00E0'Access,
         16#0F42# => Group_00E0'Access, 16#0F43# => Group_00E0'Access,
         16#0F44# => Group_00E0'Access, 16#0F45# => Group_00E0'Access,
         16#0F46# => Group_00E0'Access, 16#0F47# => Group_00E0'Access,
         16#0F48# => Group_00E0'Access, 16#0F49# => Group_00E0'Access,
         16#0F4A# => Group_00E0'Access, 16#0F4B# => Group_00E0'Access,
         16#0F4C# => Group_00E0'Access, 16#0F4D# => Group_00E0'Access,
         16#0F4E# => Group_00E0'Access, 16#0F4F# => Group_00E0'Access,
         16#0F50# => Group_00E0'Access, 16#0F51# => Group_00E0'Access,
         16#0F52# => Group_00E0'Access, 16#0F53# => Group_00E0'Access,
         16#0F54# => Group_00E0'Access, 16#0F55# => Group_00E0'Access,
         16#0F56# => Group_00E0'Access, 16#0F57# => Group_00E0'Access,
         16#0F58# => Group_00E0'Access, 16#0F59# => Group_00E0'Access,
         16#0F5A# => Group_00E0'Access, 16#0F5B# => Group_00E0'Access,
         16#0F5C# => Group_00E0'Access, 16#0F5D# => Group_00E0'Access,
         16#0F5E# => Group_00E0'Access, 16#0F5F# => Group_00E0'Access,
         16#0F60# => Group_00E0'Access, 16#0F61# => Group_00E0'Access,
         16#0F62# => Group_00E0'Access, 16#0F63# => Group_00E0'Access,
         16#0F64# => Group_00E0'Access, 16#0F65# => Group_00E0'Access,
         16#0F66# => Group_00E0'Access, 16#0F67# => Group_00E0'Access,
         16#0F68# => Group_00E0'Access, 16#0F69# => Group_00E0'Access,
         16#0F6A# => Group_00E0'Access, 16#0F6B# => Group_00E0'Access,
         16#0F6C# => Group_00E0'Access, 16#0F6D# => Group_00E0'Access,
         16#0F6E# => Group_00E0'Access, 16#0F6F# => Group_00E0'Access,
         16#0F70# => Group_00E0'Access, 16#0F71# => Group_00E0'Access,
         16#0F72# => Group_00E0'Access, 16#0F73# => Group_00E0'Access,
         16#0F74# => Group_00E0'Access, 16#0F75# => Group_00E0'Access,
         16#0F76# => Group_00E0'Access, 16#0F77# => Group_00E0'Access,
         16#0F78# => Group_00E0'Access, 16#0F79# => Group_00E0'Access,
         16#0F7A# => Group_00E0'Access, 16#0F7B# => Group_00E0'Access,
         16#0F7C# => Group_00E0'Access, 16#0F7D# => Group_00E0'Access,
         16#0F7E# => Group_00E0'Access, 16#0F7F# => Group_00E0'Access,
         16#0F80# => Group_00E0'Access, 16#0F81# => Group_00E0'Access,
         16#0F82# => Group_00E0'Access, 16#0F83# => Group_00E0'Access,
         16#0F84# => Group_00E0'Access, 16#0F85# => Group_00E0'Access,
         16#0F86# => Group_00E0'Access, 16#0F87# => Group_00E0'Access,
         16#0F88# => Group_00E0'Access, 16#0F89# => Group_00E0'Access,
         16#0F8A# => Group_00E0'Access, 16#0F8B# => Group_00E0'Access,
         16#0F8C# => Group_00E0'Access, 16#0F8D# => Group_00E0'Access,
         16#0F8E# => Group_00E0'Access, 16#0F8F# => Group_00E0'Access,
         16#0F90# => Group_00E0'Access, 16#0F91# => Group_00E0'Access,
         16#0F92# => Group_00E0'Access, 16#0F93# => Group_00E0'Access,
         16#0F94# => Group_00E0'Access, 16#0F95# => Group_00E0'Access,
         16#0F96# => Group_00E0'Access, 16#0F97# => Group_00E0'Access,
         16#0F98# => Group_00E0'Access, 16#0F99# => Group_00E0'Access,
         16#0F9A# => Group_00E0'Access, 16#0F9B# => Group_00E0'Access,
         16#0F9C# => Group_00E0'Access, 16#0F9D# => Group_00E0'Access,
         16#0F9E# => Group_00E0'Access, 16#0F9F# => Group_00E0'Access,
         16#0FA0# => Group_00E0'Access, 16#0FA1# => Group_00E0'Access,
         16#0FA2# => Group_00E0'Access, 16#0FA3# => Group_00E0'Access,
         16#0FA4# => Group_00E0'Access, 16#0FA5# => Group_00E0'Access,
         16#0FA6# => Group_00E0'Access, 16#0FA7# => Group_00E0'Access,
         16#0FA8# => Group_00E0'Access, 16#0FA9# => Group_00E0'Access,
         16#0FAA# => Group_00E0'Access, 16#0FAB# => Group_00E0'Access,
         16#0FAC# => Group_00E0'Access, 16#0FAD# => Group_00E0'Access,
         16#0FAE# => Group_00E0'Access, 16#0FAF# => Group_00E0'Access,
         16#0FB0# => Group_00E0'Access, 16#0FB1# => Group_00E0'Access,
         16#0FB2# => Group_00E0'Access, 16#0FB3# => Group_00E0'Access,
         16#0FB4# => Group_00E0'Access, 16#0FB5# => Group_00E0'Access,
         16#0FB6# => Group_00E0'Access, 16#0FB7# => Group_00E0'Access,
         16#0FB8# => Group_00E0'Access, 16#0FB9# => Group_00E0'Access,
         16#0FBA# => Group_00E0'Access, 16#0FBB# => Group_00E0'Access,
         16#0FBC# => Group_00E0'Access, 16#0FBD# => Group_00E0'Access,
         16#0FBE# => Group_00E0'Access, 16#0FBF# => Group_00E0'Access,
         16#0FC0# => Group_00E0'Access, 16#0FC1# => Group_00E0'Access,
         16#0FC2# => Group_00E0'Access, 16#0FC3# => Group_00E0'Access,
         16#0FC4# => Group_00E0'Access, 16#0FC5# => Group_00E0'Access,
         16#0FC6# => Group_00E0'Access, 16#0FC7# => Group_00E0'Access,
         16#0FC8# => Group_00E0'Access, 16#0FC9# => Group_00E0'Access,
         16#0FCA# => Group_00E0'Access, 16#0FCB# => Group_00E0'Access,
         16#0FCC# => Group_00E0'Access, 16#0FCD# => Group_00E0'Access,
         16#0FCE# => Group_00E0'Access, 16#0FCF# => Group_00E0'Access,
         16#0FD0# => Group_00E0'Access, 16#0FD1# => Group_00E0'Access,
         16#0FD2# => Group_00E0'Access, 16#0FD3# => Group_00E0'Access,
         16#0FD4# => Group_00E0'Access, 16#0FD5# => Group_00E0'Access,
         16#0FD6# => Group_00E0'Access, 16#0FD7# => Group_00E0'Access,
         16#0FD8# => Group_00E0'Access, 16#0FD9# => Group_00E0'Access,
         16#0FDA# => Group_00E0'Access, 16#0FDB# => Group_00E0'Access,
         16#0FDC# => Group_00E0'Access, 16#0FDD# => Group_00E0'Access,
         16#0FDE# => Group_00E0'Access, 16#0FDF# => Group_00E0'Access,
         16#0FE0# => Group_00E0'Access, 16#0FE1# => Group_00E0'Access,
         16#0FE2# => Group_00E0'Access, 16#0FE3# => Group_00E0'Access,
         16#0FE4# => Group_00E0'Access, 16#0FE5# => Group_00E0'Access,
         16#0FE6# => Group_00E0'Access, 16#0FE7# => Group_00E0'Access,
         16#0FE8# => Group_00E0'Access, 16#0FE9# => Group_00E0'Access,
         16#0FEA# => Group_00E0'Access, 16#0FEB# => Group_00E0'Access,
         16#0FEC# => Group_00E0'Access, 16#0FED# => Group_00E0'Access,
         16#0FEE# => Group_00E0'Access, 16#0FEF# => Group_00E0'Access,
         16#0FF0# => Group_00E0'Access, 16#0FF1# => Group_00E0'Access,
         16#0FF2# => Group_00E0'Access, 16#0FF3# => Group_00E0'Access,
         16#0FF4# => Group_00E0'Access, 16#0FF5# => Group_00E0'Access,
         16#0FF6# => Group_00E0'Access, 16#0FF7# => Group_00E0'Access,
         16#0FF8# => Group_00E0'Access, 16#0FF9# => Group_00E0'Access,
         16#0FFA# => Group_00E0'Access, 16#0FFB# => Group_00E0'Access,
         16#0FFC# => Group_00E0'Access, 16#0FFD# => Group_00E0'Access,
         16#0FFE# => Group_00E0'Access, 16#0FFF# => Group_0FFF'Access,
         16#1000# => Group_00E0'Access, 16#1001# => Group_00E0'Access,
         16#1002# => Group_00E0'Access, 16#1003# => Group_00E0'Access,
         16#1004# => Group_00E0'Access, 16#1005# => Group_00E0'Access,
         16#1006# => Group_00E0'Access, 16#1007# => Group_00E0'Access,
         16#1008# => Group_00E0'Access, 16#1009# => Group_00E0'Access,
         16#100A# => Group_00E0'Access, 16#100B# => Group_00E0'Access,
         16#100C# => Group_00E0'Access, 16#100D# => Group_00E0'Access,
         16#100E# => Group_00E0'Access, 16#100F# => Group_00E0'Access,
         16#1010# => Group_00E0'Access, 16#1011# => Group_00E0'Access,
         16#1012# => Group_00E0'Access, 16#1013# => Group_00E0'Access,
         16#1014# => Group_00E0'Access, 16#1015# => Group_00E0'Access,
         16#1016# => Group_00E0'Access, 16#1017# => Group_00E0'Access,
         16#1018# => Group_00E0'Access, 16#1019# => Group_00E0'Access,
         16#101A# => Group_00E0'Access, 16#101B# => Group_00E0'Access,
         16#101C# => Group_00E0'Access, 16#101D# => Group_00E0'Access,
         16#101E# => Group_00E0'Access, 16#101F# => Group_00E0'Access,
         16#1020# => Group_00E0'Access, 16#1021# => Group_00E0'Access,
         16#1022# => Group_00E0'Access, 16#1023# => Group_00E0'Access,
         16#1024# => Group_00E0'Access, 16#1025# => Group_00E0'Access,
         16#1026# => Group_00E0'Access, 16#1027# => Group_00E0'Access,
         16#1028# => Group_00E0'Access, 16#1029# => Group_00E0'Access,
         16#102A# => Group_00E0'Access, 16#102B# => Group_00E0'Access,
         16#102C# => Group_00E0'Access, 16#102D# => Group_00E0'Access,
         16#102E# => Group_00E0'Access, 16#102F# => Group_00E0'Access,
         16#1030# => Group_00E0'Access, 16#1031# => Group_00E0'Access,
         16#1032# => Group_00E0'Access, 16#1033# => Group_00E0'Access,
         16#1034# => Group_00E0'Access, 16#1035# => Group_00E0'Access,
         16#1036# => Group_00E0'Access, 16#1037# => Group_00E0'Access,
         16#1038# => Group_00E0'Access, 16#1039# => Group_00E0'Access,
         16#103A# => Group_00E0'Access, 16#103B# => Group_00E0'Access,
         16#103C# => Group_00E0'Access, 16#103D# => Group_00E0'Access,
         16#103E# => Group_00E0'Access, 16#103F# => Group_00E0'Access,
         16#1040# => Group_00E0'Access, 16#1041# => Group_00E0'Access,
         16#1042# => Group_00E0'Access, 16#1043# => Group_00E0'Access,
         16#1044# => Group_00E0'Access, 16#1045# => Group_00E0'Access,
         16#1046# => Group_00E0'Access, 16#1047# => Group_00E0'Access,
         16#1048# => Group_00E0'Access, 16#1049# => Group_00E0'Access,
         16#104A# => Group_00E0'Access, 16#104B# => Group_00E0'Access,
         16#104C# => Group_00E0'Access, 16#104D# => Group_00E0'Access,
         16#104E# => Group_00E0'Access, 16#104F# => Group_00E0'Access,
         16#1050# => Group_00E0'Access, 16#1051# => Group_00E0'Access,
         16#1052# => Group_00E0'Access, 16#1053# => Group_00E0'Access,
         16#1054# => Group_00E0'Access, 16#1055# => Group_00E0'Access,
         16#1056# => Group_00E0'Access, 16#1057# => Group_00E0'Access,
         16#1058# => Group_00E0'Access, 16#1059# => Group_00E0'Access,
         16#105A# => Group_00E0'Access, 16#105B# => Group_00E0'Access,
         16#105C# => Group_00E0'Access, 16#105D# => Group_00E0'Access,
         16#105E# => Group_00E0'Access, 16#105F# => Group_00E0'Access,
         16#1060# => Group_00E0'Access, 16#1061# => Group_00E0'Access,
         16#1062# => Group_00E0'Access, 16#1063# => Group_00E0'Access,
         16#1064# => Group_00E0'Access, 16#1065# => Group_00E0'Access,
         16#1066# => Group_00E0'Access, 16#1067# => Group_00E0'Access,
         16#1068# => Group_00E0'Access, 16#1069# => Group_00E0'Access,
         16#106A# => Group_00E0'Access, 16#106B# => Group_00E0'Access,
         16#106C# => Group_00E0'Access, 16#106D# => Group_00E0'Access,
         16#106E# => Group_00E0'Access, 16#106F# => Group_00E0'Access,
         16#1070# => Group_00E0'Access, 16#1071# => Group_00E0'Access,
         16#1072# => Group_00E0'Access, 16#1073# => Group_00E0'Access,
         16#1074# => Group_00E0'Access, 16#1075# => Group_00E0'Access,
         16#1076# => Group_00E0'Access, 16#1077# => Group_00E0'Access,
         16#1078# => Group_00E0'Access, 16#1079# => Group_00E0'Access,
         16#107A# => Group_00E0'Access, 16#107B# => Group_00E0'Access,
         16#107C# => Group_00E0'Access, 16#107D# => Group_00E0'Access,
         16#107E# => Group_00E0'Access, 16#107F# => Group_00E0'Access,
         16#1080# => Group_00E0'Access, 16#1081# => Group_00E0'Access,
         16#1082# => Group_00E0'Access, 16#1083# => Group_00E0'Access,
         16#1084# => Group_00E0'Access, 16#1085# => Group_00E0'Access,
         16#1086# => Group_00E0'Access, 16#1087# => Group_00E0'Access,
         16#1088# => Group_00E0'Access, 16#1089# => Group_00E0'Access,
         16#108A# => Group_00E0'Access, 16#108B# => Group_00E0'Access,
         16#108C# => Group_00E0'Access, 16#108D# => Group_00E0'Access,
         16#108E# => Group_00E0'Access, 16#108F# => Group_00E0'Access,
         16#1090# => Group_00E0'Access, 16#1091# => Group_00E0'Access,
         16#1092# => Group_00E0'Access, 16#1093# => Group_00E0'Access,
         16#1094# => Group_00E0'Access, 16#1095# => Group_00E0'Access,
         16#1096# => Group_00E0'Access, 16#1097# => Group_00E0'Access,
         16#1098# => Group_00E0'Access, 16#1099# => Group_00E0'Access,
         16#109A# => Group_00E0'Access, 16#109B# => Group_00E0'Access,
         16#109C# => Group_00E0'Access, 16#109D# => Group_00E0'Access,
         16#109E# => Group_00E0'Access, 16#109F# => Group_00E0'Access,
         16#10A0# => Group_00E0'Access, 16#10A1# => Group_00E0'Access,
         16#10A2# => Group_00E0'Access, 16#10A3# => Group_00E0'Access,
         16#10A4# => Group_00E0'Access, 16#10A5# => Group_00E0'Access,
         16#10A6# => Group_00E0'Access, 16#10A7# => Group_00E0'Access,
         16#10A8# => Group_00E0'Access, 16#10A9# => Group_00E0'Access,
         16#10AA# => Group_00E0'Access, 16#10AB# => Group_00E0'Access,
         16#10AC# => Group_00E0'Access, 16#10AD# => Group_00E0'Access,
         16#10AE# => Group_00E0'Access, 16#10AF# => Group_00E0'Access,
         16#10B0# => Group_00E0'Access, 16#10B1# => Group_00E0'Access,
         16#10B2# => Group_00E0'Access, 16#10B3# => Group_00E0'Access,
         16#10B4# => Group_00E0'Access, 16#10B5# => Group_00E0'Access,
         16#10B6# => Group_00E0'Access, 16#10B7# => Group_00E0'Access,
         16#10B8# => Group_00E0'Access, 16#10B9# => Group_00E0'Access,
         16#10BA# => Group_00E0'Access, 16#10BB# => Group_00E0'Access,
         16#10BC# => Group_00E0'Access, 16#10BD# => Group_00E0'Access,
         16#10BE# => Group_00E0'Access, 16#10BF# => Group_00E0'Access,
         16#10C0# => Group_00E0'Access, 16#10C1# => Group_00E0'Access,
         16#10C2# => Group_00E0'Access, 16#10C3# => Group_00E0'Access,
         16#10C4# => Group_00E0'Access, 16#10C5# => Group_00E0'Access,
         16#10C6# => Group_00E0'Access, 16#10C7# => Group_00E0'Access,
         16#10C8# => Group_00E0'Access, 16#10C9# => Group_00E0'Access,
         16#10CA# => Group_00E0'Access, 16#10CB# => Group_00E0'Access,
         16#10CC# => Group_00E0'Access, 16#10CD# => Group_00E0'Access,
         16#10CE# => Group_00E0'Access, 16#10CF# => Group_00E0'Access,
         16#10D0# => Group_00E0'Access, 16#10D1# => Group_00E0'Access,
         16#10D2# => Group_00E0'Access, 16#10D3# => Group_00E0'Access,
         16#10D4# => Group_00E0'Access, 16#10D5# => Group_00E0'Access,
         16#10D6# => Group_00E0'Access, 16#10D7# => Group_00E0'Access,
         16#10D8# => Group_00E0'Access, 16#10D9# => Group_00E0'Access,
         16#10DA# => Group_00E0'Access, 16#10DB# => Group_00E0'Access,
         16#10DC# => Group_00E0'Access, 16#10DD# => Group_00E0'Access,
         16#10DE# => Group_00E0'Access, 16#10DF# => Group_00E0'Access,
         16#10E0# => Group_00E0'Access, 16#10E1# => Group_00E0'Access,
         16#10E2# => Group_00E0'Access, 16#10E3# => Group_00E0'Access,
         16#10E4# => Group_00E0'Access, 16#10E5# => Group_00E0'Access,
         16#10E6# => Group_00E0'Access, 16#10E7# => Group_00E0'Access,
         16#10E8# => Group_00E0'Access, 16#10E9# => Group_00E0'Access,
         16#10EA# => Group_00E0'Access, 16#10EB# => Group_00E0'Access,
         16#10EC# => Group_00E0'Access, 16#10ED# => Group_00E0'Access,
         16#10EE# => Group_00E0'Access, 16#10EF# => Group_00E0'Access,
         16#10F0# => Group_00E0'Access, 16#10F1# => Group_00E0'Access,
         16#10F2# => Group_00E0'Access, 16#10F3# => Group_00E0'Access,
         16#10F4# => Group_00E0'Access, 16#10F5# => Group_00E0'Access,
         16#10F6# => Group_00E0'Access, 16#10F7# => Group_00E0'Access,
         16#10F8# => Group_00E0'Access, 16#10F9# => Group_00E0'Access,
         16#10FA# => Group_00E0'Access, 16#10FB# => Group_00E0'Access,
         16#10FC# => Group_00E0'Access, 16#10FD# => Group_00E0'Access,
         16#10FE# => Group_00E0'Access, 16#10FF# => Group_0FFF'Access,
         others   => Group_0008'Access);

end Matreshka.Internals.Ucd.Core;
