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
with Matreshka.Internals.Unicode;
with Matreshka.SAX.Simple_Readers.Scanner.Tables;

package body Matreshka.SAX.Simple_Readers.Scanner is

   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;
   use Matreshka.SAX.Simple_Readers.Scanner.Tables;

   type Character_Reference_Form is (Decimal, Hexadecimal);

   procedure Enter_Start_Condition
    (Self  : not null access SAX_Simple_Reader'Class;
     State : Integer);
   pragma Inline (Enter_Start_Condition);
   --  Enter a start condition.

   procedure Set_Continue_State
    (Self  : not null access SAX_Simple_Reader'Class;
     State : Integer);
   pragma Inline (Set_Continue_State);
   --  Set scanner's state to be used after completion of recognition of
   --  current template sequence.

   function Get_Continue_State
    (Self : not null access SAX_Simple_Reader'Class) return Integer;
   pragma Inline (Set_Continue_State);
   --  Get scanner's state to be used after completion of recognition of
   --  current template sequence.

   procedure Reset_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class);
   --  Resets "whitespace matched" flag.

   procedure Set_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class);
   --  Sets "whitespace matched" flag.

   function Get_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class) return Boolean;
   --  Returns value of "whitespace matched" flag.

   procedure Push_General_Entity_In_Attribute_Value
    (Self  : not null access SAX_Simple_Reader'Class;
     Data  : not null Matreshka.Internals.Strings.Shared_String_Access);
   --  Push replacement text of general entity in attribute value into
   --  scanner's stack.

   procedure Push_General_Entity_In_Document_Content
    (Self  : not null access SAX_Simple_Reader'Class;
     Data  : not null Matreshka.Internals.Strings.Shared_String_Access);
   --  Push replacement text of general entity in document content into
   --  scanner's stack.

   function Process_Attribute_Value_Open_Delimiter
    (Self  : not null access SAX_Simple_Reader'Class;
     Image : League.Strings.Universal_String) return Token;
   --  Process open delimiter of attribute value.

   function Process_Attribute_Value_Close_Delimiter
    (Self  : not null access SAX_Simple_Reader'Class;
     Image : League.Strings.Universal_String) return Token;
   --  Process close delimiter of attribute value.

   function Process_Character_Reference
    (Self  : not null access SAX_Simple_Reader'Class;
     Form  : Character_Reference_Form;
     Image : League.Strings.Universal_String) return Token;
   --  Processes character reference.

   procedure Process_General_Entity_Reference_In_Attribute_Value
    (Self : not null access SAX_Simple_Reader'Class;
     Name : League.Strings.Universal_String);
   --  Process gewneral entity reference in attribute value, rule [68] in rule
   --  [10].

   procedure Process_Parameter_Entity_Reference_In_Entity_Value
    (Self : not null access SAX_Simple_Reader'Class;
     Name : League.Strings.Universal_String);
   --  Processes parameter entity reference in entiry value (rule [69] in
   --  context of rule [9]).

   function Process_Entity_Value_Open_Delimiter
    (Self  : not null access SAX_Simple_Reader'Class;
     Image : League.Strings.Universal_String) return Token;
   --  Process entity value open delimiter, rule [9].

   function Process_Entity_Value_Close_Delimiter
    (Self  : not null access SAX_Simple_Reader'Class;
     Image : League.Strings.Universal_String) return Token;
   --  Process entity value close delimiter, rule [9]. It is also handle
   --  "Include In Literal" (4.4.5) mode for parameter entities, when quotation
   --  and apostrophe characters are not recognized as delimiters.

   function Process_Whitespace
    (Self : not null access SAX_Simple_Reader'Class;
     Text : League.Strings.Universal_String) return Boolean;
   --  Process segment of whitespaces. Returns True and sets YYLVal when
   --  document content analysis started, and return False otherwise.

   ---------------------------
   -- Enter_Start_Condition --
   ---------------------------

   procedure Enter_Start_Condition
    (Self  : not null access SAX_Simple_Reader'Class;
     State : Integer) is
   begin
      Self.Scanner_State.YY_Start_State := 1 + 2 * State;
   end Enter_Start_Condition;

   ------------------------
   -- Get_Continue_State --
   ------------------------

   function Get_Continue_State
    (Self : not null access SAX_Simple_Reader'Class) return Integer is
   begin
      return Self.Scanner_State.Continue_State;
   end Get_Continue_State;

   ----------------------------
   -- Get_Whitespace_Matched --
   ----------------------------

   function Get_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class) return Boolean is
   begin
      return Self.Whitespace_Matched;
   end Get_Whitespace_Matched;

   ---------------------------------------------
   -- Process_Attribute_Value_Close_Delimiter --
   ---------------------------------------------

   function Process_Attribute_Value_Close_Delimiter
    (Self  : not null access SAX_Simple_Reader'Class;
     Image : League.Strings.Universal_String) return Token
   is
      Delimiter : constant Matreshka.Internals.Unicode.Code_Point
        := Wide_Wide_Character'Pos (Image.Element (1));

   begin
      if Self.Scanner_State.Delimiter /= Delimiter then
         Self.YYLVal := (String => Image, others => <>);

         return Token_String_Segment;

      else
         Reset_Whitespace_Matched (Self);
         Enter_Start_Condition (Self, ELEMENT_START);

         return Token_Value_Close;
      end if;
   end Process_Attribute_Value_Close_Delimiter;

   --------------------------------------------
   -- Process_Attribute_Value_Open_Delimiter --
   --------------------------------------------

   function Process_Attribute_Value_Open_Delimiter
    (Self  : not null access SAX_Simple_Reader'Class;
     Image : League.Strings.Universal_String) return Token is
   begin
      Self.Scanner_State.Delimiter :=
        Wide_Wide_Character'Pos (Image.Element (1));

      Enter_Start_Condition (Self, ATTRIBUTE_VALUE);

      return Token_Value_Open;
   end Process_Attribute_Value_Open_Delimiter;

   ---------------------------------
   -- Process_Character_Reference --
   ---------------------------------

   function Process_Character_Reference
    (Self  : not null access SAX_Simple_Reader'Class;
     Form  : Character_Reference_Form;
     Image : League.Strings.Universal_String) return Token
   is
      S : Wide_Wide_String (1 .. 1);

   begin
      case Form is
         when Decimal =>
            S (1) :=
              Wide_Wide_Character'Val
               (Integer'Wide_Wide_Value (Image.To_Wide_Wide_String));

         when Hexadecimal =>
            S (1) :=
              Wide_Wide_Character'Val
               (Integer'Wide_Wide_Value
                 ("16#" & Image.To_Wide_Wide_String & "#"));
      end case;

      --  XXX Character reference must be resolved into valid XML character.
      --  XXX Whitespace must be detected.

      Self.YYLVal :=
       (String        => League.Strings.To_Universal_String (S),
        Is_Whitespace => False,
        Is_CData      => False,
        others        => <>);

      return Token_String_Segment;
   end Process_Character_Reference;

   ------------------------------------------
   -- Process_Entity_Value_Close_Delimiter --
   ------------------------------------------

   function Process_Entity_Value_Close_Delimiter
    (Self  : not null access SAX_Simple_Reader'Class;
     Image : League.Strings.Universal_String) return Token
   is
      Delimiter : constant Matreshka.Internals.Unicode.Code_Point
        := Wide_Wide_Character'Pos (Image.Element (1));

   begin
      if Self.Scanner_State.In_Literal
        or else Self.Scanner_State.Delimiter /= Delimiter
      then
         Self.YYLVal := (String => Image, others => <>);

         return Token_String_Segment;

      else
         Enter_Start_Condition (Self, ENTITY_DEF);

         return Token_Value_Close;
      end if;
   end Process_Entity_Value_Close_Delimiter;

   -----------------------------------------
   -- Process_Entity_Value_Open_Delimiter --
   -----------------------------------------

   function Process_Entity_Value_Open_Delimiter
    (Self  : not null access SAX_Simple_Reader'Class;
     Image : League.Strings.Universal_String) return Token is
   begin
      Self.Scanner_State.Delimiter :=
        Wide_Wide_Character'Pos (Image.Element (1));

      if not Get_Whitespace_Matched (Self) then
         raise Program_Error with "no whitespace before entity value";
         --  XXX This is recoverable error.
      end if;

      Reset_Whitespace_Matched (Self);
      Enter_Start_Condition (Self, ENTITY_VALUE);

      return Token_Value_Open;
   end Process_Entity_Value_Open_Delimiter;

   ----------------------------------------------------------
   -- Process_General_Entity_Reference_In_Document_Content --
   ----------------------------------------------------------

   procedure Process_General_Entity_Reference_In_Document_Content
    (Self : not null access SAX_Simple_Reader'Class;
     Name : League.Strings.Universal_String)
   is
      use Entity_Information_Maps;

      Position : constant Entity_Information_Maps.Cursor
        := Self.General_Entities.Find (Name);

   begin
      if not Has_Element (Position) then
         raise Program_Error with "general entity is not declared";

      else
         Push_General_Entity_In_Document_Content
          (Self,
           League.Strings.Internals.Get_Shared (Element (Position).Value));
      end if;
   end Process_General_Entity_Reference_In_Document_Content;

   ---------------------------------------------------------
   -- Process_General_Entity_Reference_In_Attribute_Value --
   ---------------------------------------------------------

   procedure Process_General_Entity_Reference_In_Attribute_Value
    (Self : not null access SAX_Simple_Reader'Class;
     Name : League.Strings.Universal_String)
   is
      use Entity_Information_Maps;

      Position : constant Entity_Information_Maps.Cursor
        := Self.General_Entities.Find (Name);

   begin
      if not Has_Element (Position) then
         raise Program_Error with "general entity is not declared";

      else
         Push_General_Entity_In_Attribute_Value
          (Self,
           League.Strings.Internals.Get_Shared (Element (Position).Value));
      end if;
   end Process_General_Entity_Reference_In_Attribute_Value;

   --------------------------------------------------------
   -- Process_Parameter_Entity_Reference_In_Entity_Value --
   --------------------------------------------------------

   procedure Process_Parameter_Entity_Reference_In_Entity_Value
    (Self  : not null access SAX_Simple_Reader'Class;
     Name  : League.Strings.Universal_String)
   is
      use Entity_Information_Maps;

      Position : constant Entity_Information_Maps.Cursor
        := Self.Parameter_Entities.Find (Name);

   begin
      if not Has_Element (Position) then
         raise Program_Error with "parameter entity is not declared";

      else
         Push_Parameter_Entity
          (Self,
           League.Strings.Internals.Get_Shared (Element (Position).Value));
      end if;
   end Process_Parameter_Entity_Reference_In_Entity_Value;

   ------------------------
   -- Process_Whitespace --
   ------------------------

   function Process_Whitespace
    (Self : not null access SAX_Simple_Reader'Class;
     Text : League.Strings.Universal_String) return Boolean is
   begin
      if Self.Element_Names.Is_Empty then
         --  Document content not entered.

         return False;

      else
         Self.YYLVal :=
          (String        => Text,
           Is_Whitespace => True,
           Is_CData      => False,
           others        => <>);

         return True;
      end if;
   end Process_Whitespace;

   --------------------------
   -- Push_External_Entity --
   --------------------------

   procedure Push_External_Entity
    (Self : not null access SAX_Simple_Reader'Class;
     Data : not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Self.Scanner_Stack.Append (Self.Scanner_State);

      Self.Scanner_State := (Data, others => <>);
      Enter_Start_Condition (Self, DOCTYPE_INTSUBSET);
   end Push_External_Entity;

   ---------------------------
   -- Push_Parameter_Entity --
   ---------------------------

   procedure Push_Parameter_Entity
    (Self  : not null access SAX_Simple_Reader'Class;
     Data  : not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Self.Scanner_Stack.Append (Self.Scanner_State);

      Self.Scanner_State := (Data, In_Literal => True, others => <>);
      Enter_Start_Condition (Self, ENTITY_VALUE);
   end Push_Parameter_Entity;

   --------------------------------------------
   -- Push_General_Entity_In_Attribute_Value --
   --------------------------------------------

   procedure Push_General_Entity_In_Attribute_Value
    (Self  : not null access SAX_Simple_Reader'Class;
     Data  : not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Self.Scanner_Stack.Append (Self.Scanner_State);

      Self.Scanner_State := (Data, In_Literal => True, others => <>);
      Enter_Start_Condition (Self, ATTRIBUTE_VALUE);
   end Push_General_Entity_In_Attribute_Value;

   ---------------------------------------------
   -- Push_General_Entity_In_Document_Content --
   ---------------------------------------------

   procedure Push_General_Entity_In_Document_Content
    (Self  : not null access SAX_Simple_Reader'Class;
     Data  : not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Self.Scanner_Stack.Append (Self.Scanner_State);

      Self.Scanner_State := (Data, others => <>);
      Enter_Start_Condition (Self, INITIAL);
   end Push_General_Entity_In_Document_Content;

   ------------------------------
   -- Reset_Whitespace_Matched --
   ------------------------------

   procedure Reset_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      Self.Whitespace_Matched := False;
   end Reset_Whitespace_Matched;

   ------------------------
   -- Set_Continue_State --
   ------------------------

   procedure Set_Continue_State
    (Self  : not null access SAX_Simple_Reader'Class;
     State : Integer) is
   begin
      Self.Scanner_State.Continue_State := State;
   end Set_Continue_State;

   ----------------------------
   -- Set_Whitespace_Matched --
   ----------------------------

   procedure Set_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      Self.Whitespace_Matched := True;
   end Set_Whitespace_Matched;

   -----------
   -- YYLex --
   -----------

   function YYLex
    (Self : not null access SAX_Simple_Reader'Class) return Token
   is
      YY_Action                  : Integer;
      YY_Base_Position           : Utf16_String_Index;
      YY_Base_Index              : Positive;
      YY_C                       : Integer;
      YY_Current_State           : Integer;
      YY_Current_Code            : Code_Point;
      YY_Last_Accepting_Position : Utf16_String_Index;
      YY_Last_Accepting_Index    : Positive;
      YY_Last_Accepting_State    : Integer;
      YY_Next_Position           : Utf16_String_Index;
      YY_Next_Index              : Positive;
      YY_Last_Match_Position     : Utf16_String_Index;
      YY_Last_Match_Index        : Positive;
      YY_Last_Match_State        : Integer;
      YYLVal                     : YYSType renames Self.YYLVal;

      function YY_Text
       (Trim_Left  : Natural := 0;
        Trim_Right : Natural := 0)
          return League.Strings.Universal_String;

      -------------
      -- YY_Text --
      -------------

      function YY_Text
       (Trim_Left  : Natural := 0;
        Trim_Right : Natural := 0)
          return League.Strings.Universal_String
      is
         FP : Utf16_String_Index := YY_Base_Position;
         FI : constant Positive  := YY_Base_Index + Trim_Left;
         LP : Utf16_String_Index := Self.Scanner_State.YY_Current_Position;
         LI : constant Positive
           := Self.Scanner_State.YY_Current_Index - Trim_Right;

      begin
	 --  XXX Implementation covers all cases but not efficient, most times
	 --  (or always?) use of iteration is not needed - leading and trailing
         --  code points belong to BMP.

         for J in 1 .. Trim_Left loop
            Unchecked_Next (Self.Scanner_State.Data.Value, FP);
         end loop;

         for J in 1 .. Trim_Right loop
            Unchecked_Previous (Self.Scanner_State.Data.Value, LP);
         end loop;

         return
           League.Strings.Internals.Create
            (Matreshka.Internals.Strings.Operations.Slice
              (Self.Scanner_State.Data, FP, LP - FP, LI - FI));
      end YY_Text;

--         --  copy whatever the last rule matched to the standard output
--
--         procedure ECHO is
--         begin
--            if Ada.Wide_Wide_Text_IO.Is_Open (User_Output_File) then
--               Ada.Wide_Wide_Text_IO.Put (User_Output_File, YYText);
--
--            else
--               Ada.Wide_Wide_Text_IO.Put (YYText);
--            end if;
--         end ECHO;
--
--         --  action number for EOF rule of a given start state
--function YY_STATE_EOF(state : Integer) return Integer is
--begin
--     return YY_END_OF_BUFFER + state + 1;
--end YY_STATE_EOF;
--pragma Inline (YY_STATE_EOF);
--
---- return all but the first 'n' matched characters back to the input stream
--procedure yyless(n : Integer) is
--begin
--        yy_cp := yy_bp + n;
--        yy_c_buf_p := yy_cp;
--        YY_DO_BEFORE_ACTION; -- set up yytext again
--end yyless;
--pragma Inline (yyless);
--
--         --  yy_get_previous_state - get the state just before the EOB char
--         --  was reached
--
--         function YY_Get_Previous_State return YY_State_Type is
--            YY_Current_State : YY_State_Type;
--            YY_C             : Short;
--            Index            : Integer;
--            Code             : Wide_Wide_Character;
--begin
--   yy_current_state := yy_start;
--
--   declare
--      yy_cp : integer := yytext_ptr;
--
--   begin
--      while yy_cp < yy_c_buf_p loop
--         Index := yy_cp;
--
--         Next (yy_ch_buf, Index, Code);
--         yy_c := yy_ec(Code);
--         if (yy_accept(yy_current_state) /= 0 ) then
--            yy_last_accepting_state := yy_current_state;
--            yy_last_accepting_cpos := yy_cp;
--         end if;
--         while ( yy_chk(yy_base(yy_current_state) + yy_c) /= yy_current_state ) loop
--            yy_current_state := yy_def(yy_current_state);
--            if yy_current_state >= YY_FIRST_TEMPLATE then
--               yy_c := yy_meta(yy_c);
--            end if;
--         end loop;
--         yy_current_state := yy_nxt(yy_base(yy_current_state) + yy_c);
--            yy_cp := Index;
--      end loop;
--   end;
--
--   return yy_current_state;
--end yy_get_previous_state;
--
--         Index : Integer;
--         Code  : Wide_Wide_Character;
--
   begin
<<new_file>>
--         --  This is where we enter upon encountering an end-of-file and
--         --  yywrap() indicating that we should continue processing
--
--    if ( yy_init ) then
--        if ( yy_start = 0 ) then
--            yy_start := 1;      -- first start state
--        end if;
--
--        -- we put in the '\n' and start reading from [1] so that an
--        -- initial match-at-newline will be true.
--
--        yy_ch_buf.data (0) := Ada.Characters.Wide_Wide_Latin_1.LF;
--        yy_n_chars := 1;
--
--        -- we always need two end-of-buffer characters.  The first causes
--        -- a transition to the end-of-buffer state.  The second causes
--        -- a jam in that state.
--
--        yy_ch_buf.data (yy_n_chars) := YY_END_OF_BUFFER_CHAR;
--        yy_ch_buf.data (yy_n_chars + 1) := YY_END_OF_BUFFER_CHAR;
--
--        yy_eof_has_been_seen := false;
--
--        yytext_ptr := 1;
--        yy_c_buf_p := yytext_ptr;
--        yy_init := false;
--    end if; -- yy_init

      loop  --  Loops until end-of-data is reached.
--      yy_bp := yy_cp;
         YY_Base_Position := Self.Scanner_State.YY_Current_Position;
         YY_Base_Index    := Self.Scanner_State.YY_Current_Index;
--      yy_current_state := yy_start;
         YY_Current_State := Self.Scanner_State.YY_Start_State;
--
--        yy_cp := yy_c_buf_p;
--
--        -- yy_bp points to the position in yy_ch_buf of the start of the
--        -- current run.
         loop
            YY_Next_Position := Self.Scanner_State.YY_Current_Position;
            YY_Next_Index    := Self.Scanner_State.YY_Current_Index;

            if YY_Next_Position < Self.Scanner_State.Data.Unused then
               Unchecked_Next
                (Self.Scanner_State.Data.Value,
                 YY_Next_Position,
                 YY_Current_Code);
               YY_Next_Index := YY_Next_Index + 1;
               YY_C :=
                 YY_EC_Base
                  (YY_Current_Code / 16#100#) (YY_Current_Code mod 16#100#);

               if YY_Current_Code = 0 then
                  --  NUL character (code point 0) can't be used in XML
                  --  documents.

                  raise Program_Error with "nul character in document";
               end if;
            else
               --  End of buffer reached.

               YY_C := 0;
               --  Aflex uses character with code point zero to mark end of
               --  buffer character. This character always has YY_EC zero.

               YY_Last_Match_Position := YY_Last_Accepting_Position;
               YY_Last_Match_Index    := YY_Last_Accepting_Index;
               YY_Last_Match_State    := YY_Last_Accepting_State;
--
--               if YY_Last_Match_Position /= YY_Last_Accepting_Position then
--                  raise Program_Error with "still have data atfer";
--               end if;
            end if;

            if YY_Accept (YY_Current_State) /= 0 then
               --  Accepting state reached, save for possible backtrack.

               YY_Last_Accepting_State    := YY_Current_State;
               YY_Last_Accepting_Position :=
                 Self.Scanner_State.YY_Current_Position;
               YY_Last_Accepting_Index    :=
                 Self.Scanner_State.YY_Current_Index;
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
            Self.Scanner_State.YY_Current_Position := YY_Next_Position;
            Self.Scanner_State.YY_Current_Index    := YY_Next_Index;

            exit when YY_Current_State = YY_Jam_State;
         end loop;

         --  Return back to last accepting state.

         Self.Scanner_State.YY_Current_Position := YY_Last_Accepting_Position;
         Self.Scanner_State.YY_Current_Index    := YY_Last_Accepting_Index;
         YY_Current_State                       := YY_Last_Accepting_State;

   <<Next_Action>>
         YY_Action := YY_Accept (YY_Current_State);
--            YY_DO_BEFORE_ACTION;
--            YY_USER_ACTION;
--
--<<do_action>>   -- this label is used only to access EOF actions
         case YY_Action is
            when 0 =>  --  must backtrack
               Self.Scanner_State.YY_Current_Position :=
                 YY_Last_Accepting_Position;
               Self.Scanner_State.YY_Current_Index    :=
                 YY_Last_Accepting_Index;
               YY_Current_State                       :=
                 YY_Last_Accepting_State;

               goto Next_Action;


            when 1 =>
               Enter_Start_Condition (Self, XML_DECL);
               Reset_Whitespace_Matched (Self);
            
               return Token_XML_Decl_Open;

            when 2 =>
               --  Open of processing instruction, rule [16]. Rule [17] is implemented
               --  implicitly by ordering of open of XMLDecl and open of PI.
            
               YYLVal := (String => YY_Text (2, 0), others => <>);
               Enter_Start_Condition (Self, PI);
               Reset_Whitespace_Matched (Self);
            
               return Token_PI_Open;

            when 3 =>
               --  [24] VersionInfo
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before 'version' keyword";
                  --  XXX This is recoverable error.
               end if;
            
               return Token_Version;

            when 4 =>
               --  [80] EncodingDecl
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before 'encoding' keyword";
                  --  XXX This is recoverable error.
               end if;
            
               return Token_Encoding;

            when 5 =>
               --  [32] SDDecl
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before 'standalone' keyword";
                  --  XXX This is recoverable error.
               end if;
            
               return Token_Standalone;

            when 6 =>
               --  Synthetic rule. XMLDECL_ATTRIBUTE_CHAR is a union of characters allowed
               --  by [26] VersionNum, [81] EncName, [32] SDDecl. Precise check is
               --  processed while parsing.
            
               YYLVal := (String => YY_Text (1, 1), others => <>);
               Reset_Whitespace_Matched (Self);
            
               return Token_String_Segment;

            when 7 =>
               Enter_Start_Condition (Self, INITIAL);
            
               YYLVal := (others => <>);
            
               return Token_PI_Close;

            when 8 =>
               --  Ignore all whitespaces is followed by processing insturction's name,
               --  rule [16].
            
               Enter_Start_Condition (Self, PI_DATA);
               Set_Whitespace_Matched (Self);

            when 9 =>
               --  Segment of data and close delimiter of the processing instruction, rule
               --  [16].
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before processing instruction data";
                  --  XXX This is recoverable error.
               end if;
            
               YYLVal := (String => YY_Text (0, 2), others => <>);
               Enter_Start_Condition (Self, INITIAL);
            
               return Token_PI_Close;

            when 10 =>
               --  Open tag of document type declaration, rule [28].
            
               Enter_Start_Condition (Self, DOCTYPE_DECL);
            
               return Token_Doctype_Decl_Open;

            when 11 =>
               --  Name of root element type, rule [28].
            
               Enter_Start_Condition (Self, DOCTYPE_EXTINT);
               YYLVal := (String => YY_Text, others => <>);
            
               return Token_Name;

            when 12 =>
               --  Close tag of document type declaration, rule [28].
            
               Enter_Start_Condition (Self, INITIAL);
            
               return Token_Close;

            when 13 =>
               --  Keyword SYSTEM, rule [75].
            
               Set_Continue_State (Self, DOCTYPE_INT);
               Reset_Whitespace_Matched (Self);
               Enter_Start_Condition (Self, EXTERNAL_ID_SYS);
            
               return Token_System;

            when 14 =>
               --  System literal, rule [11], used in rule [75].
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before system literal";
                  --  XXX This is recoverable error.
               end if;
            
               Reset_Whitespace_Matched (Self);
               Enter_Start_Condition (Self, Get_Continue_State (Self));
               YYLVal := (String => YY_Text (1, 1), others => <>);
            
               return Token_System_Literal;

            when 15 =>
               --  Keyword PUBLIC, rule [75].
            
               Set_Continue_State (Self, DOCTYPE_INT);
               Reset_Whitespace_Matched (Self);
               Enter_Start_Condition (Self, EXTERNAL_ID_PUB);
            
               return Token_Public;

            when 16 =>
               --  Public id literal, rule [12], used in rule [75].
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before pubid literal";
                  --  XXX This is recoverable error.
               end if;
            
               Reset_Whitespace_Matched (Self);
               Enter_Start_Condition (Self, EXTERNAL_ID_SYS);
               YYLVal := (String => YY_Text (1, 1), others => <>);
            
               return Token_Public_Literal;

            when 17 =>
               --  Open of internal subset declaration, rule [28].
            
               Enter_Start_Condition (Self, DOCTYPE_INTSUBSET);
            
               return Token_Internal_Subset_Open;

            when 18 =>
               --  Close of internal subset declaration, rule [28].
            
               Enter_Start_Condition (Self, DOCTYPE_INT);
            
               return Token_Internal_Subset_Close;

            when 19 =>
               --  Text of comment, rule [15].
            
               YYLVal := (String => YY_Text (4, 3), others => <>);
            
               return Token_Comment;

            when 20 =>
               --  Open of entity declaration, rules [71], [72].
            
               Enter_Start_Condition (Self, ENTITY_DECL);
               Reset_Whitespace_Matched (Self);
            
               return Token_Entity_Decl_Open;

            when 21 =>
               --  Name in entity declaration, rules [71], [72].
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error
                    with "no whitespace before name in entity declaration";
                  --  XXX This is recoverable error.
               end if;
            
               Reset_Whitespace_Matched (Self);
               Enter_Start_Condition (Self, ENTITY_DEF);
               YYLVal := (String => YY_Text, others => <>);
            
               return Token_Name;

            when 22 =>
               --  Percent mark in parameter entity declaration, rule [72].
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error
                    with "no whitespace before percent in parameter entity declaration";
                  --  XXX This is recoverable error.
               end if;
            
               Reset_Whitespace_Matched (Self);
            
               return Token_Percent;

            when 23 =>
               --  Close token of entity declaration, rules [71], [72].
            
               Enter_Start_Condition (Self, DOCTYPE_INTSUBSET);
            
               return Token_Close;

            when 24 =>
               --  Entity value, rule [9].
            
               return Process_Entity_Value_Open_Delimiter (Self, YY_Text);

            when 25 =>
               --  Entity value as ExternalID, rule [75], used by rules [73], [74].
            
               Set_Continue_State (Self, ENTITY_DEF);
               Reset_Whitespace_Matched (Self);
               Enter_Start_Condition (Self, EXTERNAL_ID_SYS);
            
               return Token_System;

            when 26 =>
               --  Entity value as ExternalID, rule [75], used by rules [73], [74].
            
               Set_Continue_State (Self, ENTITY_DEF);
               Reset_Whitespace_Matched (Self);
               Enter_Start_Condition (Self, EXTERNAL_ID_PUB);
            
               return Token_Public;

            when 27 =>
               --  NDATA keyword, rule [76].
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before NDATA";
                  --  XXX This is recoverable error.
               end if;
            
               Enter_Start_Condition (Self, ENTITY_NDATA);
            
               return Token_NData;

            when 28 =>
               --  Name of NDATA, rule [76].
            
               Enter_Start_Condition (Self, ENTITY_DEF);
               YYLVal := (String => YY_Text, others => <>);
            
               return Token_Name;

            when 29 =>
               YYLVal := (String => YY_Text, others => <>);
            
               return Token_String_Segment;

            when 30 =>
               --  Close of entity value, rule [9].
            
               return Process_Entity_Value_Close_Delimiter (Self, YY_Text);

            when 31 =>
               --  Decimal form of character reference rule [66] in entity value rule [9];
               --  attribute value, rule [10] or content of element, rule [43].
            
               return Process_Character_Reference (Self, Decimal, YY_Text (2, 1));

            when 32 =>
               --  Hexadecimal form of character reference rule [66] in entity value rule
               --  [9]; attribute value, rule [10] or content of element, rule [43].
            
               return Process_Character_Reference (Self, Hexadecimal, YY_Text (3, 1));

            when 33 =>
               --  General entity reference rule [68] in entity value rule [9].
            
               YYLVal := (String => YY_Text, others => <>);
            
               return Token_String_Segment;

            when 34 =>
               --  Parameter entity reference rule [69] in entity value rule [9].
               --
               --  Processing of parameter entity uses separate scanner's state, thus
               --  after processing current state is restored automatically. This allows
               --  to reuse code for three modes: parsing of entity value delimited by
               --  quotation; parsing of entity value delimited by apostrophe; and
               --  parsing of parameter entity replacement text when it is referenced
               --  in any of two form of entity value.
            
               Process_Parameter_Entity_Reference_In_Entity_Value (Self, YY_Text (1, 1));

            when 35 =>
               --  All white spaces from rules [28] are ignored.
               --  Whitespace before name in rule [76] is ignored.
            
               null;

            when 36 =>
               --  White spaces in entity declaration are not optional, rules [71], [72],
               --  [75].
               --
               --  White spaces in start tag, rule [40], are ignored, but white space
               --  between attribute value and name of the next attribute are must be
               --  present.
               --
               --  All white spaces from rules [23], [24], [25], [32], [80] are ignored,
               --  but white space between attribute value and name of the next attribute
               --  are must be present.
            
               Set_Whitespace_Matched (Self);

            when 37 =>
               --  Open of start tag, rule [40], or empty element, rule [44].
            
               YYLVal := (String => YY_Text (1, 0), others => <>);
               Enter_Start_Condition (Self, ELEMENT_START);
            
               return Token_Element_Open;

            when 38 =>
               --  Open of and tag, rule [42].
            
               YYLVal := (String => YY_Text (2, 0), others => <>);
               Enter_Start_Condition (Self, ELEMENT_START);
            
               return Token_End_Open;

            when 39 =>
               --  Name of the attribute, rule [41].
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "Whitespace is missing before attribute name";
                  --  XXX It is recoverable error.
               end if;
            
               YYLVal := (String => YY_Text, others => <>);
            
               return Token_Name;

            when 40 =>
               --  Equal sign as attribute's name value delimiter, rule [25] in rules [41],
               --  [24], [32], [80].
            
               return Token_Equal;

            when 41 =>
               --  Close of empty element tag, rule [44].
            
               Enter_Start_Condition (Self, INITIAL);
            
               return Token_Empty_Close;

            when 42 =>
               --  Close of tag, rule [40].
            
               Enter_Start_Condition (Self, INITIAL);
            
               return Token_Close;

            when 43 =>
               --  Open delimiter of attribute value, rule [10].
            
               return Process_Attribute_Value_Open_Delimiter (Self, YY_Text);

            when 44 =>
               --  Close delimiter of attribute value, rule [10].
            
               return Process_Attribute_Value_Close_Delimiter (Self, YY_Text);

            when 45 =>
               --  Value of attribute, rule [10].
            
               YYLVal := (String => YY_Text, others => <>);
            
               return Token_String_Segment;

            when 46 =>
               --  Less-than sign can't be used in the attribute value.
               --
               --  3.1 [WFC: No < in Attribute Values]
            
               raise Program_Error with "'<' can't be used in attribute value";

            when 47 =>
               --  General entity reference rule [68] in attribute value, rule [10].
            
               Process_General_Entity_Reference_In_Attribute_Value (Self, YY_Text (1, 1));

            when 48 =>
               Put_Line (YY_Text);
               raise Program_Error with "Unexpected character in ATTRIBUTE_VALUE";

            when 49 =>
               --  Segment of whitespaces.
            
               if Process_Whitespace (Self, YY_Text) then
                  return Token_String_Segment;
               end if;

            when 50 =>
               --  Segment of character data, rule [14].
            
               YYLVal := (String => YY_Text, Is_Whitespace => False, others => <>);
            
               return Token_String_Segment;

            when 51 =>
               --  Segment of CDATA, rules [18], [19], [20], [21].
            
               YYLVal :=
                (String        => YY_Text (9, 3),
                 Is_Whitespace => False,
                 Is_CData      => True,
                 others        => <>);
            
               return Token_String_Segment;

            when 52 =>
               --  General entity reference rule [68] in document content.
            
               Process_General_Entity_Reference_In_Document_Content (Self, YY_Text (1, 1));

            when 53 =>
               raise Program_Error with "Unexpected character in XML_DECL";

            when 54 =>
               raise Program_Error with "Unexpected character in DOCTYPE_DECL";

            when 55 =>
               raise Program_Error with "Unexpected character in DOCTYPE_EXTINT";

            when 56 =>
               raise Program_Error with "Unexpected character in DOCTYPE_INT";

            when 57 =>
               Put_Line (YY_Text);
               raise Program_Error with "Unexpected character in DOCTYPE_INTSUBSET";

            when 58 =>
               raise Program_Error with "Unexpected character in ENTITY_DECL";

            when 59 =>
               raise Program_Error with "Unexpected character in ENTITY_DEF";

            when 60 =>
               raise Program_Error with "Unexpected character in ENTITY_NDATA";

            when 61 =>
               raise Program_Error with "Unexpected character in pubid literal";

            when 62 =>
               raise Program_Error with "Unexpected character in system literal";

            when 63 =>
               Put_Line (YY_Text);
               raise Program_Error with "Unexpected character in document";
--            when YY_END_OF_BUFFER + INITIAL + 1 
--            =>
--               return End_Of_Input;
--
            when YY_End_Of_Buffer =>
               if Self.Scanner_State.Last_Match then
                  Self.Scanner_State.YY_Current_Position :=
                    YY_Last_Match_Position;
                  Self.Scanner_State.YY_Current_Index := YY_Last_Match_Index;
                  YY_Current_State := YY_Last_Match_State;
                  Self.Scanner_State.Last_Match := False;

                  --  XXX Need to be double checked for the scenario when
                  --  last accepted state is not at the last buffer's
                  --  position.

                  goto Next_Action;
--                     yy_c_buf_p := yy_n_chars;
--                     yy_current_state := yy_get_previous_state;
--
--                     yy_cp := yy_c_buf_p;
--                     yy_bp := yytext_ptr;
--
--                     goto next_action;

               else
                  if Self.Scanner_Stack.Is_Empty then
                     return End_Of_Input;
--                     raise Program_Error with "End of data";

                  else
                     Self.Scanner_State := Self.Scanner_Stack.Last_Element;
                     Self.Scanner_Stack.Delete_Last;

                     goto New_File;
                  end if;
               end if;
--            when YY_END_OF_BUFFER =>
--               yytext_ptr := yy_bp;
--
--               case yy_get_next_buffer is
--                  when EOB_ACT_END_OF_FILE =>
--                     begin
--                        if yywrap then
--                           --  note: because we've taken care in
--                           --  yy_get_next_buffer() to have set up yytext,
--                           --  we can now set up yy_c_buf_p so that if some
--                           --  total hoser (like aflex itself) wants
--                           --  to call the scanner after we return the
--                           --  End_Of_Input, it'll still work - another
--                           --  End_Of_Input will get returned.
--
--                           yy_c_buf_p := yytext_ptr;
--                           yy_act := YY_STATE_EOF ((yy_start - 1) / 2);
--
--                           goto do_action;
--
--                        else
--                           --  start processing a new file
--
--                           yy_init := true;
--
--                           goto new_file;
--                        end if;
--                     end;
--
--                  when EOB_ACT_RESTART_SCAN =>
--                     yy_c_buf_p := yytext_ptr;
--
--                  when EOB_ACT_LAST_MATCH =>
--                     yy_c_buf_p := yy_n_chars;
--                     yy_current_state := yy_get_previous_state;
--
--                     yy_cp := yy_c_buf_p;
--                     yy_bp := yytext_ptr;
--
--                     goto next_action;
--               end case; -- case yy_get_next_buffer()

            when others =>
               raise Program_Error
                 with "Unhandled action"
                        & Integer'Image (YY_Action) & " in scanner";
         end case;
      end loop;  --  end of loop waiting for end of file
   end YYLex;

end Matreshka.SAX.Simple_Readers.Scanner;
