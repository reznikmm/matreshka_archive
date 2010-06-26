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
with Matreshka.SAX.Attributes.Internals;
with Matreshka.SAX.Simple_Readers.Handler_Callbacks;
with Matreshka.SAX.Simple_Readers.Parser.Tables;
with Matreshka.SAX.Simple_Readers.Scanner;

package body Matreshka.SAX.Simple_Readers.Parser is

   use Matreshka.SAX.Simple_Readers.Parser.Tables;
   use type Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier;

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
     Symbol      : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier;
     Is_External : Boolean;
     Public_Id   : League.Strings.Universal_String;
     System_Id   : League.Strings.Universal_String);
   --  Process document type declaration rule [28] and prepare to analyze its
   --  external subset if any.

   procedure Process_General_Entity_Declaration
    (Self        : not null access SAX_Simple_Reader'Class;
     Symbol      : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier;
     Is_External : Boolean;
     Value       : League.Strings.Universal_String;
     Public_Id   : League.Strings.Universal_String;
     System_Id   : League.Strings.Universal_String;
     Notation    : League.Strings.Universal_String);
   --  Process general entity declaration, rule [71].

   procedure Process_Parameter_Entity_Declaration
    (Self        : not null access SAX_Simple_Reader'Class;
     Name        : League.Strings.Universal_String;
     Is_External : Boolean;
     Value       : League.Strings.Universal_String;
     Public_Id   : League.Strings.Universal_String;
     System_Id   : League.Strings.Universal_String);
   --  Process parameter entity declaration, rule [72].

   procedure Process_Start_Tag
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier);
   --  Process start tag, rule [40].

   procedure Process_End_Tag
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier);
   --  Process end tag, rule [42].

   procedure Process_Empty_Element_Tag
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier);
   --  Process start tag, rule [44].

   procedure Process_Characters
    (Self          : not null access SAX_Simple_Reader'Class;
     Text          : League.Strings.Universal_String;
     Is_Whitespace : Boolean);
   --  Process segment of characters.

   procedure Process_Attribute
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier;
     Value  : League.Strings.Universal_String);
   --  Process attribute.

   procedure Process_Processing_Instruction
    (Self   : not null access SAX_Simple_Reader'Class;
     Target : League.Strings.Universal_String;
     Data   : League.Strings.Universal_String);
   --  Process processing instruction.

   procedure Process_Attribute_In_Set
    (Self  : not null access SAX_Simple_Reader'Class);
   --  Process single attribute by adding it into set of attributes.

   -----------------------
   -- Process_Attribute --
   -----------------------

   procedure Process_Attribute
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier;
     Value  : League.Strings.Universal_String) is
   begin
      Self.Attribute :=
       (Namespace_URI  => League.Strings.To_Universal_String (""),
        Local_Name     => Symbol,
        Qualified_Name => Symbol,
        Value          => Value);
   end Process_Attribute;

   ------------------------------
   -- Process_Attribute_In_Set --
   ------------------------------

   procedure Process_Attribute_In_Set
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      Matreshka.SAX.Attributes.Internals.Append
       (Self           => Self.Attributes,
        Namespace_URI  => Self.Attribute.Namespace_URI,
        Local_Name     =>
          Matreshka.Internals.XML.Symbol_Tables.Name
           (Self.Symbols, Self.Attribute.Local_Name),
        Qualified_Name =>
          Matreshka.Internals.XML.Symbol_Tables.Name
           (Self.Symbols, Self.Attribute.Qualified_Name),
        Value          => Self.Attribute.Value);
   end Process_Attribute_In_Set;

   ------------------------
   -- Process_Characters --
   ------------------------

   procedure Process_Characters
    (Self          : not null access SAX_Simple_Reader'Class;
     Text          : League.Strings.Universal_String;
     Is_Whitespace : Boolean) is
   begin
      if Is_Whitespace then
         Handler_Callbacks.Call_Ignorable_Whitespace (Self, Text);

      else
         Handler_Callbacks.Call_Characters (Self, Text);
      end if;
   end Process_Characters;

   ---------------------
   -- Process_Comment --
   ---------------------

   procedure Process_Comment
    (Self    : not null access SAX_Simple_Reader'Class;
     Comment : League.Strings.Universal_String) is
   begin
      Handler_Callbacks.Call_Comment (Self, Comment);
   end Process_Comment;

   ---------------------------------------
   -- Process_Document_Type_Declaration --
   ---------------------------------------

   procedure Process_Document_Type_Declaration
    (Self        : not null access SAX_Simple_Reader'Class;
     Symbol      : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier;
     Is_External : Boolean;
     Public_Id   : League.Strings.Universal_String;
     System_Id   : League.Strings.Universal_String) is
   begin
      Self.Root_Symbol := Symbol;

      if Is_External then
         Self.Entity_Resolver.Resolve_Entity
          (Public_Id, System_Id, Self.External_Subset, Self.Continue);
         Scanner.Push_External_Entity
          (Self, League.Strings.Internals.Get_Shared (Self.External_Subset));
      end if;
   end Process_Document_Type_Declaration;

   -------------------------------
   -- Process_Empty_Element_Tag --
   -------------------------------

   procedure Process_Empty_Element_Tag
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier) is
   begin
      Process_Start_Tag (Self, Symbol);
      Process_End_Tag (Self, Symbol);
   end Process_Empty_Element_Tag;

   ---------------------
   -- Process_End_Tag --
   ---------------------

   procedure Process_End_Tag
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier)
   is
   begin
      --  [3 WFC: Element Type Match]
      --
      --  The Name in an element's end-tag MUST match the element type in the
      --  start-tag.
   
      if Self.Element_Names.Last_Element /= Symbol then
         raise Program_Error
           with "[3 WFC: Element Type Match] name of end tag doesn't match name of start tag";
         --  Fatal error
      end if;

      Handler_Callbacks.Call_End_Element
       (Self,
        League.Strings.To_Universal_String (""),
        Matreshka.Internals.XML.Symbol_Tables.Name (Self.Symbols, Symbol),
        Matreshka.Internals.XML.Symbol_Tables.Name (Self.Symbols, Symbol));
      Self.Element_Names.Delete_Last;
   end Process_End_Tag;

   ----------------------------------------
   -- Process_General_Entity_Declaration --
   ----------------------------------------

   procedure Process_General_Entity_Declaration
    (Self        : not null access SAX_Simple_Reader'Class;
     Symbol      : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier;
     Is_External : Boolean;
     Value       : League.Strings.Universal_String;
     Public_Id   : League.Strings.Universal_String;
     System_Id   : League.Strings.Universal_String;
     Notation    : League.Strings.Universal_String)
   is
      use League.Strings;
      use Entity_Information_Maps;

      Name : constant League.Strings.Universal_String
        := Matreshka.Internals.XML.Symbol_Tables.Name (Self.Symbols, Symbol);

   begin
      if Self.General_Entities.Contains (Name) then
         raise Program_Error with "general entity already declared";
         --  XXX It is non-fatal error, first declaration must be used and
         --  at user option warning may be issued to application.
      end if;

      if Is_External then
         if Notation.Is_Empty then
            declare
               V : League.Strings.Universal_String;
               S : Boolean := True;

            begin
               Self.Entity_Resolver.Resolve_Entity
                (Public_Id, System_Id, V, S);

               if not S then
                  raise Program_Error
                    with "external parsed entity is not resolved";
               end if;

               Self.General_Entities.Insert
                (Name,
                 (Name   => Name,
                  Kind   => External_Parsed_General,
                  Value  => V,
                  others => <>));
               Handler_Callbacks.Call_External_Entity_Decl
                (Self, Name, Public_Id, System_Id);
            end;

         else
            Self.General_Entities.Insert
             (Name,
              (Name   => Name,
               Kind   => Unparsed,
               others => <>));
            Handler_Callbacks.Call_Unparsed_Entity_Decl
             (Self, Name, Public_Id, System_Id, Notation);
         end if;

      else
         Self.General_Entities.Insert
          (Name,
           (Name   => Name,
            Kind   => Internal_General,
            Value  => Value,
            others => <>));
         Handler_Callbacks.Call_Internal_Entity_Decl (Self, Name, Value);
      end if;
   end Process_General_Entity_Declaration;

   ------------------------------------------
   -- Process_Parameter_Entity_Declaration --
   ------------------------------------------

   procedure Process_Parameter_Entity_Declaration
    (Self        : not null access SAX_Simple_Reader'Class;
     Name        : League.Strings.Universal_String;
     Is_External : Boolean;
     Value       : League.Strings.Universal_String;
     Public_Id   : League.Strings.Universal_String;
     System_Id   : League.Strings.Universal_String)
   is
      use League.Strings;
      use Entity_Information_Maps;

   begin
      if Self.Parameter_Entities.Contains (Name) then
         raise Program_Error with "parameter entity already declared";
         --  XXX It is non-fatal error, first declaration must be used and
         --  at user option warning may be issued to application.
      end if;

      if Is_External then
         declare
            V : League.Strings.Universal_String;
            S : Boolean := True;

         begin
            Self.Entity_Resolver.Resolve_Entity (Public_Id, System_Id, V, S);

            if not S then
               raise Program_Error
                 with "External parameter entity is not resolved";
            end if;

            Self.Parameter_Entities.Insert
             (Name,
              (Name   => Name,
               Kind   => External_Parameter,
               Value  => V,
               others => <>));
         end;

      else
         Self.Parameter_Entities.Insert
          (Name,
           (Name   => Name,
            Kind   => Internal_Parameter,
            Value  => Value,
            others => <>));
      end if;
   end Process_Parameter_Entity_Declaration;

   ------------------------------------
   -- Process_Processing_Instruction --
   ------------------------------------

   procedure Process_Processing_Instruction
    (Self   : not null access SAX_Simple_Reader'Class;
     Target : League.Strings.Universal_String;
     Data   : League.Strings.Universal_String) is
   begin
      Handler_Callbacks.Call_Processing_Instruction (Self, Target, Data);
   end Process_Processing_Instruction;

   -----------------------
   -- Process_Start_Tag --
   -----------------------

   procedure Process_Start_Tag
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Tables.Symbol_Identifier)
   is
      use Matreshka.Internals.XML.Symbol_Tables;

   begin
      if Self.Element_Names.Is_Empty then
         --  Root element.

         if Self.Validation.Enabled then
            if Self.Root_Symbol = No_Symbol then
               --  Document doesn't have document type declaration.
               --
               --  "[Definition: An XML document is valid if it has an
               --  associated document type declaration and if the document
               --  complies with the constraints expressed in it.]"

               raise Program_Error
                 with "Document doen't have document type declaration";
               --  Error

            elsif Self.Root_Symbol /= Symbol then
               --  [2.8 VC: Root Element Type]
               --
               --  "The Name in the document type declaration MUST match the
               --  element type of the root element."

               raise Program_Error
                 with "[2.8 VC: Root Element Type] Root element has wrong name";
               --  Error
            end if;
         end if;
      end if;

      Self.Element_Names.Append (Symbol);
      Handler_Callbacks.Call_Start_Element
       (Self           => Self,
        Namespace_URI  => League.Strings.To_Universal_String (""),
        Local_Name     =>
          Matreshka.Internals.XML.Symbol_Tables.Name (Self.Symbols, Symbol),
        Qualified_Name =>
          Matreshka.Internals.XML.Symbol_Tables.Name (Self.Symbols, Symbol),
        Attributes     => Self.Attributes);
      Matreshka.SAX.Attributes.Internals.Clear (Self.Attributes);
   end Process_Start_Tag;

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
      --  Register predefined entities.

      Self.General_Entities.Insert
       (League.Strings.To_Universal_String ("lt"),
        (Name   => League.Strings.To_Universal_String ("lt"),
         Kind   => Internal_General,
         Value  => League.Strings.To_Universal_String ("&#60;"),
         others => <>));
      Self.General_Entities.Insert
       (League.Strings.To_Universal_String ("gt"),
        (Name   => League.Strings.To_Universal_String ("gt"),
         Kind   => Internal_General,
         Value  => League.Strings.To_Universal_String (">"),
         others => <>));
      Self.General_Entities.Insert
       (League.Strings.To_Universal_String ("amp"),
        (Name   => League.Strings.To_Universal_String ("amp"),
         Kind   => Internal_General,
         Value  => League.Strings.To_Universal_String ("&#38;"),
         others => <>));
      Self.General_Entities.Insert
       (League.Strings.To_Universal_String ("apos"),
        (Name   => League.Strings.To_Universal_String ("apos"),
         Kind   => Internal_General,
         Value  => League.Strings.To_Universal_String ("'"),
         others => <>));
      Self.General_Entities.Insert
       (League.Strings.To_Universal_String ("quot"),
        (Name   => League.Strings.To_Universal_String ("quot"),
         Kind   => Internal_General,
         Value  => League.Strings.To_Universal_String (""""),
         others => <>));

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
--                puts (Token'Image (YY.Input_Symbol) & ASCII.NUL);
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
               Process_Comment (Self, yy.value_stack (yy.tos).String);

            when 16 =>
               null;

            when 17 =>
               Process_Processing_Instruction (Self, yy.value_stack (yy.tos-1).String, yy.value_stack (yy.tos).String);

            when 18 =>
               --  Document type declaration, rule [28]. Once external identifier are
               --  recognized external document type declaration subset need to be parsed 
               --  before processing of internal subset. External subset is inserted
               --  immediately after external identifier when present. Thus original
               --  rule [28] is rewritten and extended to reflect this inclusion.
            
               Process_Document_Type_Declaration
                (Self,
                 yy.value_stack (yy.tos-1).Symbol,
                 yy.value_stack (yy.tos).Is_External,
                 yy.value_stack (yy.tos).Public_Id,
                 yy.value_stack (yy.tos).System_Id);

            when 19 =>
               null;

            when 20 =>
               null;

            when 21 =>
               null;

            when 22 =>
               yyval :=
                (Is_External => True,
                 Public_Id   => yy.value_stack (yy.tos).Public_Id,
                 System_Id   => yy.value_stack (yy.tos).System_Id,
                 others      => <>);

            when 23 =>
               yyval :=
                (Is_External => False,
                 others      => <>);

            when 24 =>
               --  ExternalID specified by SYSTEM, rule [75].
            
               yyval :=
                (System_Id => yy.value_stack (yy.tos).String,
                 others    => <>);

            when 25 =>
               --  ExternalID specified by PUBLIC, rule [75].
            
               yyval :=
                (Public_Id => yy.value_stack (yy.tos-1).String,
                 System_Id => yy.value_stack (yy.tos).String,
                 others    => <>);

            when 26 =>
               null;

            when 27 =>
               null;

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
               Process_Comment (Self, yy.value_stack (yy.tos).String);

            when 36 =>
               Process_General_Entity_Declaration
                (Self,
                 yy.value_stack (yy.tos-2).Symbol,
                 yy.value_stack (yy.tos-1).Is_External,
                 yy.value_stack (yy.tos-1).String,
                 yy.value_stack (yy.tos-1).Public_Id,
                 yy.value_stack (yy.tos-1).System_Id,
                 yy.value_stack (yy.tos-1).Notation);

            when 37 =>
               Process_Parameter_Entity_Declaration
                (Self,
                 yy.value_stack (yy.tos-2).String,
                 yy.value_stack (yy.tos-1).Is_External,
                 yy.value_stack (yy.tos-1).String,
                 yy.value_stack (yy.tos-2).Public_Id,
                 yy.value_stack (yy.tos-2).System_Id);

            when 38 =>
               yyval :=
                (Is_External => False,
                 String      => yy.value_stack (yy.tos).String,
                 others      => <>);

            when 39 =>
               yyval :=
                (Is_External => True,
                 Public_Id   => yy.value_stack (yy.tos).Public_Id,
                 System_Id   => yy.value_stack (yy.tos).System_Id,
                 others      => <>);

            when 40 =>
               yyval :=
                (Is_External => True,
                 Public_Id   => yy.value_stack (yy.tos-2).Public_Id,
                 System_Id   => yy.value_stack (yy.tos-2).System_Id,
                 Notation    => yy.value_stack (yy.tos).String,
                 others      => <>);

            when 41 =>
               null;

            when 42 =>
               null;

            when 43 =>
               --  Entity value including surrounding delimiters.
            
               yyval.String := yy.value_stack (yy.tos-1).String;

            when 44 =>
               --  Additional string segment in entity value.
            
               yyval.String := yy.value_stack (yy.tos-1).String & yy.value_stack (yy.tos).String;

            when 45 =>
               --  Single string segment in entity value.
            
               yyval.String := yy.value_stack (yy.tos).String;

            when 46 =>
               yyval.String := League.Strings.To_Universal_String ("");

            when 47 =>
               null;

            when 48 =>
               null;

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
               Process_Start_Tag (Self, yy.value_stack (yy.tos-2).Symbol);

            when 105 =>
               Process_End_Tag (Self, yy.value_stack (yy.tos-1).Symbol);

            when 106 =>
               Process_Empty_Element_Tag (Self, yy.value_stack (yy.tos-2).Symbol);

            when 107 =>
               null;

            when 108 =>
               null;

            when 109 =>
               null;

            when 110 =>
               null;

            when 111 =>
               Process_Characters (Self, yy.value_stack (yy.tos).String, yy.value_stack (yy.tos).Is_Whitespace);

            when 112 =>
               Process_Comment (Self, yy.value_stack (yy.tos).String);

            when 113 =>
               null;

            when 114 =>
               --  TextDecl come from substitution of external parsed entities.
            
               null;

            when 115 =>
               Process_Attribute_In_Set (Self);

            when 116 =>
               Process_Attribute_In_Set (Self);

            when 117 =>
               null;

            when 118 =>
               Process_Attribute (Self, yy.value_stack (yy.tos-2).Symbol, yy.value_stack (yy.tos).String);

            when 119 =>
               null;
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
