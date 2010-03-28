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

with Matreshka.Internals.Regexps.Compiler.Scanner.Tables;
with Matreshka.Internals.Unicode;

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
               --  Start of subexpression
            
               return Token_Subexpression_Begin;

            when 7 =>
               --  End of subexpression
            
               return Token_Subexpression_End;

            when 8 =>
               --  Alternation
            
               return Token_Alternation;

            when 9 =>
               return Token_Optional_Lazy;

            when 10 =>
               return Token_Optional_Greedy;

            when 11 =>
               return Token_Zero_Or_More_Lazy;

            when 12 =>
               return Token_Zero_Or_More_Greedy;

            when 13 =>
               return Token_One_Or_More_Lazy;

            when 14 =>
               return Token_One_Or_More_Greedy;

            when 15 =>
               --  Enter character class
            
               Enter_Start_Condition (CHARACTER_CLASS);
            
               return Token_Character_Class_Begin;

            when 16 =>
               --  XXX Leave character class
            
               Enter_Start_Condition (INITIAL);
            
               return Token_Character_Class_End;

            when 17 =>
               --  Negate character class
            
               return Token_Negate_Character_Class;

            when 18 =>
               --  Range of characters
            
               return Token_Character_Class_Range;

            when 20 =>
               --  Multiplicity
            
               Enter_Start_Condition (MULTIPLICITY);
            
               return Token_Multiplicity_Begin;

            when 21 =>
               --  End of multiplicity specifier
            
               Enter_Start_Condition (INITIAL);
            
               return Token_Multiplicity_End_Greedy;

            when 22 =>
               --  End of multiplicity specifier
            
               Enter_Start_Condition (INITIAL);
            
               return Token_Multiplicity_End_Lazy;

            when 23 =>
               --  Number separator
            
               return Token_Multiplicity_Comma;

            when 24 =>
               --  Number
            
               YYLVal := (Number, Natural'Wide_Wide_Value (YYText));
            
               return Token_Multiplicity_Number;

            when 25 =>
               --  Unexpected character in multiplicidy declaration
            
               YYError (Unexpected_Character_in_Multiplicity_Specifier, 0);
            
               return Error;

            when 27 =>
               --  Escaped pattern special code point
            
               declare
                  S : constant Wide_Wide_String := YYText;
            
               begin
                  YYLVal := (Match_Code_Point, S (S'First + 1));
            
                  return Token_Code_Point;
               end;

            when 28 =>
               YYLVal := (Match_Code_Point, LF);
            
               return Token_Code_Point;

            when 29 =>
               YYLVal := (Match_Code_Point, CR);
            
               return Token_Code_Point;

            when 30 =>
               YYLVal := (Match_Code_Point, HT);
            
               return Token_Code_Point;

            when 31 =>
               YYLVal := (Match_Code_Point, BEL);
            
               return Token_Code_Point;

            when 32 =>
               YYLVal := (Match_Code_Point, ESC);
            
               return Token_Code_Point;

            when 33 =>
               YYLVal := (Match_Code_Point, FF);
            
               return Token_Code_Point;

            when 34 =>
               YYLVal := (Match_Code_Point, VT);
            
               return Token_Code_Point;

            when 35 =>
            --   YYLVal := (Match_Code_Point, VT);
            
               raise Program_Error;
               return Token_Code_Point;

            when 36 =>
               --  Short hex notation of the code point
            
               YYLVal :=
                 (Match_Code_Point,
                  Wide_Wide_Character'Val
                    (Integer'Wide_Wide_Value ("16#" & YYText (3 .. 6) & "#")));
            
               return Token_Code_Point;

            when 37 =>
               --  Long hex notation of the code point
            
               YYLVal :=
                 (Match_Code_Point,
                  Wide_Wide_Character'Val
                    (Integer'Wide_Wide_Value ("16#" & YYText (3 .. 10) & "#")));
            
               return Token_Code_Point;

            when 38 =>
               --  Sequence of whitespaces is ignored in all modes
            
               null;

            when 39 =>
               --  Single code point
            
               declare
                  S : constant Wide_Wide_String := YYText;
            
               begin
                  YYLVal := (Match_Code_Point, S (S'First));
            
                  return Token_Code_Point;
               end;

            when 40 =>
               --  Special outside of sequence
            
               YYError (Unescaped_Pattern_Syntax_Character, 0);
            
               return Error;

            when 44 =>
               --  End of data
            
               return End_Of_Input;

            when 45 =>
               --  Unexprected end of literal
            
               YYError (Unexpected_End_Of_Literal, 0);
            
               return Error;

            when 46 =>
               --  Unexpected and of character class
            
               YYError (Unexpected_End_Of_Character_Class, 0);
            
               return Error;

            when 47 =>
               --  Unexpected end of multiplicity specifier
            
               YYError (Unexpected_End_Of_Multiplicity_Specifier, 0);
            
               return Error;

            when others =>
               raise Program_Error;
         end case;
      end loop; -- end of loop waiting for end of file
   end YYLex;

end Matreshka.Internals.Regexps.Compiler.Scanner;
