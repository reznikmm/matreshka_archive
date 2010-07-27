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
   use Matreshka.Internals.XML.Namespace_Scopes;
   use Matreshka.Internals.XML.Symbol_Tables;

   Full_Stop  : constant := 16#002E#;
   Digit_Zero : constant := 16#0030#;
   Digit_One  : constant := 16#0031#;

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

   ---------------------------
   -- On_Elements_Attribute --
   ---------------------------

   procedure On_Elements_Attribute
    (Self    : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier;
     Value  : not null Matreshka.Internals.Strings.Shared_String_Access)
   is
      Inserted : Boolean;

   begin
      Insert (Self.Attribute_Set, Symbol, Value, Inserted);

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
   end On_Elements_Attribute;

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

   --------------------------
   -- On_Start_Of_Document --
   --------------------------

   procedure On_Start_Of_Document
    (Self : not null access SAX_Simple_Reader'Class) is
   begin
      Callbacks.Call_Start_Document (Self.all);
   end On_Start_Of_Document;

   ------------------
   -- On_Start_Tag --
   ------------------

   procedure On_Start_Tag
    (Self   : not null access SAX_Simple_Reader'Class;
     Symbol : Matreshka.Internals.XML.Symbol_Identifier)
   is
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
                   (Self.Attributes,
                    Name (Self.Symbols, Namespace_URI (Self.Attribute_Set, J)),
                    Local_Name (Self.Symbols, Qname),
                    Name (Self.Symbols, Qname),
                    Value (Self.Attribute_Set, J));
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

            elsif Self.Root_Symbol /= Symbol then
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

      Self.Element_Names.Append (Symbol);

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

         if Prefix_Name (Self.Symbols, Symbol) = Symbol_xmlns then
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

         Element_Prefix := Prefix_Name (Self.Symbols, Symbol);

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
           Local_Name     => Local_Name (Self.Symbols, Symbol),
           Qualified_Name => Name (Self.Symbols, Symbol),
           Attributes     => Self.Attributes);

      else
         Convert;
         Callbacks.Call_Start_Element
          (Self           => Self.all,
           Namespace_URI  => Matreshka.Internals.Strings.Shared_Empty'Access,
           Local_Name     => Matreshka.Internals.Strings.Shared_Empty'Access,
           Qualified_Name =>
             Matreshka.Internals.XML.Symbol_Tables.Name (Self.Symbols, Symbol),
           Attributes     => Self.Attributes);
      end if;

      Clear (Self.Attribute_Set);
      XML.SAX.Attributes.Internals.Clear (Self.Attributes);
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
