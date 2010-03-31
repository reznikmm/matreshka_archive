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
with Ada.Characters.Wide_Wide_Latin_1;
with Ada.Wide_Wide_Text_IO;

with Matreshka.Internals.Regexps.Compiler.Scanner.Tables;

package body Matreshka.Internals.Regexps.Compiler.Scanner is

   use Ada.Characters.Wide_Wide_Latin_1;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;
   use Matreshka.Internals.Regexps.Compiler.Scanner.Tables;

   procedure Enter_Start_Condition (State : Integer);
   --  Enter a start condition.

   function YY_EOF_State return Integer;
   --  Action number for EOF rule of a current start state

   ---------------------------
   -- Enter_Start_Condition --
   ---------------------------

   procedure Enter_Start_Condition (State : Integer) is
   begin
      YY_Start_State := 1 + 2 * State;
   end Enter_Start_Condition;

   ------------------
   -- YY_EOF_State --
   ------------------

   function YY_EOF_State return Integer is
   begin
     return YY_END_OF_BUFFER + (YY_Start_State - 1) / 2 + 1;
   end YY_EOF_State;

   -----------
   -- YYLex --
   -----------

   function YYLex return Token is
      YY_Action                  : Integer;
      YY_Back_Position           : Utf16_String_Index;
      YY_Back_Index              : Positive;
      YY_Next_Position           : Utf16_String_Index;
      --  Position of the next character in the source string.
      YY_Current_State           : Integer;
      YY_Current_Code            : Code_Point;
      YY_C                       : Integer;
      YY_Last_Accepting_State    : Integer;
      YY_Last_Accepting_Position : Utf16_String_Index;

      function YYText return Wide_Wide_String;
      --  XXX Dummy function to support transition

      ------------
      -- YYText --
      ------------

      function YYText return Wide_Wide_String is
         Length : constant Natural :=
           Natural (YY_Current_Position - YY_Back_Position);
         Result : Wide_Wide_String (1 .. Length);
         Last   : Natural := 0;
         Index  : Utf16_String_Index := YY_Back_Position;
         Code   : Code_Point;

      begin
         while Index < YY_Current_Position loop
            Unchecked_Next (Data.Value, Index, Code);
            Last := Last + 1;
            Result (Last) := Wide_Wide_Character'Val (Code);
         end loop;

         return Result (1 .. Last); 
      end YYText;

   begin
      loop  --  Loops until end-of-string is reached
         YY_Back_Position := YY_Current_Position;
         YY_Back_Index    := YY_Current_Index;
         YY_Current_State := YY_Start_State;

         if YY_Back_Position = Data.Unused then
            --  End of string already reached

            YY_Action := YY_EOF_State;

         else
            loop
               YY_Next_Position := YY_Current_Position;

               if YY_Next_Position = Data.Unused then
                  --  By convention, aflex always assign zero equivalence class
                  --  to the end-of-buffer state.

                  YY_C := 0;

               else
                  Unchecked_Next
                   (Data.Value, YY_Next_Position, YY_Current_Code);
                  YY_C :=
                    YY_EC_Base
                     (YY_Current_Code / 16#100#) (YY_Current_Code mod 16#100#);
               end if;

               if YY_Accept (YY_Current_State) /= 0 then
                  --  Accepting state reached, save if to backtrack

                  YY_Last_Accepting_State    := YY_Current_State;
                  YY_Last_Accepting_Position := YY_Current_Position;

                  exit when YY_Current_Position = Data.Unused;
                  --  End of string has been reached.
               end if;

               while YY_Chk (YY_Base (YY_Current_State) + YY_C)
                       /= YY_Current_State
               loop
                  YY_Current_State := YY_Def (YY_Current_State);

                  if YY_Current_State >= YY_First_Template then
                     YY_C := YY_Meta (YY_C);
                  end if;
               end loop;

               YY_Current_State := YY_Nxt (YY_Base (YY_Current_State) + YY_C);
               YY_Current_Position := YY_Next_Position;
               YY_Current_Index := YY_Current_Index + 1;

               exit when YY_Current_State = YY_Jam_State;
            end loop;

            --  Return back to last accepting state.

            YY_Current_Position := YY_Last_Accepting_Position;
            YY_Current_State    := YY_Last_Accepting_State;

            --  Retrieve associated action and execute it.

            YY_Action := YY_Accept (YY_Current_State);
         end if;

<<Do_Action>>  --  This label is used only to access EOF actions
         case YY_Action is
            when 0 =>
               --  Backtrack

               YY_Current_Position := YY_Last_Accepting_Position;
               YY_Current_State    := YY_Last_Accepting_State;

            when 1 =>
               return Token_Any_Code_Point;

            when 2 =>
               Enter_Start_Condition (LITERAL);

            when 3 =>
               Enter_Start_Condition (INITIAL);

            when 4 =>
              --  aflex . is any but newline
               declare
                  S : constant Wide_Wide_String := YYText;
            
               begin
                  YYLVal := (Match_Code_Point, S (S'First));
            
                  return Token_Code_Point;
               end;

            when 6 =>
               --  Start of subexpression (non-capturing)
            
               return Token_Subexpression_Begin;

            when 7 =>
               --  Start of the comment
            
               Enter_Start_Condition (COMMENT);

            when 8 =>
               --  End of comment
            
               Enter_Start_Condition (INITIAL);

            when 9 =>
               --  Comment
            
               null;

            when 11 =>
               --  Start of subexpression (capturing)
            
               return Token_Subexpression_Capture_Begin;

            when 12 =>
               --  End of subexpression
            
               return Token_Subexpression_End;

            when 13 =>
               --  Alternation
            
               return Token_Alternation;

            when 14 =>
               return Token_Optional_Lazy;

            when 15 =>
               return Token_Optional_Greedy;

            when 16 =>
               return Token_Zero_Or_More_Lazy;

            when 17 =>
               return Token_Zero_Or_More_Greedy;

            when 18 =>
               return Token_One_Or_More_Lazy;

            when 19 =>
               return Token_One_Or_More_Greedy;

            when 20 =>
               --  Enter character class
            
               Enter_Start_Condition (CHARACTER_CLASS);
            
               return Token_Character_Class_Begin;

            when 21 =>
               --  XXX Leave character class
            
               Enter_Start_Condition (INITIAL);
            
               return Token_Character_Class_End;

            when 22 =>
               --  Negate character class
            
               return Token_Negate_Character_Class;

            when 23 =>
               --  Range of characters
            
               return Token_Character_Class_Range;

            when 25 =>
               --  Multiplicity
            
               Enter_Start_Condition (MULTIPLICITY);
            
               return Token_Multiplicity_Begin;

            when 26 =>
               --  End of multiplicity specifier
            
               Enter_Start_Condition (INITIAL);
            
               return Token_Multiplicity_End_Greedy;

            when 27 =>
               --  End of multiplicity specifier
            
               Enter_Start_Condition (INITIAL);
            
               return Token_Multiplicity_End_Lazy;

            when 28 =>
               --  Number separator
            
               return Token_Multiplicity_Comma;

            when 29 =>
               --  Number
            
               YYLVal := (Number, Natural'Wide_Wide_Value (YYText));
            
               return Token_Multiplicity_Number;

            when 30 =>
               --  Unexpected character in multiplicidy declaration
            
               YYError (Unexpected_Character_in_Multiplicity_Specifier, YY_Back_Index);
            
               return Error;

            when 32 =>
               --  Escaped pattern special code point
            
               declare
                  S : constant Wide_Wide_String := YYText;
            
               begin
                  YYLVal := (Match_Code_Point, S (S'First + 1));
            
                  return Token_Code_Point;
               end;

            when 33 =>
               YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.LF);
            
               return Token_Code_Point;

            when 34 =>
               YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.CR);
            
               return Token_Code_Point;

            when 35 =>
               YYLVal := (Match_Code_Point, HT);
            
               return Token_Code_Point;

            when 36 =>
               YYLVal := (Match_Code_Point, BEL);
            
               return Token_Code_Point;

            when 37 =>
               YYLVal := (Match_Code_Point, ESC);
            
               return Token_Code_Point;

            when 38 =>
               YYLVal := (Match_Code_Point, FF);
            
               return Token_Code_Point;

            when 39 =>
               YYLVal := (Match_Code_Point, VT);
            
               return Token_Code_Point;

            when 40 =>
            --   YYLVal := (Match_Code_Point, VT);
            
               raise Program_Error;
               return Token_Code_Point;

            when 41 =>
               --  Short hex notation of the code point
            
               YYLVal :=
                 (Match_Code_Point,
                  Wide_Wide_Character'Val
                    (Integer'Wide_Wide_Value ("16#" & YYText (3 .. 6) & "#")));
            
               return Token_Code_Point;

            when 42 =>
               --  Long hex notation of the code point
            
               YYLVal :=
                 (Match_Code_Point,
                  Wide_Wide_Character'Val
                    (Integer'Wide_Wide_Value ("16#" & YYText (3 .. 10) & "#")));
            
               return Token_Code_Point;

            when 43 =>
               --  ASCII_Hex_Digit
            
               YYLVAL := (Binary_Property, Ucd.ASCII_Hex_Digit);
            
               return Token_Binary_Property;

            when 44 =>
               --  Alphabetic
            
               YYLVAL := (Binary_Property, Ucd.Alphabetic);
            
               return Token_Binary_Property;

            when 45 =>
               --  Bidi_Control
            
               YYLVAL := (Binary_Property, Ucd.Bidi_Control);
            
               return Token_Binary_Property;

            when 46 =>
               --  Bidi_Mirrored
            
            --  XXX Bidi_Mirrored is absent in UCD now
            --   YYLVAL := (Binary_Property, Ucd.Bidi_Mirrored);
            --
            --   return Token_Binary_Property;
               raise Program_Error;

            when 47 =>
               --  Composition_Exclusion
            
               YYLVAL := (Binary_Property, Ucd.Composition_Exclusion);
            
               return Token_Binary_Property;

            when 48 =>
               --  Full_Composition_Exclusion
            
               YYLVAL := (Binary_Property, Ucd.Full_Composition_Exclusion);
            
               return Token_Binary_Property;

            when 49 =>
               --  Dash
            
               YYLVAL := (Binary_Property, Ucd.Dash);
            
               return Token_Binary_Property;

            when 50 =>
               --  Deprecated
            
               YYLVAL := (Binary_Property, Ucd.Deprecated);
            
               return Token_Binary_Property;

            when 51 =>
               --  Default_Ignorable_Code_Point
            
               YYLVAL := (Binary_Property, Ucd.Default_Ignorable_Code_Point);
            
               return Token_Binary_Property;

            when 52 =>
               --  Diacritic
            
               YYLVAL := (Binary_Property, Ucd.Diacritic);
            
               return Token_Binary_Property;

            when 53 =>
               --  Extender
            
               YYLVAL := (Binary_Property, Ucd.Extender);
            
               return Token_Binary_Property;

            when 54 =>
               --  Grapheme_Base
            
               YYLVAL := (Binary_Property, Ucd.Grapheme_Base);
            
               return Token_Binary_Property;

            when 55 =>
               --  Grapheme_Extend
            
               YYLVAL := (Binary_Property, Ucd.Grapheme_Extend);
            
               return Token_Binary_Property;

            when 56 =>
               --  Grapheme_Link
            
               YYLVAL := (Binary_Property, Ucd.Grapheme_Link);
            
               return Token_Binary_Property;

            when 57 =>
               --  Hex_Digit
            
               YYLVAL := (Binary_Property, Ucd.Hex_Digit);
            
               return Token_Binary_Property;

            when 58 =>
               --  Hyphen
            
               YYLVAL := (Binary_Property, Ucd.Hyphen);
            
               return Token_Binary_Property;

            when 59 =>
               --  ID_Continue
            
               YYLVAL := (Binary_Property, Ucd.ID_Continue);
            
               return Token_Binary_Property;

            when 60 =>
               --  Ideographic
            
               YYLVAL := (Binary_Property, Ucd.Ideographic);
            
               return Token_Binary_Property;

            when 61 =>
               --  ID_Start
            
               YYLVAL := (Binary_Property, Ucd.ID_Start);
            
               return Token_Binary_Property;

            when 62 =>
               --  IDS_Binary_Operator
            
               YYLVAL := (Binary_Property, Ucd.IDS_Binary_Operator);
            
               return Token_Binary_Property;

            when 63 =>
               --  IDS_Trinary_Operator
            
               YYLVAL := (Binary_Property, Ucd.IDS_Trinary_Operator);
            
               return Token_Binary_Property;

            when 64 =>
               --  Join_Control
            
               YYLVAL := (Binary_Property, Ucd.Join_Control);
            
               return Token_Binary_Property;

            when 65 =>
               --  Logical_Order_Exception
            
               YYLVAL := (Binary_Property, Ucd.Logical_Order_Exception);
            
               return Token_Binary_Property;

            when 66 =>
               --  Lowercase
            
               YYLVAL := (Binary_Property, Ucd.Lowercase);
            
               return Token_Binary_Property;

            when 67 =>
               --  Math
            
               YYLVAL := (Binary_Property, Ucd.Math);
            
               return Token_Binary_Property;

            when 68 =>
               --  Noncharacter_Code_Point
            
               YYLVAL := (Binary_Property, Ucd.Noncharacter_Code_Point);
            
               return Token_Binary_Property;

            when 69 =>
               --  Other_Alphabetic
            
               YYLVAL := (Binary_Property, Ucd.Other_Alphabetic);
            
               return Token_Binary_Property;

            when 70 =>
               --  Other_Default_Ignorable_Code_Point
            
               YYLVAL := (Binary_Property, Ucd.Other_Default_Ignorable_Code_Point);
            
               return Token_Binary_Property;

            when 71 =>
               --  Other_Grapheme_Extend
            
               YYLVAL := (Binary_Property, Ucd.Other_Grapheme_Extend);
            
               return Token_Binary_Property;

            when 72 =>
               --  Other_ID_Continue
            
               YYLVAL := (Binary_Property, Ucd.Other_ID_Continue);
            
               return Token_Binary_Property;

            when 73 =>
               --  Other_ID_Start
            
               YYLVAL := (Binary_Property, Ucd.Other_ID_Start);
            
               return Token_Binary_Property;

            when 74 =>
               --  Other_Lowercase
            
               YYLVAL := (Binary_Property, Ucd.Other_Lowercase);
            
               return Token_Binary_Property;

            when 75 =>
               --  Other_Math
            
               YYLVAL := (Binary_Property, Ucd.Other_Math);
            
               return Token_Binary_Property;

            when 76 =>
               --  Other_Uppercase
            
               YYLVAL := (Binary_Property, Ucd.Other_Uppercase);
            
               return Token_Binary_Property;

            when 77 =>
               --  Pattern_Syntax
            
               YYLVAL := (Binary_Property, Ucd.Pattern_Syntax);
            
               return Token_Binary_Property;

            when 78 =>
               --  Pattern_White_Space
            
               YYLVAL := (Binary_Property, Ucd.Pattern_White_Space);
            
               return Token_Binary_Property;

            when 79 =>
               --  Quotation_Mark
            
               YYLVAL := (Binary_Property, Ucd.Quotation_Mark);
            
               return Token_Binary_Property;

            when 80 =>
               --  Radical
            
               YYLVAL := (Binary_Property, Ucd.Radical);
            
               return Token_Binary_Property;

            when 81 =>
               --  Soft_Dotted
            
               YYLVAL := (Binary_Property, Ucd.Soft_Dotted);
            
               return Token_Binary_Property;

            when 82 =>
               --  STerm
            
               YYLVAL := (Binary_Property, Ucd.STerm);
            
               return Token_Binary_Property;

            when 83 =>
               --  Terminal_Punctuation
            
               YYLVAL := (Binary_Property, Ucd.Terminal_Punctuation);
            
               return Token_Binary_Property;

            when 84 =>
               --  Unified_Ideograph
            
               YYLVAL := (Binary_Property, Ucd.Unified_Ideograph);
            
               return Token_Binary_Property;

            when 85 =>
               --  Uppercase
            
               YYLVAL := (Binary_Property, Ucd.Uppercase);
            
               return Token_Binary_Property;

            when 86 =>
               --  Variation_Selector
            
               YYLVAL := (Binary_Property, Ucd.Variation_Selector);
            
               return Token_Binary_Property;

            when 87 =>
               --  White_Space
            
               YYLVAL := (Binary_Property, Ucd.White_Space);
            
               return Token_Binary_Property;

            when 88 =>
               --  XID_Continue
            
               YYLVAL := (Binary_Property, Ucd.XID_Continue);
            
               return Token_Binary_Property;
               raise Program_Error;

            when 89 =>
               --  XID_Start
            
               YYLVAL := (Binary_Property, Ucd.XID_Start);
            
               return Token_Binary_Property;

            when 90 =>
               --  Expands_On_NFC
            
               YYLVAL := (Binary_Property, Ucd.Expands_On_NFC);
            
               return Token_Binary_Property;

            when 91 =>
               --  Expands_On_NFD
            
               YYLVAL := (Binary_Property, Ucd.Expands_On_NFD);
            
               return Token_Binary_Property;

            when 92 =>
               --  Expands_On_NFKC
            
               YYLVAL := (Binary_Property, Ucd.Expands_On_NFKC);
            
               return Token_Binary_Property;

            when 93 =>
               --  Expands_On_NFKD
            
               YYLVAL := (Binary_Property, Ucd.Expands_On_NFKD);
            
               return Token_Binary_Property;

            when 94 =>
               --  Sequence of whitespaces is ignored in all modes
            
               null;

            when 95 =>
               --  Single code point
            
               declare
                  S : constant Wide_Wide_String := YYText;
            
               begin
                  YYLVal := (Match_Code_Point, S (S'First));
            
                  return Token_Code_Point;
               end;

            when 96 =>
               --  Special outside of sequence
            
               YYError (Unescaped_Pattern_Syntax_Character, YY_Back_Index);
            
               return Error;

            when 100 =>
               --  End of data
            
               return End_Of_Input;

            when 101 =>
               --  Unexprected end of literal
            
               YYError (Unexpected_End_Of_Literal, 0);
            
               return Error;

            when 102 =>
               --  Unexpected and of character class
            
               YYError (Unexpected_End_Of_Character_Class, 0);
            
               return Error;

            when 103 =>
               --  Unexpected end of multiplicity specifier
            
               YYError (Unexpected_End_Of_Multiplicity_Specifier, 0);
            
               return Error;

            when 104 =>
               --  Unexpected end of comment
            
               return Error;

            when others =>
               raise Program_Error
                 with "Unhandled action"
                        & Integer'Image (YY_Action) & " in scanner";
         end case;
      end loop; -- end of loop waiting for end of file
   end YYLex;

end Matreshka.Internals.Regexps.Compiler.Scanner;
