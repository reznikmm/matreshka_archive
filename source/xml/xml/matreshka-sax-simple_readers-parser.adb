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
with Matreshka.Internals.Strings.Operations;
with Matreshka.SAX.Attributes.Internals;
with Matreshka.SAX.Simple_Readers.Callbacks;
with Matreshka.SAX.Simple_Readers.Parser.Actions;
with Matreshka.SAX.Simple_Readers.Parser.Tables;
with Matreshka.SAX.Simple_Readers.Scanner;

package body Matreshka.SAX.Simple_Readers.Parser is

   use Matreshka.Internals.XML;
   use Matreshka.Internals.XML.Entity_Tables;
   use Matreshka.Internals.XML.Symbol_Tables;
   use Matreshka.SAX.Simple_Readers.Parser.Tables;

   function YY_Goto_State (State : Integer; Sym : Integer) return Integer;
   --  Lookup for next state.

   function YY_Parse_Action (State : Natural; T : Token) return Integer;
   --  Lookup for parser action.

   procedure Process_Comment
    (Self    : not null access SAX_Simple_Reader'Class;
     Comment : League.Strings.Universal_String);
   --  Process comment in the document.

   procedure Process_General_Entity_Declaration
    (Self        : not null access SAX_Simple_Reader'Class;
     Symbol      : Matreshka.Internals.XML.Symbol_Identifier;
     Is_External : Boolean;
     Value       : League.Strings.Universal_String;
     Notation    : Matreshka.Internals.XML.Symbol_Identifier);
   --  Process general entity declaration, rule [71].

   procedure Process_Parameter_Entity_Declaration
    (Self        : not null access SAX_Simple_Reader'Class;
     Symbol      : Matreshka.Internals.XML.Symbol_Identifier;
     Is_External : Boolean;
     Value       : League.Strings.Universal_String);
   --  Process parameter entity declaration, rule [72].

   procedure Process_Empty_Element_Tag
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier);
   --  Process start tag, rule [44].

   procedure Process_Processing_Instruction
    (Self   : not null access SAX_Simple_Reader'Class;
     Target : Matreshka.Internals.XML.Symbol_Identifier;
     Data   : League.Strings.Universal_String);
   --  Process processing instruction.

   procedure Process_External_Id
    (Self      : not null access SAX_Simple_Reader'Class;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String);
   --  Process external id declaration.

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (State : in out Parser_State_Information) is
   begin
      --  Initialize by pushing state 0 and getting the first input symbol.

      State.TOS := 0;
      State.State_Stack (State.TOS) := 0;
      State.Look_Ahead := True;
   end Initialize;

   ---------------------
   -- Process_Comment --
   ---------------------

   procedure Process_Comment
    (Self    : not null access SAX_Simple_Reader'Class;
     Comment : League.Strings.Universal_String) is
   begin
      Callbacks.Call_Comment (Self, Comment);
   end Process_Comment;

   -------------------------------
   -- Process_Empty_Element_Tag --
   -------------------------------

   procedure Process_Empty_Element_Tag
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier) is
   begin
      Actions.On_Start_Tag (Self, Symbol);
      Actions.On_End_Tag (Self, Symbol);
   end Process_Empty_Element_Tag;

   -------------------------
   -- Process_External_Id --
   -------------------------

   procedure Process_External_Id
    (Self      : not null access SAX_Simple_Reader'Class;
     Public_Id : League.Strings.Universal_String;
     System_Id : League.Strings.Universal_String) is
   begin
      Self.Public_Id := Public_Id;
      Self.System_Id := System_Id;
   end Process_External_Id;

   ----------------------------------------
   -- Process_General_Entity_Declaration --
   ----------------------------------------

   procedure Process_General_Entity_Declaration
    (Self        : not null access SAX_Simple_Reader'Class;
     Symbol      : Matreshka.Internals.XML.Symbol_Identifier;
     Is_External : Boolean;
     Value       : League.Strings.Universal_String;
     Notation    : Matreshka.Internals.XML.Symbol_Identifier)
   is
      Name   : constant League.Strings.Universal_String
        := Matreshka.Internals.XML.Symbol_Tables.Name (Self.Symbols, Symbol);
      Entity : Entity_Identifier;

   begin
      if General_Entity (Self.Symbols, Symbol) /= No_Entity then
         raise Program_Error with "general entity already declared";
         --  XXX It is non-fatal error, first declaration must be used and
         --  at user option warning may be issued to application.
      end if;

      if Is_External then
         if Notation = No_Symbol then
            declare
               V : League.Strings.Universal_String;
               S : Boolean := True;
               A : Matreshka.Internals.Strings.Shared_String_Access;

            begin
               Self.Entity_Resolver.Resolve_Entity
                (Self.Public_Id, Self.System_Id, V, S);

               if not S then
                  raise Program_Error
                    with "external parsed entity is not resolved";
               end if;

               A := League.Strings.Internals.Get_Shared (V);
               New_External_Parsed_General_Entity (Self.Entities, Entity);
               Matreshka.Internals.Strings.Reference (A);
               Set_Replacement_Text (Self.Entities, Entity, A);
               Set_General_Entity (Self.Symbols, Symbol, Entity);
               Callbacks.Call_External_Entity_Decl
                (Self, Name, Self.Public_Id, Self.System_Id);
            end;

         else
            New_External_Unparsed_General_Entity
             (Self.Entities, Notation, Entity);
            Set_General_Entity (Self.Symbols, Symbol, Entity);
            Callbacks.Call_Unparsed_Entity_Decl
             (Self,
              Name,
              Self.Public_Id,
              Self.System_Id,
              Matreshka.Internals.XML.Symbol_Tables.Name
               (Self.Symbols, Notation));
         end if;

      else
         declare
            A : Matreshka.Internals.Strings.Shared_String_Access;

         begin
            A := League.Strings.Internals.Get_Shared (Value);
            Matreshka.Internals.Strings.Reference (A);
            New_Internal_General_Entity (Self.Entities, A, Entity);
            Set_General_Entity (Self.Symbols, Symbol, Entity);
            Callbacks.Call_Internal_Entity_Decl (Self, Name, Value);
         end;
      end if;
   end Process_General_Entity_Declaration;

   ------------------------------------------
   -- Process_Parameter_Entity_Declaration --
   ------------------------------------------

   procedure Process_Parameter_Entity_Declaration
    (Self        : not null access SAX_Simple_Reader'Class;
     Symbol      : Matreshka.Internals.XML.Symbol_Identifier;
     Is_External : Boolean;
     Value       : League.Strings.Universal_String)
   is
      Name   : constant League.Strings.Universal_String
        := Matreshka.Internals.XML.Symbol_Tables.Name (Self.Symbols, Symbol);
      Entity : Entity_Identifier;

   begin
      if Parameter_Entity (Self.Symbols, Symbol) /= No_Entity then
         raise Program_Error with "parameter entity already declared";
         --  XXX It is non-fatal error, first declaration must be used and
         --  at user option warning may be issued to application.
      end if;

      if Is_External then
         declare
            V : League.Strings.Universal_String;
            S : Boolean := True;
            A : Matreshka.Internals.Strings.Shared_String_Access;

         begin
            Self.Entity_Resolver.Resolve_Entity
             (Self.Public_Id, Self.System_Id, V, S);

            if not S then
               raise Program_Error
                 with "External parameter entity is not resolved";
            end if;

            A := League.Strings.Internals.Get_Shared (Value);
            Matreshka.Internals.Strings.Reference (A);
            New_External_Parameter_Entity (Self.Entities, Entity);
            Set_Replacement_Text (Self.Entities, Entity, A);
            Set_Parameter_Entity (Self.Symbols, Symbol, Entity);
         end;

      else
         declare
            A : Matreshka.Internals.Strings.Shared_String_Access;

         begin
            A := League.Strings.Internals.Get_Shared (Value);
            Matreshka.Internals.Strings.Reference (A);
            New_Internal_Parameter_Entity (Self.Entities, A, Entity);
            Set_Parameter_Entity (Self.Symbols, Symbol, Entity);
         end;
      end if;
   end Process_Parameter_Entity_Declaration;

   ------------------------------------
   -- Process_Processing_Instruction --
   ------------------------------------

   procedure Process_Processing_Instruction
    (Self   : not null access SAX_Simple_Reader'Class;
     Target : Matreshka.Internals.XML.Symbol_Identifier;
     Data   : League.Strings.Universal_String) is
   begin
      Callbacks.Call_Processing_Instruction (Self, Target, Data);
   end Process_Processing_Instruction;

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
      YY_Index   : Integer;
      YY_TOS_Old : Natural;
      YYVal      : YYSType;
      YY         : Parser_State_Information renames Self.Parser_State;

   begin
      loop
         YY_Index := YY_Shift_Reduce_Offset (YY.State_Stack (YY.TOS));

         if YY_Shift_Reduce_Matrix (YY_Index).T = YY_Default then
            YY_Action := YY_Shift_Reduce_Matrix (YY_Index).Act;

         else
            if YY.Look_Ahead then
                YY.Input_Symbol := Scanner.YYLex (Self);

                if YY.Input_Symbol = End_Of_Input
                  and then not Self.Last_Chunk
                then
                   return;
                end if;

                YY.Look_Ahead := False;
            end if;

            YY_Action :=
              YY_Parse_Action (YY.State_Stack (YY.TOS), YY.Input_Symbol);
         end if;

         if YY_Action >= YY_First_Shift_Entry then  --  SHIFT
            --  Enter new state.

            YY.TOS := YY.TOS + 1;
            YY.State_Stack (YY.TOS) := YY_Action;
            Move (YY.Value_Stack (YY.TOS), Self.YYLVal);

