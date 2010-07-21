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
with XML.SAX.Simple_Readers.Scanner.Tables;

package body XML.SAX.Simple_Readers.Scanner.Actions is

   use Matreshka.Internals.Unicode;
   use Matreshka.Internals.Utf16;
   use Matreshka.Internals.XML;
   use Matreshka.Internals.XML.Entity_Tables;
   use Matreshka.Internals.XML.Symbol_Tables;

   Less_Than_Sign       : constant := 16#003C#;
   Greater_Than_Sign    : constant := 16#003E#;
   Right_Square_Bracket : constant := 16#005D#;
   Ampersand            : constant := 16#0026#;

   procedure Resolve_Symbol
    (Self            : not null access SAX_Simple_Reader'Class;
     Trim_Left       : Natural;
     Trim_Right      : Natural;
     Trim_Whitespace : Boolean;
     Can_Be_Qname    : Boolean;
     Error           : out Boolean;
     Symbol          : out Matreshka.Internals.XML.Symbol_Identifier);
   --  Converts name to symbol.

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

         Callbacks.Call_Fatal_Error
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

         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("[[14] CharData] Text may not contain a literal ']]>' sequence"));
         Self.Error_Reported := True;
         Self.Continue := False;

         return Error;
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

      Pop_Start_Condition (Self);
