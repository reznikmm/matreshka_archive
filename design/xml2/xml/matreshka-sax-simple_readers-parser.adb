------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                               XML Processor                              --
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
with Matreshka.SAX.Simple_Readers.Parser.Tables;
with Matreshka.SAX.Simple_Readers.Scanner;

package body Matreshka.SAX.Simple_Readers.Parser is

   use Matreshka.SAX.Simple_Readers.Parser.Tables;

   function YY_Goto_State (State : Integer; Sym : Integer) return Integer;
   --  Lookup for next state.

   function YY_Parse_Action (State : Natural; T : Token) return Integer;
   --  Lookup for parser action.

   -------------------
   -- YY_Goto_State --
   -------------------

   function YY_Goto_State (State : Integer; Sym : Integer) return Integer is
      Index : Integer := YY_Goto_Offset (State);

   begin
      while YY_Goto_Matrix (Index).Nonterm /= Sym loop
         Index := Index + 1;
      end loop;

      return YY_Goto_Matrix (Index).Newstate;
   end YY_Goto_State;

   ---------------------
   -- YY_Parse_Action --
   ---------------------

   function YY_Parse_Action (State : Natural; T : Token) return Integer is
      Tok_Pos  : constant Integer := Token'Pos (T);
      Index    : Integer          := YY_Shift_Reduce_Offset (State);

   begin
      while YY_Shift_Reduce_Matrix (Index).T /= Tok_Pos
        and then YY_Shift_Reduce_Matrix (Index).T /= YY_Default
      loop
         Index := Index + 1;
      end loop;

      return YY_Shift_Reduce_Matrix (Index).Act;
   end YY_Parse_Action;

   -------------
   -- YYParse --
   -------------

   procedure YYParse (Self : not null access SAX_Simple_Reader) is
--
--   procedure yyerrok;
--   procedure yyclearin;

