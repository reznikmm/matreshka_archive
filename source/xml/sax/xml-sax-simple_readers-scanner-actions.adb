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
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with Matreshka.Internals.Strings.Configuration;
with Matreshka.Internals.Strings.Operations;
with Matreshka.Internals.Unicode.Characters.Latin;
with XML.SAX.Simple_Readers.Callbacks;
with XML.SAX.Simple_Readers.Scanner.Tables;

package body XML.SAX.Simple_Readers.Scanner.Actions is

   use Matreshka.Internals.Strings.Configuration;
   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Unicode.Characters.Latin;
   use Matreshka.Internals.Utf16;
   use Matreshka.Internals.XML;
   use Matreshka.Internals.XML.Entity_Tables;
   use Matreshka.Internals.XML.Symbol_Tables;

   procedure Resolve_Symbol
    (Self            : in out SAX_Simple_Reader'Class;
     Trim_Left       : Natural;
     Trim_Right      : Natural;
     Trim_Whitespace : Boolean;
     Can_Be_Qname    : Boolean;
     Not_Qname       : Boolean;
     Error           : out Boolean;
     Symbol          : out Matreshka.Internals.XML.Symbol_Identifier);
   --  Converts name to symbol. Trim_Left, Trim_Right, Trim_Whitespace can be
   --  used to trim several characters from head of tail of matched substring,
   --  and to trim leading whitespaces. Not_Qname specify that resolved name
   --  is not a qualified name at all (it is enumeration element of attribute
   --  of non-NOTATION type). Can_Be_Qname specify that resolved name is
   --  qualified name when namespace processing is enabled. Subprogram sets
   --  Error when error is detected and Symbol when symbol is resolved.

   procedure Character_Reference_To_Code_Point
    (Self  : in out SAX_Simple_Reader'Class;
     Hex   : Boolean;
     Code  : out Code_Point;
     Valid : out Boolean);
   --  Converts scanned character reference to code point. Reports errors to
   --  application is any and sets Valid to False. Otherwise sets Code to
   --  referenced code point and sets Valid to True.

   ---------------------------------------
   -- Character_Reference_To_Code_Point --
   ---------------------------------------

   procedure Character_Reference_To_Code_Point
    (Self  : in out SAX_Simple_Reader'Class;
     Hex   : Boolean;
     Code  : out Code_Point;
     Valid : out Boolean)
   is
      Zero_Fixup  : constant := Digit_Zero;
      Upper_Fixup : constant := Latin_Capital_Letter_A - 16#0A#;
      Lower_Fixup : constant := Latin_Small_Letter_A - 16#0A#;

      FP  : Utf16_String_Index := Self.Scanner_State.YY_Base_Position;
      LP  : Utf16_String_Index := Self.Scanner_State.YY_Current_Position;
      Aux : Code_Unit_32       := 0;
      D   : Code_Point;

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

      if Hex then
         --  Trim three leading characters and trailing character.

         FP := FP + 3;
         LP := LP - 1;

         while FP < LP loop
            D := Code_Point (Self.Scanner_State.Data.Value (FP));
            FP := FP + 1;

            if D in Latin_Capital_Letter_A .. Latin_Capital_Letter_F then
               Aux := (Aux * 16) + D - Upper_Fixup;

            elsif D in Latin_Small_Letter_A .. Latin_Small_Letter_F then
               Aux := (Aux * 16) + D - Lower_Fixup;

            else
               Aux := (Aux * 16) + D - Zero_Fixup;
            end if;

            --  Check whether collected code is inside range of Unicode code
            --  points. Then it is outside reset to maximum value and exit
            --  the loop. Error will be reported later in this subprogram.

            if Aux not in Code_Point then
               Aux := Code_Unit_32'Last;

               exit;
            end if;
         end loop;

      else
         --  Trim two leading characters and trailing character.

         FP := FP + 2;
         LP := LP - 1;

         while FP < LP loop
            D := Code_Point (Self.Scanner_State.Data.Value (FP));
            FP := FP + 1;

            Aux := (Aux * 10) + D - Zero_Fixup;

            --  Check whether collected code is inside range of Unicode code
            --  points. Then it is outside reset to maximum value and exit
            --  the loop. Error will be reported later in this subprogram.

            if Aux not in Code_Point then
               Aux := Code_Unit_32'Last;

               exit;
            end if;
         end loop;
      end if;

      --  [XML1.0/1.1 4.1 WFC: Legal Character]
      --
      --  "Characters referred to using character references MUST match the
      --  production for Char."
      --
      --  Check whether character reference is resolved into valid character.

      case Self.Version is
         when XML_1_0 =>
            --  [XML1.0 2.2 Characters]
            --
            --  [2] Char ::=
            --        #x9 | #xA | #xD | [#x20-#xD7FF] | [#xE000-#xFFFD]
            --          | [#x10000-#x10FFFF]

            Valid :=
              Aux = 16#0009#
                or Aux = 16#000A#
                or Aux = 16#000D#
                or Aux in 16#0020# .. 16#D7FF#
                or Aux in 16#E000# .. 16#FFFD#
                or Aux in 16#1_0000# .. 16#10_FFFF#;

         when XML_1_1 =>
            --  [XML1.1 2.2 Characters]
            --
            --  [2] Char ::=
            --        [#x1-#xD7FF] | [#xE000-#xFFFD] | [#x10000-#x10FFFF]

            Valid :=
              Aux in 16#0001# .. 16#D7FF#
                or Aux in 16#E000# .. 16#FFFD#
                or Aux in 16#1_0000# .. 16#10_FFFF#;
      end case;

      if not Valid then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[XML 4.1 WFC: Legal Character] character reference refers to"
               & " invalid character"));
         Self.Error_Reported := True;

      else
         Code := Aux;
      end if;
   end Character_Reference_To_Code_Point;

   ----------------------------------------
   -- On_Asterisk_In_Content_Declaration --
   ----------------------------------------

   function On_Asterisk_In_Content_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      if Self.Whitespace_Matched then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[XML [47], [48], [51]] illegal whitespace before asterisk"));

         return Error;

      else
         return Token_Asterisk;
      end if;
   end On_Asterisk_In_Content_Declaration;

   -----------------------------------------------------
   -- On_Attribute_Name_In_Attribute_List_Declaration --
   -----------------------------------------------------

   function On_Attribute_Name_In_Attribute_List_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      --  [53] AttDef ::= S Name S AttType S DefaultDecl
      --
      --  Checks whitespace before the attribute name is present.

      if not Self.Whitespace_Matched then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[XML [53] AttDef]"
               & " no whitespace before attribute name"));

         return Error;
      end if;

      Self.Whitespace_Matched := False;

      Resolve_Symbol
       (Self, 0, 0, False, True, False, Qname_Error, Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         Enter_Start_Condition (Self, Tables.ATTLIST_TYPE);

         return Token_Name;
      end if;
   end On_Attribute_Name_In_Attribute_List_Declaration;

   -----------------------
   -- On_Attribute_Type --
   -----------------------

   function On_Attribute_Type
    (Self       : in out SAX_Simple_Reader'Class;
     Type_Token : Token) return Token is
   begin
      --  Checks ithat whitespace before attribute type keyword is detected
      --  and report error when check fail.

      if not Self.Whitespace_Matched then
         --  XXX This is recoverable error.

         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("whitespace required before attribute type"));

         return Error;
      end if;

      Self.Whitespace_Matched := False;

      return Type_Token;
   end On_Attribute_Type;

   ---------------------------------------
   -- On_Attribute_Value_Character_Data --
   ---------------------------------------

   procedure On_Attribute_Value_Character_Data
    (Self : in out SAX_Simple_Reader'Class)
   is
      Next : Utf16_String_Index := Self.Scanner_State.YY_Base_Position;
      Code : Code_Point;

   begin
      --  Allocates buffer of necessary size to avoid memory reallocation. It
      --  can be larger when needed if attribute value normalization is
      --  activated, but usually not too large.

      Matreshka.Internals.Strings.Mutate
       (Self.Character_Data,
        Self.Character_Data.Unused
          + Self.Scanner_State.YY_Current_Position
          - Self.Scanner_State.YY_Base_Position
          + 1);

      --  Two mostly equivalent paths are separated, because they are on the
      --  performance critical path.

      if Self.Normalize_Value then
         --  Normalization is required for attribute's value.

         while Next /= Self.Scanner_State.YY_Current_Position loop
            Unchecked_Next (Self.Scanner_State.Data.Value, Next, Code);

            --  It can be reasonable to implement this step of normalization
            --  on SIMD.

            if Code = Character_Tabulation
              or Code = Line_Feed
              or Code = Carriage_Return
            then
               Code := Space;
            end if;

            if Code = Space then
               if not Self.Space_Before then
                  Unchecked_Store
                   (Self.Character_Data.Value,
                    Self.Character_Data.Unused,
                    Code);
                  Self.Character_Data.Length := Self.Character_Data.Length + 1;
                  Self.Space_Before := True;
               end if;

            else
               Unchecked_Store
                (Self.Character_Data.Value,
                 Self.Character_Data.Unused,
                 Code);
               Self.Character_Data.Length := Self.Character_Data.Length + 1;
               Self.Space_Before := False;
            end if;
         end loop;

      else
         --  XXX Can be optimized by adding special operation Append_Slice.

         while Next /= Self.Scanner_State.YY_Current_Position loop
            Unchecked_Next (Self.Scanner_State.Data.Value, Next, Code);

            --  It can be reasonable to implement this step of normalization
            --  on SIMD.

            if Code = Character_Tabulation
              or Code = Line_Feed
              or Code = Carriage_Return
            then
               Code := Space;
            end if;

            Unchecked_Store
             (Self.Character_Data.Value,
              Self.Character_Data.Unused,
              Code);
            Self.Character_Data.Length := Self.Character_Data.Length + 1;
         end loop;
      end if;
   end On_Attribute_Value_Character_Data;

   ----------------------------------------
   -- On_Attribute_Value_Close_Delimiter --
   ----------------------------------------

   function On_Attribute_Value_Close_Delimiter
    (Self  : in out SAX_Simple_Reader'Class) return Boolean
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
         Matreshka.Internals.Strings.Operations.Unterminated_Append
          (Self.Character_Data, Delimiter);

         return False;

      else
         if Self.Normalize_Value and then Self.Space_Before then
            --  One space character is at the end of the prepared string, it
            --  must be removed from the result.

            Self.Character_Data.Length := Self.Character_Data.Length - 1;
            Self.Character_Data.Unused := Self.Character_Data.Unused - 1;
         end if;

         String_Handler.Fill_Null_Terminator (Self.Character_Data);
         Matreshka.Internals.Strings.Reference (Self.Character_Data);
         Set_String_Internal
          (Item          => Self.YYLVal,
           String        => Self.Character_Data,
           Is_Whitespace => False);
         Reset_Whitespace_Matched (Self);
         Pop_Start_Condition (Self);

         return True;
      end if;
   end On_Attribute_Value_Close_Delimiter;

   -------------------------------------------
   -- On_Attribute_Value_In_XML_Declaration --
   -------------------------------------------

   function On_Attribute_Value_In_XML_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      Set_String_Internal
       (Item          => Self.YYLVal,
        String        => YY_Text (Self, 1, 1),
        Is_Whitespace => False);
      Reset_Whitespace_Matched (Self);

      return Token_String_Segment;
   end On_Attribute_Value_In_XML_Declaration;

   ---------------------------------------
   -- On_Attribute_Value_Open_Delimiter --
   ---------------------------------------

   function On_Attribute_Value_Open_Delimiter
    (Self  : in out SAX_Simple_Reader'Class;
     State : Interfaces.Unsigned_32) return Boolean is
   begin
      if not Self.Whitespace_Matched then
         --  XXX This is recoverable error.

         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("whitespace required before default value"));

         return False;
      end if;

      On_Attribute_Value_Open_Delimiter (Self, State);

      return True;
   end On_Attribute_Value_Open_Delimiter;

   ---------------------------------------
   -- On_Attribute_Value_Open_Delimiter --
   ---------------------------------------

   procedure On_Attribute_Value_Open_Delimiter
    (Self  : in out SAX_Simple_Reader'Class;
     State : Interfaces.Unsigned_32) is
   begin
      --  NOTE: Attribute value delimiter can be ' or " and both are
      --  represented as single UTF-16 code unit, thus expensive UTF-16
      --  decoding can be avoided.

      Self.Scanner_State.Delimiter :=
        Code_Point
         (Self.Scanner_State.Data.Value (Self.Scanner_State.YY_Base_Position));
      Matreshka.Internals.Strings.Operations.Reset (Self.Character_Data);

      case Self.Version is
         when XML_1_0 =>
            Push_And_Enter_Start_Condition
             (Self, State, Tables.ATTRIBUTE_VALUE_10);

         when XML_1_1 =>
            Push_And_Enter_Start_Condition
             (Self, State, Tables.ATTRIBUTE_VALUE_11);
      end case;
   end On_Attribute_Value_Open_Delimiter;

   --------------
   -- On_CDATA --
   --------------

   function On_CDATA (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      --  Segment of CDATA section (production [20]) optionally terminated by
      --  end of CDATA section mark (production [21]).

      if Self.Scanner_State.YY_Current_Position
           - Self.Scanner_State.YY_Base_Position >= 3
        and then (Code_Point
                   (Self.Scanner_State.Data.Value
                     (Self.Scanner_State.YY_Current_Position - 1))
                        = Greater_Than_Sign
                    and Code_Point
                         (Self.Scanner_State.Data.Value
                           (Self.Scanner_State.YY_Current_Position - 2))
                              = Right_Square_Bracket
                    and Code_Point
                         (Self.Scanner_State.Data.Value
                           (Self.Scanner_State.YY_Current_Position - 3))
                              = Right_Square_Bracket)
      then
         --  Character data ends with ']]>', move backward before end of CDATA
         --  section literal. End of CDATA section literal will be processed
         --  on next cycle.

         YY_Move_Backward (Self);
         YY_Move_Backward (Self);
         YY_Move_Backward (Self);
      end if;

      Matreshka.Internals.Strings.Operations.Copy_Slice
       (Self.Character_Data,
        Self.Scanner_State.Data,
        Self.Scanner_State.YY_Base_Position,
        Self.Scanner_State.YY_Current_Position
          - Self.Scanner_State.YY_Base_Position,
        Self.Scanner_State.YY_Current_Index
          - Self.Scanner_State.YY_Base_Index);

      Matreshka.Internals.Strings.Reference (Self.Character_Data);
      Set_String_Internal
       (Item          => Self.YYLVal,
        String        => Self.Character_Data,
        Is_Whitespace => False);

      return Token_String_Segment;
   end On_CDATA;

   -----------------------
   -- On_Character_Data --
   -----------------------

   function On_Character_Data
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      C : constant Code_Point
        := Code_Point
            (Self.Scanner_State.Data.Value
              (Self.Scanner_State.YY_Current_Position - 1));

   begin
      if Self.Element_Names.Is_Empty then
         --  Document content not entered.

         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("Text may not appear after the root element"));
         Self.Error_Reported := True;

         return Error;
      end if;

      if C = Less_Than_Sign or C = Ampersand then
         --  Matched string end with '<' or '&' which is start character of
         --  tag or reference accordingly.

         YY_Move_Backward (Self);

      elsif C = Greater_Than_Sign
        and then Self.Scanner_State.YY_Current_Position
                   - Self.Scanner_State.YY_Base_Position >= 3
        and then (Code_Point
                   (Self.Scanner_State.Data.Value
                     (Self.Scanner_State.YY_Current_Position - 2))
                        = Right_Square_Bracket
                    and Code_Point
                         (Self.Scanner_State.Data.Value
                           (Self.Scanner_State.YY_Current_Position - 3))
                              = Right_Square_Bracket)
      then
         --  Matched string ends with literal ']]>' which is invalid in
         --  character data.

         if Self.Scanner_State.YY_Current_Position
              - Self.Scanner_State.YY_Base_Position = 3
         then
            --  Exactly ']]>' found.

            Callbacks.Call_Fatal_Error
             (Self,
              League.Strings.To_Universal_String
               ("[[14] CharData]"
                  & " Text may not contain a literal ']]>' sequence"));
            Self.Error_Reported := True;

            return Error;

         else
            --  String ends with ']]>', move backward to report character data
            --  in this cycle and report error in next cycle.

            YY_Move_Backward (Self);
            YY_Move_Backward (Self);
            YY_Move_Backward (Self);
         end if;
      end if;

      Matreshka.Internals.Strings.Operations.Copy_Slice
       (Self.Character_Data,
        Self.Scanner_State.Data,
        Self.Scanner_State.YY_Base_Position,
        Self.Scanner_State.YY_Current_Position
          - Self.Scanner_State.YY_Base_Position,
        Self.Scanner_State.YY_Current_Index
          - Self.Scanner_State.YY_Base_Index);

      Matreshka.Internals.Strings.Reference (Self.Character_Data);
      Set_String_Internal
       (Item          => Self.YYLVal,
        String        => Self.Character_Data,
        Is_Whitespace => False);

      return Token_String_Segment;
   end On_Character_Data;

   ----------------------------
   -- On_Character_Reference --
   ----------------------------

   function On_Character_Reference
    (Self : in out SAX_Simple_Reader'Class;
     Hex  : Boolean) return Token
   is
      Code  : Code_Point;
      Valid : Boolean;

   begin
      Character_Reference_To_Code_Point (Self, Hex, Code, Valid);

      if not Valid then
         return Error;
      end if;

      --  XXX Whitespace must be detected and reported in token.

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
        Code);
      Matreshka.Internals.Strings.Reference (Self.Character_Buffer);
      Set_String_Internal
       (Item          => Self.YYLVal,
        String        => Self.Character_Buffer,
        Is_Whitespace => False);

      return Token_String_Segment;
   end On_Character_Reference;

   -----------------------------------------------
   -- On_Character_Reference_In_Attribute_Value --
   -----------------------------------------------

   function On_Character_Reference_In_Attribute_Value
    (Self : in out SAX_Simple_Reader'Class;
     Hex  : Boolean) return Boolean
   is
      Code  : Code_Point;
      Valid : Boolean;

   begin
      Character_Reference_To_Code_Point (Self, Hex, Code, Valid);

      if not Valid then
         return False;
      end if;

      if Self.Normalize_Value then
         if Code = Space then
            if not Self.Space_Before then
               Matreshka.Internals.Strings.Operations.Unterminated_Append
                (Self.Character_Data, Code);
               Self.Space_Before := True;
            end if;

         else
            Matreshka.Internals.Strings.Operations.Unterminated_Append
             (Self.Character_Data, Code);
            Self.Space_Before := False;
         end if;

      else
         Matreshka.Internals.Strings.Operations.Unterminated_Append
          (Self.Character_Data, Code);
      end if;

      return True;
   end On_Character_Reference_In_Attribute_Value;

   -----------------------
   -- On_Close_Of_CDATA --
   -----------------------

   function On_Close_Of_CDATA
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      Pop_Start_Condition (Self);

      return Token_CData_Close;
   end On_Close_Of_CDATA;

   -------------------------------------
   -- On_Close_Of_Conditional_Section --
   -------------------------------------

   function On_Close_Of_Conditional_Section
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      if Self.Conditional_Depth = 0 then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("']]>' doesn't close conditional section"));

         return Error;
      end if;

      Self.Conditional_Depth := Self.Conditional_Depth - 1;

      if Self.Ignore_Depth /= 0 then
         Self.Ignore_Depth := Self.Ignore_Depth - 1;
      end if;

      if Self.Ignore_Depth /= 0 then
         case Self.Version is
            when XML_1_0 =>
               Enter_Start_Condition (Self, Tables.CONDITIONAL_IGNORE_10);

            when XML_1_1 =>
               Enter_Start_Condition (Self, Tables.CONDITIONAL_IGNORE_11);
         end case;

      else
         case Self.Version is
            when XML_1_0 =>
               Enter_Start_Condition (Self, Tables.DOCTYPE_INTSUBSET_10);

            when XML_1_1 =>
               Enter_Start_Condition (Self, Tables.DOCTYPE_INTSUBSET_11);
         end case;
      end if;

      return Token_Conditional_Close;
   end On_Close_Of_Conditional_Section;

   -----------------------------
   -- On_Close_Of_Declaration --
   -----------------------------

   function On_Close_Of_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      case Self.Version is
         when XML_1_0 =>
            Enter_Start_Condition (Self, Tables.DOCTYPE_INTSUBSET_10);

         when XML_1_1 =>
            Enter_Start_Condition (Self, Tables.DOCTYPE_INTSUBSET_11);
      end case;

      return Token_Close;
   end On_Close_Of_Declaration;

   -------------------------------------------
   -- On_Close_Of_Document_Type_Declaration --
   -------------------------------------------

   function On_Close_Of_Document_Type_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Boolean
   is
      Success : Boolean;
      pragma Unreferenced (Success);

   begin
      if Self.External_Subset_Entity /= No_Entity
        and not Self.External_Subset_Done
      then
         --  External subset is declared and not processed, push it into the
         --  scanner stack to process before report of close of document type
         --  declaration.

         Self.External_Subset_Done := True;
         YY_Move_Backward (Self);

         Success :=
           Scanner.Push_Entity
            (Self             => Self,
             Entity           => Self.External_Subset_Entity,
             In_Document_Type => True,
             In_Literal       => False);

         --  XXX Error processing is not implemented.

         return False;

      else
         case Self.Version is
            when XML_1_0 =>
               Enter_Start_Condition (Self, Tables.DOCUMENT_10);

            when XML_1_1 =>
               Enter_Start_Condition (Self, Tables.DOCUMENT_11);
         end case;

         return True;
      end if;
   end On_Close_Of_Document_Type_Declaration;

   -----------------------------------
   -- On_Close_Of_Empty_Element_Tag --
   -----------------------------------

   function On_Close_Of_Empty_Element_Tag
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      case Self.Version is
         when XML_1_0 =>
            Enter_Start_Condition (Self, Tables.DOCUMENT_10);

         when XML_1_1 =>
            if Is_Internal_General_Entity
                (Self.Entities, Self.Scanner_State.Entity)
            then
               --  Character references are resolved when replacement text of
               --  internal general entity is constructed. In XML 1.1 character
               --  references can refer to restricted characters which is not
               --  valid in text, but valid in replacement text.

               Enter_Start_Condition (Self, Tables.DOCUMENT_U11);

            else
               Enter_Start_Condition (Self, Tables.DOCUMENT_11);
            end if;
      end case;

      return Token_Empty_Close;
   end On_Close_Of_Empty_Element_Tag;

   ----------------------------------------
   -- On_Close_Of_Processing_Instruction --
   ----------------------------------------

   function On_Close_Of_Processing_Instruction
    (Self     : in out SAX_Simple_Reader'Class;
     Is_Empty : Boolean) return Token is
   begin
      if Is_Empty then
         Set_String_Internal
          (Item          => Self.YYLVal,
           String        => Matreshka.Internals.Strings.Shared_Empty'Access,
           Is_Whitespace => False);

      else
         if not Self.Whitespace_Matched then
            raise Program_Error
              with "no whitespace before processing instruction data";
            --  XXX This is recoverable error.
         end if;

         Set_String_Internal
          (Item          => Self.YYLVal,
           String        => YY_Text (Self, 0, 2),
           Is_Whitespace => False);
      end if;

      Pop_Start_Condition (Self);

      return Token_Pi_Close;
   end On_Close_Of_Processing_Instruction;

   ---------------------
   -- On_Close_Of_Tag --
   ---------------------

   function On_Close_Of_Tag
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      case Self.Version is
         when XML_1_0 =>
            Enter_Start_Condition (Self, Tables.DOCUMENT_10);

         when XML_1_1 =>
            if Is_Internal_General_Entity
                (Self.Entities, Self.Scanner_State.Entity)
            then
               --  Character references are resolved when replacement text of
               --  internal general entity is constructed. In XML 1.1 character
               --  references can refer to restricted characters which is not
               --  valid in text, but valid in replacement text.

               Enter_Start_Condition (Self, Tables.DOCUMENT_U11);

            else
               Enter_Start_Condition (Self, Tables.DOCUMENT_11);
            end if;
      end case;

      return Token_Close;
   end On_Close_Of_Tag;

   -----------------------------------------
   -- On_Close_Of_XML_Or_Text_Declaration --
   -----------------------------------------

   function On_Close_Of_XML_Or_Text_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      Set_String_Internal
       (Item          => Self.YYLVal,
        String        => Matreshka.Internals.Strings.Shared_Empty'Access,
        Is_Whitespace => False);

      if Self.Scanner_State.Entity /= No_Entity then
         --  End of text declaration of the external entity is reached,
         --  save current position to start from it next time entity is
         --  referenced.

         Set_First_Position
          (Self.Entities,
           Self.Scanner_State.Entity,
           Self.Scanner_State.YY_Current_Position);
      end if;

      Pop_Start_Condition (Self);

      return Token_Pi_Close;
   end On_Close_Of_XML_Or_Text_Declaration;

   -------------------------------------------------
   -- On_Close_Parenthesis_In_Content_Declaration --
   -------------------------------------------------

   function On_Close_Parenthesis_In_Content_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      --  Whitespace can't be present between close parenthesis and
      --  multiplicity indicator if any, so reset whitespace matching flag.

      Self.Whitespace_Matched := False;

      return Token_Close_Parenthesis;
   end On_Close_Parenthesis_In_Content_Declaration;

   ------------------------------------------------
   -- On_Close_Parenthesis_In_Notation_Attribute --
   ------------------------------------------------

   function On_Close_Parenthesis_In_Notation_Attribute
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      --  Resets whitespace matching flag.

      Self.Whitespace_Matched := False;

      return Token_Close_Parenthesis;
   end On_Close_Parenthesis_In_Notation_Attribute;

   --------------------------------------
   -- On_Conditional_Section_Directive --
   --------------------------------------

   procedure On_Conditional_Section_Directive
    (Self    : in out SAX_Simple_Reader'Class;
     Include : Boolean) is
   begin
      --  XXX Syntax check must be added!

      Self.Conditional_Directive := True;
      Self.Conditional_Depth := Self.Conditional_Depth + 1;

      if Self.Ignore_Depth /= 0 or not Include then
         Self.Ignore_Depth := Self.Ignore_Depth + 1;
      end if;
   end On_Conditional_Section_Directive;

   ----------------------------------------------
   -- On_Content_Of_Ignore_Conditional_Section --
   ----------------------------------------------

   procedure On_Content_Of_Ignore_Conditional_Section
    (Self : in out SAX_Simple_Reader'Class) is
   begin
      YY_Move_Backward (Self);
      YY_Move_Backward (Self);
      YY_Move_Backward (Self);
   end On_Content_Of_Ignore_Conditional_Section;

   ----------------------------
   -- On_Default_Declaration --
   ----------------------------

   function On_Default_Declaration
    (Self          : in out SAX_Simple_Reader'Class;
     State         : Interfaces.Unsigned_32;
     Default_Token : Token) return Token is
   begin
      --  Checks ithat whitespace before attribute type keyword is detected
      --  and report error when check fail.

      if not Self.Whitespace_Matched then
         --  XXX This is recoverable error.

         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("whitespace required before default declaration"));

         return Error;
      end if;

      Self.Whitespace_Matched := False;
      Enter_Start_Condition (Self, State);

      return Default_Token;
   end On_Default_Declaration;

   ---------------------------------------------------
   -- On_Element_Name_In_Attribute_List_Declaration --
   ---------------------------------------------------

   function On_Element_Name_In_Attribute_List_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      --  [XML [52]] AttlistDecl ::= '<!ATTLIST' S Name AttDef* S? '>'
      --
      --  Checks whitespace before the element name is present.

      if not Self.Whitespace_Matched then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[XML [52] AttlistDecl]"
               & " no whitespace before element's name"));

         return Error;
      end if;

      Self.Whitespace_Matched := False;

      Resolve_Symbol
       (Self, 0, 0, False, True, False, Qname_Error, Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         Enter_Start_Condition (Self, Tables.ATTLIST_DECL);

         return Token_Name;
      end if;
   end On_Element_Name_In_Attribute_List_Declaration;

   -------------------------
   -- On_Encoding_Keyword --
   -------------------------

   function On_Encoding_Keyword
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      if not Self.Whitespace_Matched then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("no whitespace before 'encoding'"));
         Self.Error_Reported := True;
         --  XXX This is recoverable error.

         return Error;

      else
         return Token_Encoding;
      end if;
   end On_Encoding_Keyword;

   -------------------------------------
   -- On_Entity_Value_Close_Delimiter --
   -------------------------------------

   function On_Entity_Value_Close_Delimiter
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      --  NOTE: Entity value delimiter can be ' or " and both are
      --  represented as single UTF-16 code unit, thus expensive UTF-16
      --  decoding can be avoided.

      Delimiter : constant Matreshka.Internals.Unicode.Code_Point
        := Code_Point
            (Self.Scanner_State.Data.Value
              (Self.Scanner_State.YY_Base_Position));

   begin
      if Self.Scanner_State.In_Literal
        or else Self.Scanner_State.Delimiter /= Delimiter
      then
         Set_String_Internal
          (Item          => Self.YYLVal,
           String        => YY_Text (Self),
           Is_Whitespace => False);

         return Token_String_Segment;

      else
         Enter_Start_Condition (Self, Tables.ENTITY_DEF);

         return Token_Value_Close;
      end if;
   end On_Entity_Value_Close_Delimiter;

   ------------------------------------
   -- On_Entity_Value_Open_Delimiter --
   ------------------------------------

   function On_Entity_Value_Open_Delimiter
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      --  NOTE: Entity value delimiter can be ' or " and both are
      --  represented as single UTF-16 code unit, thus expensive UTF-16
      --  decoding can be avoided.

      Self.Scanner_State.Delimiter :=
        Code_Point
         (Self.Scanner_State.Data.Value (Self.Scanner_State.YY_Base_Position));

      if not Self.Whitespace_Matched then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[[71] GEDecl, [72] PEDecl]"
               & " no whitespace before entity value"));

         return Error;
      end if;

      Self.Whitespace_Matched := False;

      case Self.Version is
         when XML_1_0 =>
            Enter_Start_Condition (Self, Tables.ENTITY_VALUE_10);

         when XML_1_1 =>
            Enter_Start_Condition (Self, Tables.ENTITY_VALUE_11);
      end case;

      return Token_Value_Open;
   end On_Entity_Value_Open_Delimiter;

   ----------------------------------------------------
   -- On_General_Entity_Reference_In_Attribute_Value --
   ----------------------------------------------------

   function On_General_Entity_Reference_In_Attribute_Value
    (Self : in out SAX_Simple_Reader'Class) return Boolean
   is
      Qualified_Name : Symbol_Identifier;
      Qname_Error    : Boolean;
      Entity         : Entity_Identifier;
      State          : Scanner_State_Information;

   begin
      Resolve_Symbol
       (Self, 1, 1, False, False, False, Qname_Error, Qualified_Name);

      if Qname_Error then
         return False;
      end if;

      Entity := General_Entity (Self.Symbols, Qualified_Name);

      --  [XML1.1 4.1 WFC: Entity Declared]
      --
      --  "In a document without any DTD, a document with only an internal
      --  DTD subset which contains no parameter entity references, or a
      --  document with "standalone='yes'", for an entity reference that
      --  does not occur within the external subset or a parameter entity,
      --  the Name given in the entity reference MUST match that in an
      --  entity declaration that does not occur within the external subset
      --  or a parameter entity, except that well-formed documents need not
      --  declare any of the following entities: amp, lt, gt, apos, quot.
      --  The declaration of a general entity MUST precede any reference
      --  to it which appears in a default value in an attribute-list
      --  declaration.
      --
      --  Note that non-validating processors are not obligated to to read
      --  and process entity declarations occurring in parameter entities
      --  or in the external subset; for such documents, the rule that an
      --  entity must be declared is a well-formedness constraint only if
      --  standalone='yes'."
      --
      --  Check whether entity is declared.
      --
      --  XXX This is probably too strong check, need to be arranged with
      --  standalone documents and validation.

      if Entity = No_Entity then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[XML1.1 4.1 WFC: Entity Declared]"
               & " general entity must be declared"));

         return False;

      elsif Enclosing_Entity (Self.Entities, Entity) = No_Entity then
         --  All predefined entities doesn't have enclosing entity.

         null;

      elsif Self.Is_Standalone
        and not Is_Parameter_Entity (Self.Entities, Self.Scanner_State.Entity)
        and not Is_External_Subset (Self.Entities, Self.Scanner_State.Entity)
        and not Is_Document_Entity
                 (Self.Entities, Enclosing_Entity (Self.Entities, Entity))
      then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[XML1.1 4.1 WFC: Entity Declared]"
               & " general entity must not be declared externally"));

         return False;
      end if;

      --  [XML1.1 4.1 WFC: Parsed Entity]
      --
      --  "An entity reference MUST NOT contain the name of an unparsed
      --  entity. Unparsed entities may be referred to only in attribute
      --  values declared to be of type ENTITY or ENTITIES."
      --
      --  Check whether referenced entity is not unparsed external general
      --  entity. XXX Attribute's value type must be checked also.

      if Is_External_Unparsed_General_Entity (Self.Entities, Entity) then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[XML1.1 4.1 WFC: Parsed Entity]"
               & " an entity reference must not contain the name of an"
               & " unparsed entity"));

         return False;
      end if;

      --  [XML1.1 3.1 WFC: No External Entity References]
      --
      --  "Attribute values MUST NOT contain direct or indirect entity
      --  references to external entities."
      --
      --  Check whether referenced entity is not parsed external general
      --  entity.

      if Is_External_Parsed_General_Entity (Self.Entities, Entity) then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[XML1.1 3.1 WFC: No External Entity References]"
               & " attribute value must not contain entity reference to"
               & " external entity"));

         return False;
      end if;

      --  [XML1.1 4.1 WFC: No Recursion]
      --
      --  "A parsed entity MUST NOT contain a recursive reference to itself,
      --  either directly or indirectly."
      --
      --  Check whether there is no replacement text of the same entity in the
      --  scanner stack.

      if Self.Scanner_State.Entity = Entity then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[XML1.1 4.1 WFC: No Recursion]"
               & " parsed entity must not containt a direct recursive"
               & " reference to itself"));

         return False;
      end if;

      for J in 1 .. Integer (Self.Scanner_Stack.Length) loop
         State := Self.Scanner_Stack.Element (J);

         if State.Entity = Entity then
            Callbacks.Call_Fatal_Error
             (Self,
              League.Strings.To_Universal_String
               ("[XML1.1 4.1 WFC: No Recursion]"
                  & " parsed entity must not containt a indirect recursive"
                  & " reference to itself"));

            return False;
         end if;
      end loop;

      return
        Push_Entity
         (Self             => Self,
          Entity           => Entity,
          In_Document_Type => False,
          In_Literal       => True);
   end On_General_Entity_Reference_In_Attribute_Value;

   -----------------------------------------------------
   -- On_General_Entity_Reference_In_Document_Content --
   -----------------------------------------------------

   function On_General_Entity_Reference_In_Document_Content
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      Qualified_Name : Symbol_Identifier;
      Qname_Error    : Boolean;
      Entity         : Entity_Identifier;
      State          : Scanner_State_Information;
      Deep           : Natural;

   begin
      Resolve_Symbol
       (Self, 1, 1, False, False, False, Qname_Error, Qualified_Name);

      if Qname_Error then
         return Error;
      end if;

      --  [1] document ::=
      --       ( prolog element Misc* ) - ( Char* RestrictedChar Char* )
      --
      --  [39] element ::= EmptyElemTag | STag content ETag
      --
      --  [43] content ::=
      --         CharData?
      --         ((element | Reference | CDSect | PI | Comment) CharData?)*
      --
      --  Check that entity is referenced inside element content.

      if Self.Element_Names.Is_Empty then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("entity reference must be in content of element"));

         return Error;
      end if;

      Entity := General_Entity (Self.Symbols, Qualified_Name);

      --  [XML1.1 4.1 WFC: Entity Declared]
      --
      --  "In a document without any DTD, a document with only an internal
      --  DTD subset which contains no parameter entity references, or a
      --  document with "standalone='yes'", for an entity reference that
      --  does not occur within the external subset or a parameter entity,
      --  the Name given in the entity reference MUST  match that in an
      --  entity declaration that does not occur within the external subset
      --  or a parameter entity, except that well-formed documents need not
      --  declare any of the following entities: amp, lt, gt, apos, quot.
      --  The declaration of a general entity MUST precede any reference
      --  to it which appears in a default value in an attribute-list
      --  declaration.
      --
      --  Note that non-validating processors are not obligated to to read
      --  and process entity declarations occurring in parameter entities
      --  or in the external subset; for such documents, the rule that an
      --  entity must be declared is a well-formedness constraint only if
      --  standalone='yes'."
      --
      --  Check whether entity is declared.
      --
      --  XXX This is probably too strong check, need to be arranged with
      --  standalone documents and validation.

      if Entity = No_Entity then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[XML1.1 4.1 WFC: Entity Declared]"
               & " general entity must be declared"));

         return Error;

      elsif Enclosing_Entity (Self.Entities, Entity) = No_Entity then
         --  All predefined entities doesn't have enclosing entity.

         null;

      elsif Self.Is_Standalone
        and not Is_Parameter_Entity (Self.Entities, Self.Scanner_State.Entity)
        and not Is_External_Subset (Self.Entities, Self.Scanner_State.Entity)
        and not Is_Document_Entity
                 (Self.Entities, Enclosing_Entity (Self.Entities, Entity))
      then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[XML1.1 4.1 WFC: Entity Declared]"
               & " general entity must not be declared externally"));

         return Error;
      end if;

      --  [XML1.1 4.1 WFC: Parsed Entity]
      --
      --  "An entity reference MUST NOT contain the name of an unparsed
      --  entity. Unparsed entities may be referred to only in attribute
      --  values declared to be of type ENTITY or ENTITIES."
      --
      --  Check whether referenced entity is not unparsed external general
      --  entity.

      if Is_External_Unparsed_General_Entity (Self.Entities, Entity) then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[XML1.1 4.1 WFC: Parsed Entity]"
               & " an entity reference must not contain the name of an"
               & " unparsed entity"));

         return Error;
      end if;

      --  [XML1.1 4.1 WFC: No Recursion]
      --
      --  "A parsed entity MUST NOT contain a recursive reference to itself,
      --  either directly or indirectly."
      --
      --  Check whether there is no replacement text of the same entity in the
      --  scanner stack.

      if Self.Scanner_State.Entity = Entity then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[XML1.1 4.1 WFC: No Recursion]"
               & " parsed entity must not containt a direct recursive"
               & " reference to itself"));

         return Error;
      end if;

      for J in 1 .. Integer (Self.Scanner_Stack.Length) loop
         State := Self.Scanner_Stack.Element (J);

         if State.Entity = Entity then
            Callbacks.Call_Fatal_Error
             (Self,
              League.Strings.To_Universal_String
               ("[XML1.1 4.1 WFC: No Recursion]"
                  & " parsed entity must not containt a indirect recursive"
                  & " reference to itself"));

            return Error;
         end if;
      end loop;

      Deep := Integer (Self.Scanner_Stack.Length);

      if not Push_Entity
              (Self             => Self,
               Entity           => Entity,
               In_Document_Type => False,
               In_Literal       => False)
      then
         return Error;

      elsif Deep = Integer (Self.Scanner_Stack.Length) then
         --  Entity doesn't pushed in stack because its replacement text
         --  is empty.

         return End_Of_Input;

      else
         Self.Scanner_State.Start_Issued := True;

         return Token_Entity_Start;
      end if;
   end On_General_Entity_Reference_In_Document_Content;

   -------------------------------------------------
   -- On_General_Entity_Reference_In_Entity_Value --
   -------------------------------------------------

   function On_General_Entity_Reference_In_Entity_Value
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      Qualified_Name : Symbol_Identifier;
      Qname_Error    : Boolean;

   begin
      Resolve_Symbol
       (Self, 1, 1, False, False, False, Qname_Error, Qualified_Name);

      if Qname_Error then
         return Error;

      else
         Set_String_Internal
          (Item          => Self.YYLVal,
           String        => YY_Text (Self),
           Is_Whitespace => False);

         return Token_String_Segment;
      end if;
   end On_General_Entity_Reference_In_Entity_Value;

   ------------------------------------------
   -- On_Less_Than_Sign_In_Attribute_Value --
   ------------------------------------------

   function On_Less_Than_Sign_In_Attribute_Value
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      --  [3.1 WFC: No < in Attribute Values]
      --
      --  "The replacement text of any entity referred to directly or
      --  indirectly in an attribute value MUST NOT contain a <."

      Callbacks.Call_Fatal_Error
       (Self,
        League.Strings.To_Universal_String
         ("[3.1 WFC: No < in Attribute Values]"
            & " '<' can't be used in attribute value"));
      Self.Error_Reported := True;

      return Error;
   end On_Less_Than_Sign_In_Attribute_Value;

   ----------------------------------------------------
   -- On_Name_In_Attribute_List_Declaration_Notation --
   ----------------------------------------------------

   function On_Name_In_Attribute_List_Declaration_Notation
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      --  [XMLNS 7]
      --
      --  "It follows that in a namespace-well-formed document:
      --
      --    - All element and attribute names contain either zero or one colon;
      --
      --    - No entity names, processing instruction targets, or notation
      --      names contain any colons."
      --
      --  This code is used to handle names in both NOTATION and enumeration
      --  attribute declarations, thus it must distinguish colon handling.

      Resolve_Symbol
       (Self,
        0,
        0,
        False,
        True,
        not Self.Notation_Attribute,
        Qname_Error,
        Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         return Token_Name;
      end if;
   end On_Name_In_Attribute_List_Declaration_Notation;

   ------------------------------------
   -- On_Name_In_Element_Declaration --
   ------------------------------------

   function On_Name_In_Element_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      --  Production [45] requires whitespace after name and before content
      --  specification, so whitespace indicator is reset here.

      Self.Whitespace_Matched := False;

      Resolve_Symbol
       (Self, 0, 0, False, True, False, Qname_Error, Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         Enter_Start_Condition (Self, Tables.ELEMENT_DECL);

         return Token_Name;
      end if;
   end On_Name_In_Element_Declaration;

   ---------------------------------------------
   -- On_Name_In_Element_Declaration_Children --
   ---------------------------------------------

   function On_Name_In_Element_Declaration_Children
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      --  Production [48] checks that no whitespace separates Name from
      --  following multiplicity indicator, so whitespace indicator must be
      --  reset here.

      Self.Whitespace_Matched := False;

      Resolve_Symbol
       (Self, 0, 0, False, True, False, Qname_Error, Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         return Token_Name;
      end if;
   end On_Name_In_Element_Declaration_Children;

   ----------------------------------
   -- On_Name_In_Element_Start_Tag --
   ----------------------------------

   function On_Name_In_Element_Start_Tag
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      if not Self.Whitespace_Matched then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("whitespace is missing before attribute name"));
         --  XXX It is recoverable error.

         return Error;
      end if;

      Resolve_Symbol
       (Self, 0, 0, False, True, False, Qname_Error, Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         return Token_Name;
      end if;
   end On_Name_In_Element_Start_Tag;

   -----------------------------------
   -- On_Name_In_Entity_Declaration --
   -----------------------------------

   function On_Name_In_Entity_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      --  [XML1.1 4.2]
      --
      --  [71] GEDecl ::= '<!ENTITY' S Name S EntityDef S? '>'
      --  [72] PEDecl ::= '<!ENTITY' S '%' S Name S PEDef S? '>'
      --
      --  Check whether whitespace is present before the name.

      if not Self.Whitespace_Matched then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[XML1.1 4.2 productions [71], [72]]"
               & " whitespace must be present before the name"));
         --  XXX This is recoverable error.

         return Error;
      end if;

      Resolve_Symbol
       (Self, 0, 0, False, False, False, Qname_Error, Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         Self.Whitespace_Matched := False;
         Enter_Start_Condition (Self, Tables.ENTITY_DEF);

         return Token_Name;
      end if;
   end On_Name_In_Entity_Declaration;

   --------------------------------------------
   -- On_Name_In_Entity_Declaration_Notation --
   --------------------------------------------

   function On_Name_In_Entity_Declaration_Notation
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      --  [XML1.1 4.2.2]
      --
      --  [76] NDataDecl ::= S 'NDATA' S Name
      --
      --  Check whether whitespace is present before the name.

      if not Self.Whitespace_Matched then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[XML1.1 4.2 production [76]]"
               & " whitespace must be present before the name of notation"));
         --  XXX This is recoverable error.

         return Error;
      end if;

      Resolve_Symbol
       (Self, 0, 0, False, False, False, Qname_Error, Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         Enter_Start_Condition (Self, Tables.ENTITY_DEF);

         return Token_Name;
      end if;
   end On_Name_In_Entity_Declaration_Notation;

   --------------
   -- On_NDATA --
   --------------

   function On_NDATA (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      if not Self.Whitespace_Matched then
         --  XXX This is recoverable error.

         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("whitespace required before NDATA"));
         Self.Error_Reported := True;

         return Error;

      else
         Self.Whitespace_Matched := False;
         Enter_Start_Condition (Self, Tables.ENTITY_NDATA);

         return Token_Ndata;
      end if;
   end On_NDATA;

   ---------------------------
   -- On_No_XML_Declaration --
   ---------------------------

   procedure On_No_XML_Declaration (Self : in out SAX_Simple_Reader'Class) is
   begin
      --  Move scanner's position back to the start of the document or external
      --  parsed entity. Entity's XML version and encoding are set up
      --  automatically.

      YY_Move_Backward (Self);
      Pop_Start_Condition (Self);
   end On_No_XML_Declaration;

   -------------------------------------------
   -- On_Open_Of_Attribute_List_Declaration --
   -------------------------------------------

   function On_Open_Of_Attribute_List_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      Enter_Start_Condition (Self, Tables.ATTLIST_NAME);
      Self.Whitespace_Matched := False;

      return Token_Attlist_Decl_Open;
   end On_Open_Of_Attribute_List_Declaration;

   ----------------------
   -- On_Open_Of_CDATA --
   ----------------------

   function On_Open_Of_CDATA
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      Condition : Interfaces.Unsigned_32;

   begin
      case Start_Condition (Self) is
         when Tables.DOCUMENT_10 =>
            Condition := Tables.CDATA_10;

         when Tables.DOCUMENT_11 =>
            Condition := Tables.CDATA_11;

         when Tables.DOCUMENT_U11 =>
            Condition := Tables.CDATA_U11;

         when others =>
            raise Program_Error;
      end case;

      Push_Current_And_Enter_Start_Condition (Self, Condition);

      return Token_CData_Open;
   end On_Open_Of_CDATA;

   ------------------------------------
   -- On_Open_Of_Conditional_Section --
   ------------------------------------

   function On_Open_Of_Conditional_Section
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      --  [XML [28b], [31]] Conditional section can be present only in external
      --  subset of DTD.

      if Is_Document_Entity (Self.Entities, Self.Scanner_State.Entity) then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[XML [28b], [31]]"
               & " conditional sections may only appear in the external"
               & " DTD subset"));

         return Error;
      end if;

      if Self.Ignore_Depth = 0 then
         Enter_Start_Condition (Self, Tables.CONDITIONAL_DIRECTIVE);
         Self.Conditional_Directive := False;

      else
         Self.Conditional_Depth := Self.Conditional_Depth + 1;
         Self.Ignore_Depth := Self.Ignore_Depth + 1;
         Self.Conditional_Directive := True;
      end if;

      return Token_Conditional_Open;
   end On_Open_Of_Conditional_Section;

   --------------------------------------------
   -- On_Open_Of_Conditional_Section_Content --
   --------------------------------------------

   function  On_Open_Of_Conditional_Section_Content
    (Self : in out SAX_Simple_Reader'Class) return Boolean is
   begin
      --  XXX Syntax rules must be checked!

      if not Self.Conditional_Directive then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("conditional directive is missing"));

         return False;
      end if;

      if Self.Ignore_Depth /= 0 then
         case Self.Version is
            when XML_1_0 =>
               Enter_Start_Condition (Self, Tables.CONDITIONAL_IGNORE_10);

            when XML_1_1 =>
               Enter_Start_Condition (Self, Tables.CONDITIONAL_IGNORE_11);
         end case;

      else
         case Self.Version is
            when XML_1_0 =>
               Enter_Start_Condition (Self, Tables.DOCTYPE_INTSUBSET_10);

            when XML_1_1 =>
               Enter_Start_Condition (Self, Tables.DOCTYPE_INTSUBSET_11);
         end case;
      end if;

      return True;
   end On_Open_Of_Conditional_Section_Content;

   ------------------------------------------
   -- On_Open_Of_Document_Type_Declaration --
   ------------------------------------------

   function On_Open_Of_Document_Type_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      Resolve_Symbol
       (Self, 10, 0, True, True, False, Qname_Error, Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         Enter_Start_Condition (Self, Tables.DOCTYPE_EXTINT);

         return Token_Doctype_Decl_Open;
      end if;
   end On_Open_Of_Document_Type_Declaration;

   ------------------------------------
   -- On_Open_Of_Element_Declaration --
   ------------------------------------

   function On_Open_Of_Element_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      Enter_Start_Condition (Self, Tables.ELEMENT_NAME);

      return Token_Element_Decl_Open;
   end On_Open_Of_Element_Declaration;

   ------------------------
   -- On_Open_Of_End_Tag --
   ------------------------

   function On_Open_Of_End_Tag
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      Resolve_Symbol
       (Self, 2, 0, False, True, False, Qname_Error, Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         Enter_Start_Condition (Self, Tables.ELEMENT_START);

         return Token_End_Open;
      end if;
   end On_Open_Of_End_Tag;

   --------------------------------
   -- On_Open_Of_Internal_Subset --
   --------------------------------

   function On_Open_Of_Internal_Subset
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      case Self.Version is
         when XML_1_0 =>
            Enter_Start_Condition (Self, Tables.DOCTYPE_INTSUBSET_10);

         when XML_1_1 =>
            Enter_Start_Condition (Self, Tables.DOCTYPE_INTSUBSET_11);
      end case;

      return Token_Internal_Subset_Open;
   end On_Open_Of_Internal_Subset;

   -------------------------------------
   -- On_Open_Of_Notation_Declaration --
   -------------------------------------

   function On_Open_Of_Notation_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      Resolve_Symbol
       (Self, 10, 0, True, False, False, Qname_Error, Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         Push_Current_And_Enter_Start_Condition (Self, Tables.NOTATION_DECL);

         return Token_Notation_Decl_Open;
      end if;
   end On_Open_Of_Notation_Declaration;

   ---------------------------------------
   -- On_Open_Of_Processing_Instruction --
   ---------------------------------------

   function On_Open_Of_Processing_Instruction
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      Resolve_Symbol
       (Self, 2, 0, False, False, False, Qname_Error, Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         Push_And_Enter_Start_Condition
          (Self, Start_Condition (Self), Tables.PI);
         Reset_Whitespace_Matched (Self);

         return Token_Pi_Open;
      end if;
   end On_Open_Of_Processing_Instruction;

   --------------------------
   -- On_Open_Of_Start_Tag --
   --------------------------

   function On_Open_Of_Start_Tag
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      Resolve_Symbol
       (Self, 1, 0, False, True, False, Qname_Error, Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         Enter_Start_Condition (Self, Tables.ELEMENT_START);

         return Token_Element_Open;
      end if;
   end On_Open_Of_Start_Tag;

   ----------------------------------------
   -- On_Open_Of_XML_Or_Text_Declaration --
   ----------------------------------------

   function On_Open_Of_XML_Or_Text_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      Self.Whitespace_Matched := False;

      Push_And_Enter_Start_Condition
       (Self, Start_Condition (Self), Tables.XML_DECL);

      return Token_Xml_Decl_Open;
   end On_Open_Of_XML_Or_Text_Declaration;

   ------------------------------------------------
   -- On_Open_Parenthesis_In_Content_Declaration --
   ------------------------------------------------

   function On_Open_Parenthesis_In_Content_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      use type Interfaces.Unsigned_32;

   begin
      if Start_Condition (Self) = Tables.ELEMENT_DECL then
         --  Check whitespace from rule [45] elementdecl. This subprogram
         --  changes scanner's start condition, so handing of nested
         --  declarations skip check below.

         if not Self.Whitespace_Matched then
            Callbacks.Call_Fatal_Error
             (Self,
              League.Strings.To_Universal_String
               ("[XML [45]] no whitespace after name"));

            return Error;
         end if;

         Enter_Start_Condition (Self, Tables.ELEMENT_CHILDREN);
      end if;

      return Token_Open_Parenthesis;
   end On_Open_Parenthesis_In_Content_Declaration;

   -----------------------------------------------
   -- On_Open_Parenthesis_In_Notation_Attribute --
   -----------------------------------------------

   function On_Open_Parenthesis_In_Notation_Attribute
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      --  Checks ithat whitespace before open parenthesis is detected
      --  and report error when check fail.

      if not Self.Whitespace_Matched then
         --  XXX This is recoverable error.

         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("whitespace required before open parenthesis"));

         return Error;
      end if;

      return Token_Open_Parenthesis;
   end On_Open_Parenthesis_In_Notation_Attribute;

   -----------------------------------------------------------
   -- On_Parameter_Entity_Reference_In_Document_Declaration --
   -----------------------------------------------------------

   function On_Parameter_Entity_Reference_In_Document_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      Qualified_Name : Symbol_Identifier;
      Qname_Error    : Boolean;
      Entity         : Entity_Identifier;
      Deep           : Natural;

   begin
      Resolve_Symbol
       (Self, 1, 1, False, False, False, Qname_Error, Qualified_Name);

      if Qname_Error then
         return Error;

      end if;

      Entity := Parameter_Entity (Self.Symbols, Qualified_Name);

      if Entity = No_Entity then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("parameter entity must be declared"));

         return Error;
      end if;

      Deep := Integer (Self.Scanner_Stack.Length);

      if not Push_Entity
              (Self             => Self,
               Entity           => Entity,
               In_Document_Type => False,
               In_Literal       => False)
      then
         return Error;

      elsif Deep = Integer (Self.Scanner_Stack.Length) then
         --  Entity doesn't pushed in stack because its replacement text
         --  is empty.

         return End_Of_Input;

      else
         Self.Scanner_State.Start_Issued := True;

         return Token_Entity_Start;
      end if;
   end On_Parameter_Entity_Reference_In_Document_Declaration;

   ---------------------------------------------------
   -- On_Parameter_Entity_Reference_In_Entity_Value --
   ---------------------------------------------------

   function On_Parameter_Entity_Reference_In_Entity_Value
    (Self : in out SAX_Simple_Reader'Class) return Boolean
   is
      Qualified_Name : Symbol_Identifier;
      Qname_Error    : Boolean;
      Entity         : Entity_Identifier;

   begin
      Resolve_Symbol
       (Self, 1, 1, False, False, False, Qname_Error, Qualified_Name);

      if Qname_Error then
         return False;

      else
         Entity := Parameter_Entity (Self.Symbols, Qualified_Name);

         --  XML WFC: PEs in Internal Subset
         --
         --  "In the internal DTD subset, parameter-entity references MUST NOT
         --  occur within markup declarations; they may occur where markup
         --  declarations can occur. (This does not apply to references that
         --  occur in external parameter entities or to the external subset.)"
         --
         --  Check whether parameter entity reference doesn't occure in the
         --  entity value of the entity declared in internal subset.

         if Is_Document_Entity (Self.Entities, Self.Scanner_State.Entity) then
            Callbacks.Call_Fatal_Error
             (Self,
              League.Strings.To_Universal_String
               ("[XML 2.8 WFC: PEs in Internal Subset]"
                  & " parameter-entity reference in internal subset must not"
                  & " occur within markup declaration"));

            return False;
         end if;

         --  XML VC: Entity Declared
         --
         --  "In a document with an external subset or parameter entity
         --  references with "standalone='no'", the Name given in the entity
         --  reference MUST match that in an entity declaration. For
         --  interoperability, valid documents SHOULD declare the entities amp,
         --  lt, gt, apos, quot, in the form specified in 4.6 Predefined
         --  Entities. The declaration of a parameter entity MUST precede any
         --  reference to it. Similarly, the declaration of a general entity
         --  MUST precede any attribute-list declaration containing a default
         --  value with a direct or indirect reference to that general entity."
         --
         --  XXX Parameter entity must not be declared at the point of
         --  reference, except in some conditions in validating mode; so,
         --  check below must be improved, as well as behavior in
         --  non-validating mode must be checked.

         if Entity = No_Entity then
            Callbacks.Call_Fatal_Error
             (Self,
              League.Strings.To_Universal_String
               ("parameter entity must be declared"));

            return False;
         end if;

         return
           Push_Entity
            (Self             => Self,
             Entity           => Entity,
             In_Document_Type => False,
             In_Literal       => True);
      end if;
   end On_Parameter_Entity_Reference_In_Entity_Value;

   ---------------------------------------------------------
   -- On_Parameter_Entity_Reference_In_Markup_Declaration --
   ---------------------------------------------------------

   function On_Parameter_Entity_Reference_In_Markup_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Boolean
   is
      Qualified_Name : Symbol_Identifier;
      Qname_Error    : Boolean;
      Entity         : Entity_Identifier;

   begin
      Resolve_Symbol
       (Self, 1, 1, False, False, False, Qname_Error, Qualified_Name);

      if Qname_Error then
         return False;

      else
         --  [XML 2.8] WFC: PEs in Internal Subset
         --
         --  "In the internal DTD subset, parameter-entity references MUST NOT
         --  occur within markup declarations; they may occur where markup
         --  declarations can occur. (This does not apply to references that
         --  occur in external parameter entities or to the external subset.)"
         --
         --  Check whether external subset is processed.

         if not Self.External_Subset_Done then
            Callbacks.Call_Fatal_Error
             (Self,
              League.Strings.To_Universal_String
               ("[XML 2.8 WFC: PEs in Internal Subset]"
                  & " parameter-entity reference in internal subset must not"
                  & " occur within markup declaration"));

            return False;
         end if;

         Entity := Parameter_Entity (Self.Symbols, Qualified_Name);

         if Entity = No_Entity then
            Callbacks.Call_Fatal_Error
             (Self,
              League.Strings.To_Universal_String
               ("parameter entity must be declared"));

            return False;
         end if;

         return
           Push_Entity
            (Self             => Self,
             Entity           => Entity,
             In_Document_Type => False,
             In_Literal       => True);
      end if;
   end On_Parameter_Entity_Reference_In_Markup_Declaration;

   ---------------------
   -- On_Percent_Sign --
   ---------------------

   function On_Percent_Sign
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      if not Self.Whitespace_Matched then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("no whitespace before percent"));
         Self.Error_Reported := True;
         --  XXX This is recoverable error.

         return Error;

      else
         Self.Whitespace_Matched := False;

         return Token_Percent;
      end if;
   end On_Percent_Sign;

   ------------------------------------
   -- On_Plus_In_Content_Declaration --
   ------------------------------------

   function On_Plus_In_Content_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      if Self.Whitespace_Matched then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[XML [47], [48]] illegal whitespace before plus"));

         return Error;

      else
         return Token_Plus;
      end if;
   end On_Plus_In_Content_Declaration;

   -----------------------
   -- On_Public_Literal --
   -----------------------

   function On_Public_Literal
    (Self : in out SAX_Simple_Reader'Class) return Token
   is
      Next         : Utf16_String_Index
        := Self.Scanner_State.YY_Base_Position + 1;
      --  Skip literal open delimiter.
      Code         : Code_Point;
      Space_Before : Boolean := True;

   begin
      if not Self.Whitespace_Matched then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[[75] ExternalID, [83] PublicID]"
               & " whitespace is required before pubid literal"));

         return Error;
      end if;

      Self.Whitespace_Matched := False;
      Enter_Start_Condition (Self, Tables.EXTERNAL_ID_SYS);

      --  [XML 4.2.2] External Entities
      --
      --  "[Definition: In addition to a system identifier, an external
      --  identifier may include a public identifier.] An XML processor
      --  attempting to retrieve the entity's content may use any combination
      --  of the public and system identifiers as well as additional
      --  information outside the scope of this specification to try to
      --  generate an alternative URI reference. If the processor is unable to
      --  do so, it MUST use the URI reference specified in the system literal.
      --  Before a match is attempted, all strings of white space in the public
      --  identifier MUST be normalized to single space characters (#x20), and
      --  leading and trailing white space MUST be removed."
      --
      --  Normalize public identifier.

      Matreshka.Internals.Strings.Operations.Reset (Self.Character_Data);

      while Next /= Self.Scanner_State.YY_Current_Position - 1 loop
         --  Exclude literal close delimiter.

         Unchecked_Next (Self.Scanner_State.Data.Value, Next, Code);

         --  It can be reasonable to implement this step of normalization on
         --  SIMD.

         if Code = Character_Tabulation
           or Code = Line_Feed
           or Code = Carriage_Return
         then
            Code := Space;
         end if;

         if Code = Space then
            if not Space_Before then
               Matreshka.Internals.Strings.Operations.Unterminated_Append
                (Self.Character_Data, Code);
               Space_Before := True;
            end if;

         else
            Matreshka.Internals.Strings.Operations.Unterminated_Append
             (Self.Character_Data, Code);
            Space_Before := False;
         end if;
      end loop;

      if Space_Before and Self.Character_Data.Unused /= 0 then
         --  Remove traling space.

         Self.Character_Data.Length := Self.Character_Data.Length - 1;
         Self.Character_Data.Unused := Self.Character_Data.Unused - 1;
      end if;

      String_Handler.Fill_Null_Terminator (Self.Character_Data);
      Matreshka.Internals.Strings.Reference (Self.Character_Data);
      Set_String_Internal
       (Item          => Self.YYLVal,
        String        => Self.Character_Data,
        Is_Whitespace => False);

      return Token_Public_Literal;
   end On_Public_Literal;

   ---------------------------------------------
   -- On_Question_Mark_In_Content_Declaration --
   ---------------------------------------------

   function On_Question_Mark_In_Content_Declaration
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      if Self.Whitespace_Matched then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[XML [47], [48]] illegal whitespace before question mark"));

         return Error;

      else
         return Token_Question;
      end if;
   end On_Question_Mark_In_Content_Declaration;

   ---------------------------
   -- On_Standalone_Keyword --
   ---------------------------

   function On_Standalone_Keyword
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      if not Self.Whitespace_Matched then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("no whitespace before 'standalone'"));
         Self.Error_Reported := True;
         --  XXX This is recoverable error.

         return Error;

      else
         return Token_Standalone;
      end if;
   end On_Standalone_Keyword;

   ----------------------------------------
   -- On_System_Keyword_In_Document_Type --
   ----------------------------------------

   function On_System_Keyword_In_Document_Type
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      Reset_Whitespace_Matched (Self);
      Push_And_Enter_Start_Condition
       (Self, Tables.DOCTYPE_INT, Tables.EXTERNAL_ID_SYS);

      return Token_System;
   end On_System_Keyword_In_Document_Type;

   ---------------------------------------------
   -- On_System_Keyword_In_Entity_Or_Notation --
   ---------------------------------------------

   function On_System_Keyword_In_Entity_Or_Notation
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      Reset_Whitespace_Matched (Self);
      Push_Current_And_Enter_Start_Condition (Self, Tables.EXTERNAL_ID_SYS);

      return Token_System;
   end On_System_Keyword_In_Entity_Or_Notation;

   -----------------------
   -- On_System_Literal --
   -----------------------

   function On_System_Literal
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      if not Self.Whitespace_Matched then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[[75] ExternalID]"
               & " whitespace is required before system literal"));

         return Error;
      end if;

      Self.Whitespace_Matched := False;
      Pop_Start_Condition (Self);
      Set_String_Internal
       (Item          => Self.YYLVal,
        String        => YY_Text (Self, 1, 1),
        Is_Whitespace => False);

      return Token_System_Literal;
   end On_System_Literal;

   -----------------------------
   -- On_Unexpected_Character --
   -----------------------------

   function On_Unexpected_Character
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      Callbacks.Call_Fatal_Error
       (Self,
        League.Strings.To_Universal_String ("unexpected character"));
      Self.Error_Reported := True;

      return Error;
   end On_Unexpected_Character;

   ------------------------
   -- On_Version_Keyword --
   ------------------------

   function On_Version_Keyword
    (Self : in out SAX_Simple_Reader'Class) return Token is
   begin
      if not Self.Whitespace_Matched then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("no whitespace before 'version'"));
         Self.Error_Reported := True;
         --  XXX This is recoverable error.

         return Error;

      else
         return Token_Version;
      end if;
   end On_Version_Keyword;

   -------------------------------
   -- On_Whitespace_In_Document --
   -------------------------------

   function On_Whitespace_In_Document
    (Self : in out SAX_Simple_Reader'Class) return Boolean
   is
      C : constant Code_Point
        := Code_Point
            (Self.Scanner_State.Data.Value
              (Self.Scanner_State.YY_Current_Position - 1));

   begin
      if C = Less_Than_Sign or C = Ampersand then
         --  Move back when trailing context is available.

         YY_Move_Backward (Self);
      end if;

      if Self.Element_Names.Is_Empty then
         --  Document content not entered.

         return False;

      else
         Matreshka.Internals.Strings.Operations.Copy_Slice
          (Self.Character_Data,
           Self.Scanner_State.Data,
           Self.Scanner_State.YY_Base_Position,
           Self.Scanner_State.YY_Current_Position
             - Self.Scanner_State.YY_Base_Position,
           Self.Scanner_State.YY_Current_Index
             - Self.Scanner_State.YY_Base_Index);

         Matreshka.Internals.Strings.Reference (Self.Character_Data);
         Set_String_Internal
          (Item          => Self.YYLVal,
           String        => Self.Character_Data,
           Is_Whitespace => True);

         return True;
      end if;
   end On_Whitespace_In_Document;

   ---------------------------------------------
   -- On_Whitespace_In_Processing_Instruction --
   ---------------------------------------------

   procedure On_Whitespace_In_Processing_Instruction
    (Self : in out SAX_Simple_Reader'Class) is
   begin
      --  Whitespace between processing instruction's target and data are
      --  required, so set flag which indicates their presence.

      Self.Whitespace_Matched := True;

      case Self.Version is
         when XML_1_0 =>
            Enter_Start_Condition (Self, Tables.PI_DATA_10);

         when XML_1_1 =>
            Enter_Start_Condition (Self, Tables.PI_DATA_11);
      end case;
   end On_Whitespace_In_Processing_Instruction;

   --------------------
   -- Resolve_Symbol --
   --------------------

   procedure Resolve_Symbol
    (Self            : in out SAX_Simple_Reader'Class;
     Trim_Left       : Natural;
     Trim_Right      : Natural;
     Trim_Whitespace : Boolean;
     Can_Be_Qname    : Boolean;
     Not_Qname       : Boolean;
     Error           : out Boolean;
     Symbol          : out Matreshka.Internals.XML.Symbol_Identifier)
   is
      --  Trailing and leading character as well as whitespace characters
      --  belongs to BMP and don't require expensive UTF-16 decoding.

      FP : Utf16_String_Index
        := Self.Scanner_State.YY_Base_Position
             + Utf16_String_Index (Trim_Left);
      FI : Positive
        := Self.Scanner_State.YY_Base_Index + Trim_Left;
      LP : constant Utf16_String_Index
        := Self.Scanner_State.YY_Current_Position
             - Utf16_String_Index (Trim_Right);
      LI : constant Positive
        := Self.Scanner_State.YY_Current_Index - Trim_Right;
      C  : Code_Point;
      E  : Matreshka.Internals.XML.Symbol_Tables.Qualified_Name_Errors;

   begin
      if Trim_Whitespace then
         loop
            C := Code_Point (Self.Scanner_State.Data.Value (FP));

            exit when
              C /= Space
                and then C /= Character_Tabulation
                and then C /= Carriage_Return
                and then C /= Line_Feed;

            FP := FP + 1;
            FI := FI + 1;
         end loop;
      end if;

      Matreshka.Internals.XML.Symbol_Tables.Insert
       (Self.Symbols,
        Self.Scanner_State.Data,
        FP,
        LP - FP,
        LI - FI,
        Self.Namespaces.Enabled,
        E,
        Symbol);

      Error := False;

      if Self.Namespaces.Enabled and not Not_Qname then
         case E is
            when Valid =>
               if not Can_Be_Qname
                 and Local_Name (Self.Symbols, Symbol) /= Symbol
               then
                  Error := True;
                  Symbol := No_Symbol;
                  Callbacks.Call_Fatal_Error
                   (Self,
                    League.Strings.To_Universal_String
                     ("[NSXML1.1] qualified name must not be used here"));
               end if;

            when Colon_At_Start =>
               Error := True;
               Symbol := No_Symbol;
               Callbacks.Call_Fatal_Error
                (Self,
                 League.Strings.To_Universal_String
                  ("[NSXML1.1]"
                     & " qualified name must not start with colon character"));

            when Colon_At_End =>
               Error := True;
               Symbol := No_Symbol;
               Callbacks.Call_Fatal_Error
                (Self,
                 League.Strings.To_Universal_String
                  ("[NSXML1.1]"
                     & " qualified name must not end with colon character"));

            when Multiple_Colons =>
               Error := True;
               Symbol := No_Symbol;
               Callbacks.Call_Fatal_Error
                (Self,
                 League.Strings.To_Universal_String
                  ("[NSXML1.1]"
                     & " qualified name must not contain more than one colon"
                     & " character"));

            when First_Character_Is_Not_NS_Name_Start_Char =>
               Error := True;
               Symbol := No_Symbol;
               Callbacks.Call_Fatal_Error
                (Self,
                 League.Strings.To_Universal_String
                  ("[NSXML1.1] first character of local name is invalid"));
         end case;
      end if;
   end Resolve_Symbol;

end XML.SAX.Simple_Readers.Scanner.Actions;