--      if Self.Stack_Is_Empty
--        or not Self.Scanner_State.Is_External_Subset
--      then
--         --  XML document or external parsed general entity.
--
--         case Self.Version is
--            when XML_1_0 =>
--               Enter_Start_Condition (Self, Tables.DOCUMENT_10);
--
--            when XML_1_1 =>
--               Enter_Start_Condition (Self, Tables.DOCUMENT_11);
--         end case;
--
--      else
--         --  External subset.
--
--         case Self.Version is
--            when XML_1_0 =>
--               Enter_Start_Condition (Self, Tables.DOCTYPE_INTSUBSET_10);
--
--            when XML_1_1 =>
--               Enter_Start_Condition (Self, Tables.DOCTYPE_INTSUBSET_11);
--         end case;
--      end if;

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

   ----------------------------------------------------
   -- On_General_Entity_Reference_In_Attribute_Value --
   ----------------------------------------------------

   function On_General_Entity_Reference_In_Attribute_Value
    (Self : not null access SAX_Simple_Reader'Class) return Boolean
   is
      Qualified_Name : Symbol_Identifier;
      Qname_Error    : Boolean;
      Entity         : Entity_Identifier;

   begin
      Resolve_Symbol (Self, 1, 1, False, False, Qname_Error, Qualified_Name);

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
         Self.Continue := False;

         return False;
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
            ("[XML1.1 4.1 WFC: Entity Declared]"
               & " an entity reference must not contain the name of an"
               & " unparsed entity"));
         Self.Continue := False;

         return False;
      end if;

      if not Is_Resolved (Self.Entities, Entity) then
         declare
            V : League.Strings.Universal_String;
            A : Matreshka.Internals.Strings.Shared_String_Access;

         begin
            Callbacks.Call_Resolve_Entity
             (Self,
              League.Strings.Internals.Create
               (Public_Id (Self.Entities, Entity)),
              League.Strings.Internals.Create
               (System_Id (Self.Entities, Entity)),
              V);

            if not Self.Continue then
               Callbacks.Call_Fatal_Error
                (Self,
                 League.Strings.To_Universal_String
                  ("external parsed general entity is not resolved"));

               return False;
            end if;

            A := League.Strings.Internals.Get_Shared (V);
            Matreshka.Internals.Strings.Reference (A);
            Set_Replacement_Text (Self.Entities, Entity, A);
            Set_Is_Resolved (Self.Entities, Entity, True);
         end;
      end if;

      Push_General_Entity_In_Attribute_Value
       (Self, Entity, Replacement_Text (Self.Entities, Entity));

      return True;
   end On_General_Entity_Reference_In_Attribute_Value;

   -----------------------------------------------------
   -- On_General_Entity_Reference_In_Document_Content --
   -----------------------------------------------------

   function On_General_Entity_Reference_In_Document_Content
    (Self : not null access SAX_Simple_Reader'Class) return Boolean
   is
      Qualified_Name : Symbol_Identifier;
      Qname_Error    : Boolean;
      Entity         : Entity_Identifier;
      Text           : Matreshka.Internals.Strings.Shared_String_Access;
      State          : Scanner_State_Information;

   begin
      Resolve_Symbol (Self, 1, 1, False, False, Qname_Error, Qualified_Name);

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
         Self.Continue := False;

         return False;
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
            ("[XML1.1 4.1 WFC: Entity Declared]"
               & " an entity reference must not contain the name of an"
               & " unparsed entity"));
         Self.Continue := False;

         return False;
      end if;

      --  Resolve entity when necessary.

      if not Is_Resolved (Self.Entities, Entity) then
         declare
            V : League.Strings.Universal_String;
            A : Matreshka.Internals.Strings.Shared_String_Access;

         begin
            Callbacks.Call_Resolve_Entity
             (Self,
              League.Strings.Internals.Create
               (Public_Id (Self.Entities, Entity)),
              League.Strings.Internals.Create
               (System_Id (Self.Entities, Entity)),
              V);

            if not Self.Continue then
               Callbacks.Call_Fatal_Error
                (Self,
                 League.Strings.To_Universal_String
                  ("external parsed general entity is not resolved"));

               return False;
            end if;

            A := League.Strings.Internals.Get_Shared (V);
            Matreshka.Internals.Strings.Reference (A);
            Set_Replacement_Text (Self.Entities, Entity, A);
            Set_Is_Resolved (Self.Entities, Entity, True);
         end;
      end if;

      Text := Replacement_Text (Self.Entities, Entity);

      if Text.Unused = 0 then
         --  Replacement text is empty string,

         return True;
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
         Self.Continue := False;

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
            Self.Continue := False;

            return False;
         end if;
      end loop;

      Self.Scanner_Stack.Append (Self.Scanner_State);
      Self.Stack_Is_Empty := False;

      Self.Scanner_State := (Text, Entity => Entity, others => <>);

      case Self.Version is
         when XML_1_0 =>
            Push_And_Enter_Start_Condition
             (Self, Tables.DOCUMENT_10, Tables.INITIAL);

         when XML_1_1 =>
            Push_And_Enter_Start_Condition
             (Self, Tables.DOCUMENT_11, Tables.INITIAL);
      end case;

      return True;
   end On_General_Entity_Reference_In_Document_Content;

   -------------------------------------------------
   -- On_General_Entity_Reference_In_Entity_Value --
   -------------------------------------------------

   function On_General_Entity_Reference_In_Entity_Value
    (Self : not null access SAX_Simple_Reader'Class) return Token
   is
      Qualified_Name : Symbol_Identifier;
      Qname_Error    : Boolean;

   begin
      Resolve_Symbol (Self, 1, 1, False, False, Qname_Error, Qualified_Name);

      if Qname_Error then
         return Error;

      else
         Set_String_Internal
          (Item          => Self.YYLVal,
           String        => YY_Text (Self),
           Is_Whitespace => False,
           Is_CData      => False);

         return Token_String_Segment;
      end if;
   end On_General_Entity_Reference_In_Entity_Value;

   ------------------------------------------
   -- On_Less_Than_Sign_In_Attribute_Value --
   ------------------------------------------

   function On_Less_Than_Sign_In_Attribute_Value
    (Self : not null access SAX_Simple_Reader'Class) return Token is
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

   -------------------------------------------
   -- On_Name_In_Attribute_List_Declaration --
   -------------------------------------------

   function On_Name_In_Attribute_List_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      Resolve_Symbol
       (Self, 0, 0, False, True, Qname_Error, Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         Enter_Start_Condition (Self, Tables.ATTLIST_TYPE);

         return Token_Name;
      end if;
   end On_Name_In_Attribute_List_Declaration;

   ----------------------------------------------------
   -- On_Name_In_Attribute_List_Declaration_Notation --
   ----------------------------------------------------

   function On_Name_In_Attribute_List_Declaration_Notation
    (Self : not null access SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      Resolve_Symbol
       (Self, 0, 0, False, False, Qname_Error, Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         return Token_Name;
      end if;
   end On_Name_In_Attribute_List_Declaration_Notation;

   ---------------------------------------------
   -- On_Name_In_Element_Declaration_Children --
   ---------------------------------------------

   function On_Name_In_Element_Declaration_Children
    (Self : not null access SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      Resolve_Symbol
       (Self, 0, 0, False, True, Qname_Error, Self.YYLVal.Symbol);

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
    (Self : not null access SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      if not Self.Whitespace_Matched then
         Callbacks.Call_Fatal_Error
          (Self,
           League.Strings.To_Universal_String
            ("whitespace is missing before attribute name"));
         Self.Continue := False;
         --  XXX It is recoverable error.

         return Error;
      end if;

      Resolve_Symbol
       (Self, 0, 0, False, True, Qname_Error, Self.YYLVal.Symbol);

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
    (Self : not null access SAX_Simple_Reader'Class) return Token
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
         Self.Continue := False;
         --  XXX This is recoverable error.

         return Error;
      end if;

      Resolve_Symbol
       (Self, 0, 0, False, False, Qname_Error, Self.YYLVal.Symbol);

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
    (Self : not null access SAX_Simple_Reader'Class) return Token
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
         Self.Continue := False;
         --  XXX This is recoverable error.

         return Error;
      end if;

      Resolve_Symbol
       (Self, 0, 0, False, False, Qname_Error, Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         Enter_Start_Condition (Self, Tables.ENTITY_DEF);

         return Token_Name;
      end if;
   end On_Name_In_Entity_Declaration_Notation;

   ---------------------------
   -- On_No_XML_Declaration --
   ---------------------------

   procedure On_No_XML_Declaration
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      --  Move scanner's position back to the start of the document or external
      --  parser entity and switch to XML 1.0 mode.

      YY_Move_Backward (Self);
      Pop_Start_Condition (Self);
--      if Self.Stack_Is_Empty
--        or not Self.Scanner_State.Is_External_Subset
--      then
--         --  XML document or external parsed general entity.
--
--         case Self.Version is
--            when XML_1_0 =>
--               Enter_Start_Condition (Self, Tables.DOCUMENT_10);
--
--            when XML_1_1 =>
--               Enter_Start_Condition (Self, Tables.DOCUMENT_11);
--         end case;
--
--      else
--         --  External subset.
--
--         case Self.Version is
--            when XML_1_0 =>
--               Enter_Start_Condition (Self, Tables.DOCTYPE_INTSUBSET_10);
--
--            when XML_1_1 =>
--               Enter_Start_Condition (Self, Tables.DOCTYPE_INTSUBSET_11);
--         end case;
--      end if;
   end On_No_XML_Declaration;

   -------------------------------------------
   -- On_Open_Of_Attribute_List_Declaration --
   -------------------------------------------

   function On_Open_Of_Attribute_List_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      Resolve_Symbol
       (Self, 9, 0, True, True, Qname_Error, Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         Enter_Start_Condition (Self, Tables.ATTLIST_DECL);

         return Token_Attlist_Decl_Open;
      end if;
   end On_Open_Of_Attribute_List_Declaration;

   ------------------------------------------
   -- On_Open_Of_Document_Type_Declaration --
   ------------------------------------------

   function On_Open_Of_Document_Type_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      Resolve_Symbol
       (Self, 10, 0, True, True, Qname_Error, Self.YYLVal.Symbol);

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
    (Self : not null access SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      Resolve_Symbol
       (Self, 10, 0, True, True, Qname_Error, Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         Enter_Start_Condition (Self, Tables.ELEMENT_DECL);

         return Token_Element_Decl_Open;
      end if;
   end On_Open_Of_Element_Declaration;

   ------------------------
   -- On_Open_Of_End_Tag --
   ------------------------

   function On_Open_Of_End_Tag
    (Self : not null access SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      Resolve_Symbol
       (Self, 2, 0, False, True, Qname_Error, Self.YYLVal.Symbol);

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

   -------------------------------------
   -- On_Open_Of_Notation_Declaration --
   -------------------------------------

   function On_Open_Of_Notation_Declaration
    (Self : not null access SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      Resolve_Symbol
       (Self, 10, 0, True, False, Qname_Error, Self.YYLVal.Symbol);

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
    (Self : not null access SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      Resolve_Symbol
       (Self, 2, 0, False, False, Qname_Error, Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         Push_And_Enter_Start_Condition
          (Self, Start_Condition (Self), Tables.PI);
         Reset_Whitespace_Matched (Self);

         return Token_PI_Open;
      end if;
   end On_Open_Of_Processing_Instruction;

   --------------------------
   -- On_Open_Of_Start_Tag --
   --------------------------

   function On_Open_Of_Start_Tag
    (Self : not null access SAX_Simple_Reader'Class) return Token
   is
      Qname_Error : Boolean;

   begin
      Resolve_Symbol
       (Self, 1, 0, False, True, Qname_Error, Self.YYLVal.Symbol);

      if Qname_Error then
         return Error;

      else
         Enter_Start_Condition (Self, Tables.ELEMENT_START);

         return Token_Element_Open;
      end if;
   end On_Open_Of_Start_Tag;

   -------------------------------------------
   -- On_Open_Of_XML_Processing_Instruction --
   -------------------------------------------

   function On_Open_Of_XML_Processing_Instruction
    (Self : not null access SAX_Simple_Reader'Class) return Token is
   begin
      Push_And_Enter_Start_Condition
       (Self, Start_Condition (Self), Tables.XML_DECL);
      Reset_Whitespace_Matched (Self);

      return Token_XML_Decl_Open;
   end On_Open_Of_XML_Processing_Instruction;

   ---------------------------------------------------
   -- On_Parameter_Entity_Reference_In_Entity_Value --
   ---------------------------------------------------

   function On_Parameter_Entity_Reference_In_Entity_Value
    (Self : not null access SAX_Simple_Reader'Class) return Boolean
   is
      Qualified_Name : Symbol_Identifier;
      Qname_Error    : Boolean;
      Entity         : Entity_Identifier;

   begin
      Resolve_Symbol (Self, 1, 1, False, False, Qname_Error, Qualified_Name);

      if Qname_Error then
         return False;

      else
         Entity := Parameter_Entity (Self.Symbols, Qualified_Name);

         if Entity = No_Entity then
            Callbacks.Call_Fatal_Error
             (Self,
              League.Strings.To_Universal_String
               ("parameter entity must be declared"));
            Self.Continue := False;

            return False;
         end if;

         --  Resolve entity when necessary.

         if not Is_Resolved (Self.Entities, Entity) then
            declare
               V : League.Strings.Universal_String;
               A : Matreshka.Internals.Strings.Shared_String_Access;

            begin
               Callbacks.Call_Resolve_Entity
                (Self,
                 League.Strings.Internals.Create
                  (Public_Id (Self.Entities, Entity)),
                 League.Strings.Internals.Create
                  (System_Id (Self.Entities, Entity)),
                 V);

               if not Self.Continue then
                  Callbacks.Call_Fatal_Error
                   (Self,
                    League.Strings.To_Universal_String
                     ("external parameter entity is not resolved"));

                  return False;
               end if;

               A := League.Strings.Internals.Get_Shared (V);
               Matreshka.Internals.Strings.Reference (A);
               Set_Replacement_Text (Self.Entities, Entity, A);
               Set_Is_Resolved (Self.Entities, Entity, True);
            end;
         end if;

         Push_Parameter_Entity
          (Self, Replacement_Text (Self.Entities, Entity));

         return True;
      end if;
   end On_Parameter_Entity_Reference_In_Entity_Value;

   -----------------------------
   -- On_Unexpected_Character --
   -----------------------------

   function On_Unexpected_Character
    (Self : not null access SAX_Simple_Reader'Class) return Token is
   begin
      Callbacks.Call_Fatal_Error
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

   --------------------
   -- Resolve_Symbol --
   --------------------

   procedure Resolve_Symbol
    (Self            : not null access SAX_Simple_Reader'Class;
     Trim_Left       : Natural;
     Trim_Right      : Natural;
     Trim_Whitespace : Boolean;
     Can_Be_Qname    : Boolean;
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
              C /= 16#0020#
                and then C /= 16#0009#
                and then C /= 16#000D#
                and then C /= 16#000A#;

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
               Self.Continue := False;

            else
               Error := False;
            end if;

         when Colon_At_Start =>
            Error := True;
            Symbol := No_Symbol;
            Callbacks.Call_Fatal_Error
             (Self,
              League.Strings.To_Universal_String
               ("[NSXML1.1]"
                  & " qualified name must not start with colon character"));
            Self.Continue := False;

         when Colon_At_End =>
            Error := True;
            Symbol := No_Symbol;
            Callbacks.Call_Fatal_Error
             (Self,
              League.Strings.To_Universal_String
               ("[NSXML1.1]"
                  & " qualified name must not end with colon character"));
            Self.Continue := False;

         when Multiple_Colons =>
            Error := True;
            Symbol := No_Symbol;
            Callbacks.Call_Fatal_Error
             (Self,
              League.Strings.To_Universal_String
               ("[NSXML1.1]"
                  & " qualified name must not contain more than one colon"
                  & " character"));
            Self.Continue := False;

         when First_Character_Is_Not_NS_Name_Start_Char =>
            Error := True;
            Symbol := No_Symbol;
            Callbacks.Call_Fatal_Error
             (Self,
              League.Strings.To_Universal_String
               ("[NSXML1.1] first character of local name is invalid"));
            Self.Continue := False;
      end case; 
   end Resolve_Symbol;

end XML.SAX.Simple_Readers.Scanner.Actions;
