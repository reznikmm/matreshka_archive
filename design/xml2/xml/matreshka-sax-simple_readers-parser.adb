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
with League.Strings.Internals;
with Matreshka.SAX.Simple_Readers.Callbacks;
with Matreshka.SAX.Simple_Readers.Parser.Tables;
with Matreshka.SAX.Simple_Readers.Scanner;

package body Matreshka.SAX.Simple_Readers.Parser is

   use Matreshka.SAX.Simple_Readers.Parser.Tables;

   function YY_Goto_State (State : Integer; Sym : Integer) return Integer;
   --  Lookup for next state.

   function YY_Parse_Action (State : Natural; T : Token) return Integer;
   --  Lookup for parser action.

   procedure Process_Comment
    (Self    : not null access SAX_Simple_Reader'Class;
     Comment : League.Strings.Universal_String);
   --  Process comment in the document.

   procedure Process_Document_Type_Declaration
    (Self        : not null access SAX_Simple_Reader'Class;
     Name        : League.Strings.Universal_String;
     Is_External : Boolean;
     Public_Id   : League.Strings.Universal_String;
     System_Id   : League.Strings.Universal_String);
   --  Process document type declaration rule [28] and prepare to analyze its
   --  external subset if any.

   procedure Process_General_Entity_Declaration
    (Self        : not null access SAX_Simple_Reader'Class;
     Name        : League.Strings.Universal_String;
     Is_External : Boolean;
     Value       : League.Strings.Universal_String;
     Public_Id   : League.Strings.Universal_String;
     System_Id   : League.Strings.Universal_String;
     Notation    : League.Strings.Universal_String);
   --  Process general entity declaration, rule [71].

   procedure Process_Parameter_Entity_Declaration
    (Self  : not null access SAX_Simple_Reader'Class;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String);
   --  Process parameter entity declaration, rule [72].

   ---------------------
   -- Process_Comment --
   ---------------------

   procedure Process_Comment
    (Self    : not null access SAX_Simple_Reader'Class;
     Comment : League.Strings.Universal_String) is
   begin
      Callbacks.Call_Comment (Self, Comment);
   end Process_Comment;

   ---------------------------------------
   -- Process_Document_Type_Declaration --
   ---------------------------------------

   procedure Process_Document_Type_Declaration
    (Self        : not null access SAX_Simple_Reader'Class;
     Name        : League.Strings.Universal_String;
     Is_External : Boolean;
     Public_Id   : League.Strings.Universal_String;
     System_Id   : League.Strings.Universal_String) is
   begin
      Self.Root_Name := Name;

      if Is_External then
         Self.Entity_Resolver.Resolve_Entity
          (Public_Id, System_Id, Self.External_Subset, Self.Continue);
         Scanner.Push_External_Entity
          (Self, League.Strings.Internals.Get_Shared (Self.External_Subset));
      end if;
   end Process_Document_Type_Declaration;

   ----------------------------------------
   -- Process_General_Entity_Declaration --
   ----------------------------------------

   procedure Process_General_Entity_Declaration
    (Self        : not null access SAX_Simple_Reader'Class;
     Name        : League.Strings.Universal_String;
     Is_External : Boolean;
     Value       : League.Strings.Universal_String;
     Public_Id   : League.Strings.Universal_String;
     System_Id   : League.Strings.Universal_String;
     Notation    : League.Strings.Universal_String)
   is
      use League.Strings;
      use Universal_String_Maps;

   begin
      if Self.General_Entities.Contains (Name) then
         raise Program_Error with "general entity already declared";
         --  XXX It is non-fatal error, first declaration must be used and
         --  at user option warning may be issued to application.
      end if;

      if Is_External then
         Self.General_Entities.Insert (Name, Value);
         --  XXX Not implemented, just insert empty string for now.

         if Notation.Is_Empty then
            Callbacks.Call_External_Entity_Decl
             (Self, Name, Public_Id, System_Id);

         else
            Callbacks.Call_Unparsed_Entity_Decl
             (Self, Name, Public_Id, System_Id, Notation);
         end if;

      else
         Self.General_Entities.Insert (Name, Value);
         Callbacks.Call_Internal_Entity_Decl (Self, Name, Value);
      end if;
   end Process_General_Entity_Declaration;

   ------------------------------------------
   -- Process_Parameter_Entity_Declaration --
   ------------------------------------------

   procedure Process_Parameter_Entity_Declaration
    (Self  : not null access SAX_Simple_Reader'Class;
     Name  : League.Strings.Universal_String;
     Value : League.Strings.Universal_String)
   is
      use League.Strings;
      use Universal_String_Maps;

   begin
      if Self.Parameter_Entities.Contains (Name) then
         raise Program_Error with "parameter entity already declared";
         --  XXX It is non-fatal error, first declaration must be used and
         --  at user option warning may be issued to application.
      end if;

      Self.Parameter_Entities.Insert (Name, Value);
      Put_Line ("PE: '" & Name & "' => '" & Value & "'");
   end Process_Parameter_Entity_Declaration;

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

      YYVal : YYSType renames Self.YYVal;

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
            puts ("Accepting ERROR" & ASCII.NUL);

            exit;

--            handle_error;

         elsif YY_Action = YY_Accept_Code then
            --  Accepting grammar.

            puts ("Accepting" & ASCII.NUL);

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
               --  Document type declaration, rule [28]. Once external identifier are
               --  recognized external document type declaration subset need to be parsed 
               --  before processing of internal subset. External subset is inserted
               --  immediately after external identifier when present. Thus original
               --  rule [28] is rewritten and extended to reflect this inclusion.
            
               Process_Document_Type_Declaration
                (Self,
                 yy.value_stack (yy.tos-1).String,
                 yy.value_stack (yy.tos).Is_External,
                 yy.value_stack (yy.tos).Public_Id,
                 yy.value_stack (yy.tos).System_Id);

            when 6 =>
               null;

            when 7 =>
               yyval :=
                (Is_External => True,
                 Public_Id   => yy.value_stack (yy.tos).Public_Id,
                 System_Id   => yy.value_stack (yy.tos).System_Id,
                 others      => <>);

            when 8 =>
               yyval :=
                (Is_External => False,
                 others      => <>);

            when 9 =>
               --  ExternalID specified by SYSTEM, rule [75].
            
               yyval :=
                (System_Id => yy.value_stack (yy.tos).String,
                 others    => <>);

            when 10 =>
               --  ExternalID specified by PUBLIC, rule [75].
            
               yyval :=
                (Public_Id => yy.value_stack (yy.tos-1).String,
                 System_Id => yy.value_stack (yy.tos).String,
                 others    => <>);

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
               null;

            when 17 =>
               null;

            when 18 =>
               Process_Comment (Self, yy.value_stack (yy.tos).String);

            when 19 =>
               Process_General_Entity_Declaration
                (Self,
                 yy.value_stack (yy.tos-2).String,
                 yy.value_stack (yy.tos-1).Is_External,
                 yy.value_stack (yy.tos-1).String,
                 yy.value_stack (yy.tos-1).Public_Id,
                 yy.value_stack (yy.tos-1).System_Id,
                 yy.value_stack (yy.tos-1).Notation);

            when 20 =>
               Process_Parameter_Entity_Declaration (Self, yy.value_stack (yy.tos-2).String, yy.value_stack (yy.tos-1).String);

            when 21 =>
               yyval :=
                (Is_External => False,
                 String      => yy.value_stack (yy.tos).String,
                 others      => <>);

            when 22 =>
               yyval :=
                (Is_External => True,
                 Public_Id   => yy.value_stack (yy.tos).Public_Id,
                 System_Id   => yy.value_stack (yy.tos).System_Id,
                 others      => <>);

            when 23 =>
               yyval :=
                (Is_External => True,
                 Public_Id   => yy.value_stack (yy.tos-2).Public_Id,
                 System_Id   => yy.value_stack (yy.tos-2).System_Id,
                 Notation    => yy.value_stack (yy.tos).String,
                 others      => <>);

            when 24 =>
               null;

            when 25 =>
               null;

            when 26 =>
               --  Entity value including surrounding delimiters.
            
               yyval.String := yy.value_stack (yy.tos-1).String;

            when 27 =>
               --  Additional string segment in entity value.
            
               yyval.String := yy.value_stack (yy.tos-1).String & yy.value_stack (yy.tos).String;

            when 28 =>
               --  Single string segment in entity value.
            
               yyval.String := yy.value_stack (yy.tos).String;

            when 29 =>
               yyval.String := League.Strings.To_Universal_String ("");
               when others =>
                  raise Program_Error
                    with "Unhandled state"
                           & Integer'Image (YY_Rule_Id) & " in parser";
            end case;

            --  Exit loop on user request or on unrecoverable error.

            exit when not Self.Continue;

            --  Pop RHS states and goto next state.

            YY.TOS := YY.TOS - YY_Rule_Length (YY_Rule_Id) + 1;
            YY.State_Stack (YY.TOS) :=
              YY_Goto_State
               (YY.State_Stack (YY.TOS - 1), YY_Get_LHS_Rule (YY_Rule_Id));
            YY.Value_Stack (YY.TOS) := Self.YYVal;
         end if;
      end loop;
   end YYParse;

end Matreshka.SAX.Simple_Readers.Parser;