---- error recovery stuff
--
--    procedure handle_error is
--      temp_action : integer;
--    begin
--
--      if yy.error_flag = 3 then -- no shift yet, clobber input.
--      if yy.debug then
--          Ada.Wide_Wide_Text_Io.Put_Line ("Ayacc.YYParse: Error Recovery Clobbers " &
--                   yy_tokens.token'Wide_Wide_Image (yy.input_symbol));
--      end if;
--        if yy.input_symbol = yy_tokens.end_of_input then  -- don't discard,
--        if yy.debug then
--            Ada.Wide_Wide_Text_IO.Put_Line ("Ayacc.YYParse: Can't discard END_OF_INPUT, quiting...");
--        end if;
--        raise yy_tokens.syntax_error;
--        end if;
--
--            yy.look_ahead := true;   -- get next token
--        return;                  -- and try again...
--    end if;
--
--    if yy.error_flag = 0 then -- brand new error
--        yyerror("Syntax Error");
--    end if;
--
--    yy.error_flag := 3;
--
--    -- find state on stack where error is a valid shift --
--
--    if yy.debug then
--        Ada.Wide_Wide_Text_IO.Put_Line ("Ayacc.YYParse: Looking for state with error as valid shift");
--    end if;
--
--    loop
--        if yy.debug then
--          Ada.Wide_Wide_Text_IO.Put_Line ("Ayacc.YYParse: Examining State " &
--               yy.parse_state'Wide_Wide_Image (yy.state_stack(yy.tos)));
--        end if;
--        temp_action := parse_action(yy.state_stack(yy.tos), error);
--
--            if temp_action >= yy.first_shift_entry then
--                if yy.tos = yy.stack_size then
--                    Ada.Wide_Wide_Text_IO.Put_Line (" Stack size exceeded on state_stack");
--                    raise yy_Tokens.syntax_error;
--                end if;
--                yy.tos := yy.tos + 1;
--                yy.state_stack(yy.tos) := temp_action;
--                exit;
--            end if;
--
--        Decrement_Stack_Pointer :
--        begin
--          yy.tos := yy.tos - 1;
--        exception
--          when Constraint_Error =>
--            yy.tos := 0;
--        end Decrement_Stack_Pointer;
--
--        if yy.tos = 0 then
--          if yy.debug then
--            Ada.Wide_Wide_Text_IO.Put_Line ("Ayacc.YYParse: Error recovery popped entire stack, aborting...");
--          end if;
--          raise yy_tokens.syntax_error;
--        end if;
--    end loop;
--
--    if yy.debug then
--        Ada.Wide_Wide_Text_IO.Put_Line ("Ayacc.YYParse: Shifted error token in state " &
--              yy.parse_state'Wide_Wide_Image (yy.state_stack(yy.tos)));
--    end if;
--
--    end handle_error;
--
--   -- make the parser believe that 3 valid shifts have occured.
--   -- used for error recovery.
--   procedure yyerrok is
--   begin
--       yy.error_flag := 0;
--   end yyerrok;
--
--   -- called to clear input symbol that caused an error.
--   procedure yyclearin is
--   begin
--       -- yy.input_symbol := yylex;
--       yy.look_ahead := true;
--   end yyclearin;

      YY_Action  : Integer;
      YY_Rule_Id : Integer;
      YY_Index   : integer;

      YY_Stack_Size : constant Natural := 300;
      --  The size of the value and state stacks.

      package YY is
         --  Stack data used by the parser.

         TOS          : Natural := 0;
         Value_Stack  : array (0 .. YY_Stack_Size) of YYSType;
         State_Stack  : array (0 .. YY_Stack_Size) of Natural;

         Input_Symbol : Token;
         --  Current input symbol.

         Look_Ahead   : Boolean := True;

--       -- error recovery flag
--       error_flag : natural := 0;
--          -- indicates  3 - (number of valid shifts after an error occurs)
      end YY;

      procedure puts (S : String);
      pragma Import (C, puts);

   begin
      --  Initialize by pushing state 0 and getting the first input symbol.

      YY.TOS := 0;
      YY.State_Stack (YY.TOS) := 0;
      YY.Look_Ahead := True;

      loop
         YY_Index := YY_Shift_Reduce_Offset (YY.State_Stack (YY.TOS));

         if YY_Shift_Reduce_Matrix (YY_Index).T = YY_Default then
            YY_Action := YY_Shift_Reduce_Matrix (YY_Index).Act;

         else
            if YY.Look_Ahead then
                YY.Look_Ahead   := False;
                YY.Input_Symbol := Scanner.YYLex (Self);
                puts (Token'Image (YY.Input_Symbol) & ASCII.NUL);
            end if;

            YY_Action :=
              YY_Parse_Action (YY.State_Stack (YY.TOS), YY.Input_Symbol);
         end if;

         if YY_Action >= YY_First_Shift_Entry then  --  SHIFT
            --  Enter new state.

            YY.TOS := YY.TOS + 1;
            YY.State_Stack (YY.TOS) := YY_Action;
            YY.Value_Stack (YY.TOS) := Self.YYLVal;

--        if yy.error_flag > 0 then  -- indicate a valid shift
--            yy.error_flag := yy.error_flag - 1;
--        end if;
--
            --  Advance lookahead.

            YY.Look_Ahead := True;

         elsif YY_Action = YY_Error_Code then  --  ERROR
            raise Program_Error with "Error is not implemented";

--            handle_error;

         elsif YY_Action = YY_Accept_Code then
            --  Accepting grammar.

            exit;

         else  --  REDUCE
            --  Convert action into a rule.

            YY_Rule_Id := -YY_Action;

            --  Execute User Action.

            case YY_Rule_Id is

            when 1 =>
               null;

            when 2 =>
               null;

            when 3 =>
               null;

            when 4 =>
               null;

            when 5 =>
               --  Temporal declaration to test parser transformation capabilities.
            
               null;

            when 6 =>
               null;

            when 7 =>
               null;

            when 8 =>
               --  ExternalID specified by SYSTEM, rule [75].
            
               null;

            when 9 =>
               --  ExternalID specified by PUBLIC, rule [75].
            
               null;

            when 10 =>
               null;

            when 11 =>
               null;

            when 12 =>
               null;

            when 13 =>
               null;

            when 14 =>
               null;

            when 15 =>
               null;

            when 16 =>
               puts ("GE" & ASCII.NUL);

            when 17 =>
               null;

            when 18 =>
               puts ("PE" & ASCII.NUL);

            when 19 =>
               null;

            when 20 =>
               null;

            when 21 =>
               null;

            when 22 =>
               null;

            when 23 =>
               null;

            when 24 =>
               null;

            when 25 =>
               null;

            when 26 =>
               null;

            when 27 =>
               null;

            when 28 =>
               null;
               when others =>
                  raise Program_Error
                    with "Unhandled state"
                           & Integer'Image (YY_Rule_Id) & " in parser";
            end case;

            --  Pop RHS states and goto next state.

            YY.TOS := YY.TOS - YY_Rule_Length (YY_Rule_Id) + 1;
            YY.State_Stack (YY.TOS) :=
              YY_Goto_State
               (YY_Goto_Offset (YY.State_Stack (YY.TOS - 1)),
                YY_Get_LHS_Rule (YY_Rule_Id));
            YY.Value_Stack (YY.TOS) := Self.YYVal;
         end if;
      end loop;
   end YYParse;

end Matreshka.SAX.Simple_Readers.Parser;
