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
with XML.SAX.Attributes.Internals;
with XML.SAX.Simple_Readers.Scanner;
with XML.SAX.Simple_Readers.Callbacks;

package body XML.SAX.Simple_Readers.Parser.Actions is

   use Matreshka.Internals.XML;
   use Matreshka.Internals.XML.Attributes;
   use Matreshka.Internals.XML.Attribute_Tables;
   use Matreshka.Internals.XML.Element_Tables;
   use Matreshka.Internals.XML.Namespace_Scopes;
   use Matreshka.Internals.XML.Symbol_Tables;

   Full_Stop  : constant := 16#002E#;
   Digit_Zero : constant := 16#0030#;
   Digit_One  : constant := 16#0031#;

   procedure Analyze_Attribute_Declaration
    (Self        : not null access SAX_Simple_Reader'Class;
     Symbol      : Matreshka.Internals.XML.Symbol_Identifier;
     Constructor : not null access procedure
                    (Self      : in out Attribute_Table;
                     Name      : Symbol_Identifier;
                     Attribute : out Attribute_Identifier));
   --  Checks whether attribute is not declared, allocates new attribute using
   --  specified constructor, attach it to the list of element's attributes.

   -----------------------------------
   -- Analyze_Attribute_Declaration --
   -----------------------------------

   procedure Analyze_Attribute_Declaration
    (Self        : not null access SAX_Simple_Reader'Class;
     Symbol      : Matreshka.Internals.XML.Symbol_Identifier;
     Constructor : not null access procedure
                    (Self      : in out Attribute_Table;
                     Name      : Symbol_Identifier;
                     Attribute : out Attribute_Identifier))
   is
      Last    : Attribute_Identifier;
      Current : Attribute_Identifier;

   begin
      Self.Attribute_Redefined := False;
      Self.Current_Attribute :=
        Element_Tables.Attributes (Self.Elements, Self.Current_Element);

      if Self.Current_Attribute = No_Attribute then
         Constructor (Self.Attributes, Symbol, Self.Current_Attribute);
         Set_Attributes
          (Self.Elements, Self.Current_Element, Self.Current_Attribute);

      else
         Last    := Self.Current_Attribute;
         Current := Self.Current_Attribute;

         while Current /= No_Attribute loop
            --  [XML 3.3] Attribute List Declarations
            --
            --  "When more than one AttlistDecl is provided for a given element
            --  type, the contents of all those provided are merged. When more
            --  than one definition is provided for the same attribute of a
            --  given element type, the first declaration is binding and later
            --  declarations are ignored. For interoperability, writers of DTDs
            --  may choose to provide at most one attribute-list declaration
            --  for a given element type, at most one attribute definition for
            --  a given attribute name in an attribute-list declaration, and at
            --  least one attribute definition in each attribute-list
            --  declaration. For interoperability, an XML processor MAY at user
            --  option issue a warning when more than one attribute-list
            --  declaration is provided for a given element type, or more than
            --  one attribute definition is provided for a given attribute, but
            --  this is not an error."
            --
            --  Check whether attribute is declared already, report warning and
            --  stop future processing.

            if Name (Self.Attributes, Current) = Symbol then
               Callbacks.Call_Warning
                (Self.all,
                 League.Strings.To_Universal_String
                  ("[XML 3.3]"
                     & " more than one attribute definition is provided for"
                     & " the attribute"));

               Self.Attribute_Redefined := True;

               return;
            end if;

            Last := Current;
            Current := Next (Self.Attributes, Current);
         end loop;

         Constructor (Self.Attributes, Symbol, Self.Current_Attribute);
         Append (Self.Attributes, Last, Self.Current_Attribute);
      end if;
   end Analyze_Attribute_Declaration;

   --------------------------------------
   -- On_Attribute_Default_Declaration --
   --------------------------------------

   procedure On_Attribute_Default_Declaration
    (Self    : not null access SAX_Simple_Reader'Class;
     Default : Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      if not Self.Attribute_Redefined then
         Set_Default (Self.Attributes, Self.Current_Attribute, Default);
      end if;
   end On_Attribute_Default_Declaration;

   ------------------------------------
   -- On_CDATA_Attribute_Declaration --
   ------------------------------------

   procedure On_CDATA_Attribute_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier) is
   begin
      Analyze_Attribute_Declaration (Self, Symbol, New_CDATA_Attribute'Access);
   end On_CDATA_Attribute_Declaration;

   -----------------------
   -- On_Character_Data --
   -----------------------

   procedure On_Character_Data
    (Self          : not null access SAX_Simple_Reader'Class;
     Text          : not null Matreshka.Internals.Strings.Shared_String_Access;
     Is_Whitespace : Boolean) is
   begin
      Callbacks.Call_Characters (Self.all, Text);
      --  XXX In valid documents ignorableWhitespace must be called in
      --  appropriate cases.
   end On_Character_Data;

   --------------------------
   -- On_Element_Attribute --
   --------------------------

   procedure On_Element_Attribute
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier;
     Value  : not null Matreshka.Internals.Strings.Shared_String_Access)
   is
      Inserted : Boolean;

   begin
      if Self.Current_Attribute = No_Attribute then
         Insert (Self.Attribute_Set, Symbol, Value, Symbol_CDATA, Inserted);

      else
         Insert
          (Self.Attribute_Set,
           Symbol,
           Value,
           Symbol_Of_Type_Name (Self.Attributes, Self.Current_Attribute),
           Inserted);
      end if;

      if not Inserted then
         --  3.1  WFC: Unique Att Spec
         --
         --  An attribute name MUST NOT appear more than once in the same
         --  start-tag or empty-element tag.

         Callbacks.Call_Fatal_Error
          (Self.all,
           League.Strings.To_Universal_String
            ("[3.1 WFC: Unique Att Spec]"
               & " an attribute name must not appear more than once"
               & " in the same tag"));
      end if;
   end On_Element_Attribute;

   -------------------------------
   -- On_Element_Attribute_Name --
   -------------------------------

   procedure On_Element_Attribute_Name
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier) is
   begin
      Self.Normalize_Value   := False;
      Self.Space_Before      := False;
      Self.Current_Attribute := No_Attribute;

      if Self.Current_Element /= No_Element then
         Self.Current_Attribute :=
           Element_Tables.Attributes (Self.Elements, Self.Current_Element);

         while Self.Current_Attribute /= No_Attribute loop
            if Name (Self.Attributes, Self.Current_Attribute) = Symbol then
               if not Is_CDATA (Self.Attributes, Self.Current_Attribute) then
                  Self.Normalize_Value := True;
                  Self.Space_Before    := True;
               end if;

               exit;
            end if;

            Self.Current_Attribute :=
              Next (Self.Attributes, Self.Current_Attribute);
         end loop;
      end if;
   end On_Element_Attribute_Name;

   --------------------------
   -- On_Empty_Element_Tag --
   --------------------------

   procedure On_Empty_Element_Tag
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      On_Start_Tag (Self);
      On_End_Tag (Self, Self.Current_Element_Name);
   end On_Empty_Element_Tag;

   ------------------------
   -- On_End_Of_Document --
   ------------------------

   procedure On_End_Of_Document
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      Callbacks.Call_End_Document (Self.all);
   end On_End_Of_Document;

   -----------------------------------------
   -- On_End_Of_Document_Type_Declaration --
   -----------------------------------------

   procedure On_End_Of_Document_Type_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier) is
   begin
      Self.Root_Symbol := Symbol;
   end On_End_Of_Document_Type_Declaration;

   -------------------------------
   -- On_End_Of_Internal_Subset --
   -------------------------------

   procedure On_End_Of_Internal_Subset
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      --  Substitute external subset if any.

      if not Self.External_Subset.Is_Empty then
         Scanner.Push_External_Subset (Self, Self.External_Source);
      end if;
   end On_End_Of_Internal_Subset;

   ----------------
   -- On_End_Tag --
   ----------------

   procedure On_End_Tag
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier) is
   begin
      --  [3 WFC: Element Type Match]
      --
      --  The Name in an element's end-tag MUST match the element type in the
      --  start-tag.

      if Self.Element_Names.Last_Element /= Symbol then
         Callbacks.Call_Fatal_Error
          (Self.all,
           League.Strings.To_Universal_String
            ("[3 WFC: Element Type Match]"
               & " end tag name must match start tag name"));

      else
         if Self.Namespaces.Enabled then
            Callbacks.Call_End_Element
             (Self           => Self.all,
              Namespace_URI  =>
                Name
                 (Self.Symbols,
                  Resolve
                   (Self.Namespace_Scope,
                    Prefix_Name (Self.Symbols, Symbol))),
              Local_Name     => Local_Name (Self.Symbols, Symbol),
              Qualified_Name => Name (Self.Symbols, Symbol));
            Pop_Scope (Self.Namespace_Scope);

         else
            Callbacks.Call_End_Element
             (Self           => Self.all,
              Namespace_URI  =>
                Matreshka.Internals.Strings.Shared_Empty'Access,
              Local_Name     =>
                Matreshka.Internals.Strings.Shared_Empty'Access,
              Qualified_Name => Name (Self.Symbols, Symbol));
         end if;

         Self.Element_Names.Delete_Last;
      end if;
   end On_End_Tag;

   ---------------------------------------
   -- On_Entities_Attribute_Declaration --
   ---------------------------------------

   procedure On_Entities_Attribute_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier) is
   begin
      Analyze_Attribute_Declaration
       (Self, Symbol, New_Entities_Attribute'Access);
   end On_Entities_Attribute_Declaration;

   -------------------------------------
   -- On_Entity_Attribute_Declaration --
   -------------------------------------

   procedure On_Entity_Attribute_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier) is
   begin
      Analyze_Attribute_Declaration
       (Self, Symbol, New_Entity_Attribute'Access);
   end On_Entity_Attribute_Declaration;

   ------------------------------------
   -- On_External_Subset_Declaration --
   ------------------------------------

   procedure On_External_Subset_Declaration
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      Self.Entity_Resolver.Resolve_Entity
       (Self.Public_Id,
        Self.System_Id,
        Self.External_Source,
        Self.Continue);
      --  XXX Callbacks package must be used for this call.
   end On_External_Subset_Declaration;

   --------------------------------------------
   -- On_Fixed_Attribute_Default_Declaration --
   --------------------------------------------

   procedure On_Fixed_Attribute_Default_Declaration
    (Self    : not null access SAX_Simple_Reader'Class;
     Default : Matreshka.Internals.Strings.Shared_String_Access) is
   begin
      if not Self.Attribute_Redefined then
         Set_Is_Fixed (Self.Attributes, Self.Current_Attribute, True);
         Set_Default (Self.Attributes, Self.Current_Attribute, Default);
      end if;
   end On_Fixed_Attribute_Default_Declaration;

   ---------------------------------
   -- On_Id_Attribute_Declaration --
   ---------------------------------

   procedure On_Id_Attribute_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier) is
   begin
      Analyze_Attribute_Declaration (Self, Symbol, New_Id_Attribute'Access);

      if not Self.Attribute_Redefined then
         --  [XML 3.3.1 VC: One ID per Element Type]
         --
         --  "An element type MUST NOT have more than one ID attribute
         --  specified."
         --
         --  Checking whether no other attributes with type ID for element.

         if Self.Validation.Enabled then
            declare
               Current : Attribute_Identifier
                 := Element_Tables.Attributes
                     (Self.Elements, Self.Current_Element);

            begin
               while Current /= No_Attribute loop
                  if Current /= Self.Current_Attribute
                    and Is_ID (Self.Attributes, Current)
                  then
                     Callbacks.Call_Error
                      (Self.all,
                       League.Strings.To_Universal_String
                        ("[XML 3.3.1 VC: One ID per Element Type]"
                           & " element type must not have more than one ID"
                           & " attribute specified"));

                     exit;
                  end if;

                  Current := Next (Self.Attributes, Current);
               end loop;
            end;
         end if;
      end if;
   end On_Id_Attribute_Declaration;

   ------------------------------------
   -- On_IdRef_Attribute_Declaration --
   ------------------------------------

   procedure On_IdRef_Attribute_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier) is
   begin
      Analyze_Attribute_Declaration (Self, Symbol, New_IdRef_Attribute'Access);
   end On_IdRef_Attribute_Declaration;

   -------------------------------------
   -- On_IdRefs_Attribute_Declaration --
   -------------------------------------

   procedure On_IdRefs_Attribute_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier) is
   begin
      Analyze_Attribute_Declaration
       (Self, Symbol, New_IdRefs_Attribute'Access);
   end On_IdRefs_Attribute_Declaration;

   ----------------------------------------------
   -- On_Implied_Attribute_Default_Declaration --
   ----------------------------------------------

   procedure On_Implied_Attribute_Default_Declaration
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      if not Self.Attribute_Redefined then
         Set_Is_Implied (Self.Attributes, Self.Current_Attribute, True);
      end if;
   end On_Implied_Attribute_Default_Declaration;

   --------------------------------------
   -- On_NmToken_Attribute_Declaration --
   --------------------------------------

   procedure On_NmToken_Attribute_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier) is
   begin
      Analyze_Attribute_Declaration
       (Self, Symbol, New_NmToken_Attribute'Access);
   end On_NmToken_Attribute_Declaration;

   ---------------------------------------
   -- On_NmTokens_Attribute_Declaration --
   ---------------------------------------

   procedure On_NmTokens_Attribute_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier) is
   begin
      Analyze_Attribute_Declaration
       (Self, Symbol, New_NmTokens_Attribute'Access);
   end On_NmTokens_Attribute_Declaration;

   --------------------
   -- On_Open_Of_Tag --
   --------------------

   procedure On_Open_Of_Tag
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier) is
   begin
      Self.Current_Element_Name := Symbol;
      Self.Current_Element := Element (Self.Symbols, Symbol);
   end On_Open_Of_Tag;

   -----------------------------------------------
   -- On_Required_Attribute_Default_Declaration --
   -----------------------------------------------

   procedure On_Required_Attribute_Default_Declaration
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      if not Self.Attribute_Redefined then
         Set_Is_Required (Self.Attributes, Self.Current_Attribute, True);
      end if;
   end On_Required_Attribute_Default_Declaration;

   --------------------------------------------
   -- On_Start_Of_Attribute_List_Declaration --
   --------------------------------------------

   procedure On_Start_Of_Attribute_List_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Symbol_Identifier) is
   begin
      Self.Current_Element := Element (Self.Symbols, Symbol);

      --  [XML 3.3] Attribute List Declaration
      --
      --  "The Name in the AttlistDecl rule is the type of an element. At user
      --  option, an XML processor MAY issue a warning if attributes are
      --  declared for an element type not itself declared, but this is not an
      --  error. The Name in the AttDef rule is the name of the attribute."
      --
      --  Check whether element is declared.

      if Self.Current_Element = No_Element then
         Callbacks.Call_Warning
          (Self.all,
           League.Strings.To_Universal_String
            ("[XML 3.3]"
               & " attribute list declaration for element type not itself"
               & " declared"));

         New_Element (Self.Elements, Self.Current_Element);
         Set_Element (Self.Symbols, Symbol, Self.Current_Element);
      end if;

      --  [XML 3.3] Attribute List Declarations
      --
      --  "When more than one AttlistDecl is provided for a given element type,
      --  the contents of all those provided are merged. When more than one
      --  definition is provided for the same attribute of a given element
      --  type, the first declaration is binding and later declarations are
      --  ignored. For interoperability, writers of DTDs may choose to provide
      --  at most one attribute-list declaration for a given element type, at
      --  most one attribute definition for a given attribute name in an
      --  attribute-list declaration, and at least one attribute definition in
      --  each attribute-list declaration. For interoperability, an XML
      --  processor MAY at user option issue a warning when more than one
      --  attribute-list declaration is provided for a given element type, or
      --  more than one attribute definition is provided for a given attribute,
      --  but this is not an error."
      --
      --  Check whether attribute list declaration is already provided for
      --  element type.

      if Is_Attributes_Declared (Self.Elements, Self.Current_Element) then
         Callbacks.Call_Warning
          (Self.all,
           League.Strings.To_Universal_String
            ("[XML 3.3]"
               & " more than one attribute list declaration is provided for"
               & " the element type"));
      end if;

      Set_Is_Attributes_Declared (Self.Elements, Self.Current_Element, True);
   end On_Start_Of_Attribute_List_Declaration;

   --------------------------
   -- On_Start_Of_Document --
   --------------------------

   procedure On_Start_Of_Document
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      Callbacks.Call_Start_Document (Self.all);
   end On_Start_Of_Document;

   -------------------------------------
   -- On_Start_Of_Element_Declaration --
   -------------------------------------

   procedure On_Start_Of_Element_Declaration
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier) is
   begin
      Self.Current_Element := Element (Self.Symbols, Symbol);

      if Self.Current_Element /= No_Element then
         --  [XML1.1 3.2 VC: Unique Element Type Declaration]
         --
         --  "An element type MUST NOT be declared more than once."
         --
         --  Check whether validation is enabled and element type is already
         --  declared.

         if Self.Validation.Enabled
           and Is_Declared (Self.Elements, Self.Current_Element)
         then
            Callbacks.Call_Error
             (Self.all,
              League.Strings.To_Universal_String
               ("[XML1.1 3.2 VC: Unique Element Type Declaration]"
                  & " element type must not be declared more than once"));
         end if;

      else
         New_Element (Self.Elements, Self.Current_Element);
         Set_Element (Self.Symbols, Symbol, Self.Current_Element);
      end if;

      Set_Is_Declared (Self.Elements, Self.Current_Element, True);
   end On_Start_Of_Element_Declaration;

   ------------------
   -- On_Start_Tag --
   ------------------

   procedure On_Start_Tag (Self : not null access SAX_Simple_Reader'Class) is

      procedure Convert;

      -------------
      -- Convert --
      -------------

      procedure Convert is
      begin
         for J in 1 .. Length (Self.Attribute_Set) loop
            declare
               Qname : constant Symbol_Identifier
                 := Qualified_Name (Self.Attribute_Set, J);

            begin
               if not Self.Namespaces.Enabled
                 or (Self.Namespaces.Prefixes
                       or (Qname /= Symbol_xmlns
                             and Prefix_Name (Self.Symbols, Qname)
                                   /= Symbol_xmlns))
               then
                  XML.SAX.Attributes.Internals.Unchecked_Append
                   (Self.SAX_Attributes,
                    Name (Self.Symbols, Namespace_URI (Self.Attribute_Set, J)),
                    Local_Name (Self.Symbols, Qname),
                    Name (Self.Symbols, Qname),
                    Value (Self.Attribute_Set, J),
                    Name (Self.Symbols, Type_Name (Self.Attribute_Set, J)));
               end if;
            end;
         end loop;
      end Convert;

      Element_Prefix    : Symbol_Identifier;
      Element_Namespace : Symbol_Identifier := No_Symbol;

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

            elsif Self.Root_Symbol /= Self.Current_Element_Name then
               --  [2.8 VC: Root Element Type]
               --
               --  "The Name in the document type declaration MUST match the
               --  element type of the root element."

               raise Program_Error
                 with "[2.8 VC: Root Element Type]"
                        & " Root element has wrong name";
               --  Error
            end if;
         end if;
      end if;

      Self.Element_Names.Append (Self.Current_Element_Name);

      Self.Current_Element :=
        Element (Self.Symbols, Self.Current_Element_Name);

      if Self.Current_Element /= No_Element then
         declare
            Current  : Attribute_Identifier
              := Element_Tables.Attributes
                  (Self.Elements, Self.Current_Element);
            Inserted : Boolean;

         begin
            while Current /= No_Attribute loop
               if Has_Default (Self.Attributes, Current) then
                  Insert
                   (Self.Attribute_Set,
                    Name (Self.Attributes, Current),
                    Default (Self.Attributes, Current),
                    Symbol_Of_Type_Name (Self.Attributes, Current),
                    Inserted);
               end if;

               Current := Next (Self.Attributes, Current);
            end loop;
         end;
      end if;

      if Self.Namespaces.Enabled then
         Push_Scope (Self.Namespace_Scope);

         --  [NSXML1.1 3 NSC: Reserved Prefixes and Namespace Names]
         --
         --  "The prefix xmlns is used only to declare namespace bindings
         --  and is by definition bound to the namespace name
         --  http://www.w3.org/2000/xmlns/. It must not be declared or
         --  undeclared. Other prefixes must not be bound to this namespace
         --  name, and it must not be declared as the default namespace.
         --  Element names must not have the prefix xmlns."
         --
         --  Check whether element name doesn't have xmlns prefix.

         if Prefix_Name (Self.Symbols, Self.Current_Element_Name)
              = Symbol_xmlns
         then
            Callbacks.Call_Fatal_Error
             (Self.all,
              League.Strings.To_Universal_String
               ("[NSXML1.1 3 NSC: Reserved Prefixes and Namespace"
                  & " Names] element must not have the prefix xmlns"));

            return;
         end if;

         --  Process namespace attributes.

         for J in 1 .. Length (Self.Attribute_Set) loop
            declare
               Qname : constant Symbol_Identifier
                 := Qualified_Name (Self.Attribute_Set, J);
               Ns    : Symbol_Identifier;
               Lname : Symbol_Identifier;

            begin
               if Qname = Symbol_xmlns then
                  --  Default namespace.

                  Insert (Self.Symbols, Value (Self.Attribute_Set, J), Ns);

                  --  [NSXML1.1 3 NSC: Reserved Prefixes and Namespace Names]
                  --
                  --  "The prefix xml is by definition bound to the namespace
                  --  name http://www.w3.org/XML/1998/namespace. It may, but
                  --  need not, be declared, and must not be undeclared or
                  --  bound to any other namespace name. Other prefixes must
                  --  not be bound to this namespace name, and it must not be
                  --  declared as the default namespace."
                  --
                  --  Check whether xml namespace name is not declared as
                  --  default namespace.

                  if Ns = Symbol_xml_NS then
                     Callbacks.Call_Fatal_Error
                      (Self.all,
                       League.Strings.To_Universal_String
                        ("[NSXML1.1 3 NSC: Reserved Prefixes and Namespace"
                           & " Names] the xml namespace must not be declared"
                           & " as the default namespace"));

                     return;
                  end if;

                  --  [NSXML1.1 3 NSC: Reserved Prefixes and Namespace Names]
                  --
                  --  "The prefix xmlns is used only to declare namespace
                  --  bindings and is by definition bound to the namespace
                  --  name http://www.w3.org/2000/xmlns/. It must not be
                  --  declared or undeclared. Other prefixes must not be
                  --  bound to this namespace name, and it must not be
                  --  declared as the default namespace. Element names must
                  --  not have the prefix xmlns."
                  --
                  --  Check whether xmlns namespace name is not declared as
                  --  default namespace.

                  if Ns = Symbol_xmlns_NS then
                     Callbacks.Call_Fatal_Error
                      (Self.all,
                       League.Strings.To_Universal_String
                        ("[NSXML1.1 3 NSC: Reserved Prefixes and Namespace"
                           & " Names] the xmlns namespace must not be declared"
                           & " as the default namespace"));

                     return;
                  end if;

                  Bind (Self.Namespace_Scope, No_Symbol, Ns);

               elsif Prefix_Name (Self.Symbols, Qname) = Symbol_xmlns then
                  --  Prefixed namespace.

                  Insert (Self.Symbols, Value (Self.Attribute_Set, J), Ns);
                  Lname := Local_Name (Self.Symbols, Qname);

                  --  [NSXML1.1 3 NSC: Reserved Prefixes and Namespace Names]
                  --
                  --  "The prefix xml is by definition bound to the namespace
                  --  name http://www.w3.org/XML/1998/namespace. It may, but
                  --  need not, be declared, and must not be undeclared or
                  --  bound to any other namespace name. Other prefixes must
                  --  not be bound to this namespace name, and it must not be
                  --  declared as the default namespace."
                  --
                  --  Check whether xml prefix is not undeclared.

                  if Ns = No_Symbol and Lname = Symbol_xml then
                     Callbacks.Call_Fatal_Error
                      (Self.all,
                       League.Strings.To_Universal_String
                        ("[NSXML1.1 3 NSC: Reserved Prefixes and Namespace"
                           & " Names] xml prefix must not be undeclared"));

                     return;
                  end if;

                  --  Check whether xml prefix is not bound to any other
                  --  namespace name.

                  if Ns /= Symbol_xml_NS and Lname = Symbol_xml then
                     Callbacks.Call_Fatal_Error
                      (Self.all,
                       League.Strings.To_Universal_String
                        ("[NSXML1.1 3 NSC: Reserved Prefixes and Namespace"
                           & " Names] xml prefix must not be bound to any"
                           & " other namespace name"));

                     return;
                  end if;

                  --  Check whether other prefixes is not bound to xml
                  --  namespace name.

                  if Ns = Symbol_xml_NS and Lname /= Symbol_xml then
                     Callbacks.Call_Fatal_Error
                      (Self.all,
                       League.Strings.To_Universal_String
                        ("[NSXML1.1 3 NSC: Reserved Prefixes and Namespace"
                           & " Names] other prefixes must not be bound to xml"
                           & " namespace name"));

                     return;
                  end if;

                  --  [NSXML1.1 3 NSC: Reserved Prefixes and Namespace Names]
                  --
                  --  "The prefix xmlns is used only to declare namespace
                  --  bindings and is by definition bound to the namespace
                  --  name http://www.w3.org/2000/xmlns/. It must not be
                  --  declared or undeclared. Other prefixes must not be
                  --  bound to this namespace name, and it must not be
                  --  declared as the default namespace. Element names must
                  --  not have the prefix xmlns."
                  --
                  --  Check whether declaring binding for xmlns.

                  if Ns /= No_Symbol and Lname = Symbol_xmlns then
                     Callbacks.Call_Fatal_Error
                      (Self.all,
                       League.Strings.To_Universal_String
                        ("[NSXML1.1 3 NSC: Reserved Prefixes and Namespace"
                           & " Names] the xmlns prefix must not be declared"));

                     return;
                  end if;

                  --  Check whether undeclaring binding for xmlns.

                  if Ns = No_Symbol and Lname = Symbol_xmlns then
                     Callbacks.Call_Fatal_Error
                      (Self.all,
                       League.Strings.To_Universal_String
                        ("[NSXML1.1 3 NSC: Reserved Prefixes and Namespace"
                           & " Names] the xmlns prefix must not be"
                           & " undeclared"));

                     return;
                  end if;

                  --  Check whether prefix is bound to xmlns namespace name.

                  if Ns = Symbol_xmlns_NS and Lname /= Symbol_xmlns then
                     Callbacks.Call_Fatal_Error
                      (Self.all,
                       League.Strings.To_Universal_String
                        ("[NSXML1.1 3 NSC: Reserved Prefixes and Namespace"
                           & " Names] prefix must not be bound to xmlns"
                           & " namespace name"));

                     return;
                  end if;

                  Bind (Self.Namespace_Scope, Lname, Ns);
               end if;
            end;
         end loop;

         Element_Prefix :=
           Prefix_Name (Self.Symbols, Self.Current_Element_Name);

         if Element_Prefix /= No_Symbol then
            Element_Namespace :=
              Resolve (Self.Namespace_Scope, Element_Prefix);

            --  [NSXML1.1 5 NSC: Prefix Declared]
            --
            --  "The namespace prefix, unless it is xml or xmlns, must have
            --  been declared in a namespace declaration attribute in either
            --  the start-tag of the element where the prefix is used or in an
            --  ancestor element (i.e. an element in whose content the prefixed
            --  markup occurs), Furthermore, the attribute value is the
            --  innermost such declaration must not be an empty string."
            --
            --  Check whether element's prefix is declared.

            if Element_Namespace = No_Symbol then
               Callbacks.Call_Fatal_Error
                (Self.all,
                 League.Strings.To_Universal_String
                  ("[NSXML1.1 5 NSC: Prefix Declared]"
                     & " the element's namespace prefix have not been"
                     & " declared"));

               return;
            end if;
         end if;

         --  Resolve attribute's namespaces.

         for J in 1 .. Length (Self.Attribute_Set) loop
            declare
               Qname  : constant Symbol_Identifier
                 := Qualified_Name (Self.Attribute_Set, J);
               Prefix : constant Symbol_Identifier
                 := Prefix_Name (Self.Symbols, Qname);
               Ns     : Symbol_Identifier;

            begin
               if Prefix /= No_Symbol then
                  Ns := Resolve (Self.Namespace_Scope, Prefix);

                  --  [NSXML1.1 5 NSC: Prefix Declared]
                  --
                  --  "The namespace prefix, unless it is xml or xmlns, must
                  --  have been declared in a namespace declaration attribute
                  --  in either the start-tag of the element where the prefix
                  --  is used or in an ancestor element (i.e. an element in
                  --  whose content the prefixed markup occurs), Furthermore,
                  --  the attribute value is the innermost such declaration
                  --  must not be an empty string."
                  --
                  --  Check whether attribute's prefix is declared.

                  if Ns = No_Symbol then
                     Callbacks.Call_Fatal_Error
                      (Self.all,
                       League.Strings.To_Universal_String
                        ("[NSXML1.1 5 NSC: Prefix Declared]"
                           & " the attribute's namespace prefix have not been"
                           & " declared"));

                     return;
                  end if;

                  Set_Namespace_URI (Self.Attribute_Set, J, Ns);
               end if;
            end;
         end loop;

         --  [NSXML1.1 6.3]
         --
         --  In XML documents conforming to this specification, no tag may
         --  contain two attributes which:
         --
         --  1. have identical names, or
         --
         --  2. have qualified names with the same local part and with prefixes
         --  which have been bound to namespace names that are identical.
         --
         --  This constraint is equivalent to requiring that no element have
         --  two attributes with the same expanded name.

         for J in 1 .. Length (Self.Attribute_Set) loop
            declare
               Ns : constant Symbol_Identifier
                 := Namespace_URI (Self.Attribute_Set, J);
               Ln : constant Symbol_Identifier
                 := Local_Name
                     (Self.Symbols, Qualified_Name (Self.Attribute_Set, J));

            begin
               for K in J + 1 .. Length (Self.Attribute_Set) loop
                  if Namespace_URI (Self.Attribute_Set, K) = Ns
                    and Local_Name
                     (Self.Symbols, Qualified_Name (Self.Attribute_Set, K))
                        = Ln
                  then
                     Callbacks.Call_Fatal_Error
                      (Self.all,
                       League.Strings.To_Universal_String
                        ("[NSXML1.1 6.3] attributes must not have the same"
                           & " expanded name"));

                     return;
                  end if;
               end loop;
            end;
         end loop;

         Convert;
         Callbacks.Call_Start_Element
          (Self           => Self.all,
           Namespace_URI  => Name (Self.Symbols, Element_Namespace),
           Local_Name     =>
             Local_Name (Self.Symbols, Self.Current_Element_Name),
           Qualified_Name => Name (Self.Symbols, Self.Current_Element_Name),
           Attributes     => Self.SAX_Attributes);

      else
         Convert;
         Callbacks.Call_Start_Element
          (Self           => Self.all,
           Namespace_URI  => Matreshka.Internals.Strings.Shared_Empty'Access,
           Local_Name     => Matreshka.Internals.Strings.Shared_Empty'Access,
           Qualified_Name =>
             Matreshka.Internals.XML.Symbol_Tables.Name
              (Self.Symbols, Self.Current_Element_Name),
           Attributes     => Self.SAX_Attributes);
      end if;

      Clear (Self.Attribute_Set);
      XML.SAX.Attributes.Internals.Clear (Self.SAX_Attributes);
   end On_Start_Tag;

   --------------------------------------------
   -- On_Unexpected_Token_After_Root_Element --
   --------------------------------------------

   procedure On_Unexpected_Token_After_Root_Element
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      Callbacks.Call_Fatal_Error
       (Self.all,
        League.Strings.To_Universal_String
         ("enexpected item ather root element"));
   end On_Unexpected_Token_After_Root_Element;

   --------------------------------
   -- On_XML_Version_Information --
   --------------------------------

   procedure On_XML_Version_Information
    (Self    : not null access SAX_Simple_Reader'Class;
     Version : not null Matreshka.Internals.Strings.Shared_String_Access)
   is
      use type Matreshka.Internals.Utf16.Utf16_String_Index;
      use type Matreshka.Internals.Utf16.Utf16_Code_Unit;

      Error : Boolean := True;

   begin
      --  XML declaration can contains only BMP characters, so we don't need to
      --  use expensive UTF-16 decoding here.

      if Version.Unused = 3
        and then (Version.Value (0) = Digit_One
                    and then Version.Value (1) = Full_Stop)
      then
         if Version.Value (2) = Digit_Zero then
            Scanner.Set_XML_Version (Self, XML_1_0);
            Error := False;

         elsif Version.Value (2) = Digit_One then
            Scanner.Set_XML_Version (Self, XML_1_1);
            Error := False;
         end if;
      end if;

      if Error then
         raise Program_Error;
      end if;
   end On_XML_Version_Information;

end XML.SAX.Simple_Readers.Parser.Actions;
