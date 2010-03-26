with Parser.Tables;
with Parser_Actions;
with Parser_Tokens;
with Matreshka.Internals.Regexps.Compiler.Scanner;
with Syntax;

package body Parser is

   use Matreshka.Internals.Regexps.Compiler.Scanner;
   use Parser.Tables;
   use Parser_Actions;
   use Parser_Tokens;
   use Syntax;

   -------------
   -- YYParse --
   -------------

   procedure YYParse is
      --  Encryption constants

      YY_Default           : constant := -1;
      YY_First_Shift_Entry : constant :=  0;
      YY_Error_Code        : constant := -3000;
      YY_Accept_Code       : constant := -3001;

      -- The size of the value and state stacks

      YY_Stack_Size : constant Natural := 300;

      package YY is
         --  Stack data used by the parser

         TOS          : Natural := 0;
         Value_Stack  : array (0 .. YY_Stack_Size) of YYSType;
         State_Stack  : array (0 .. YY_Stack_Size) of Integer;

         --  Current input symbol and action the parser is on

         Rule_Id      : Integer;
         Input_Symbol : Token;
         Look_Ahead   : Boolean := True;
      end YY;

      YY_Action : Integer;
      YY_Index  : Integer;

   begin
      YY.TOS := 0;
      --  Initialize by pushing state 0 and getting the first input symbol
      YY.State_Stack (YY.TOS) := 0;
      YY.Look_Ahead := True;

      loop
         YY_Index := Shift_Reduce_Offset (YY.State_Stack (YY.TOS));

         if Shift_Reduce_Matrix (YY_Index).T = YY_Default then
            YY_Action := Shift_Reduce_Matrix (YY_Index).Act;

         else
            if YY.Look_Ahead then
               YY.Input_Symbol := YYLex;
               YY.Look_Ahead   := False;
            end if;

            YY_Index := Shift_Reduce_Offset (YY.State_Stack (YY.TOS));

            while Shift_Reduce_Matrix (YY_Index).T
                    /= Token'Pos (YY.Input_Symbol)
              and then Shift_Reduce_Matrix (YY_Index).T /= YY_Default
            loop
               YY_Index := YY_Index + 1;
            end loop;

            YY_Action := Shift_Reduce_Matrix (YY_Index).Act;
         end if;

         if YY_Action >= YY_First_Shift_Entry then  --  SHIFT
            --  Enter new state

            YY.TOS := YY.TOS + 1;
            YY.State_Stack (YY.TOS) := YY_Action;
            YY.Value_Stack (YY.TOS) := YYLVal;

            --  Advance lookahead

            YY.Look_Ahead := True;

         elsif YY_Action = YY_Error_Code then  --  ERROR
            raise Syntax_Error;

         elsif YY_Action = YY_Accept_Code then
            --  Grammar is accepted

            exit;

         else
            --  Reduce Action

            --  Convert action into a rule
            YY.Rule_Id  := -1 * YY_Action;

            --  Execute User Action

            case YY.Rule_Id is
when  1 =>
--#line  96

   --  Alternation


yyval := (AST_Node, Process_Alternation (
yy.value_stack(yy.tos-2).Node,
yy.value_stack(yy.tos).Node));
   AST_Start :=
yyval.Node;


when  2 =>
--#line  103


yyval :=
yy.value_stack(yy.tos);
   AST_Start :=
yy.value_stack(yy.tos).Node;


when  3 =>
--#line  110

   Attach (
yy.value_stack(yy.tos-1).Node,
yy.value_stack(yy.tos).Node);

yyval :=
yy.value_stack(yy.tos-1);


when  4 =>
--#line  115


yyval :=
yy.value_stack(yy.tos);


when  5 =>
--#line  121

   --  Optional, greedy


yyval := (AST_Node, Process_Multiplicity (
yy.value_stack(yy.tos-1).Node, 0, 1, True));


when  6 =>
--#line  127

   --  Optional, lazy


yyval := (AST_Node, Process_Multiplicity (
yy.value_stack(yy.tos-1).Node, 0, 1, False));


when  7 =>
--#line  133

   --  Zero or more, greedy


