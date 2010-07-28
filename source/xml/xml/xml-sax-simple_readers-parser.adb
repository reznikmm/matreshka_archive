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
with XML.SAX.Simple_Readers.Callbacks;
with XML.SAX.Simple_Readers.Parser.Actions;
with XML.SAX.Simple_Readers.Parser.Tables;
with XML.SAX.Simple_Readers.Scanner;

package body XML.SAX.Simple_Readers.Parser is

   use Matreshka.Internals.XML;
   use Matreshka.Internals.XML.Entity_Tables;
   use Matreshka.Internals.XML.Symbol_Tables;
   use XML.SAX.Simple_Readers.Parser.Tables;

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
      Callbacks.Call_Comment (Self.all, Comment);
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
            New_External_Parsed_General_Entity
             (Self.Entities, Self.Public_Id, Self.System_Id, Entity);
            Set_General_Entity (Self.Symbols, Symbol, Entity);
            Callbacks.Call_External_Entity_Declaration
             (Self.all, Name, Self.Public_Id, Self.System_Id);

         else
            New_External_Unparsed_General_Entity
             (Self.Entities, Notation, Entity);
            Set_General_Entity (Self.Symbols, Symbol, Entity);
            Callbacks.Call_Unparsed_Entity_Declaration
             (Self.all,
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
            Callbacks.Call_Internal_Entity_Declaration (Self.all, Name, Value);
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
         New_External_Parameter_Entity
          (Self.Entities, Self.Public_Id, Self.System_Id, Entity);
         Set_Parameter_Entity (Self.Symbols, Symbol, Entity);

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
      Callbacks.Call_Processing_Instruction (Self.all, Target, Data);
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

      YY         : Parser_State_Information renames Self.Parser_State;

--   procedure yyerrok;
--   procedure yyclearin;

---- error recovery stuff

      procedure Handle_Error;
      --  Handles error state.

      procedure On_Fatal_Error;
      --  Handles fatal error.

      ------------------
      -- Handle_Error --
      ------------------

      procedure Handle_Error is
         YY_Action : Integer;
      begin
         if YY.Error then
            raise Program_Error with "error recovery clobber";
         end if;
--      if yy.error_flag = 3 then -- no shift yet, clobber input.
--         if yy.input_symbol = yy_tokens.end_of_input then  -- don't discard,
--            raise yy_tokens.syntax_error;
--         end if;
--
--         yy.look_ahead := true;   -- get next token
--
--         return;                  -- and try again...
--      end if;
--
--      if yy.error_flag = 0 then -- brand new error
--         yyerror("Syntax Error");
--      end if;
--
--      yy.error_flag := 3;
         YY.Error := True;
         Self.Continue := True;

         --  Find state on stack where error is a valid shift.

         loop
            YY_Action := YY_Parse_Action (YY.State_Stack (YY.TOS), Error);

            if YY_Action >= YY_First_Shift_Entry then
               YY.TOS := YY.TOS + 1;
               YY.State_Stack (YY.TOS) := YY_Action;

               exit;
            end if;

            if YY.TOS > 0 then
               YY.TOS := YY.TOS - 1;
            end if;

            if YY.TOS = 0 then
               raise Program_Error with "Syntax error";
            end if;
         end loop;
      end Handle_Error;

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

      --------------------
      -- On_Fatal_Error --
      --------------------

      procedure On_Fatal_Error is
      begin
         YY.Input_Symbol := End_Of_Input;
         YY.Look_Ahead := False;
         YY.Error := False;
      end On_Fatal_Error;

      YY_Action  : Integer;
      YY_Rule_Id : Integer;
      YY_Index   : Integer;
      YY_TOS_Old : Natural;
      YYVal      : YYSType;

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

            YY.Error := False;
--        if yy.error_flag > 0 then  -- indicate a valid shift
--            yy.error_flag := yy.error_flag - 1;
--        end if;

            --  Advance lookahead.

            YY.Look_Ahead := True;

         elsif YY_Action = YY_Error_Code then  --  ERROR
            if not Self.Error_Reported then
               Callbacks.Call_Fatal_Error
                (Self.all,
                 League.Strings.To_Universal_String ("syntax error"));
               Self.Continue := False;
            end if;

            Handle_Error;

         elsif YY_Action = YY_Accept_Code then
            --  Accepting grammar.

            exit;

         else  --  REDUCE
            --  Convert action into a rule.

            YY_Rule_Id := -YY_Action;

            --  Execute User Action.

            case YY_Rule_Id is

            when 1 =>
               Actions.On_Start_Of_Document (Self);

            when 2 =>
               Actions.On_End_Of_Document (Self);

            when 3 =>
               null;

            when 4 =>
               On_Fatal_Error;

            when 5 =>
               On_Fatal_Error;

            when 6 =>
               On_Fatal_Error;

            when 7 =>
               --  Unexpected token after the root element. This rule is required to
               --  handle End_Document callback properly, because ayacc is unable to
               --  recognize syntax error till end of parser stack is reached.
            
               Actions.On_Unexpected_Token_After_Root_Element (Self);
               Handle_Error;

            when 8 =>
               --  Unexpected token after the root element. This rule is required to
               --  handle End_Document callback properly, because ayacc is unable to
               --  recognize syntax error till end of parser stack is reached.
            
               Actions.On_Unexpected_Token_After_Root_Element (Self);
               Handle_Error;

            when 9 =>
               --  Unexpected token after the root element. This rule is required to
               --  handle End_Document callback properly, because ayacc is unable to
               --  recognize syntax error till end of parser stack is reached.
            
               Actions.On_Unexpected_Token_After_Root_Element (Self);
               Handle_Error;

            when 10 =>
               null;

            when 11 =>
               null;

            when 12 =>
               --  Version information, rule [24] in rule [23].
            
               Actions.On_XML_Version_Information (Self, yy.value_stack (yy.tos).String);

            when 13 =>
               null;

            when 14 =>
               --  [XML1.0 2.8]
               --
               --  "Note: When an XML 1.0 processor encounters a document that
               --  specifies a 1.x version number other than '1.0', it will process
               --  it as a 1.0 document. This means that an XML 1.0 processor will
               --  accept 1.x documents provided they do not use any non-1.0
               --  features."
               --
               --  [XML1.1 4.3.4]
               --
               --  "Each entity, including the document entity, can be separately
               --  declared as XML 1.0 or XML 1.1. The version declaration appearing
               --  in the document entity determines the version of the document as a
               --  whole. An XML 1.1 document may invoke XML 1.0 external entities,
               --  so that otherwise duplicated versions of external entities,
               --  particularly DTD external subsets, need not be maintained.
               --  However, in such a case the rules of XML 1.1 are applied to the
               --  entire document."
               --
               --  So, version information is ignored when it is not related to
               --  document entity.
            
               null;

            when 15 =>
               null;

            when 16 =>
               null;

            when 17 =>
               null;

            when 18 =>
               null;

            when 19 =>
               null;

            when 20 =>
               null;

            when 21 =>
               null;

            when 22 =>
               null;

            when 23 =>
               Process_Comment
                (Self,
                 League.Strings.Internals.Create (yy.value_stack (yy.tos).String));

            when 24 =>
               null;

            when 25 =>
               Process_Processing_Instruction
                (Self,
                 yy.value_stack (yy.tos-1).Symbol,
                 League.Strings.Internals.Create (yy.value_stack (yy.tos).String));

            when 26 =>
               --  Document type declaration, rule [28]. Once external identifier are
               --  recognized external document type declaration subset need to be parsed 
               --  after processing of internal subset. External subset is inserted
               --  immediately after the internal subset. Thus original rule [28] is
               --  rewritten and extended to reflect this inclusion.
            
               Actions.On_External_Subset_Declaration (Self);

            when 27 =>
               Actions.On_End_Of_Internal_Subset (Self);

            when 28 =>
               Actions.On_End_Of_Document_Type_Declaration
                (Self,
                 yy.value_stack (yy.tos-6).Symbol);

            when 29 =>
               null;

            when 30 =>
               --  Document type declaration, rule [28]. 
            
               Actions.On_End_Of_Document_Type_Declaration
                (Self,
                 yy.value_stack (yy.tos-2).Symbol);

            when 31 =>
               null;

            when 32 =>
               null;

            when 33 =>
               --  ExternalID specified by SYSTEM, rule [75].
            
               Process_External_Id
                (Self,
                 League.Strings.Empty_Universal_String,
                 League.Strings.Internals.Create (yy.value_stack (yy.tos).String));

            when 34 =>
               --  ExternalID specified by PUBLIC, rule [75].
            
               Process_External_Id
                (Self,
                 League.Strings.Internals.Create (yy.value_stack (yy.tos-1).String),
                 League.Strings.Internals.Create (yy.value_stack (yy.tos).String));

            when 35 =>
               null;

            when 36 =>
               null;

            when 37 =>
               null;

            when 38 =>
               null;

            when 39 =>
               null;

            when 40 =>
               null;

            when 41 =>
               null;

            when 42 =>
               null;

            when 43 =>
               null;

            when 44 =>
               null;

            when 45 =>
               Process_Comment
                (Self,
                 League.Strings.Internals.Create (yy.value_stack (yy.tos).String));

            when 46 =>
               null;

            when 47 =>
               --  Text declaration comes from external subset or external entity.
            
               null;

            when 48 =>
               null;

            when 49 =>
               null;

            when 50 =>
               null;

            when 51 =>
               Process_General_Entity_Declaration
                (Self        => Self,
                 Symbol      => yy.value_stack (yy.tos-2).Symbol,
                 Is_External => False,
                 Value       => League.Strings.Internals.Create (yy.value_stack (yy.tos-1).String),
                 Notation    => Matreshka.Internals.XML.No_Symbol);

            when 52 =>
               Process_General_Entity_Declaration
                (Self        => Self,
                 Symbol      => yy.value_stack (yy.tos-2).Symbol,
                 Is_External => True,
                 Value       => League.Strings.Empty_Universal_String,
                 Notation    => Matreshka.Internals.XML.No_Symbol);

            when 53 =>
               Process_General_Entity_Declaration
                (Self        => Self,
                 Symbol      => yy.value_stack (yy.tos-4).Symbol,
                 Is_External => True,
                 Value       => League.Strings.Empty_Universal_String,
                 Notation    => yy.value_stack (yy.tos-1).Symbol);

            when 54 =>
               Process_Parameter_Entity_Declaration
                (Self,
                 yy.value_stack (yy.tos-2).Symbol,
                 False,
                 League.Strings.Internals.Create (yy.value_stack (yy.tos-1).String));

            when 55 =>
               Process_Parameter_Entity_Declaration
                (Self,
                 yy.value_stack (yy.tos-2).Symbol,
                 True,
                 League.Strings.Empty_Universal_String);

            when 56 =>
               --  Entity value including surrounding delimiters.
            
               Move (yyval, yy.value_stack (yy.tos-1));

            when 57 =>
               --  Additional string segment in entity value.
            
               Move (yyval, yy.value_stack (yy.tos-1));
               Matreshka.Internals.Strings.Operations.Append (yyval.String, yy.value_stack (yy.tos).String);

            when 58 =>
               --  Single string segment in entity value.
            
               Move (yyval, yy.value_stack (yy.tos));

            when 59 =>
               Set_String
                (Item          => yyval,
                 String        => League.Strings.Empty_Universal_String,
                 Is_Whitespace => False,
                 Is_CData      => False);

            when 60 =>
               Actions.On_Start_Of_Element_Declaration
                (Self,
                 yy.value_stack (yy.tos).Symbol);

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
               Actions.On_Start_Of_Attribute_List_Declaration
                (Self,
                 yy.value_stack (yy.tos).Symbol);

            when 98 =>
               null;

            when 99 =>
               null;

            when 100 =>
               null;

            when 101 =>
               null;

            when 102 =>
               Actions.On_CDATA_Attribute_Declaration
                (Self   => Self,
                 Symbol => yy.value_stack (yy.tos-1).Symbol);

            when 103 =>
               null;

            when 104 =>
               Actions.On_Id_Attribute_Declaration
                (Self   => Self,
                 Symbol => yy.value_stack (yy.tos-1).Symbol);

            when 105 =>
               null;

            when 106 =>
               Actions.On_IdRef_Attribute_Declaration
                (Self   => Self,
                 Symbol => yy.value_stack (yy.tos-1).Symbol);

            when 107 =>
               null;

            when 108 =>
               Actions.On_IdRefs_Attribute_Declaration
                (Self   => Self,
                 Symbol => yy.value_stack (yy.tos-1).Symbol);

            when 109 =>
               null;

            when 110 =>
               Actions.On_Entity_Attribute_Declaration
                (Self   => Self,
                 Symbol => yy.value_stack (yy.tos-1).Symbol);

            when 111 =>
               null;

            when 112 =>
               Actions.On_Entities_Attribute_Declaration
                (Self   => Self,
                 Symbol => yy.value_stack (yy.tos-1).Symbol);

            when 113 =>
               null;

            when 114 =>
               Actions.On_NmToken_Attribute_Declaration
                (Self   => Self,
                 Symbol => yy.value_stack (yy.tos-1).Symbol);

            when 115 =>
               null;

            when 116 =>
               Actions.On_NmTokens_Attribute_Declaration
                (Self   => Self,
                 Symbol => yy.value_stack (yy.tos-1).Symbol);

            when 117 =>
               null;

            when 118 =>
               null;

            when 119 =>
               null;

            when 120 =>
               null;

            when 121 =>
               null;

            when 122 =>
               null;

            when 123 =>
               Actions.On_Required_Attribute_Default_Declaration (Self);

            when 124 =>
               Actions.On_Implied_Attribute_Default_Declaration (Self);

            when 125 =>
               Actions.On_Fixed_Attribute_Default_Declaration (Self, yy.value_stack (yy.tos).String);

            when 126 =>
               Actions.On_Attribute_Default_Declaration (Self, yy.value_stack (yy.tos).String);

            when 127 =>
               Actions.On_Start_Tag (Self, yy.value_stack (yy.tos-2).Symbol);

            when 128 =>
               Actions.On_End_Tag (Self, yy.value_stack (yy.tos-1).Symbol);

            when 129 =>
               Process_Empty_Element_Tag (Self, yy.value_stack (yy.tos-2).Symbol);

            when 130 =>
               null;

            when 131 =>
               null;

            when 132 =>
               null;

            when 133 =>
               null;

            when 134 =>
               Actions.On_Character_Data
                (Self,
                 yy.value_stack (yy.tos).String,
                 yy.value_stack (yy.tos).Is_Whitespace);

            when 135 =>
               Process_Comment
                (Self,
                 League.Strings.Internals.Create (yy.value_stack (yy.tos).String));

            when 136 =>
               null;

            when 137 =>
               --  TextDecl come from substitution of external parsed entities.
            
               null;

            when 138 =>
               Actions.On_Elements_Attribute
                (Self,
                 yy.value_stack (yy.tos-2).Symbol,
                 yy.value_stack (yy.tos).String);

            when 139 =>
               Actions.On_Elements_Attribute
                (Self,
                 yy.value_stack (yy.tos-2).Symbol,
                 yy.value_stack (yy.tos).String);

            when 140 =>
               null;

            when 141 =>
               Move (yyval, yy.value_stack (yy.tos-1));
               when others =>
                  raise Program_Error
                    with "Unhandled state"
                           & Integer'Image (YY_Rule_Id) & " in parser";
            end case;

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

            --  Exit loop on user request or on unrecoverable error.

            if not Self.Continue then
               YY.Input_Symbol := Error;
               YY.Look_Ahead := False;
               Self.Continue := True;
            end if;
         end if;
      end loop;
   end YYParse;

end XML.SAX.Simple_Readers.Parser;
