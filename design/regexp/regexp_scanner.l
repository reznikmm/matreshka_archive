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
-- Copyright © 2010 Vadim Godunko <vgodunko@gmail.com>                      --
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
--  $Revision$ $Date$
------------------------------------------------------------------------------

ASCII_HEX_DIGIT			[Aa][Ss][Cc][Ii][Ii](_|\p{Pattern_White_Space}*)[Hh][Ee][Xx](_|\p{Pattern_White_Space}*)[Dd][Ii][Gg][Ii][Tt]|[Aa][Hh][Ee][Xx]
ALPHABETIC			[Aa][Ll][Pp][Hh][Aa][Bb][Ee][Tt][Ii][Cc]|[Aa][Ll][Pp][Hh][Aa]
BIDI_CONTROL			[Bb][Ii][Dd][Ii](_|\p{Pattern_White_Space}*)[Cc][Oo][Nn][Tt][Rr][Oo][Ll]|[Bb][Ii][Dd][Ii](_|\p{Pattern_White_Space}*)[Cc]
BIDI_MIRRORED			[Bb][Ii][Dd][Ii](_|\p{Pattern_White_Space}*)[Mm][Ii][Rr][Rr][Oo][Rr][Ee][Dd]|[Bb][Ii][Dd][Ii](_|\p{Pattern_White_Space}*)[Mm]
COMPOSITION_EXCLUSION		[Cc][Oo][Mm][Pp][Oo][Ss][Ii][Tt][Ii][Oo][Nn](_|\p{Pattern_White_Space}*)[Ee][Xx][Cc][Ll][Uu][Ss][Ii][Oo][Nn]|[Cc][Ee]
FULL_COMPOSITION_EXCLUSION	[Ff][Uu][Ll][Ll](_|\p{Pattern_White_Space}*)[Cc][Oo][Mm][Pp][Oo][Ss][Ii][Tt][Ii][Oo][Nn](_|\p{Pattern_White_Space}*)[Ee][Xx][Cc][Ll][Uu][Ss][Ii][Oo][Nn]|[Cc][Oo][Mm][Pp](_|\p{Pattern_White_Space}*)[Ee][Xx]
DASH				[Dd][Aa][Ss][Hh]
DEPRECATED			[Dd][Ee][Pp][Rr][Ee][Cc][Aa][Tt][Ee][Dd]|[Dd][Ee][Pp]
DEFAULT_IGNORABLE_CODE_POINT	[Dd][Ee][Ff][Aa][Uu][Ll][Tt](_|\p{Pattern_White_Space}*)[Ii][Gg][Nn][Oo][Rr][Aa][Bb][Ll][Ee](_|\p{Pattern_White_Space}*)[Cc][Oo][Dd][Ee][(_|\p{Pattern_White_Space}*)[Pp][Oo][Ii][Nn][Tt]|[Dd][Ii]
DIACRITIC			[Dd][Ii][Aa][Cc][Rr][Ii][Tt][Ii][Cc]|[Dd][Ii][Aa]
EXTENDER			[Ee][Xx][Tt][Ee][Nn][Dd][Ee][Rr]|[Ee][Xx][Tt]
GRAPHEME_BASE			[Gg][Rr][Aa][Pp][Hh][Ee][Mm][Ee](_|\p{Pattern_White_Space}*)[Bb][Aa][Ss][Ee]|[Gg][Rr](_|\p{Pattern_White_Space}*)[Bb][Aa][Ss][Ee]
GRAPHEME_EXTEND			[Gg][Rr][Aa][Pp][Hh][Ee][Mm][Ee](_|\p{Pattern_White_Space}*)[Ee][Xx][Tt][Ee][Nn][Dd]|[Gg][Rr][(_|\p{Pattern_White_Space}*)[Ee][Xx][Tt]
GRAPHEME_LINK			[Gg][Rr][Aa][Pp][Hh][Ee][Mm][Ee](_|\p{Pattern_White_Space}*)[Ll][Ii][Nn][Kk]|[Gg][Rr](_|\p{Pattern_White_Space}*)[Ll][Ii][Nn][Kk]
HEX_DIGIT			[Hh][Ee][Xx](_|\p{Pattern_White_Space}*)[Dd][Ii][Gg][Ii][Tt]|[Hh][Ee][Xx]
HYPHEN				[Hh][Yy][Pp][Hh][Ee][Nn]
ID_CONTINUE			[Ii][Dd](_|\p{Pattern_White_Space}*)[Cc][Oo][Nn][Tt][Ii][Nn][Uu][Ee]|[Ii][Dd][Cc]
IDEOGRAPHIC			[Ii][Dd][Ee][Oo][Gg][Rr][Aa][Pp][Hh][Ii][Cc]|[Ii][Dd][Ee][Oo]
ID_START			[Ii][Dd](_|\p{Pattern_White_Space}*)[Ss][Tt][Aa][Rr][Tt]|[Ii][Dd][Ss]
IDS_BINARY_OPERATOR		[Ii][Dd][Ss](_|\p{Pattern_White_Space}*)[Bb][Ii][Nn][Aa][Rr][Yy](_|\p{Pattern_White_Space}*)[Oo][Pp][Ee][Rr][Aa][Tt][Oo][Rr]|[Ii][Dd][Ss][Bb]
IDS_TRINARY_OPERATOR		[Ii][Dd][Ss](_|\p{Pattern_White_Space}*)[Tt][Rr][Ii][Nn][Aa][Rr][Yy](_|\p{Pattern_White_Space}*)[Oo][Pp][Ee][Rr][Aa][Tt][Oo][Rr]|[Ii][Dd][Ss][Tt]
JOIN_CONTROL			[Jj][Oo][Ii][Nn](_|\p{Pattern_White_Space}*)[Cc][Oo][Nn][Tt][Rr][Oo][Ll]|[Jj][Oo][Ii][Nn](_|\p{Pattern_White_Space}*)[Cc]
LOGICAL_ORDER_EXCEPTION		[Ll][Oo][Gg][Ii][Cc][Aa][Ll](_|\p{Pattern_White_Space}*)[Oo][Rr][Dd][Ee][Rr](_|\p{Pattern_White_Space}*)[Ee][Xx][Cc][Ee][Pp][Tt][Ii][Oo][Nn]|[Ll][Oo][Ee]
LOWERCASE			[Ll][Oo][Ww][Ee][Rr][Cc][Aa][Ss][Ee]|[Ll][Oo][Ww][Ee][Rr]
MATH				[Mm][Aa][Tt][Hh]
NONCHARACTER_CODE_POINT		[Nn][Oo][Nn][Cc][Hh][Aa][Rr][Aa][Cc][Tt][Ee][Rr](_|\p{Pattern_White_Space}*)[Cc][Oo][Dd][Ee](_|\p{Pattern_White_Space}*)[Pp][Oo][Ii][Nn][Tt]|[Nn][Cc][Hh][Aa][Rr]
OTHER_ALPHABETIC		[Oo][Tt][Hh][Ee][Rr](_|\p{Pattern_White_Space}*)[Aa][Ll][Pp][Hh][Aa][Bb][Ee][Tt][Ii][Cc]|[Oo][Aa][Ll][Pp][Hh][Aa]
OTHER_DEFAULT_IGNORABLE_CODE_POINT	[Oo][Tt][Hh][Ee][Rr](_|\p{Pattern_White_Space}*)[Dd][Ee][Ff][Aa][Uu][Ll][Tt](_|\p{Pattern_White_Space}*)[Ii][Gg][Nn][Oo][Rr][Aa][Bb][Ll][Ee](_|\p{Pattern_White_Space}*)[Cc][Oo][Dd][Ee](_|\p{Pattern_White_Space}*)[Pp][Oo][Ii][Nn][Tt]|[Oo][Dd][Ii]
OTHER_GRAPHEME_EXTEND		[Oo][Tt][Hh][Ee][Rr](_|\p{Pattern_White_Space}*)[Gg][Rr][Aa][Pp][Hh][Ee][Mm][Ee](_|\p{Pattern_White_Space}*)[Ee][Xx][Tt][Ee][Nn][Dd]|[Oo][Gg][Rr](_|\p{Pattern_White_Space}*)[Ee][Xx][Tt]
OTHER_ID_CONTINUE		[Oo][Tt][Hh][Ee][Rr](_|\p{Pattern_White_Space}*)[Ii][Dd](_|\p{Pattern_White_Space}*)[Cc][Oo][Nn][Tt][Ii][Nn][Uu][Ee]|[Oo][Ii][Dd][Cc]
OTHER_ID_START			[Oo][Tt][Hh][Ee][Rr](_|\p{Pattern_White_Space}*)[Ii][Dd](_|\p{Pattern_White_Space}*)[Ss][Tt][Aa][Rr][Tt]|[Oo][Ii][Dd][Ss]
OTHER_LOWERCASE			[Oo][Tt][Hh][Ee][Rr](_|\p{Pattern_White_Space}*)[Ll][Oo][Ww][Ee][Rr][Cc][Aa][Ss][Ee]|[Oo][Ll][Oo][Ww][Ee][Rr]
OTHER_MATH			[Oo][Tt][Hh][Ee][Rr](_|\p{Pattern_White_Space}*)[Mm][Aa][Tt][Hh]|[Oo][Mm][Aa][Tt][Hh]
OTHER_UPPERCASE			[Oo][Tt][Hh][Ee][Rr](_|\p{Pattern_White_Space}*)[Uu][Pp][Pp][Ee][Rr][Cc][Aa][Ss][Ee]|[Oo][Uu][Pp][Pp][Ee][Rr]
PATTERN_SYNTAX			[Pp][Aa][Tt][Tt][Ee][Rr][Nn](_|\p{Pattern_White_Space}*)[Ss][Yy][Nn][Tt][Aa][Xx]|[Pp][Aa][Tt](_|\p{Pattern_White_Space}*)[Ss][Yy][Nn]
PATTERN_WHITE_SPACE		[Pp][Aa][Tt][Tt][Ee][Rr][Nn](_|\p{Pattern_White_Space}*)[Ww][Hh][Ii][Tt][Ee](_|\p{Pattern_White_Space}*)[Ss][Pp][Aa][Cc][Ee]|[Pp][Aa][Tt](_|\p{Pattern_White_Space}*)[Ww][Ss]
QUOTATION_MARK			[Qq][Uu][Oo][Tt][Aa][Tt][Ii][Oo][Nn](_|\p{Pattern_White_Space}*)[Mm][Aa][Rr][Kk]|[Qq][Mm][Aa][Rr][Kk]
RADICAL				[Rr][Aa][Dd][Ii][Cc][Aa][Ll]
SOFT_DOTTED			[Ss][Oo][Ff][Tt](_|\p{Pattern_White_Space}*)[Dd][Oo][Tt][Tt][Ee][Dd]|[Ss][Dd]
STERM				[Ss][Tt][Ee][Rr][Mm]
TERMINAL_PUNCTUATION		[Tt][Ee][Rr][Mm][Ii][Nn][Aa][Ll](_|\p{Pattern_White_Space}*)[Pp][Uu][Nn][Cc][Tt][Uu][Aa][Tt][Ii][Oo][Nn]|[Tt][Ee][Rr][Mm]
UNIFIED_IDEOGRAPH		[Uu][Nn][Ii][Ff][Ii][Ee][Dd](_|\p{Pattern_White_Space}*)[Ii][Dd][Ee][Oo][Gg][Rr][Aa][Pp][Hh]|[Uu][Ii][Dd][Ee][Oo]
UPPERCASE			[Uu][Pp][Pp][Ee][Rr][Cc][Aa][Ss][Ee]|[Uu][Pp][Pp][Ee][Rr]
VARIATION_SELECTOR		[Vv][Aa][Rr][Ii][Aa][Tt][Ii][Oo][Nn](_|\p{Pattern_White_Space}*)[Ss][Ee][Ll][Ee][Cc][Tt][Oo][Rr]|[Vv][Ss]
WHITE_SPACE			[Ww][Hh][Ii][Tt][Ee](_|\p{Pattern_White_Space}*)[Ss][Pp][Aa][Cc][Ee]|[Ws][Ss][Pp][Aa][Cc][Ee]|[Ss][Pp][Aa][Cc][Ee]
XID_CONTINUE			[Xx][Ii][Dd](_|\p{Pattern_White_Space}*)[Cc][Oo][Nn][Tt][Ii][Nn][Uu][Ee]|[Xx][Ii][Dd][Cc]
XID_START			[Xx][Ii][Dd](_|\p{Pattern_White_Space}*)[Ss][Tt][Aa][Rr][Tt]|[Xx][Ii][Dd][Ss]
EXPANDS_ON_NFC			[Ee][Xx][Pp][Aa][Nn][Dd][Ss](_|\p{Pattern_White_Space}*)[Oo][Nn](_|\p{Pattern_White_Space}*)[Nn][Ff][Cc]|[Xx][Oo](_|\p{Pattern_White_Space}*)[Nn][Ff][Cc]
EXPANDS_ON_NFD			[Ee][Xx][Pp][Aa][Nn][Dd][Ss](_|\p{Pattern_White_Space}*)[Oo][Nn](_|\p{Pattern_White_Space}*)[Nn][Ff][Dd]|[Xx][Oo](_|\p{Pattern_White_Space}*)[Nn][Ff][Dd]
EXPANDS_ON_NFKC			[Ee][Xx][Pp][Aa][Nn][Dd][Ss](_|\p{Pattern_White_Space}*)[Oo][Nn](_|\p{Pattern_White_Space}*)[Nn][Ff][Kk][Cc]|[Xx][Oo](_|\p{Pattern_White_Space}*)[Nn][Ff][Kk][Cc]
EXPANDS_ON_NFKD			[Ee][Xx][Pp][Aa][Nn][Dd][Ss](_|\p{Pattern_White_Space}*)[Oo][Nn](_|\p{Pattern_White_Space}*)[Nn][Ff][Kk][Dd]|[Xx][Oo](_|\p{Pattern_White_Space}*)[Nn][Ff][Kk][Dd]

%x LITERAL
%x CHARACTER_CLASS
%x MULTIPLICITY
%x COMMENT
%x PROPERTY_SPECIFICATION

%%

"." {

   return Token_Any_Code_Point;
}

"\\Q" {
   Enter_Start_Condition (LITERAL);
}

<LITERAL>"\\E" {
   Enter_Start_Condition (INITIAL);
}

<LITERAL>.|\n {  --  aflex . is any but newline
   declare
      S : constant Wide_Wide_String := YYText;

   begin
      YYLVal := (Match_Code_Point, S (S'First));

      return Token_Code_Point;
   end;
}

<LITERAL><<EOF>> {
   --  Unexprected end of literal

   YYError (Unexpected_End_Of_Literal, 0);

   return Error;
}

"(?:" {
   --  Start of subexpression (non-capturing)

   return Token_Subexpression_Begin;
}

"(?#" {
   --  Start of the comment

   Enter_Start_Condition (COMMENT);
}

<COMMENT>")" {
   --  End of comment

   Enter_Start_Condition (INITIAL);
}

<COMMENT>.|\n {
   --  Comment

   null;
}

<COMMENT><<EOF>> {
   --  Unexpected end of comment

   return Error;
}

"(" {
   --  Start of subexpression (capturing)

   return Token_Subexpression_Capture_Begin;
}

")" {
   --  End of subexpression

   return Token_Subexpression_End;
}

"|" {
   --  Alternation

   return Token_Alternation;
}

"??" {

   return Token_Optional_Lazy;
}

"?" {

   return Token_Optional_Greedy;
}

"*?" {

   return Token_Zero_Or_More_Lazy;
}

"*" {

   return Token_Zero_Or_More_Greedy;
}

"+?" {

   return Token_One_Or_More_Lazy;
}

"+" {

   return Token_One_Or_More_Greedy;
}

"[" {
   --  Enter character class

   Character_Class_Mode := True;
   Enter_Start_Condition (CHARACTER_CLASS);

   return Token_Character_Class_Begin;
}

<CHARACTER_CLASS>"]" {
   --  XXX Leave character class

   Character_Class_Mode := False;
   Enter_Start_Condition (INITIAL);

   return Token_Character_Class_End;
}

<CHARACTER_CLASS>\^ {
   --  Negate character class

   return Token_Negate_Character_Class;
}

<CHARACTER_CLASS>- {
   --  Range of characters

   return Token_Character_Class_Range;
}

<CHARACTER_CLASS><<EOF>> {
   --  Unexpected and of character class

   YYError (Unexpected_End_Of_Character_Class, 0);

   return Error;
}

"{" {
   --  Multiplicity

   Enter_Start_Condition (MULTIPLICITY);

   return Token_Multiplicity_Begin;
}

<MULTIPLICITY>"}" {
   --  End of multiplicity specifier

   Enter_Start_Condition (INITIAL);

   return Token_Multiplicity_End_Greedy;
}

<MULTIPLICITY>"}?" {
   --  End of multiplicity specifier

   Enter_Start_Condition (INITIAL);

   return Token_Multiplicity_End_Lazy;
}

<MULTIPLICITY>"," {
   --  Number separator

   return Token_Multiplicity_Comma;
}

<MULTIPLICITY>[0-9]+ {
   --  Number

   YYLVal := (Number, Natural'Wide_Wide_Value (YYText));

   return Token_Multiplicity_Number;
}

<MULTIPLICITY>[^\p{Pattern_White_Space}] {
   --  Unexpected character in multiplicidy declaration

   YYError (Unexpected_Character_in_Multiplicity_Specifier, YY_Back_Index);

   return Error;
}

<MULTIPLICITY><<EOF>> {
   --  Unexpected end of multiplicity specifier

   YYError (Unexpected_End_Of_Multiplicity_Specifier, 0);

   return Error;
}

<INITIAL,CHARACTER_CLASS>\\[\p{Pattern_Syntax}\p{Pattern_White_Space}] {
   --  Escaped pattern special code point

   declare
      S : constant Wide_Wide_String := YYText;

   begin
      YYLVal := (Match_Code_Point, S (S'First + 1));

      return Token_Code_Point;
   end;
}

<INITIAL,CHARACTER_CLASS>"\\n" {
   YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.LF);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\r" {
   YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.CR);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\t" {
   YYLVal := (Match_Code_Point, HT);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\a" {
   YYLVal := (Match_Code_Point, BEL);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\e" {
   YYLVal := (Match_Code_Point, ESC);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\f" {
   YYLVal := (Match_Code_Point, FF);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\v" {
   YYLVal := (Match_Code_Point, VT);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\c"[A-Z] {
--   YYLVal := (Match_Code_Point, VT);

   raise Program_Error;
   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>\\u\p{Hex_Digit}{4} {
   --  Short hex notation of the code point

   YYLVal :=
     (Match_Code_Point,
      Wide_Wide_Character'Val
        (Integer'Wide_Wide_Value ("16#" & YYText (3 .. 6) & "#")));

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>\\U\p{Hex_Digit}{8} {
   --  Long hex notation of the code point

   YYLVal :=
     (Match_Code_Point,
      Wide_Wide_Character'Val
        (Integer'Wide_Wide_Value ("16#" & YYText (3 .. 10) & "#")));

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>\\p\{ {
   --  Unicode property specification

   Enter_Start_Condition (PROPERTY_SPECIFICATION);

   return Token_Property_Begin_Positive;
}

<INITIAL,CHARACTER_CLASS>"[:" {
   --  Unicode property specification

   Enter_Start_Condition (PROPERTY_SPECIFICATION);

   return Token_Property_Begin_Positive;
}

<INITIAL,CHARACTER_CLASS>\\P\{ {
   --  Unicode property specification

   Enter_Start_Condition (PROPERTY_SPECIFICATION);

   return Token_Property_Begin_Negative;
}

<INITIAL,CHARACTER_CLASS>"[:^" {
   --  Unicode property specification

   Enter_Start_Condition (PROPERTY_SPECIFICATION);

   return Token_Property_Begin_Negative;
}

<PROPERTY_SPECIFICATION>\} {
   --  End of Unicode property specification

   if Character_Class_Mode then
      Enter_Start_Condition (CHARACTER_CLASS);

   else
      Enter_Start_Condition (INITIAL);
   end if;

   return Token_Property_End;
}

<PROPERTY_SPECIFICATION>":]" {
   --  End of Unicode property specification

   if Character_Class_Mode then
      Enter_Start_Condition (CHARACTER_CLASS);

   else
      Enter_Start_Condition (INITIAL);
   end if;

   return Token_Property_End;
}

<PROPERTY_SPECIFICATION>{ASCII_HEX_DIGIT} {
   --  ASCII_Hex_Digit

   YYLVAL := (Binary_Property, Ucd.ASCII_Hex_Digit);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{ALPHABETIC} {
   --  Alphabetic

   YYLVAL := (Binary_Property, Ucd.Alphabetic);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{BIDI_CONTROL} {
   --  Bidi_Control

   YYLVAL := (Binary_Property, Ucd.Bidi_Control);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{BIDI_MIRRORED} {
   --  Bidi_Mirrored

--  XXX Bidi_Mirrored is absent in UCD now
--   YYLVAL := (Binary_Property, Ucd.Bidi_Mirrored);
--
--   return Token_Binary_Property;
   raise Program_Error;
}

<PROPERTY_SPECIFICATION>{COMPOSITION_EXCLUSION} {
   --  Composition_Exclusion

   YYLVAL := (Binary_Property, Ucd.Composition_Exclusion);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{FULL_COMPOSITION_EXCLUSION} {
   --  Full_Composition_Exclusion

   YYLVAL := (Binary_Property, Ucd.Full_Composition_Exclusion);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{DASH} {
   --  Dash

   YYLVAL := (Binary_Property, Ucd.Dash);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{DEPRECATED} {
   --  Deprecated

   YYLVAL := (Binary_Property, Ucd.Deprecated);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{DEFAULT_IGNORABLE_CODE_POINT} {
   --  Default_Ignorable_Code_Point

   YYLVAL := (Binary_Property, Ucd.Default_Ignorable_Code_Point);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{DIACRITIC} {
   --  Diacritic

   YYLVAL := (Binary_Property, Ucd.Diacritic);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{EXTENDER} {
   --  Extender

   YYLVAL := (Binary_Property, Ucd.Extender);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{GRAPHEME_BASE} {
   --  Grapheme_Base

   YYLVAL := (Binary_Property, Ucd.Grapheme_Base);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{GRAPHEME_EXTEND} {
   --  Grapheme_Extend

   YYLVAL := (Binary_Property, Ucd.Grapheme_Extend);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{GRAPHEME_LINK} {
   --  Grapheme_Link

   YYLVAL := (Binary_Property, Ucd.Grapheme_Link);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{HEX_DIGIT} {
   --  Hex_Digit

   YYLVAL := (Binary_Property, Ucd.Hex_Digit);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{HYPHEN} {
   --  Hyphen

   YYLVAL := (Binary_Property, Ucd.Hyphen);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{ID_CONTINUE} {
   --  ID_Continue

   YYLVAL := (Binary_Property, Ucd.ID_Continue);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{IDEOGRAPHIC} {
   --  Ideographic

   YYLVAL := (Binary_Property, Ucd.Ideographic);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{ID_START} {
   --  ID_Start

   YYLVAL := (Binary_Property, Ucd.ID_Start);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{IDS_BINARY_OPERATOR} {
   --  IDS_Binary_Operator

   YYLVAL := (Binary_Property, Ucd.IDS_Binary_Operator);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{IDS_TRINARY_OPERATOR} {
   --  IDS_Trinary_Operator

   YYLVAL := (Binary_Property, Ucd.IDS_Trinary_Operator);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{JOIN_CONTROL} {
   --  Join_Control

   YYLVAL := (Binary_Property, Ucd.Join_Control);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{LOGICAL_ORDER_EXCEPTION} {
   --  Logical_Order_Exception

   YYLVAL := (Binary_Property, Ucd.Logical_Order_Exception);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{LOWERCASE} {
   --  Lowercase

   YYLVAL := (Binary_Property, Ucd.Lowercase);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{MATH} {
   --  Math

   YYLVAL := (Binary_Property, Ucd.Math);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{NONCHARACTER_CODE_POINT} {
   --  Noncharacter_Code_Point

   YYLVAL := (Binary_Property, Ucd.Noncharacter_Code_Point);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{OTHER_ALPHABETIC} {
   --  Other_Alphabetic

   YYLVAL := (Binary_Property, Ucd.Other_Alphabetic);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{OTHER_DEFAULT_IGNORABLE_CODE_POINT} {
   --  Other_Default_Ignorable_Code_Point

   YYLVAL := (Binary_Property, Ucd.Other_Default_Ignorable_Code_Point);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{OTHER_GRAPHEME_EXTEND} {
   --  Other_Grapheme_Extend

   YYLVAL := (Binary_Property, Ucd.Other_Grapheme_Extend);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{OTHER_ID_CONTINUE} {
   --  Other_ID_Continue

   YYLVAL := (Binary_Property, Ucd.Other_ID_Continue);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{OTHER_ID_START} {
   --  Other_ID_Start

   YYLVAL := (Binary_Property, Ucd.Other_ID_Start);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{OTHER_LOWERCASE} {
   --  Other_Lowercase

   YYLVAL := (Binary_Property, Ucd.Other_Lowercase);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{OTHER_MATH} {
   --  Other_Math

   YYLVAL := (Binary_Property, Ucd.Other_Math);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{OTHER_UPPERCASE} {
   --  Other_Uppercase

   YYLVAL := (Binary_Property, Ucd.Other_Uppercase);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{PATTERN_SYNTAX} {
   --  Pattern_Syntax

   YYLVAL := (Binary_Property, Ucd.Pattern_Syntax);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{PATTERN_WHITE_SPACE} {
   --  Pattern_White_Space

   YYLVAL := (Binary_Property, Ucd.Pattern_White_Space);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{QUOTATION_MARK} {
   --  Quotation_Mark

   YYLVAL := (Binary_Property, Ucd.Quotation_Mark);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{RADICAL} {
   --  Radical

   YYLVAL := (Binary_Property, Ucd.Radical);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{SOFT_DOTTED} {
   --  Soft_Dotted

   YYLVAL := (Binary_Property, Ucd.Soft_Dotted);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{STERM} {
   --  STerm

   YYLVAL := (Binary_Property, Ucd.STerm);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{TERMINAL_PUNCTUATION} {
   --  Terminal_Punctuation

   YYLVAL := (Binary_Property, Ucd.Terminal_Punctuation);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{UNIFIED_IDEOGRAPH} {
   --  Unified_Ideograph

   YYLVAL := (Binary_Property, Ucd.Unified_Ideograph);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{UPPERCASE} {
   --  Uppercase

   YYLVAL := (Binary_Property, Ucd.Uppercase);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{VARIATION_SELECTOR} {
   --  Variation_Selector

   YYLVAL := (Binary_Property, Ucd.Variation_Selector);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{WHITE_SPACE} {
   --  White_Space

   YYLVAL := (Binary_Property, Ucd.White_Space);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{XID_CONTINUE} {
   --  XID_Continue

   YYLVAL := (Binary_Property, Ucd.XID_Continue);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{XID_START} {
   --  XID_Start

   YYLVAL := (Binary_Property, Ucd.XID_Start);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{EXPANDS_ON_NFC} {
   --  Expands_On_NFC

   YYLVAL := (Binary_Property, Ucd.Expands_On_NFC);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{EXPANDS_ON_NFD} {
   --  Expands_On_NFD

   YYLVAL := (Binary_Property, Ucd.Expands_On_NFD);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{EXPANDS_ON_NFKC} {
   --  Expands_On_NFKC

   YYLVAL := (Binary_Property, Ucd.Expands_On_NFKC);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>{EXPANDS_ON_NFKD} {
   --  Expands_On_NFKD

   YYLVAL := (Binary_Property, Ucd.Expands_On_NFKD);

   return Token_Binary_Property;
}

<PROPERTY_SPECIFICATION>\p{Pattern_Syntax} {
   --  Pattern syntax character in property specification

   YYError (Unrecognized_Character_In_Property_Specification, 0);

   return Error;
}

<PROPERTY_SPECIFICATION><<EOF>> {
   --  Unexpected end of string in property specification

   YYError (Unexpected_End_Of_Property_Specification, 0);

   return Error;
}

<INITIAL,CHARACTER_CLASS,MULTIPLICITY,PROPERTY_SPECIFICATION>\p{Pattern_White_Space}+ {
   --  Sequence of whitespaces is ignored in all modes

   null;
}

<INITIAL,CHARACTER_CLASS>[^\p{Pattern_Syntax}\p{Pattern_White_Space}] {
   --  Single code point

   declare
      S : constant Wide_Wide_String := YYText;

   begin
      YYLVal := (Match_Code_Point, S (S'First));

      return Token_Code_Point;
   end;
}

<INITIAL,CHARACTER_CLASS>\p{Pattern_Syntax} {
   --  Special outside of sequence

   YYError (Unescaped_Pattern_Syntax_Character, YY_Back_Index);

   return Error;
}

<<EOF>> {
   --  End of data

   return End_Of_Input;
}

%%
with Matreshka.Internals.Regexps.Compiler;
##
   function YYLex return Matreshka.Internals.Regexps.Compiler.Token;
##
with Ada.Characters.Wide_Wide_Latin_1;
with Ada.Wide_Wide_Text_IO;
with Matreshka.Internals.Regexps.Compiler;
with Matreshka.Internals.Unicode.Ucd;
##
   use Ada.Characters.Wide_Wide_Latin_1;
   use Ada.Wide_Wide_Text_IO;
   use Matreshka.Internals.Regexps.Compiler;
   use Matreshka.Internals.Unicode;

   procedure Enter_Start_Condition (Start : Integer) is null;

   procedure YYError (Error : YY_Errors; Index : Natural) is null;

   YY_Back_Index : Natural;
