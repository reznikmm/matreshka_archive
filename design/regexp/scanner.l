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

%x LITERAL
%x CHARACTER_CLASS
%x MULTIPLICITY

%%

"." {

   return Token_Any_Code_Point;
}

"\\Q" {
   Enter (LITERAL);
}

<LITERAL>"\\E" {
   Enter (INITIAL);
}

<LITERAL>.|\n {  --  aflex . is any but newline
   declare
      S : constant String := YYText;
      C : constant Character := S (S'First);

   begin
      YYLVal :=
       (Code_Point, Wide_Wide_Character'Val (Character'Pos (C)));

      return Token_Code_Point;
   end;
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

   Enter (CHARACTER_CLASS);

   return Token_Character_Class_Begin;
}

<CHARACTER_CLASS>"]" {
   --  XXX Leave character class

   Enter (INITIAL);

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

"{" {
   --  Multiplicity

   Enter (MULTIPLICITY);

   return Token_Multiplicity_Begin;
}

<MULTIPLICITY>"}" {
   --  End of multiplicity specifier

   Enter (INITIAL);

   return Token_Multiplicity_End_Greedy;
}

<MULTIPLICITY>"}?" {
   --  End of multiplicity specifier

   Enter (INITIAL);

   return Token_Multiplicity_End_Lazy;
}

<MULTIPLICITY>"," {
   --  Number separator

   return Token_Multiplicity_Comma;
}

<MULTIPLICITY>[0-9]+ {
   --  Number

   return Token_Multiplicity_Number;
}

<MULTIPLICITY>[^\p{Pattern_White_Space}] {
   --  Unexpected character in multiplicidy declaration

   raise Program_Error;
}

<INITIAL,CHARACTER_CLASS>\\[\p{Pattern_Syntax}\p{Pattern_White_Space}] {
   --  Escaped pattern special code point

   declare
      S : constant String := YYText;

   begin
      YYLVal := (Code_Point, Wide_Wide_Character'Val (Character'Pos (S (S'First + 1))));

      return Token_Code_Point;
   end;
}

<INITIAL,CHARACTER_CLASS>"\\n" {
   YYLVal := (Code_Point, LF);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\r" {
   YYLVal := (Code_Point, CR);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\t" {
   YYLVal := (Code_Point, HT);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\a" {
   YYLVal := (Code_Point, BEL);

   Put_Line ("\a");

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\e" {
   YYLVal := (Code_Point, ESC);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\f" {
   YYLVal := (Code_Point, FF);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\v" {
   YYLVal := (Code_Point, VT);

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\\c"[A-Z] {
--   YYLVal := (Code_Point, VT);

   raise Program_Error;
   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>\\u\p{Hex_Digit}{4} {
   --  Short hex notation of the code point

   raise Program_Error;
   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>\\U\p{Hex_Digit}{8} {
   --  Long hex notation of the code point

   raise Program_Error;
   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS,MULTIPLICITY>\p{Pattern_White_Space}* {
   --  Sequence of whitespaces is ignored in all modes

   null;
}

<INITIAL,CHARACTER_CLASS>[^\p{Pattern_Syntax}\p{Pattern_White_Space}] {
   --  Single code point

   declare
      S : constant String := YYText;
      C : constant Character := S (S'First);

   begin
      YYLVal :=
       (Code_Point, Wide_Wide_Character'Val (Character'Pos (C)));

      return Token_Code_Point;
   end;
}

<INITIAL,CHARACTER_CLASS>\p{Pattern_Syntax} {
   --  Special outside of sequence

   raise Program_Error;
}

%%
with Parser.Tokens;
##
   function YYLex return Parser.Tokens.Token;
##
with Ada.Characters.Wide_Wide_Latin_1;
with Ada.Text_IO;
##
   use Ada.Characters.Wide_Wide_Latin_1;
   use Ada.Text_IO;
   use Parser.Tokens;
