with Ada.Wide_Wide_Text_IO;
with YYLex;
with Nodes;
with scanner_dfa;
with Parser.Goto_Table;
use  Parser.Goto_Table;
with Parser_Tokens;
use  Parser_Tokens;
with Parser.Shift_Reduce;
use  Parser.Shift_Reduce;

package body Parser is
   package Parser_Goto renames Parser.Goto_Table;
   package Parser_Shift_Reduce  renames Parser.Shift_Reduce;
procedure yyerror (X : Wide_Wide_String) is
begin
  Ada.Wide_Wide_Text_IO.Put_Line (X);
end;
procedure YYParse is

   -- Rename User Defined Packages to Internal Names.
    package yy_goto_tables         renames
      Parser.Goto_Table;
    package yy_shift_reduce_tables renames
      Parser.Shift_Reduce;
    package yy_tokens              renames
      Parser_Tokens;

   use yy_tokens, yy_goto_tables, yy_shift_reduce_tables;

   procedure yyerrok;
   procedure yyclearin;


   package yy is

       -- the size of the value and state stacks
       stack_size : constant Natural := 300;

       -- subtype rule         is natural;
       subtype parse_state  is natural;
       -- subtype nonterminal  is integer;

       -- encryption constants
       default           : constant := -1;
       first_shift_entry : constant :=  0;
       accept_code       : constant := -3001;
       error_code        : constant := -3000;

       -- stack data used by the parser
       tos                : natural := 0;
       value_stack        : array(0..stack_size) of yy_tokens.yystype;
       state_stack        : array(0..stack_size) of parse_state;

       -- current input symbol and action the parser is on
       action             : integer;
       rule_id            : rule;
       input_symbol       : yy_tokens.token;


       -- error recovery flag
       error_flag : natural := 0;
          -- indicates  3 - (number of valid shifts after an error occurs)

       look_ahead : boolean := true;
       index      : integer;

       -- Is Debugging option on or off
        DEBUG : constant boolean := FALSE;

    end yy;


    function goto_state
      (state : yy.parse_state;
       sym   : nonterminal) return yy.parse_state;

    function parse_action
      (state : yy.parse_state;
       t     : yy_tokens.token) return integer;

    pragma inline(goto_state, parse_action);


    function goto_state(state : yy.parse_state;
                        sym   : nonterminal) return yy.parse_state is
        index : integer;
    begin
        index := goto_offset(state);
        while  integer(goto_matrix(index).nonterm) /= sym loop
            index := index + 1;
        end loop;
        return integer(goto_matrix(index).newstate);
    end goto_state;


    function parse_action(state : yy.parse_state;
                          t     : yy_tokens.token) return integer is
        index      : integer;
        tok_pos    : integer;
        default    : constant integer := -1;
    begin
        tok_pos := yy_tokens.token'pos(t);
        index   := shift_reduce_offset(state);
        while integer(shift_reduce_matrix(index).t) /= tok_pos and then
              integer(shift_reduce_matrix(index).t) /= default
        loop
            index := index + 1;
        end loop;
        return integer(shift_reduce_matrix(index).act);
    end parse_action;