--        if yy.error_flag > 0 then  -- indicate a valid shift
--            yy.error_flag := yy.error_flag - 1;
--        end if;
--
            --  Advance lookahead.

            YY.Look_Ahead := True;

         elsif YY_Action = YY_Error_Code then  --  ERROR
            if not Self.Error_Reported then
               Callbacks.Call_Fatal_Error
                (Self, League.Strings.To_Universal_String ("syntax error"));
               Self.Continue := False;
            end if;

            exit;

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
               --  Version information, rule [24] in rule [23].
            
               Actions.On_XML_Version_Information (Self, yy.value_stack (yy.tos).String);

            when 5 =>
               null;

            when 6 =>
               null;

            when 7 =>
               null;

            when 8 =>
               null;

            when 9 =>
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
               Process_Comment
                (Self,
                 League.Strings.Internals.Create (yy.value_stack (yy.tos).String));

            when 17 =>
               null;

            when 18 =>
               Process_Processing_Instruction
                (Self,
                 yy.value_stack (yy.tos-1).Symbol,
                 League.Strings.Internals.Create (yy.value_stack (yy.tos).String));

            when 19 =>
               --  Document type declaration, rule [28]. Once external identifier are
               --  recognized external document type declaration subset need to be parsed 
               --  after processing of internal subset. External subset is inserted
               --  immediately after the internal subset. Thus original rule [28] is
               --  rewritten and extended to reflect this inclusion.
            
               Actions.On_External_Subset_Declaration (Self);

            when 20 =>
               Actions.On_End_Of_Internal_Subset (Self);

            when 21 =>
               Actions.On_End_Of_Document_Type_Declaration
                (Self,
                 yy.value_stack (yy.tos-6).Symbol);

            when 22 =>
               null;

            when 23 =>
               --  Document type declaration, rule [28]. 
            
               Actions.On_End_Of_Document_Type_Declaration
                (Self,
                 yy.value_stack (yy.tos-2).Symbol);

            when 24 =>
               null;

            when 25 =>
               null;

            when 26 =>
               --  ExternalID specified by SYSTEM, rule [75].
            
               Process_External_Id
                (Self,
                 League.Strings.Empty_String,
                 League.Strings.Internals.Create (yy.value_stack (yy.tos).String));

            when 27 =>
               --  ExternalID specified by PUBLIC, rule [75].
            
               Process_External_Id
                (Self,
                 League.Strings.Internals.Create (yy.value_stack (yy.tos-1).String),
                 League.Strings.Internals.Create (yy.value_stack (yy.tos).String));

            when 28 =>
               null;

            when 29 =>
               null;

            when 30 =>
               null;

            when 31 =>
               null;

            when 32 =>
               null;

            when 33 =>
               null;

            when 34 =>
               null;

            when 35 =>
               null;

            when 36 =>
               null;

            when 37 =>
               Process_Comment
                (Self,
                 League.Strings.Internals.Create (yy.value_stack (yy.tos).String));

            when 38 =>
               null;

            when 39 =>
               --  Text declaration comes from external subset or external entity.
            
               null;

            when 40 =>
               Process_General_Entity_Declaration
                (Self        => Self,
                 Symbol      => yy.value_stack (yy.tos-2).Symbol,
                 Is_External => False,
                 Value       => League.Strings.Internals.Create (yy.value_stack (yy.tos-1).String),
                 Notation    => Matreshka.Internals.XML.No_Symbol);

            when 41 =>
               Process_General_Entity_Declaration
                (Self        => Self,
                 Symbol      => yy.value_stack (yy.tos-2).Symbol,
                 Is_External => True,
                 Value       => League.Strings.Empty_String,
                 Notation    => Matreshka.Internals.XML.No_Symbol);

            when 42 =>
               Process_General_Entity_Declaration
                (Self        => Self,
                 Symbol      => yy.value_stack (yy.tos-4).Symbol,
                 Is_External => True,
                 Value       => League.Strings.Empty_String,
                 Notation    => yy.value_stack (yy.tos-1).Symbol);

            when 43 =>
               Process_Parameter_Entity_Declaration
                (Self,
                 yy.value_stack (yy.tos-2).Symbol,
                 False,
                 League.Strings.Internals.Create (yy.value_stack (yy.tos-1).String));

            when 44 =>
               Process_Parameter_Entity_Declaration
                (Self,
                 yy.value_stack (yy.tos-2).Symbol,
                 True,
                 League.Strings.Empty_String);

            when 45 =>
               --  Entity value including surrounding delimiters.
            
               Move (yyval, yy.value_stack (yy.tos-1));

            when 46 =>
               --  Additional string segment in entity value.
            
               Move (yyval, yy.value_stack (yy.tos-1));
               Matreshka.Internals.Strings.Operations.Append (yyval.String, yy.value_stack (yy.tos).String);

            when 47 =>
               --  Single string segment in entity value.
            
               Move (yyval, yy.value_stack (yy.tos));

            when 48 =>
               Set_String
                (Item          => yyval,
                 String        => League.Strings.Empty_String,
                 Is_Whitespace => False,
                 Is_CData      => False);

            when 49 =>
               null;

            when 50 =>
               null;

            when 51 =>
               null;

            when 52 =>
               null;

            when 53 =>
               null;

            when 54 =>
               null;

            when 55 =>
               null;

            when 56 =>
               null;

            when 57 =>
               null;

            when 58 =>
               null;

            when 59 =>
               null;

            when 60 =>
               null;

            when 61 =>
               null;

            when 62 =>
               null;

            when 63 =>
               null;

            when 64 =>
               null;

            when 65 =>
               null;

            when 66 =>
               null;

            when 67 =>
               null;

            when 68 =>
               null;

            when 69 =>
               null;

            when 70 =>
               null;

            when 71 =>
               null;

            when 72 =>
               null;

            when 73 =>
               null;

            when 74 =>
               null;

            when 75 =>
               null;

            when 76 =>
               null;

            when 77 =>
               null;

            when 78 =>
               null;

            when 79 =>
               null;

            when 80 =>
               null;

            when 81 =>
               null;

            when 82 =>
               null;

            when 83 =>
               null;

            when 84 =>
               null;

            when 85 =>
               null;

            when 86 =>
               null;

            when 87 =>
               null;

            when 88 =>
               null;

            when 89 =>
               null;

            when 90 =>
               null;

            when 91 =>
               null;

            when 92 =>
               null;

            when 93 =>
               null;

            when 94 =>
               null;

            when 95 =>
               null;

            when 96 =>
               null;

            when 97 =>
               null;

            when 98 =>
               null;

            when 99 =>
               null;

            when 100 =>
               null;

            when 101 =>
               null;

            when 102 =>
               null;

            when 103 =>
               null;

            when 104 =>
               null;

            when 105 =>
               null;

            when 106 =>
               Actions.On_Start_Tag (Self, yy.value_stack (yy.tos-2).Symbol);

            when 107 =>
               Actions.On_End_Tag (Self, yy.value_stack (yy.tos-1).Symbol);

            when 108 =>
               Process_Empty_Element_Tag (Self, yy.value_stack (yy.tos-2).Symbol);

            when 109 =>
               null;

            when 110 =>
               null;

            when 111 =>
               null;

            when 112 =>
               null;

            when 113 =>
               Actions.On_Character_Data
                (Self,
                 yy.value_stack (yy.tos).String,
                 yy.value_stack (yy.tos).Is_Whitespace);

            when 114 =>
               Process_Comment
                (Self,
                 League.Strings.Internals.Create (yy.value_stack (yy.tos).String));

            when 115 =>
               null;

            when 116 =>
               --  TextDecl come from substitution of external parsed entities.
            
               null;

            when 117 =>
               Actions.On_Elements_Attribute
                (Self,
                 yy.value_stack (yy.tos-2).Symbol,
                 yy.value_stack (yy.tos).String);

            when 118 =>
               Actions.On_Elements_Attribute
                (Self,
                 yy.value_stack (yy.tos-2).Symbol,
                 yy.value_stack (yy.tos).String);

            when 119 =>
               null;

            when 120 =>
               Move (yyval, yy.value_stack (yy.tos-1));
               when others =>
                  raise Program_Error
                    with "Unhandled state"
                           & Integer'Image (YY_Rule_Id) & " in parser";
            end case;

            --  Exit loop on user request or on unrecoverable error.

            exit when not Self.Continue;

            --  Pop RHS states and goto next state.

            YY_TOS_Old := YY.TOS;
            YY.TOS := YY.TOS - YY_Rule_Length (YY_Rule_Id) + 1;
            YY.State_Stack (YY.TOS) :=
              YY_Goto_State
               (YY.State_Stack (YY.TOS - 1), YY_Get_LHS_Rule (YY_Rule_Id));

            for J in YY.TOS .. YY_TOS_Old loop
               Clear (YY.Value_Stack (J));
            end loop;

            Move (YY.Value_Stack (YY.TOS), YYVal);
         end if;
      end loop;
   end YYParse;

end Matreshka.SAX.Simple_Readers.Parser;
