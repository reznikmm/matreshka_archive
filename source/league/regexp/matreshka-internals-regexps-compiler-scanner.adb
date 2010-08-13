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
-- Copyright © 2010, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Ada.Characters.Wide_Wide_Latin_1;

with Matreshka.Internals.Regexps.Compiler.Scanner.Tables;

package body Matreshka.Internals.Regexps.Compiler.Scanner is

   use Ada.Characters.Wide_Wide_Latin_1;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;
   use Matreshka.Internals.Regexps.Compiler.Scanner.Tables;

   procedure Enter_Start_Condition
    (Self : not null access Compiler_State; State : Integer);
   --  Enter a start condition.

   function YY_EOF_State
    (Self : not null access Compiler_State) return Integer;
   --  Action number for EOF rule of a current start state

   ---------------------------
   -- Enter_Start_Condition --
   ---------------------------

   procedure Enter_Start_Condition
    (Self : not null access Compiler_State; State : Integer) is
   begin
      Self.YY_Start_State := 1 + 2 * State;
   end Enter_Start_Condition;

   ------------------
   -- YY_EOF_State --
   ------------------

   function YY_EOF_State
    (Self : not null access Compiler_State) return Integer is
   begin
     return YY_END_OF_BUFFER + (Self.YY_Start_State - 1) / 2 + 1;
   end YY_EOF_State;

   -----------
   -- YYLex --
   -----------

   function YYLex (Self : not null access Compiler_State) return Token is
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
      YY_Last_Accepting_Index    : Positive;

      function YYText return Wide_Wide_String;
      --  XXX Dummy function to support transition

      ------------
      -- YYText --
      ------------

      function YYText return Wide_Wide_String is
         Length : constant Natural :=
           Natural (Self.YY_Current_Position - YY_Back_Position);
         Result : Wide_Wide_String (1 .. Length);
         Last   : Natural := 0;
         Index  : Utf16_String_Index := YY_Back_Position;
         Code   : Code_Point;

      begin
         while Index < Self.YY_Current_Position loop
            Unchecked_Next (Self.Data.Value, Index, Code);
            Last := Last + 1;
            Result (Last) := Wide_Wide_Character'Val (Code);
         end loop;

         return Result (1 .. Last); 
      end YYText;

      YYLVal : YYSType renames Self.YYLVal;

   begin
      loop  --  Loops until end-of-string is reached
         YY_Back_Position := Self.YY_Current_Position;
         YY_Back_Index    := Self.YY_Current_Index;
         YY_Current_State := Self.YY_Start_State;

         if YY_Back_Position = Self.Data.Unused then
            --  End of string already reached

            YY_Action := YY_EOF_State (Self);

         else
            loop
               YY_Next_Position := Self.YY_Current_Position;

               if YY_Next_Position = Self.Data.Unused then
                  --  By convention, aflex always assign zero equivalence class
                  --  to the end-of-buffer state.

                  YY_C := 0;

               else
                  Unchecked_Next
                   (Self.Data.Value, YY_Next_Position, YY_Current_Code);
                  YY_C :=
                    YY_EC_Base
                     (YY_Current_Code / 16#100#) (YY_Current_Code mod 16#100#);
               end if;

               if YY_Accept (YY_Current_State) /= 0 then
                  --  Accepting state reached, save if to backtrack

                  YY_Last_Accepting_State    := YY_Current_State;
                  YY_Last_Accepting_Position := Self.YY_Current_Position;
                  YY_Last_Accepting_Index    := Self.YY_Current_Index;

                  exit when Self.YY_Current_Position = Self.Data.Unused;
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
               Self.YY_Current_Position := YY_Next_Position;
               Self.YY_Current_Index := Self.YY_Current_Index + 1;

               exit when YY_Current_State = YY_Jam_State;
            end loop;

            --  Return back to last accepting state.

            Self.YY_Current_Position := YY_Last_Accepting_Position;
            Self.YY_Current_Index    := YY_Last_Accepting_Index;
            YY_Current_State         := YY_Last_Accepting_State;

            --  Retrieve associated action and execute it.

            YY_Action := YY_Accept (YY_Current_State);
         end if;

<<Do_Action>>  --  This label is used only to access EOF actions
         case YY_Action is
            when 0 =>
               --  Backtrack

               Self.YY_Current_Position := YY_Last_Accepting_Position;
               Self.YY_Current_Index    := YY_Last_Accepting_Index;
               YY_Current_State         := YY_Last_Accepting_State;

            when 1 =>
               return Token_Any_Code_Point;

            when 2 =>
               Enter_Start_Condition (Self, LITERAL);

            when 3 =>
               Enter_Start_Condition (Self, INITIAL);

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

               Enter_Start_Condition (Self, COMMENT);

            when 8 =>
               --  End of comment

               Enter_Start_Condition (Self, INITIAL);

            when 9 =>
               --  Comment

               null;

            when 11 =>
               --  Start of line anchor

               return Token_Start_Of_Line;

            when 12 =>
               --  End of line anchor

               return Token_End_Of_Line;

            when 13 =>
               --  Start of subexpression (capturing)

               return Token_Subexpression_Capture_Begin;

            when 14 =>
               --  End of subexpression

               return Token_Subexpression_End;

            when 15 =>
               --  Alternation

               return Token_Alternation;

            when 16 =>
               return Token_Optional_Lazy;

            when 17 =>
               return Token_Optional_Greedy;

            when 18 =>
               return Token_Zero_Or_More_Lazy;

            when 19 =>
               return Token_Zero_Or_More_Greedy;

            when 20 =>
               return Token_One_Or_More_Lazy;

            when 21 =>
               return Token_One_Or_More_Greedy;

            when 22 =>
               --  Enter character class

               Self.Character_Class_Mode := True;
               Enter_Start_Condition (Self, CHARACTER_CLASS);

               return Token_Character_Class_Begin;

            when 23 =>
               --  XXX Leave character class

               Self.Character_Class_Mode := False;
               Enter_Start_Condition (Self, INITIAL);

               return Token_Character_Class_End;

            when 24 =>
               --  Negate character class

               return Token_Negate_Character_Class;

            when 25 =>
               --  Range of characters

               return Token_Character_Class_Range;

            when 27 =>
               --  Multiplicity

               Enter_Start_Condition (Self, MULTIPLICITY);

               return Token_Multiplicity_Begin;

            when 28 =>
               --  End of multiplicity specifier

               Enter_Start_Condition (Self, INITIAL);

               return Token_Multiplicity_End_Greedy;

            when 29 =>
               --  End of multiplicity specifier

               Enter_Start_Condition (Self, INITIAL);

               return Token_Multiplicity_End_Lazy;

            when 30 =>
               --  Number separator

               return Token_Multiplicity_Comma;

            when 31 =>
               --  Number

               YYLVal := (Number, Natural'Wide_Wide_Value (YYText));

               return Token_Multiplicity_Number;

            when 32 =>
               --  Unexpected character in multiplicidy declaration

               YYError (Self, Unexpected_Character_in_Multiplicity_Specifier, YY_Back_Index);

               return Error;

            when 34 =>
               --  Escaped pattern special code point

               declare
                  S : constant Wide_Wide_String := YYText;

               begin
                  YYLVal := (Match_Code_Point, S (S'First + 1));

                  return Token_Code_Point;
               end;

            when 35 =>
               YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.LF);

               return Token_Code_Point;

            when 36 =>
               YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.CR);

               return Token_Code_Point;

            when 37 =>
               YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.HT);

               return Token_Code_Point;

            when 38 =>
               YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.BEL);

               return Token_Code_Point;

            when 39 =>
               YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.ESC);

               return Token_Code_Point;

            when 40 =>
               YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.FF);

               return Token_Code_Point;

            when 41 =>
               YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.VT);

               return Token_Code_Point;

            when 42 =>
            --   YYLVal := (Match_Code_Point, Ada.Characters.Wide_Wide_Latin_1.VT);

               raise Program_Error;
               return Token_Code_Point;

            when 43 =>
               --  Short hex notation of the code point

               YYLVal :=
                 (Match_Code_Point,
                  Wide_Wide_Character'Val
                    (Integer'Wide_Wide_Value ("16#" & YYText (3 .. 6) & "#")));

               return Token_Code_Point;

            when 44 =>
               --  Long hex notation of the code point

               YYLVal :=
                 (Match_Code_Point,
                  Wide_Wide_Character'Val
                    (Integer'Wide_Wide_Value ("16#" & YYText (3 .. 10) & "#")));

               return Token_Code_Point;

            when 45 =>
               --  Unicode property specification

               Enter_Start_Condition (Self, PROPERTY_SPECIFICATION);

               return Token_Property_Begin_Positive;

            when 46 =>
               --  Unicode property specification

               Enter_Start_Condition (Self, PROPERTY_SPECIFICATION);

               return Token_Property_Begin_Positive;

            when 47 =>
               --  Unicode property specification

               Enter_Start_Condition (Self, PROPERTY_SPECIFICATION);

               return Token_Property_Begin_Negative;

            when 48 =>
               --  Unicode property specification

               Enter_Start_Condition (Self, PROPERTY_SPECIFICATION);

               return Token_Property_Begin_Negative;

            when 49 =>
               --  End of Unicode property specification

               if Self.Character_Class_Mode then
                  Enter_Start_Condition (Self, CHARACTER_CLASS);

               else
                  Enter_Start_Condition (Self, INITIAL);
               end if;

               return Token_Property_End;

            when 50 =>
               --  End of Unicode property specification

               if Self.Character_Class_Mode then
                  Enter_Start_Condition (Self, CHARACTER_CLASS);

               else
                  Enter_Start_Condition (Self, INITIAL);
               end if;

               return Token_Property_End;

            when 51 =>
               --  ASCII_Hex_Digit

               YYLVAL := (Property_Keyword, ASCII_Hex_Digit);

               return Token_Property_Keyword;

            when 52 =>
               --  Alphabetic

               YYLVAL := (Property_Keyword, Alphabetic);

               return Token_Property_Keyword;

            when 53 =>
               --  Bidi_Control

               YYLVAL := (Property_Keyword, Bidi_Control);

               return Token_Property_Keyword;

            when 54 =>
               --  Bidi_Mirrored

            --  XXX Bidi_Mirrored is absent in UCD now
            --   YYLVAL := (Property_Keyword, Bidi_Mirrored);
            --
            --   return Token_Property_Keyword;
               raise Program_Error;

            when 55 =>
               --  Cased

               YYLVAL := (Property_Keyword, Cased);

               return Token_Property_Keyword;

            when 56 =>
               --  Case_Ignorable

               YYLVAL := (Property_Keyword, Case_Ignorable);

               return Token_Property_Keyword;

            when 57 =>
               --  Changes_When_Casefolded

               YYLVAL := (Property_Keyword, Changes_When_Casefolded);

               return Token_Property_Keyword;

            when 58 =>
               --  Changes_When_Casemapped

               YYLVAL := (Property_Keyword, Changes_When_Casemapped);

               return Token_Property_Keyword;

            when 59 =>
               --  Changes_When_Lowercased

               YYLVAL := (Property_Keyword, Changes_When_Lowercased);

               return Token_Property_Keyword;

            when 60 =>
               --  Changes_When_NFKC_Casefolded

               YYLVAL := (Property_Keyword, Changes_When_NFKC_Casefolded);

               return Token_Property_Keyword;

            when 61 =>
               --  Changes_When_Titlecased

               YYLVAL := (Property_Keyword, Changes_When_Titlecased);

               return Token_Property_Keyword;

            when 62 =>
               --  Changes_When_Uppercased

               YYLVAL := (Property_Keyword, Changes_When_Uppercased);

               return Token_Property_Keyword;

            when 63 =>
               --  Composition_Exclusion

               YYLVAL := (Property_Keyword, Composition_Exclusion);

               return Token_Property_Keyword;

            when 64 =>
               --  Full_Composition_Exclusion

               YYLVAL := (Property_Keyword, Full_Composition_Exclusion);

               return Token_Property_Keyword;

            when 65 =>
               --  Dash

               YYLVAL := (Property_Keyword, Dash);

               return Token_Property_Keyword;

            when 66 =>
               --  Deprecated

               YYLVAL := (Property_Keyword, Deprecated);

               return Token_Property_Keyword;

            when 67 =>
               --  Default_Ignorable_Code_Point

               YYLVAL := (Property_Keyword, Default_Ignorable_Code_Point);

               return Token_Property_Keyword;

            when 68 =>
               --  Diacritic

               YYLVAL := (Property_Keyword, Diacritic);

               return Token_Property_Keyword;

            when 69 =>
               --  Extender

               YYLVAL := (Property_Keyword, Extender);

               return Token_Property_Keyword;

            when 70 =>
               --  Grapheme_Base

               YYLVAL := (Property_Keyword, Grapheme_Base);

               return Token_Property_Keyword;

            when 71 =>
               --  Grapheme_Extend

               YYLVAL := (Property_Keyword, Grapheme_Extend);

               return Token_Property_Keyword;

            when 72 =>
               --  Grapheme_Link

               YYLVAL := (Property_Keyword, Grapheme_Link);

               return Token_Property_Keyword;

            when 73 =>
               --  Hex_Digit

               YYLVAL := (Property_Keyword, Hex_Digit);

               return Token_Property_Keyword;

            when 74 =>
               --  Hyphen

               YYLVAL := (Property_Keyword, Hyphen);

               return Token_Property_Keyword;

            when 75 =>
               --  ID_Continue

               YYLVAL := (Property_Keyword, ID_Continue);

               return Token_Property_Keyword;

            when 76 =>
               --  Ideographic

               YYLVAL := (Property_Keyword, Ideographic);

               return Token_Property_Keyword;

            when 77 =>
               --  ID_Start

               YYLVAL := (Property_Keyword, ID_Start);

               return Token_Property_Keyword;

            when 78 =>
               --  IDS_Binary_Operator

               YYLVAL := (Property_Keyword, IDS_Binary_Operator);

               return Token_Property_Keyword;

            when 79 =>
               --  IDS_Trinary_Operator

               YYLVAL := (Property_Keyword, IDS_Trinary_Operator);

               return Token_Property_Keyword;

            when 80 =>
               --  Join_Control

               YYLVAL := (Property_Keyword, Join_Control);

               return Token_Property_Keyword;

            when 81 =>
               --  Logical_Order_Exception

               YYLVAL := (Property_Keyword, Logical_Order_Exception);

               return Token_Property_Keyword;

            when 82 =>
               --  Lowercase

               YYLVAL := (Property_Keyword, Lowercase);

               return Token_Property_Keyword;

            when 83 =>
               --  Math

               YYLVAL := (Property_Keyword, Math);

               return Token_Property_Keyword;

            when 84 =>
               --  Noncharacter_Code_Point

               YYLVAL := (Property_Keyword, Noncharacter_Code_Point);

               return Token_Property_Keyword;

            when 85 =>
               --  Other_Alphabetic

               YYLVAL := (Property_Keyword, Other_Alphabetic);

               return Token_Property_Keyword;

            when 86 =>
               --  Other_Default_Ignorable_Code_Point

               YYLVAL := (Property_Keyword, Other_Default_Ignorable_Code_Point);

               return Token_Property_Keyword;

            when 87 =>
               --  Other_Grapheme_Extend

               YYLVAL := (Property_Keyword, Other_Grapheme_Extend);

               return Token_Property_Keyword;

            when 88 =>
               --  Other_ID_Continue

               YYLVAL := (Property_Keyword, Other_ID_Continue);

               return Token_Property_Keyword;

            when 89 =>
               --  Other_ID_Start

               YYLVAL := (Property_Keyword, Other_ID_Start);

               return Token_Property_Keyword;

            when 90 =>
               --  Other_Lowercase

               YYLVAL := (Property_Keyword, Other_Lowercase);

               return Token_Property_Keyword;

            when 91 =>
               --  Other_Math

               YYLVAL := (Property_Keyword, Other_Math);

               return Token_Property_Keyword;

            when 92 =>
               --  Other_Uppercase

               YYLVAL := (Property_Keyword, Other_Uppercase);

               return Token_Property_Keyword;

            when 93 =>
               --  Pattern_Syntax

               YYLVAL := (Property_Keyword, Pattern_Syntax);

               return Token_Property_Keyword;

            when 94 =>
               --  Pattern_White_Space

               YYLVAL := (Property_Keyword, Pattern_White_Space);

               return Token_Property_Keyword;

            when 95 =>
               --  Quotation_Mark

               YYLVAL := (Property_Keyword, Quotation_Mark);

               return Token_Property_Keyword;

            when 96 =>
               --  Radical

               YYLVAL := (Property_Keyword, Radical);

               return Token_Property_Keyword;

            when 97 =>
               --  Soft_Dotted

               YYLVAL := (Property_Keyword, Soft_Dotted);

               return Token_Property_Keyword;

            when 98 =>
               --  STerm

               YYLVAL := (Property_Keyword, STerm);

               return Token_Property_Keyword;

            when 99 =>
               --  Terminal_Punctuation

               YYLVAL := (Property_Keyword, Terminal_Punctuation);

               return Token_Property_Keyword;

            when 100 =>
               --  Unified_Ideograph

               YYLVAL := (Property_Keyword, Unified_Ideograph);

               return Token_Property_Keyword;

            when 101 =>
               --  Uppercase

               YYLVAL := (Property_Keyword, Uppercase);

               return Token_Property_Keyword;

            when 102 =>
               --  Variation_Selector

               YYLVAL := (Property_Keyword, Variation_Selector);

               return Token_Property_Keyword;

            when 103 =>
               --  White_Space

               YYLVAL := (Property_Keyword, White_Space);

               return Token_Property_Keyword;

            when 104 =>
               --  XID_Continue

               YYLVAL := (Property_Keyword, XID_Continue);

               return Token_Property_Keyword;

            when 105 =>
               --  XID_Start

               YYLVAL := (Property_Keyword, XID_Start);

               return Token_Property_Keyword;

            when 106 =>
               --  Expands_On_NFC

               YYLVAL := (Property_Keyword, Expands_On_NFC);

               return Token_Property_Keyword;

            when 107 =>
               --  Expands_On_NFD

               YYLVAL := (Property_Keyword, Expands_On_NFD);

               return Token_Property_Keyword;

            when 108 =>
               --  Expands_On_NFKC

               YYLVAL := (Property_Keyword, Expands_On_NFKC);

               return Token_Property_Keyword;

            when 109 =>
               --  Expands_On_NFKD

               YYLVAL := (Property_Keyword, Expands_On_NFKD);

               return Token_Property_Keyword;

            when 110 =>
               --  Other

               YYLVAL := (Property_Keyword, Other);

               return Token_Property_Keyword;

            when 111 =>
               --  Control

               YYLVAL := (Property_Keyword, Control);

               return Token_Property_Keyword;

            when 112 =>
               --  Format

               YYLVAL := (Property_Keyword, Format);

               return Token_Property_Keyword;

            when 113 =>
               --  Unassigned

               YYLVAL := (Property_Keyword, Unassigned);

               return Token_Property_Keyword;

            when 114 =>
               --  Private_Use

               YYLVAL := (Property_Keyword, Private_Use);

               return Token_Property_Keyword;

            when 115 =>
               --  Surrogate

               YYLVAL := (Property_Keyword, Surrogate);

               return Token_Property_Keyword;

            when 116 =>
               --  Letter

               YYLVAL := (Property_Keyword, Letter);

               return Token_Property_Keyword;

            when 117 =>
               --  Cased_Letter

               YYLVAL := (Property_Keyword, Cased_Letter);

               return Token_Property_Keyword;

            when 118 =>
               --  Lowercase_Letter

               YYLVAL := (Property_Keyword, Lowercase_Letter);

               return Token_Property_Keyword;

            when 119 =>
               --  Modifier_Letter

               YYLVAL := (Property_Keyword, Modifier_Letter);

               return Token_Property_Keyword;

            when 120 =>
               --  Other_Letter

               YYLVAL := (Property_Keyword, Other_Letter);

               return Token_Property_Keyword;

            when 121 =>
               --  Titlecase_Letter

               YYLVAL := (Property_Keyword, Titlecase_Letter);

               return Token_Property_Keyword;

            when 122 =>
               --  Uppercase_Letter

               YYLVAL := (Property_Keyword, Uppercase_Letter);

               return Token_Property_Keyword;

            when 123 =>
               --  Mark

               YYLVAL := (Property_Keyword, Mark);

               return Token_Property_Keyword;

            when 124 =>
               --  Spacing_Mark

               YYLVAL := (Property_Keyword, Spacing_Mark);

               return Token_Property_Keyword;

            when 125 =>
               --  Enclosing_Mark

               YYLVAL := (Property_Keyword, Enclosing_Mark);

               return Token_Property_Keyword;

            when 126 =>
               --  Nonspacing_Mark

               YYLVAL := (Property_Keyword, Nonspacing_Mark);

               return Token_Property_Keyword;

            when 127 =>
               --  Number

               YYLVAL := (Property_Keyword, Number);

               return Token_Property_Keyword;

            when 128 =>
               --  Decimal_Number

               YYLVAL := (Property_Keyword, Decimal_Number);

               return Token_Property_Keyword;

            when 129 =>
               --  Letter_Number

               YYLVAL := (Property_Keyword, Letter_Number);

               return Token_Property_Keyword;

            when 130 =>
               --  Other_Number

               YYLVAL := (Property_Keyword, Other_Number);

               return Token_Property_Keyword;

            when 131 =>
               --  Punctuation

               YYLVAL := (Property_Keyword, Punctuation);

               return Token_Property_Keyword;

            when 132 =>
               --  Connector_Punctuation

               YYLVAL := (Property_Keyword, Connector_Punctuation);

               return Token_Property_Keyword;

            when 133 =>
               --  Dash_Punctuation

               YYLVAL := (Property_Keyword, Dash_Punctuation);

               return Token_Property_Keyword;

            when 134 =>
               --  Close_Punctuation

               YYLVAL := (Property_Keyword, Close_Punctuation);

               return Token_Property_Keyword;

            when 135 =>
               --  Final_Punctuation

               YYLVAL := (Property_Keyword, Final_Punctuation);

               return Token_Property_Keyword;

            when 136 =>
               --  Initial_Punctuation

               YYLVAL := (Property_Keyword, Initial_Punctuation);

               return Token_Property_Keyword;

            when 137 =>
               --  Other_Punctuation

               YYLVAL := (Property_Keyword, Other_Punctuation);

               return Token_Property_Keyword;

            when 138 =>
               --  Open_Punctuation

               YYLVAL := (Property_Keyword, Open_Punctuation);

               return Token_Property_Keyword;

            when 139 =>
               --  Symbol

               YYLVAL := (Property_Keyword, Symbol);

               return Token_Property_Keyword;

            when 140 =>
               --  Currency_Symbol

               YYLVAL := (Property_Keyword, Currency_Symbol);

               return Token_Property_Keyword;

            when 141 =>
               --  Modifier_Symbol

               YYLVAL := (Property_Keyword, Modifier_Symbol);

               return Token_Property_Keyword;

            when 142 =>
               --  Math_Symbol

               YYLVAL := (Property_Keyword, Math_Symbol);

               return Token_Property_Keyword;

            when 143 =>
               --  Other_Symbol

               YYLVAL := (Property_Keyword, Other_Symbol);

               return Token_Property_Keyword;

            when 144 =>
               --  Separator

               YYLVAL := (Property_Keyword, Separator);

               return Token_Property_Keyword;

            when 145 =>
               --  Line_Separator

               YYLVAL := (Property_Keyword, Line_Separator);

               return Token_Property_Keyword;

            when 146 =>
               --  Paragraph_Separator

               YYLVAL := (Property_Keyword, Paragraph_Separator);

               return Token_Property_Keyword;

            when 147 =>
               --  Space_Separator

               YYLVAL := (Property_Keyword, Space_Separator);

               return Token_Property_Keyword;

            when 148 =>
               --  Pattern syntax character in property specification

               YYError (Self, Unrecognized_Character_In_Property_Specification, 0);

               return Error;

            when 150 =>
               --  Sequence of whitespaces is ignored in all modes

               null;

            when 151 =>
               --  Single code point

               declare
                  S : constant Wide_Wide_String := YYText;

               begin
                  YYLVal := (Match_Code_Point, S (S'First));

                  return Token_Code_Point;
               end;

            when 152 =>
               --  Special outside of sequence

               YYError (Self, Unescaped_Pattern_Syntax_Character, YY_Back_Index);

               return Error;

            when 156 =>
               --  End of data

               return End_Of_Input;

            when 157 =>
               --  Unexprected end of literal

               YYError (Self, Unexpected_End_Of_Literal, 0);

               return Error;

            when 158 =>
               --  Unexpected and of character class

               YYError (Self, Unexpected_End_Of_Character_Class, 0);

               return Error;

            when 159 =>
               --  Unexpected end of multiplicity specifier

               YYError (Self, Unexpected_End_Of_Multiplicity_Specifier, 0);

               return Error;

            when 160 =>
               --  Unexpected end of comment

               return Error;

            when 161 =>
               --  Unexpected end of string in property specification

               YYError (Self, Unexpected_End_Of_Property_Specification, 0);

               return Error;

            when others =>
               raise Program_Error
                 with "Unhandled action"
                        & Integer'Image (YY_Action) & " in scanner";
         end case;
      end loop; -- end of loop waiting for end of file
   end YYLex;

end Matreshka.Internals.Regexps.Compiler.Scanner;
