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
with Matreshka.SAX.Simple_Readers.Handler_Callbacks;
with Matreshka.SAX.Simple_Readers.Scanner.Tables;

package body Matreshka.SAX.Simple_Readers.Scanner.Actions is

   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;

   Less_Than_Sign       : constant := 16#003C#;
   Greater_Than_Sign    : constant := 16#003E#;
   Right_Square_Bracket : constant := 16#005D#;
   Ampersand            : constant := 16#0026#;

   -----------------------
   -- On_Character_Data --
   -----------------------

   function On_Character_Data
    (Self : not null access SAX_Simple_Reader'Class) return Token
   is
      C : constant Code_Point
        := Code_Point
            (Self.Scanner_State.Data.Value
              (Self.Scanner_State.YY_Current_Position - 1));

   begin
      if Self.Element_Names.Is_Empty then
         --  Document content not entered.

         Matreshka.SAX.Simple_Readers.Handler_Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("Text may not appear after the root element"));
         Self.Error_Reported := True;
         Self.Continue := False;

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

         Matreshka.SAX.Simple_Readers.Handler_Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[[14] CharData] Text may not contain a literal ']]>' sequence"));
         Self.Error_Reported := True;
         Self.Continue := False;

         return Error;
      end if;

      Set_String_Internal
       (Item          => Self.YYLVal,
        String        => YY_Text (Self),
        Is_Whitespace => False,
        Is_CData      => False);

      return Token_String_Segment;
   end On_Character_Data;

   -----------------------------
   -- On_Close_Of_Declaration --
   -----------------------------

   function On_Close_Of_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token is
   begin
      case Self.Version is
         when XML_1_0 =>
            Enter_Start_Condition (Self, Tables.DOCTYPE_INTSUBSET_10);

         when XML_1_1 =>
            Enter_Start_Condition (Self, Tables.DOCTYPE_INTSUBSET_11);
      end case;

      return Token_Close;
   end On_Close_Of_Declaration;

   -----------------------------------
   -- On_Close_Of_Empty_Element_Tag --
   -----------------------------------

   function On_Close_Of_Empty_Element_Tag
    (Self : not null access SAX_Simple_Reader'Class) return Token is
   begin
      case Self.Version is
         when XML_1_0 =>
            Enter_Start_Condition (Self, Tables.DOCUMENT_10);

         when XML_1_1 =>
            Enter_Start_Condition (Self, Tables.DOCUMENT_11);
      end case;

      return Token_Empty_Close;
   end On_Close_Of_Empty_Element_Tag;

   ----------------------------------------
   -- On_Close_Of_Processing_Instruction --
   ----------------------------------------

   function On_Close_Of_Processing_Instruction
    (Self     : not null access SAX_Simple_Reader'Class;
     Is_Empty : Boolean) return Token is
   begin
      if Is_Empty then
         Set_String_Internal
          (Item          => Self.YYLVal,
           String        => Matreshka.Internals.Strings.Shared_Empty'Access,
           Is_Whitespace => False,
           Is_CData      => False);

      else
         if not Self.Whitespace_Matched then
            raise Program_Error
              with "no whitespace before processing instruction data";
            --  XXX This is recoverable error.
         end if;

         Set_String_Internal
          (Item          => Self.YYLVal,
           String        => YY_Text (Self, 0, 2),
           Is_Whitespace => False,
           Is_CData      => False);
      end if;

      case Self.Version is
         when XML_1_0 =>
            Enter_Start_Condition (Self, Tables.DOCUMENT_10);

         when XML_1_1 =>
            Enter_Start_Condition (Self, Tables.DOCUMENT_11);
      end case;

      return Token_PI_Close;
   end On_Close_Of_Processing_Instruction;

   ---------------------
   -- On_Close_Of_Tag --
   ---------------------

   function On_Close_Of_Tag
    (Self : not null access SAX_Simple_Reader'Class) return Token is
   begin
      case Self.Version is
         when XML_1_0 =>
            Enter_Start_Condition (Self, Tables.DOCUMENT_10);

         when XML_1_1 =>
            Enter_Start_Condition (Self, Tables.DOCUMENT_11);
      end case;

      return Token_Close;
   end On_Close_Of_Tag;

   ------------------------------------------
   -- On_Less_Than_Sign_In_Attribute_Value --
   ------------------------------------------

   function On_Less_Than_Sign_In_Attribute_Value
    (Self : not null access SAX_Simple_Reader'Class) return Token is
   begin
      --
      --  [3.1 WFC: No < in Attribute Values]
      --
      --  "The replacement text of any entity referred to directly or
      --  indirectly in an attribute value MUST NOT contain a <."

      Matreshka.SAX.Simple_Readers.Handler_Callbacks.Call_Fatal_Error
       (Self,
        League.Strings.To_Universal_String
         ("[3.1 WFC: No < in Attribute Values]"
            & " '<' can't be used in attribute value"));
      Self.Error_Reported := True;

      return Error;
   end On_Less_Than_Sign_In_Attribute_Value;

   ---------------------------
   -- On_No_XML_Declaration --
   ---------------------------

   procedure On_No_XML_Declaration
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      --  Move scanner's position back to the start of the document or external
      --  parser entity and switch to XML 1.0 mode.

      YY_Move_Backward (Self);

      case Self.Version is
         when XML_1_0 =>
            Enter_Start_Condition (Self, Tables.DOCUMENT_10);

         when XML_1_1 =>
            Enter_Start_Condition (Self, Tables.DOCUMENT_11);
      end case;
   end On_No_XML_Declaration;

   --------------------------------
   -- On_Open_Of_Internal_Subset --
   --------------------------------

   function On_Open_Of_Internal_Subset
    (Self : not null access SAX_Simple_Reader'Class) return Token is
   begin
      case Self.Version is
         when XML_1_0 =>
            Enter_Start_Condition (Self, Tables.DOCTYPE_INTSUBSET_10);

         when XML_1_1 =>
            Enter_Start_Condition (Self, Tables.DOCTYPE_INTSUBSET_11);
      end case;

      return Token_Internal_Subset_Open;
   end On_Open_Of_Internal_Subset;

   -----------------------------
   -- On_Unexpected_Character --
   -----------------------------

   function On_Unexpected_Character
    (Self : not null access SAX_Simple_Reader'Class) return Token is
   begin
      Matreshka.SAX.Simple_Readers.Handler_Callbacks.Call_Fatal_Error
       (Self, League.Strings.To_Universal_String ("unexpected character"));
      Self.Error_Reported := True;

      return Error;
   end On_Unexpected_Character;

   -------------------------------
   -- On_Whitespace_In_Document --
   -------------------------------

   function On_Whitespace_In_Document
    (Self : not null access SAX_Simple_Reader'Class) return Boolean
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
         Set_String_Internal
          (Item          => Self.YYLVal,
           String        => YY_Text (Self),
           Is_Whitespace => True,
           Is_CData      => False);

         return True;
      end if;
   end On_Whitespace_In_Document;

   ---------------------------------------------
   -- On_Whitespace_In_Processing_Instruction --
   ---------------------------------------------

   procedure On_Whitespace_In_Processing_Instruction
    (Self : not null access SAX_Simple_Reader'Class) is
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

end Matreshka.SAX.Simple_Readers.Scanner.Actions;
