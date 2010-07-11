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
with Matreshka.SAX.Simple_Readers.Scanner.Actions;
with Matreshka.SAX.Simple_Readers.Scanner.Tables;

package body Matreshka.SAX.Simple_Readers.Scanner is

   use type Interfaces.Unsigned_32;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;
   use Matreshka.Internals.XML;
   use Matreshka.Internals.XML.Entity_Tables;
   use Matreshka.Internals.XML.Symbol_Tables;
   use Matreshka.SAX.Simple_Readers.Scanner.Tables;

   type Character_Reference_Form is (Decimal, Hexadecimal);

   procedure Push_Start_Condition
    (Self  : not null access SAX_Simple_Reader'Class;
     State : Interfaces.Unsigned_32);
   --  Pushs specified condition into the stack of start conditions.

   procedure Set_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class);
   --  Sets "whitespace matched" flag.

   function Get_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class) return Boolean;
   --  Returns value of "whitespace matched" flag.

   function Process_Attribute_Value_Open_Delimiter
    (Self  : not null access SAX_Simple_Reader'Class;
     State : Interfaces.Unsigned_32) return Token;
   --  Process open delimiter of attribute value.

   function Process_Attribute_Value_Close_Delimiter
    (Self  : not null access SAX_Simple_Reader'Class) return Token;
   --  Process close delimiter of attribute value.

   function Process_Character_Reference
    (Self  : not null access SAX_Simple_Reader'Class;
     Form  : Character_Reference_Form) return Token;
   --  Processes character reference.

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

   ----------------
   -- Initialize --
   ----------------

   procedure Initialize (Self : in out SAX_Simple_Reader'Class) is
   begin
      Self.Scanner_State.Start_Condition_Stack.Append (Tables.DOCUMENT_10);
   end Initialize;

   ----------------------
   -- YY_Move_Backward --
   ----------------------

   procedure YY_Move_Backward
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      Self.Scanner_State.YY_Current_Position :=
        Self.Scanner_State.YY_Current_Position - 1;
      Self.Scanner_State.YY_Current_Index :=
        Self.Scanner_State.YY_Current_Index - 1;

      if Self.Stack_Is_Empty then
         Self.YY_Current_Column := Self.YY_Current_Column - 1;
      end if;
   end YY_Move_Backward;

   ---------------------------
   -- Enter_Start_Condition --
   ---------------------------

   procedure Enter_Start_Condition
    (Self  : not null access SAX_Simple_Reader'Class;
     State : Interfaces.Unsigned_32) is
   begin
      Self.Scanner_State.YY_Start_State := State * 2 + 1;
   end Enter_Start_Condition;

   ----------------------------
   -- Get_Whitespace_Matched --
   ----------------------------

   function Get_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class) return Boolean is
   begin
      return Self.Whitespace_Matched;
   end Get_Whitespace_Matched;

   -------------------------
   -- Pop_Start_Condition --
   -------------------------

   procedure Pop_Start_Condition
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      Enter_Start_Condition
       (Self, Self.Scanner_State.Start_Condition_Stack.Last_Element);
      Self.Scanner_State.Start_Condition_Stack.Delete_Last;
   end Pop_Start_Condition;

   ---------------------------------------------
   -- Process_Attribute_Value_Close_Delimiter --
   ---------------------------------------------

   function Process_Attribute_Value_Close_Delimiter
    (Self  : not null access SAX_Simple_Reader'Class) return Token
   is
      --  NOTE: Attribute value delimiter can be ' or " and both are
      --  represented as single UTF-16 code unit, thus expensive UTF-16
      --  decoding can be avoided.

      Delimiter : constant Matreshka.Internals.Unicode.Code_Point
        := Code_Point
            (Self.Scanner_State.Data.Value
              (Self.Scanner_State.YY_Base_Position));

   begin
      if Self.Scanner_State.Delimiter /= Delimiter then
         --  XXX Can be refactored and reused between processing of character
         --  reference and close of attribute value delimiter.

         if not Matreshka.Internals.Strings.Can_Be_Reused
                 (Self.Character_Buffer, 2)
         then
            --  Preallocated buffer can't be reused for some reason (most
            --  probably because application made copy of the previous
            --  character reference), so new buffer need to be preallocated.
            --  Requested size of the buffer is maximum number of UTF-16 code
            --  unit to store one Unicode code point.

            Matreshka.Internals.Strings.Dereference (Self.Character_Buffer);
            Self.Character_Buffer := Matreshka.Internals.Strings.Allocate (2);
         end if;

         Self.Character_Buffer.Unused := 0;
         Self.Character_Buffer.Length := 1;
         Matreshka.Internals.Utf16.Unchecked_Store
          (Self.Character_Buffer.Value,
           Self.Character_Buffer.Unused,
           Delimiter);
         Matreshka.Internals.Strings.Reference (Self.Character_Buffer);
         Set_String_Internal
          (Item          => Self.YYLVal,
           String        => Self.Character_Buffer,
           Is_Whitespace => False,
           Is_CData      => False);

         return Token_String_Segment;

      else
         Reset_Whitespace_Matched (Self);
         Pop_Start_Condition (Self);

         return Token_Value_Close;
      end if;
   end Process_Attribute_Value_Close_Delimiter;

   --------------------------------------------
   -- Process_Attribute_Value_Open_Delimiter --
   --------------------------------------------

   function Process_Attribute_Value_Open_Delimiter
    (Self  : not null access SAX_Simple_Reader'Class;
     State : Interfaces.Unsigned_32) return Token is
   begin
      --  NOTE: Attribute value delimiter can be ' or " and both are
      --  represented as single UTF-16 code unit, thus expensive UTF-16
      --  decoding can be avoided.

      Self.Scanner_State.Delimiter :=
        Code_Point
         (Self.Scanner_State.Data.Value (Self.Scanner_State.YY_Base_Position));
      Push_Start_Condition (Self, State);

      case Self.Version is
         when XML_1_0 =>
            Enter_Start_Condition (Self, ATTRIBUTE_VALUE_10);

         when XML_1_1 =>
            Enter_Start_Condition (Self, ATTRIBUTE_VALUE_11);
      end case;

      return Token_Value_Open;
   end Process_Attribute_Value_Open_Delimiter;

   ---------------------------------
   -- Process_Character_Reference --
   ---------------------------------

   function Process_Character_Reference
    (Self  : not null access SAX_Simple_Reader'Class;
     Form  : Character_Reference_Form) return Token
   is
      Upper_A     : constant := 16#41#;
      Upper_F     : constant := 16#46#;
      Lower_A     : constant := 16#61#;
      Lower_F     : constant := 16#66#;
      Zero_Fixup  : constant := 16#30#;
      Upper_Fixup : constant := 16#41# - 16#0A#;
      Lower_Fixup : constant := 16#61# - 16#0A#;

      D  : Code_Point;
      C  : Code_Point := 0;
      FP : Utf16_String_Index := Self.Scanner_State.YY_Base_Position;
      LP : Utf16_String_Index := Self.Scanner_State.YY_Current_Position;

   begin
      --  NOTE: Sequences of leading and trailing character always fixed:
      --  "&#" for decimal representation and "&#x" for hexadecimal
      --  representation for the leading sequence of characters and ";" for
      --  trailing; thus we can just add/subtract required number of code point
      --  positions instead of doing more expensive iteration with analysis of
      --  UTF-16 code units.
      --
      --  Actual value has limited character set ([0-9] or [0-9a-fA-F]), all
      --  of characters is on BMP also, thus expensive decoding can be omitted
      --  also.

      case Form is
         when Decimal =>
            --  Trim two leading characters and trailing character.

            FP := FP + 2;
            LP := LP - 1;

            while FP < LP loop
               D := Code_Point (Self.Scanner_State.Data.Value (FP));
               FP := FP + 1;

               C := (C * 10) + D - Zero_Fixup;
            end loop;

         when Hexadecimal =>
            --  Trim three leading characters and trailing character.

            FP := FP + 3;
            LP := LP - 1;

            while FP < LP loop
               D := Code_Point (Self.Scanner_State.Data.Value (FP));
               FP := FP + 1;

               if D in Upper_A .. Upper_F then
                  C := (C * 16) + D - Upper_Fixup;

               elsif D in Lower_A .. Lower_F then
                  C := (C * 16) + D - Lower_Fixup;

               else
                  C := (C * 16) + D - Zero_Fixup;
               end if;
            end loop;
      end case;

      --  XXX Character reference must be resolved into valid XML character.
      --  XXX Whitespace must be detected and reported in token.

      --  XXX Can be refactored and reused between processing of character
      --  reference and close of attribute value delimiter.

      if not Matreshka.Internals.Strings.Can_Be_Reused
              (Self.Character_Buffer, 2)
      then
         --  Preallocated buffer can't be reused for some reason (most
         --  probably because application made copy of the previous character
         --  reference), so new buffer need to be preallocated. Requested
         --  size of the buffer is maximum number of UTF-16 code unit to
         --  store one Unicode code point.

         Matreshka.Internals.Strings.Dereference (Self.Character_Buffer);
         Self.Character_Buffer := Matreshka.Internals.Strings.Allocate (2);
      end if;

      Self.Character_Buffer.Unused := 0;
      Self.Character_Buffer.Length := 1;
      Matreshka.Internals.Utf16.Unchecked_Store
       (Self.Character_Buffer.Value,
        Self.Character_Buffer.Unused,
        C);
      Matreshka.Internals.Strings.Reference (Self.Character_Buffer);
      Set_String_Internal
       (Item          => Self.YYLVal,
        String        => Self.Character_Buffer,
        Is_Whitespace => False,
        Is_CData      => False);

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
         Set_String
          (Item          => Self.YYLVal,
           String        => Image,
           Is_Whitespace => False,
           Is_CData      => False);

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

      case Self.Version is
         when XML_1_0 =>
            Enter_Start_Condition (Self, ENTITY_VALUE_10);

         when XML_1_1 =>
            Enter_Start_Condition (Self, ENTITY_VALUE_11);
      end case;

      return Token_Value_Open;
   end Process_Entity_Value_Open_Delimiter;

   --------------------------
   -- Push_External_Subset --
   --------------------------

   procedure Push_External_Subset
    (Self : not null access SAX_Simple_Reader'Class;
     Data : not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Self.Scanner_Stack.Append (Self.Scanner_State);
      Self.Stack_Is_Empty := False;

      Self.Scanner_State := (Data, Is_External_Subset => True, others => <>);
      Push_And_Enter_Start_Condition (Self, DOCTYPE_INTSUBSET_10, INITIAL);
      --  Reset scanner to INITIAL state to be able to process text
      --  declaration at the beginning of external subset.
   end Push_External_Subset;

   ---------------------------
   -- Push_Parameter_Entity --
   ---------------------------

   procedure Push_Parameter_Entity
    (Self  : not null access SAX_Simple_Reader'Class;
     Data  : not null Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      Self.Scanner_Stack.Append (Self.Scanner_State);
      Self.Stack_Is_Empty := False;

      Self.Scanner_State := (Data, In_Literal => True, others => <>);

      case Self.Version is
         when XML_1_0 =>
            Enter_Start_Condition (Self, ENTITY_VALUE_10);

         when XML_1_1 =>
            Enter_Start_Condition (Self, ENTITY_VALUE_11);
      end case;
   end Push_Parameter_Entity;

   --------------------------------------------
   -- Push_General_Entity_In_Attribute_Value --
   --------------------------------------------

   procedure Push_General_Entity_In_Attribute_Value
    (Self   : not null access SAX_Simple_Reader'Class;
     Entity : Matreshka.Internals.XML.Entity_Identifier;
     Data   : not null Matreshka.Internals.Strings.Shared_String_Access)
   is
      S : Scanner_State_Information;

   begin
      if Self.Scanner_State.Entity = Entity then
         raise Program_Error with "general entity references itself";
      end if;

      for J in 1 .. Integer (Self.Scanner_Stack.Length) loop
         S := Self.Scanner_Stack.Element (J);

         if S.Entity = Entity then
            raise Program_Error with "general entity references itself";
         end if;
      end loop;

      Self.Scanner_Stack.Append (Self.Scanner_State);
      Self.Stack_Is_Empty := False;

      Self.Scanner_State :=
       (Data, Entity => Entity, In_Literal => True, others => <>);

      case Self.Version is
         when XML_1_0 =>
            Enter_Start_Condition (Self, ATTRIBUTE_VALUE_10);

         when XML_1_1 =>
            Enter_Start_Condition (Self, ATTRIBUTE_VALUE_11);
      end case;
   end Push_General_Entity_In_Attribute_Value;

   ------------------------------
   -- Reset_Whitespace_Matched --
   ------------------------------

   procedure Reset_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      Self.Whitespace_Matched := False;
   end Reset_Whitespace_Matched;

   --------------------------------------------
   -- Push_Current_And_Enter_Start_Condition --
   --------------------------------------------

   procedure Push_Current_And_Enter_Start_Condition
    (Self  : not null access SAX_Simple_Reader'Class;
     Enter : Interfaces.Unsigned_32) is
   begin
      Self.Scanner_State.Start_Condition_Stack.Append (Start_Condition (Self));
      Self.Scanner_State.YY_Start_State := 1 + 2 * Enter;
   end Push_Current_And_Enter_Start_Condition;

   ------------------------------------
   -- Push_And_Enter_Start_Condition --
   ------------------------------------

   procedure Push_And_Enter_Start_Condition
    (Self  : not null access SAX_Simple_Reader'Class;
     Push  : Interfaces.Unsigned_32;
     Enter : Interfaces.Unsigned_32) is
   begin
      Self.Scanner_State.Start_Condition_Stack.Append (Push);
      Self.Scanner_State.YY_Start_State := 1 + 2 * Enter;
   end Push_And_Enter_Start_Condition;

   --------------------------
   -- Push_Start_Condition --
   --------------------------

   procedure Push_Start_Condition
    (Self  : not null access SAX_Simple_Reader'Class;
     State : Interfaces.Unsigned_32) is
   begin
      Self.Scanner_State.Start_Condition_Stack.Append (State);
   end Push_Start_Condition;

   ----------------------------
   -- Set_Whitespace_Matched --
   ----------------------------

   procedure Set_Whitespace_Matched
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      Self.Whitespace_Matched := True;
   end Set_Whitespace_Matched;

   ---------------------
   -- Set_XML_Version --
   ---------------------

   procedure Set_XML_Version
    (Self    : not null access SAX_Simple_Reader'Class;
     Version : XML_Version) is
   begin
      if Self.Version /= Version then
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
         --  So, XML version of the document can be declared only once, in the
         --  XML declaration at the start of the document entity. All other
         --  occurrences of version declaration in external subset and
         --  external entities are ignored. This allows to simplify code of
         --  the version change subprogram.

         Self.Version := Version;

         Self.Scanner_State.Start_Condition_Stack.Delete_Last;

         case Self.Version is
            when XML_1_0 =>
               Self.Scanner_State.Start_Condition_Stack.Append
                (Tables.DOCUMENT_10);

            when XML_1_1 =>
               Self.Scanner_State.Start_Condition_Stack.Append
                (Tables.DOCUMENT_11);
         end case;
      end if;
   end Set_XML_Version;

   ---------------------
   -- Start_Condition --
   ---------------------

   function Start_Condition
    (Self  : not null access SAX_Simple_Reader'Class)
       return Interfaces.Unsigned_32 is
   begin
      return (Self.Scanner_State.YY_Start_State - 1) / 2;
   end Start_Condition;

   -----------
   -- YYLex --
   -----------

   function YYLex
    (Self : not null access SAX_Simple_Reader'Class) return Token
   is
      YY_Action                  : Interfaces.Unsigned_32;
      YY_C                       : Interfaces.Unsigned_32;
      YY_Current_State           : Interfaces.Unsigned_32;
      YY_Current_Code            : Code_Point;
      YY_Last_Accepting_Position : Utf16_String_Index;
      YY_Last_Accepting_Index    : Positive;
      YY_Last_Accepting_State    : Interfaces.Unsigned_32;
      YY_Last_Accepting_Line     : Natural;
      YY_Last_Accepting_Column   : Natural;
      YY_Last_Accepting_Skip_LF  : Boolean;
      YY_Next_Position           : Utf16_String_Index;
      YY_Next_Index              : Positive;
      YY_Next_Line               : Natural;
      YY_Next_Column             : Natural;
      YY_Next_Skip_LF            : Boolean;
      YY_Last_Match_Position     : Utf16_String_Index;
      YY_Last_Match_Index        : Positive;
      YY_Last_Match_State        : Interfaces.Unsigned_32;
      YYLVal                     : YYSType renames Self.YYLVal;

      function YY_Text
       (Trim_Left       : Natural := 0;
        Trim_Right      : Natural := 0;
        Trim_Whitespace : Boolean := False)
          return League.Strings.Universal_String;

      function YY_Text_Internal
       (Trim_Left       : Natural := 0;
        Trim_Right      : Natural := 0;
        Trim_Whitespace : Boolean := False)
          return Matreshka.Internals.Strings.Shared_String_Access;

      -------------
      -- YY_Text --
      -------------

      function YY_Text
       (Trim_Left       : Natural := 0;
        Trim_Right      : Natural := 0;
        Trim_Whitespace : Boolean := False)
          return League.Strings.Universal_String
      is
         --  Trailing and leading character as well as whitespace characters
         --  belongs to BMP and don't require expensive UTF-16 decoding.

         FP : Utf16_String_Index
          := Self.Scanner_State.YY_Base_Position
               + Utf16_String_Index (Trim_Left);
         FI : Positive := Self.Scanner_State.YY_Base_Index + Trim_Left;
         LP : constant Utf16_String_Index
          := Self.Scanner_State.YY_Current_Position
               - Utf16_String_Index (Trim_Right);
         LI : constant Positive
           := Self.Scanner_State.YY_Current_Index - Trim_Right;
         C  : Code_Point;

      begin
         if Trim_Whitespace then
            loop
               C := Code_Point (Self.Scanner_State.Data.Value (FP));

               exit when
                 C /= 16#0020#
                   and then C /= 16#0009#
                   and then C /= 16#000D#
                   and then C /= 16#000A#;

               FP := FP + 1;
               FI := FI + 1;
            end loop;
         end if;

         return
           League.Strings.Internals.Wrap
            (Matreshka.Internals.Strings.Operations.Slice
              (Self.Scanner_State.Data, FP, LP - FP, LI - FI));
      end YY_Text;

      ----------------------
      -- YY_Text_Internal --
      ----------------------

      function YY_Text_Internal
       (Trim_Left       : Natural := 0;
        Trim_Right      : Natural := 0;
        Trim_Whitespace : Boolean := False)
          return Matreshka.Internals.Strings.Shared_String_Access
      is
         --  Trailing and leading character as well as whitespace characters
         --  belongs to BMP and don't require expensive UTF-16 decoding.

         FP : Utf16_String_Index
           := Self.Scanner_State.YY_Base_Position
                + Utf16_String_Index (Trim_Left);
         FI : Positive := Self.Scanner_State.YY_Base_Index + Trim_Left;
         LP : constant Utf16_String_Index
           := Self.Scanner_State.YY_Current_Position
                - Utf16_String_Index (Trim_Right);
         LI : constant Positive
           := Self.Scanner_State.YY_Current_Index - Trim_Right;
         C  : Code_Point;

      begin
         if Trim_Whitespace then
            loop
               C := Code_Point (Self.Scanner_State.Data.Value (FP));

               exit when
                 C /= 16#0020#
                   and then C /= 16#0009#
                   and then C /= 16#000D#
                   and then C /= 16#000A#;

               FP := FP + 1;
               FI := FI + 1;
            end loop;
         end if;

         return
           Matreshka.Internals.Strings.Operations.Slice
            (Self.Scanner_State.Data, FP, LP - FP, LI - FI);
      end YY_Text_Internal;

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
--      yy_current_state := yy_start;
         Self.Scanner_State.YY_Base_Position :=
           Self.Scanner_State.YY_Current_Position;
         Self.Scanner_State.YY_Base_Index    :=
           Self.Scanner_State.YY_Current_Index;
         YY_Current_State := Self.Scanner_State.YY_Start_State;

         if Self.Stack_Is_Empty then
            --  Track line/column for document.

            Self.YY_Base_Line    := Self.YY_Current_Line;
            Self.YY_Base_Column  := Self.YY_Current_Column;
            Self.YY_Base_Skip_LF := Self.YY_Current_Skip_LF;
         end if;

--        yy_cp := yy_c_buf_p;
--
--        -- yy_bp points to the position in yy_ch_buf of the start of the
--        -- current run.
         loop
            YY_Next_Position := Self.Scanner_State.YY_Current_Position;
            YY_Next_Index    := Self.Scanner_State.YY_Current_Index;

            if Self.Stack_Is_Empty then
               YY_Next_Line     := Self.YY_Current_Line;
               YY_Next_Column   := Self.YY_Current_Column;
               YY_Next_Skip_LF  := Self.YY_Current_Skip_LF;
            end if;

            if YY_Next_Position < Self.Scanner_State.Data.Unused then
               Unchecked_Next
                (Self.Scanner_State.Data.Value,
                 YY_Next_Position,
                 YY_Current_Code);
               YY_Next_Index := YY_Next_Index + 1;

               if Self.Stack_Is_Empty then
                  --  Track line/column in root document

                  if YY_Current_Code = 16#000D# then
                     --  Start of new line.

                     YY_Next_Line    := YY_Next_Line + 1;
                     YY_Next_Column  := 1;
                     YY_Next_Skip_LF := True;

                  elsif YY_Current_Code = 16#000A# then
                     if YY_Next_Skip_LF then
                        --  Ignore CR after LF.

                        YY_Next_Skip_LF := False;

                     else
                        YY_Next_Line   := YY_Next_Line + 1;
                        YY_Next_Column := 1;
                     end if;

                  else
                     --  Move to next column.

                     YY_Next_Column  := YY_Next_Column + 1;
                     YY_Next_Skip_LF := False;
                  end if;
               end if;

               YY_C :=
                 YY_EC_Base
                  (YY_Current_Code / 16#100#) (YY_Current_Code mod 16#100#);

               if YY_Current_Code = 0 then
                  --  NUL character (code point 0) can't be used in XML
                  --  documents.

                  raise Program_Error with "NUL character in document";
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

               if Self.Stack_Is_Empty then
                  YY_Last_Accepting_Line    := Self.YY_Current_Line;
                  YY_Last_Accepting_Column  := Self.YY_Current_Column;
                  YY_Last_Accepting_Skip_LF := Self.YY_Current_Skip_LF;
               end if;
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

            if Self.Stack_Is_Empty then
               Self.YY_Current_Line    := YY_Next_Line;
               Self.YY_Current_Column  := YY_Next_Column;
               Self.YY_Current_Skip_LF := YY_Next_Skip_LF;
            end if;

            exit when YY_Current_State = YY_Jam_State;
         end loop;

         --  Return back to last accepting state.

         Self.Scanner_State.YY_Current_Position := YY_Last_Accepting_Position;
         Self.Scanner_State.YY_Current_Index    := YY_Last_Accepting_Index;
         YY_Current_State                       := YY_Last_Accepting_State;

         if Self.Stack_Is_Empty then
            Self.YY_Current_Line    := YY_Last_Accepting_Line;
            Self.YY_Current_Column  := YY_Last_Accepting_Column;
            Self.YY_Current_Skip_LF := YY_Last_Accepting_Skip_LF;
         end if;

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
               --  Open of XML declaration or text declaration, rules [23], [77].
            
               return Actions.On_Open_Of_XML_Processing_Instruction (Self);

            when 2 =>
               --  Any character except literal "<?xml" means there is no XML declaration
               --  in this document/external parsed entity.
            
               Actions.On_No_XML_Declaration (Self);

            when 3 =>
               --  Open of processing instruction, rule [16]. Rule [17] is implemented
               --  implicitly by ordering of open of XMLDecl and open of PI.
            
               return Actions.On_Open_Of_Processing_Instruction (Self);

            when 4 =>
               --  Open tag of document type declaration and name of root element,
               --  rule [28].
            
               return Actions.On_Open_Of_Document_Type_Declaration (Self);

            when 5 =>
               --  Open of start tag, rule [40], or empty element, rule [44].
            
               return Actions.On_Open_Of_Start_Tag (Self);

            when 6 =>
               --  Open of end tag, rule [42].
            
               return Actions.On_Open_Of_End_Tag (Self);

            when 7 =>
               --  Segment of whitespaces.
            
               if Actions.On_Whitespace_In_Document (Self) then
                  return Token_String_Segment;
               end if;

            when 8 =>
               --  Segment of character data, rule [14].
            
               return Actions.On_Character_Data (Self);

            when 9 =>
               --  Segment of character data, rule [14].
            
               return Actions.On_Character_Data (Self);

            when 10 =>
               --  Segment of CDATA, rules [18], [19], [20], [21].
            
               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal (9, 3),
                 Is_Whitespace => False,
                 Is_CData      => True);
            
               return Token_String_Segment;

            when 11 =>
               --  Segment of CDATA, rules [18], [19], [20], [21].
            
               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal (9, 3),
                 Is_Whitespace => False,
                 Is_CData      => True);
            
               return Token_String_Segment;

            when 12 =>
               --  General entity reference rule [68] in document content.
            
               if not Actions.On_General_Entity_Reference_In_Document_Content (Self) then
                  --  Error is detected during handling, return error token to parser.
            
                  return Error;
               end if;

            when 13 =>
               --  [24] VersionInfo
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before 'version' keyword";
                  --  XXX This is recoverable error.
               end if;
            
               return Token_Version;

            when 14 =>
               --  [80] EncodingDecl
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before 'encoding' keyword";
                  --  XXX This is recoverable error.
               end if;
            
               return Token_Encoding;

            when 15 =>
               --  [32] SDDecl
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before 'standalone' keyword";
                  --  XXX This is recoverable error.
               end if;
            
               return Token_Standalone;

            when 16 =>
               --  Synthetic rule. XMLDECL_ATTRIBUTE_CHAR is a union of characters allowed
               --  by [26] VersionNum, [81] EncName, [32] SDDecl. Precise check is
               --  processed while parsing.
            
               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal (1, 1),
                 Is_Whitespace => False,
                 Is_CData      => False);
               Reset_Whitespace_Matched (Self);
            
               return Token_String_Segment;

            when 17 =>
               --  Close of XML declaration (rule [23]), text declaration (rule [77]) or
               --  processing instruction (rule [16]).
            
               return Actions.On_Close_Of_Processing_Instruction (Self, True);

            when 18 =>
               --  Ignore all whitespaces is followed by processing insturction's name,
               --  rule [16].
            
               Actions.On_Whitespace_In_Processing_Instruction (Self);

            when 19 =>
               --  Segment of data and close delimiter of the processing instruction, rule
               --  [16].
            
               return Actions.On_Close_Of_Processing_Instruction (Self, False);

            when 20 =>
               --  Segment of data and close delimiter of the processing instruction, rule
               --  [16].
            
               return Actions.On_Close_Of_Processing_Instruction (Self, False);

            when 21 =>
               --  Keyword SYSTEM, rule [75].
            
               Reset_Whitespace_Matched (Self);
               Push_And_Enter_Start_Condition (Self, DOCTYPE_INT, EXTERNAL_ID_SYS);
            
               return Token_System;

            when 22 =>
               --  System literal, rule [11], used in rule [75].
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before system literal";
                  --  XXX This is recoverable error.
               end if;
            
               Reset_Whitespace_Matched (Self);
               Pop_Start_Condition (Self);
               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal (1, 1),
                 Is_Whitespace => False,
                 Is_CData      => False);
            
               return Token_System_Literal;

            when 23 =>
               --  Productions [82], [83] allows absence of system literal in
               --  notation declaration.
            
               Pop_Start_Condition (Self);
            
               return Token_Close;

            when 24 =>
               --  Keyword PUBLIC, rule [75].
            
               Reset_Whitespace_Matched (Self);
               Push_And_Enter_Start_Condition (Self, DOCTYPE_INT, EXTERNAL_ID_PUB);
            
               return Token_Public;

            when 25 =>
               --  Public id literal, rule [12], used in rule [75].
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before pubid literal";
                  --  XXX This is recoverable error.
               end if;
            
               Reset_Whitespace_Matched (Self);
               Enter_Start_Condition (Self, EXTERNAL_ID_SYS);
               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal (1, 1),
                 Is_Whitespace => False,
                 Is_CData      => False);
            
               return Token_Public_Literal;

            when 26 =>
               --  Open of internal subset declaration, rule [28].
            
               return Actions.On_Open_Of_Internal_Subset (Self);

            when 27 =>
               --  Close of internal subset declaration, rule [28].
            
               Enter_Start_Condition (Self, DOCTYPE_INT);
            
               return Token_Internal_Subset_Close;

            when 28 =>
               --  Text of comment, rule [15].
            
               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal (4, 3),
                 Is_Whitespace => False,
                 Is_CData      => False);
            
               return Token_Comment;

            when 29 =>
               --  Text of comment, rule [15].
            
               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal (4, 3),
                 Is_Whitespace => False,
                 Is_CData      => False);
            
               return Token_Comment;

            when 30 =>
               --  Open of entity declaration, rules [71], [72].
            
               Enter_Start_Condition (Self, ENTITY_DECL);
               Reset_Whitespace_Matched (Self);
            
               return Token_Entity_Decl_Open;

            when 31 =>
               --  Open of element declaration and name of the element, rule [45].
            
               return Actions.On_Open_Of_Element_Declaration (Self);

            when 32 =>
               --  Open of attribute list declaration, rule [52].
            
               return Actions.On_Open_Of_Attribute_List_Declaration (Self);

            when 33 =>
               --  Open of notation declaration, production [82].
            
               return Actions.On_Open_Of_Notation_Declaration (Self);

            when 34 =>
               --  Close of notation declaration, production [82].
            
               Pop_Start_Condition (Self);
            
               return Token_Close;

            when 35 =>
               --  Name in entity declaration, rules [71], [72].
            
               return Actions.On_Name_In_Entity_Declaration (Self);

            when 36 =>
               --  Percent mark in parameter entity declaration, rule [72].
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error
                    with "no whitespace before percent in parameter entity declaration";
                  --  XXX This is recoverable error.
               end if;
            
               Reset_Whitespace_Matched (Self);
            
               return Token_Percent;

            when 37 =>
               --  Entity value, rule [9].
            
               return Process_Entity_Value_Open_Delimiter (Self, YY_Text);

            when 38 =>
               --  Entity value as ExternalID, rule [75], used by rules [73], [74].
            
               Reset_Whitespace_Matched (Self);
               Push_Current_And_Enter_Start_Condition (Self, EXTERNAL_ID_SYS);
            
               return Token_System;

            when 39 =>
               --  Entity value as ExternalID, rule [75], used by rules [73], [74].
               --  Notation as ExternalID or Public_ID (productions [75], [82], [83]).
            
               Reset_Whitespace_Matched (Self);
               Push_Current_And_Enter_Start_Condition (Self, EXTERNAL_ID_PUB);
            
               return Token_Public;

            when 40 =>
               --  NDATA keyword, rule [76].
            
               if not Get_Whitespace_Matched (Self) then
                  raise Program_Error with "no whitespace before NDATA";
                  --  XXX This is recoverable error.
               end if;
            
               Reset_Whitespace_Matched (Self);
               Enter_Start_Condition (Self, ENTITY_NDATA);
            
               return Token_NData;

            when 41 =>
               --  Name of NDATA, rule [76].
            
               return Actions.On_Name_In_Entity_Declaration_Notation (Self);

            when 42 =>
               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal,
                 Is_Whitespace => False,
                 Is_CData      => False);
            
               return Token_String_Segment;

            when 43 =>
               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal,
                 Is_Whitespace => False,
                 Is_CData      => False);
            
               return Token_String_Segment;

            when 44 =>
               --  Close of entity value, rule [9].
            
               return Process_Entity_Value_Close_Delimiter (Self, YY_Text);

            when 45 =>
               --  Decimal form of character reference rule [66] in entity value rule [9];
               --  attribute value, rule [10] or content of element, rule [43].
            
               return Process_Character_Reference (Self, Decimal);

            when 46 =>
               --  Hexadecimal form of character reference rule [66] in entity value rule
               --  [9]; attribute value, rule [10] or content of element, rule [43].
            
               return Process_Character_Reference (Self, Hexadecimal);

            when 47 =>
               --  General entity reference rule [68] in entity value rule [9].
            
               return Actions.On_General_Entity_Reference_In_Entity_Value (Self);

            when 48 =>
               --  Parameter entity reference rule [69] in entity value rule [9].
               --
               --  Processing of parameter entity uses separate scanner's state, thus
               --  after processing current state is restored automatically. This allows
               --  to reuse code for three modes: parsing of entity value delimited by
               --  quotation; parsing of entity value delimited by apostrophe; and
               --  parsing of parameter entity replacement text when it is referenced
               --  in any of two form of entity value.
            
               if not Actions.On_Parameter_Entity_Reference_In_Entity_Value (Self) then
                  return Error;
               end if;

            when 49 =>
               --  EMPTY keyword, rule [46].
            
               return Token_Empty;

            when 50 =>
               --  ANY keyword, rule [46].
            
               return Token_Any;

            when 51 =>
               --  Open parenthesis, rules [49], [50], [51].
            
               Enter_Start_Condition (Self, ELEMENT_CHILDREN);
            
               return Token_Open_Parenthesis;

            when 52 =>
               --  Close parenthesis, rules [49], [50], [51].
            
               return Token_Close_Parenthesis;

            when 53 =>
               --  Question mark in rules [47], [48].
            
               return Token_Question;

            when 54 =>
               --  Asterisk in rules [47], [48].
            
               return Token_Asterisk;

            when 55 =>
               --  Plus sign in rules [47], [48].
            
               return Token_Plus;

            when 56 =>
               --  Vertical bar in rule [49].
            
               return Token_Vertical_Bar;

            when 57 =>
               --  Comma in rule [50].
            
               return Token_Comma;

            when 58 =>
               --  #PCDATA in rule [51].
            
               return Token_PCData;

            when 59 =>
               --  Name in element's children declaration, rules [48], [51].
            
               return Actions.On_Name_In_Element_Declaration_Children (Self);

            when 60 =>
               --  Close token of entity declaration, rules [71], [72].
               --  Close of element declaration, rule [45].
               --  Close of attribute list declaration, rule [52].
            
               return Actions.On_Close_Of_Declaration (Self);

            when 61 =>
               --  Name of the attribute, rule [53].
            
               return Actions.On_Name_In_Attribute_List_Declaration (Self);

            when 62 =>
               --  CDATA keyword, rule [55].
            
               return Token_CData;

            when 63 =>
               --  ID keyword, rule [56].
            
               return Token_Id;

            when 64 =>
               --  IDREF keyword, rule [56].
            
               return Token_IdRef;

            when 65 =>
               --  IDREFS keyword, rule [56].
            
               return Token_IdRefs;

            when 66 =>
               --  ENTITY keyword, rule [56].
            
               return Token_Entity;

            when 67 =>
               --  ENTITIES keyword, rule [56].
            
               return Token_Entities;

            when 68 =>
               --  NMTOKEN keyword, rule [56].
            
               return Token_NmToken;

            when 69 =>
               --  NMTOKENS keyword, rule [56].
            
               return Token_NmTokens;

            when 70 =>
               --  NOTATION keyword, rule [58].
            
               return Token_Notation;

            when 71 =>
               --  #REQUIRED keyword, rule [60].
            
               Enter_Start_Condition (Self, ATTLIST_DECL);
            
               return Token_Required;

            when 72 =>
               --  #IMPLIED keyword, rule [60].
            
               Enter_Start_Condition (Self, ATTLIST_DECL);
            
               return Token_Implied;

            when 73 =>
               --  #FIXED keyword, rule [60].
            
               return Token_Fixed;

            when 74 =>
               --  Open parenthesis, rules [58], [59].
            
               return Token_Open_Parenthesis;

            when 75 =>
               --  Close parenthesis, rules [58], [59].
            
               return Token_Close_Parenthesis;

            when 76 =>
               --  Vertical bar, rules [58], [59].
            
               return Token_Vertical_Bar;

            when 77 =>
               --  Name in the rule [58].
            
               return Actions.On_Name_In_Attribute_List_Declaration_Notation (Self);

            when 78 =>
               --  Nmtoken in the rule [59].
            
               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal,
                 Is_Whitespace => False,
                 Is_CData      => False);
               --  XXX Need to add flag to mark Nmtoken.
            
               return Token_Name;

            when 79 =>
               --  Open delimiter of attribute value, rule [10].
            
               return Process_Attribute_Value_Open_Delimiter (Self, ATTLIST_DECL);

            when 80 =>
               --  All white spaces from rules [28] are ignored.
               --  Whitespace before name in rule [76] is ignored.
            
               null;

            when 81 =>
               --  White spaces in entity declaration are not optional, rules [71], [72],
               --  [75], [76].
               --
               --  White spaces in start tag, rule [40], are ignored, but white space
               --  between attribute value and name of the next attribute are must be
               --  present.
               --
               --  All white spaces from rules [23], [24], [25], [32], [80], [82] are
               --  ignored, but white space between attribute value and name of the
               --  next attribute are must be present.
            
               Set_Whitespace_Matched (Self);

            when 82 =>
               --  Name of the attribute, rule [41].
            
               return Actions.On_Name_In_Element_Start_Tag (Self);

            when 83 =>
               --  Equal sign as attribute's name value delimiter, rule [25] in rules [41],
               --  [24], [32], [80].
            
               return Token_Equal;

            when 84 =>
               --  Close of empty element tag, rule [44].
            
               return Actions.On_Close_Of_Empty_Element_Tag (Self);

            when 85 =>
               --  Close of tag, rule [40].
               --  Close tag of document type declaration, rule [28].
            
               return Actions.On_Close_Of_Tag (Self);

            when 86 =>
               --  Open delimiter of attribute value, rule [10].
            
               return Process_Attribute_Value_Open_Delimiter (Self, ELEMENT_START);

            when 87 =>
               --  Close delimiter of attribute value, rule [10].
            
               return Process_Attribute_Value_Close_Delimiter (Self);

            when 88 =>
               --  Value of attribute, rule [10].
            
               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal,
                 Is_Whitespace => False,
                 Is_CData      => False);
            
               return Token_String_Segment;

            when 89 =>
               --  Value of attribute, rule [10].
            
               Set_String_Internal
                (Item          => YYLVal,
                 String        => YY_Text_Internal,
                 Is_Whitespace => False,
                 Is_CData      => False);
            
               return Token_String_Segment;

            when 90 =>
               --  Less-than sign can't be used in the attribute value.
            
               return Actions.On_Less_Than_Sign_In_Attribute_Value (Self);

            when 91 =>
               --  General entity reference rule [68] in attribute value, rule [10].
            
               if not Actions.On_General_Entity_Reference_In_Attribute_Value (Self) then
                  return Error;
               end if;

            when 92 =>
               raise Program_Error with "Unexpected character in XML_DECL";

            when 93 =>
               raise Program_Error with "Unexpected character in DOCTYPE_EXTINT";

            when 94 =>
               raise Program_Error with "Unexpected character in DOCTYPE_INT";

            when 95 =>
               Put_Line (YY_Text);
               raise Program_Error with "Unexpected character in DOCTYPE_INTSUBSET";

            when 96 =>
               raise Program_Error with "Unexpected character in ENTITY_DECL";

            when 97 =>
               raise Program_Error with "Unexpected character in ENTITY_DEF";

            when 98 =>
               raise Program_Error with "Unexpected character in ENTITY_NDATA";

            when 99 =>
               Put_Line (YY_Text);
               raise Program_Error with "Unexpected character in ATTLIST_TYPE";

            when 100 =>
               Put_Line (YY_Text);
               raise Program_Error with "Unexpected character in ATTLIST_DECL";

            when 101 =>
               raise Program_Error with "Unexpected character in pubid literal";

            when 102 =>
               raise Program_Error with "Unexpected character in system literal";

            when 103 =>
               raise Program_Error with "Unexpected character in NOTATION_DECL";

            when 104 =>
               --  Unexpected character.
            
               return Actions.On_Unexpected_Character (Self);
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
                  if Self.Stack_Is_Empty then
                     if Self.Last_Chunk then
                        Matreshka.Internals.Strings.Dereference
                         (Self.Scanner_State.Data);

                     else
                        --  Remove already scanned data.

                        declare
                           X : Matreshka.Internals.Strings.Shared_String_Access
                             := Self.Scanner_State.Data;

                        begin
                           if Self.Scanner_State.Data.Unused
                                /= Self.Scanner_State.YY_Base_Position
                           then
                              Self.Scanner_State.Data :=
                                Matreshka.Internals.Strings.Operations.Slice
                                 (X,
                                  Self.Scanner_State.YY_Base_Position,
                                  Self.Scanner_State.Data.Unused
                                    - Self.Scanner_State.YY_Base_Position,
                                  Self.Scanner_State.Data.Length
                                    - Self.Scanner_State.YY_Base_Index + 1);

                           else
                              Self.Scanner_State.Data := null;
                           end if;

                           Matreshka.Internals.Strings.Dereference (X);
                           Self.Scanner_State.YY_Current_Position := 0;
                           Self.Scanner_State.YY_Current_Index := 1;
                           Self.YY_Current_Line := Self.YY_Base_Line;
                           Self.YY_Current_Column := Self.YY_Base_Column;
                           Self.YY_Current_Skip_LF := Self.YY_Base_Skip_LF;
                        end;
                     end if;

                     return End_Of_Input;

                  else
                     Self.Scanner_State := Self.Scanner_Stack.Last_Element;
                     Self.Scanner_Stack.Delete_Last;
                     Self.Stack_Is_Empty := Self.Scanner_Stack.Is_Empty;

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
                        & Interfaces.Unsigned_32'Image (YY_Action)
                        & " in scanner";
         end case;
      end loop;  --  end of loop waiting for end of file
   end YYLex;

   -------------
   -- YY_Text --
   -------------

   function YY_Text
    (Self            : not null access SAX_Simple_Reader'Class;
     Trim_Left       : Natural := 0;
     Trim_Right      : Natural := 0;
     Trim_Whitespace : Boolean := False)
       return Matreshka.Internals.Strings.Shared_String_Access
   is
      --  Trailing and leading character as well as whitespace characters
      --  belongs to BMP and don't require expensive UTF-16 decoding.

      FP : Utf16_String_Index
        := Self.Scanner_State.YY_Base_Position
             + Utf16_String_Index (Trim_Left);
      FI : Positive := Self.Scanner_State.YY_Base_Index + Trim_Left;
      LP : constant Utf16_String_Index
        := Self.Scanner_State.YY_Current_Position
             - Utf16_String_Index (Trim_Right);
      LI : constant Positive
        := Self.Scanner_State.YY_Current_Index - Trim_Right;
      C  : Code_Point;

   begin
      if Trim_Whitespace then
         loop
            C := Code_Point (Self.Scanner_State.Data.Value (FP));

            exit when
              C /= 16#0020#
                and then C /= 16#0009#
                and then C /= 16#000D#
                and then C /= 16#000A#;

            FP := FP + 1;
            FI := FI + 1;
         end loop;
      end if;

      return
        Matreshka.Internals.Strings.Operations.Slice
         (Self.Scanner_State.Data, FP, LP - FP, LI - FI);
   end YY_Text;

end Matreshka.SAX.Simple_Readers.Scanner;