yyval := (AST_Node, Process_Multiplicity (
yy.value_stack(yy.tos-1).Node, 0, Natural'Last, True));


when  8 =>
--#line  139

   --  Zero or more, lazy


yyval := (AST_Node, Process_Multiplicity (
yy.value_stack(yy.tos-1).Node, 0, Natural'Last, False));


when  9 =>
--#line  145

   --  One or more, greedy


yyval := (AST_Node, Process_Multiplicity (
yy.value_stack(yy.tos-1).Node, 1, Natural'Last, True));


when  10 =>
--#line  151

   --  One or more, lazy


yyval := (AST_Node, Process_Multiplicity (
yy.value_stack(yy.tos-1).Node, 1, Natural'Last, False));


when  11 =>
--#line  157

   --  Multiplicity range, greedy


yyval := (AST_Node, Process_Multiplicity (
yy.value_stack(yy.tos-5).Node,
yy.value_stack(yy.tos-3).Value,
yy.value_stack(yy.tos-1).Value, True));


when  12 =>
--#line  163

   --  Multiplicity range, lazy


yyval := (AST_Node, Process_Multiplicity (
yy.value_stack(yy.tos-5).Node,
yy.value_stack(yy.tos-3).Value,
yy.value_stack(yy.tos-1).Value, False));


when  13 =>
--#line  169

   --  Multiplicity lower .. infinity, greedy


yyval := (AST_Node, Process_Multiplicity (
yy.value_stack(yy.tos-4).Node,
yy.value_stack(yy.tos-2).Value, Integer'Last, True));


when  14 =>
--#line  175

   --  Multiplicity lower .. infinity, lazy


yyval := (AST_Node, Process_Multiplicity (
yy.value_stack(yy.tos-4).Node,
yy.value_stack(yy.tos-2).Value, Integer'Last, False));


when  15 =>
--#line  181

   --  Multiplicity, greedy


yyval := (AST_Node, Process_Multiplicity (
yy.value_stack(yy.tos-3).Node,
yy.value_stack(yy.tos-1).Value,
yy.value_stack(yy.tos-1).Value, True));


when  16 =>
--#line  187

   --  Multiplicity, lazy


yyval := (AST_Node, Process_Multiplicity (
yy.value_stack(yy.tos-3).Node,
yy.value_stack(yy.tos-1).Value,
yy.value_stack(yy.tos-1).Value, False));


when  17 =>
--#line  193


yyval := (AST_Node, Process_Subexpression (
yy.value_stack(yy.tos-1).Node));


when  18 =>
--#line  197

   --  Any code point


yyval := (AST_Node, Process_Any_Code_Point);


when  19 =>
--#line  203

   --  Code point


yyval := (AST_Node, Process_Code_Point (
yy.value_stack(yy.tos).Code));


when  20 =>
--#line  209


yyval :=
yy.value_stack(yy.tos);


when  21 =>
--#line  215


yyval :=
yy.value_stack(yy.tos-1);


when  22 =>
--#line  219


yyval := (AST_Node, Process_Negate_Character_Class (
yy.value_stack(yy.tos-1).Node));


when  23 =>
--#line  225

   --  Add range of code points to character class


yyval := (AST_Node, Process_Character_Class_Range (
yy.value_stack(yy.tos-3).Node,
yy.value_stack(yy.tos-2).Code,
yy.value_stack(yy.tos).Code));


when  24 =>
--#line  231

   --  Add code point to character class


yyval := (AST_Node, Process_Character_Class_Code_Point (
yy.value_stack(yy.tos-1).Node,
yy.value_stack(yy.tos).Code));


when  25 =>
--#line  237

   --  Initialize new character class node


yyval := (AST_Node, Process_New_Character_Class);

               when others =>
                  raise Program_Error;
            end case;

            --  Pop RHS states and goto next state

            YY.TOS := YY.TOS - Rule_Length (YY.Rule_Id) + 1;

            YY_Index := Goto_Offset (YY.State_Stack (YY.TOS - 1));

            while Goto_Matrix (YY_Index).Nonterm
                    /= Get_LHS_Rule (YY.Rule_Id)
            loop
               YY_Index := YY_Index + 1;
            end loop;

            YY.State_Stack (YY.TOS) := Goto_Matrix (YY_Index).Newstate;
            YY.Value_Stack (YY.TOS) := YYVal;
         end if;
      end loop;
   end YYParse;

end Parser;
