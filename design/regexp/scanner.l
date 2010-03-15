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
WHITE_SPACE			[\u0009-\u000D\u0020\u0085\u200E\u200F\u2028\u2029]
--  Have Pattern_White_Space property

HEX_DIGIT			[\u0030-\u0039\u0041-\u0046\u0061-\u0066\uFF10-\uFF19]
--  Have Hex_Digit property

SPECIAL				[\[\\\^\$\(\)]
--  SPECIAL				[\[\\\^\$\.\|\?\*\+\(\)]
--  \|  handled as single character
--  \?  handled as single character
--  \*  handled as single character
--  \+  handled as single character
--  \.  handled as single character

NOT_WHITE_SPACE_OR_SPECIAL	[^\u0009-\u000D\u0020\u0085\u200E\u200F\u2028\u2029\[\\\^\$\.\|\?\*\+\(\)]

--  NOT_WHITE_SPACE			[^\u0009-\u000D\u0020\u0085\u200E\u200F\u2028\u2029]

%x LITERAL
%x CHARACTER_CLASS

%%

"\[" {

   return Token_Code_Point;
}

"\\" {

   return Token_Code_Point;
}

"\^" {

   return Token_Code_Point;
}

"\$" {

   return Token_Code_Point;
}

"\." {

   return Token_Code_Point;
}

"\|" {

   return Token_Code_Point;
}

"\?" {

   return Token_Code_Point;
}

"\*" {

   return Token_Code_Point;
}

"\+" {

   return Token_Code_Point;
}

"\(" {

   return Token_Code_Point;
}

"\)" {

   return Token_Code_Point;
}

"\{" {

   return Token_Code_Point;
}

"\}" {

   return Token_Code_Point;
}

"." {

   return Token_Any_Code_Point;
}

"\Q" {
   Enter (LITERAL);
}

<LITERAL>"\E" {
   Enter (INITIAL);
}

<LITERAL>.|\n {  --  aflex . is any but newline
   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\n" {

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\r" {

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\t" {

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\a" {

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\e" {

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\f" {

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\v" {

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>"\c"[A-Z] {

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>\\u{HEX_DIGIT}{4} {
   --  Short hex notation of the code point

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>\\U{HEX_DIGIT}{8} {
   --  Long hex notation of the code point

   return Token_Code_Point;
}

<INITIAL,CHARACTER_CLASS>{WHITE_SPACE}* {
   --  Sequence of whitespaces is ignored in all modes
   null;
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

   return Token_Zero_Or_Mode_Lazy;
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
}

<CHARACTER_CLASS>"]" {
   --  XXX Leave character class

   Enter (INITIAL);
}

<CHARACTER_CLASS>.|\n {
   null;
}

{NOT_WHITE_SPACE_OR_SPECIAL} {
   --  Single code point

   return Token_Code_Point;
}

{SPECIAL} {
   --  Special outside of sequence

   raise Program_Error;
}

%%

%%

%%