-- error recovery stuff

    procedure handle_error is
      temp_action : integer;
    begin

      if yy.error_flag = 3 then -- no shift yet, clobber input.
      if yy.debug then
          Ada.Wide_Wide_Text_Io.Put_Line ("Ayacc.YYParse: Error Recovery Clobbers " &
                   yy_tokens.token'Wide_Wide_Image (yy.input_symbol));
      end if;
        if yy.input_symbol = yy_tokens.end_of_input then  -- don't discard,
        if yy.debug then
            Ada.Wide_Wide_Text_IO.Put_Line ("Ayacc.YYParse: Can't discard END_OF_INPUT, quiting...");
        end if;
        raise yy_tokens.syntax_error;
        end if;

            yy.look_ahead := true;   -- get next token
        return;                  -- and try again...
    end if;

    if yy.error_flag = 0 then -- brand new error
        yyerror("Syntax Error");
    end if;

    yy.error_flag := 3;

    -- find state on stack where error is a valid shift --

    if yy.debug then
        Ada.Wide_Wide_Text_IO.Put_Line ("Ayacc.YYParse: Looking for state with error as valid shift");
    end if;

    loop
        if yy.debug then
          Ada.Wide_Wide_Text_IO.Put_Line ("Ayacc.YYParse: Examining State " &
               yy.parse_state'Wide_Wide_Image (yy.state_stack(yy.tos)));
        end if;
        temp_action := parse_action(yy.state_stack(yy.tos), error);

            if temp_action >= yy.first_shift_entry then
                if yy.tos = yy.stack_size then
                    Ada.Wide_Wide_Text_IO.Put_Line (" Stack size exceeded on state_stack");
                    raise yy_Tokens.syntax_error;
                end if;
                yy.tos := yy.tos + 1;
                yy.state_stack(yy.tos) := temp_action;
                exit;
            end if;

        Decrement_Stack_Pointer :
        begin
          yy.tos := yy.tos - 1;
        exception
          when Constraint_Error =>
            yy.tos := 0;
        end Decrement_Stack_Pointer;

        if yy.tos = 0 then
          if yy.debug then
            Ada.Wide_Wide_Text_IO.Put_Line ("Ayacc.YYParse: Error recovery popped entire stack, aborting...");
          end if;
          raise yy_tokens.syntax_error;
        end if;
    end loop;

    if yy.debug then
        Ada.Wide_Wide_Text_IO.Put_Line ("Ayacc.YYParse: Shifted error token in state " &
              yy.parse_state'Wide_Wide_Image (yy.state_stack(yy.tos)));
    end if;

    end handle_error;

   -- print debugging information for a shift operation
   procedure shift_debug(state_id: yy.parse_state; lexeme: yy_tokens.token) is
   begin
       Ada.Wide_Wide_Text_IO.Put_Line ("Ayacc.YYParse: Shift "& yy.parse_state'Wide_Wide_Image (state_id)&" on input symbol "&
               yy_tokens.token'Wide_Wide_Image (lexeme));
   end;

   -- print debugging information for a reduce operation
   procedure reduce_debug(rule_id: rule; state_id: yy.parse_state) is
   begin
       Ada.Wide_Wide_Text_IO.Put_Line ("Ayacc.YYParse: Reduce by rule "&rule'Wide_Wide_Image (rule_id)&" goto state "&
               yy.parse_state'Wide_Wide_Image (state_id));
   end;

   -- make the parser believe that 3 valid shifts have occured.
   -- used for error recovery.
   procedure yyerrok is
   begin
       yy.error_flag := 0;
   end yyerrok;

   -- called to clear input symbol that caused an error.
   procedure yyclearin is
   begin
       -- yy.input_symbol := yylex;
       yy.look_ahead := true;
   end yyclearin;


begin
    -- initialize by pushing state 0 and getting the first input symbol
    yy.state_stack(yy.tos) := 0;


    loop

        yy.index := shift_reduce_offset(yy.state_stack(yy.tos));
        if integer(shift_reduce_matrix(yy.index).t) = yy.default then
            yy.action := integer(shift_reduce_matrix(yy.index).act);
        else
            if yy.look_ahead then
                yy.look_ahead   := false;

                yy.input_symbol := yylex;
            end if;
            yy.action :=
             parse_action(yy.state_stack(yy.tos), yy.input_symbol);
        end if;


        if yy.action >= yy.first_shift_entry then  -- SHIFT

            if yy.debug then
                shift_debug(yy.action, yy.input_symbol);
            end if;

            -- Enter new state
            if yy.tos = yy.stack_size then
                Ada.Wide_Wide_Text_IO.Put_Line (" Stack size exceeded on state_stack");
                raise yy_Tokens.syntax_error;
            end if;
            yy.tos := yy.tos + 1;
            yy.state_stack(yy.tos) := yy.action;
              yy.value_stack(yy.tos) := yylval;

        if yy.error_flag > 0 then  -- indicate a valid shift
            yy.error_flag := yy.error_flag - 1;
        end if;

            -- Advance lookahead
            yy.look_ahead := true;

        elsif yy.action = yy.error_code then       -- ERROR

            handle_error;

        elsif yy.action = yy.accept_code then
            if yy.debug then
                Ada.Wide_Wide_Text_IO.Put_Line ("Ayacc.YYParse: Accepting Grammar...");
            end if;
            exit;

        else -- Reduce Action

            -- Convert action into a rule
            yy.rule_id  := -1 * yy.action;

            -- Execute User Action
            -- user_action(yy.rule_id);


                case yy.rule_id is

when 5 =>
--# line 64 "parser.y"

  Nodes.Macros.Insert (YY.Value_Stack (YY.TOS -  1).Value, YY.Value_Stack (YY.TOS).Value);


when 6 =>
--# line 68 "parser.y"

  Nodes.Add_Start_Conditions (YY.Value_Stack (YY.TOS -  1).List, False);


when 7 =>
--# line 72 "parser.y"

  Nodes.Add_Start_Conditions (YY.Value_Stack (YY.TOS -  1).List, True);


when 8 =>
--# line 78 "parser.y"

  YYVal := Nodes.Empty_Name_List;
  YYVal.List.Append (YY.Value_Stack (YY.TOS).Value);


when 9 =>
--# line 84 "parser.y"

  YY.Value_Stack (YY.TOS -  1).List.Append (YY.Value_Stack (YY.TOS).Value);
  YYVal := YY.Value_Stack (YY.TOS -  1);


when 12 =>
--# line 96 "parser.y"

  Nodes.Add_Rule (YY.Value_Stack (YY.TOS).Regexp, YY.Value_Stack (YY.TOS).Action);


when 13 =>
--# line 103 "parser.y"
 YYVal := (Nodes.Rule, YY.Value_Stack (YY.TOS -  1).Value, YY.Value_Stack (YY.TOS).Value); 

when 14 =>
--# line 107 "parser.y"
 YYVal := Nodes.To_Node (scanner_dfa.YYText); 

when 15 =>
--# line 111 "parser.y"
 YYVal := Nodes.To_Node (scanner_dfa.YYText); 

when 16 =>
--# line 115 "parser.y"
 YYVal := Nodes.To_Action (scanner_dfa.YYText); 

                    when others => null;
                end case;


            -- Pop RHS states and goto next state
            yy.tos      := yy.tos - rule_length(yy.rule_id) + 1;
            if yy.tos > yy.stack_size then
                Ada.Wide_Wide_Text_IO.Put_Line (" Stack size exceeded on state_stack");
                raise yy_Tokens.syntax_error;
            end if;
            yy.state_stack(yy.tos) := goto_state(yy.state_stack(yy.tos-1) ,
                                 get_lhs_rule(yy.rule_id));

              yy.value_stack(yy.tos) := yyval;

            if yy.debug then
                reduce_debug(yy.rule_id,
                    goto_state(yy.state_stack(yy.tos - 1),
                               get_lhs_rule(yy.rule_id)));
            end if;

        end if;


    end loop;


end yyparse;
end Parser;
