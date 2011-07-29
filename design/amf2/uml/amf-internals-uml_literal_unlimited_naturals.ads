------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--                          Ada Modeling Framework                          --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with AMF.Internals.UML_Elements;
with AMF.UML.Comments.Collections;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Literal_Unlimited_Naturals;
with AMF.UML.Named_Elements;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Parameterable_Elements;
with AMF.UML.String_Expressions;
with AMF.UML.Template_Parameters;
with AMF.UML.Types;

package AMF.Internals.UML_Literal_Unlimited_Naturals is

   type UML_Literal_Unlimited_Natural_Proxy is
     limited new AMF.Internals.UML_Elements.UML_Element_Proxy
       and AMF.UML.Literal_Unlimited_Naturals.UML_Literal_Unlimited_Natural with null record;

   overriding function Get_Value
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.Unlimited_Natural;
   --  Getter of LiteralUnlimitedNatural::value.
   --
   --  The specified UnlimitedNatural value.

   overriding procedure Set_Value
    (Self : not null access UML_Literal_Unlimited_Natural_Proxy;
     To   : AMF.Unlimited_Natural);
   --  Setter of LiteralUnlimitedNatural::value.
   --
   --  The specified UnlimitedNatural value.

   overriding function Get_Type
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.UML.Types.UML_Type_Access;
   --  Getter of TypedElement::type.
   --
   --  The type of the TypedElement.
   --  This information is derived from the return result for this Operation.

   overriding procedure Set_Type
    (Self : not null access UML_Literal_Unlimited_Natural_Proxy;
     To   : AMF.UML.Types.UML_Type_Access);
   --  Setter of TypedElement::type.
   --
   --  The type of the TypedElement.
   --  This information is derived from the return result for this Operation.

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;
   --  Getter of NamedElement::clientDependency.
   --
   --  Indicates the dependencies that reference the client.

   overriding function Get_Name
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding procedure Set_Name
    (Self : not null access UML_Literal_Unlimited_Natural_Proxy;
     To   : AMF.Optional_String);
   --  Setter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;
   --  Getter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Literal_Unlimited_Natural_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);
   --  Setter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding function Get_Namespace
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of NamedElement::namespace.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::qualifiedName.
   --
   --  A name which allows the NamedElement to be identified within a 
   --  hierarchy of nested Namespaces. It is constructed from the names of the 
   --  containing namespaces starting at the root of the hierarchy and ending 
   --  with the name of the NamedElement itself.

   overriding function Get_Visibility
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind;
   --  Getter of NamedElement::visibility.
   --
   --  Determines where the NamedElement appears within different Namespaces 
   --  within the overall model, and its accessibility.

   overriding procedure Set_Visibility
    (Self : not null access UML_Literal_Unlimited_Natural_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind);
   --  Setter of NamedElement::visibility.
   --
   --  Determines where the NamedElement appears within different Namespaces 
   --  within the overall model, and its accessibility.

   overriding function Get_Owned_Comment
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;
   --  Getter of Element::ownedComment.
   --
   --  The Comments owned by this element.

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   overriding function Get_Owner
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   overriding function Get_Visibility
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.UML.UML_Visibility_Kind;
   --  Getter of PackageableElement::visibility.
   --
   --  Indicates that packageable elements must always have a visibility, 
   --  i.e., visibility is not optional.

   overriding procedure Set_Visibility
    (Self : not null access UML_Literal_Unlimited_Natural_Proxy;
     To   : AMF.UML.UML_Visibility_Kind);
   --  Setter of PackageableElement::visibility.
   --
   --  Indicates that packageable elements must always have a visibility, 
   --  i.e., visibility is not optional.

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding procedure Set_Owning_Template_Parameter
    (Self : not null access UML_Literal_Unlimited_Natural_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Literal_Unlimited_Natural_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding function Is_Computable
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return Boolean;
   --  Operation LiteralUnlimitedNatural::isComputable.
   --
   --  The query isComputable() is redefined to be true.

   overriding function Unlimited_Value
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.Unlimited_Natural;
   --  Operation LiteralUnlimitedNatural::unlimitedValue.
   --
   --  The query unlimitedValue() gives the value.

   overriding function Boolean_Value
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.Optional_Boolean;
   --  Operation ValueSpecification::booleanValue.
   --
   --  The query booleanValue() gives a single Boolean value when one can be 
   --  computed.

   overriding function Integer_Value
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.Optional_Integer;
   --  Operation ValueSpecification::integerValue.
   --
   --  The query integerValue() gives a single Integer value when one can be 
   --  computed.

   overriding function Is_Compatible_With
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy;
     P : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
       return Boolean;
   --  Operation ValueSpecification::isCompatibleWith.
   --
   --  The query isCompatibleWith() determines if this parameterable element 
   --  is compatible with the specified parameterable element. By default 
   --  parameterable element P is compatible with parameterable element Q if 
   --  the kind of P is the same or a subtype as the kind of Q. In addition, 
   --  for ValueSpecification, the type must be conformant with the type of 
   --  the specified parameterable element.

   overriding function Is_Null
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return Boolean;
   --  Operation ValueSpecification::isNull.
   --
   --  The query isNull() returns true when it can be computed that the value 
   --  is null.

   overriding function Real_Value
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.Optional_Real;
   --  Operation ValueSpecification::realValue.
   --
   --  The query realValue() gives a single Real value when one can be 
   --  computed.

   overriding function String_Value
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.Optional_String;
   --  Operation ValueSpecification::stringValue.
   --
   --  The query stringValue() gives a single String value when one can be 
   --  computed.

   overriding function Unlimited_Value
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.Optional_Unlimited_Natural;
   --  Operation ValueSpecification::unlimitedValue.
   --
   --  The query unlimitedValue() gives a single UnlimitedNatural value when 
   --  one can be computed.

   overriding function All_Namespaces
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;
   --  Operation NamedElement::allNamespaces.
   --
   --  The query allNamespaces() gives the sequence of namespaces in which the 
   --  NamedElement is nested, working outwards.

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Operation NamedElement::allOwningPackages.
   --
   --  The query allOwningPackages() returns all the directly or indirectly 
   --  owning packages.

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean;
   --  Operation NamedElement::isDistinguishableFrom.
   --
   --  The query isDistinguishableFrom() determines whether two NamedElements 
   --  may logically co-exist within a Namespace. By default, two named 
   --  elements are distinguishable if (a) they have unrelated types or (b) 
   --  they have related types but different names.

   overriding function Namespace
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Operation NamedElement::namespace.
   --
   --  Missing derivation for NamedElement::/namespace : Namespace

   overriding function Qualified_Name
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return League.Strings.Universal_String;
   --  Operation NamedElement::qualifiedName.
   --
   --  When there is a name, and all of the containing namespaces have a name, 
   --  the qualified name is constructed from the names of the containing 
   --  namespaces.

   overriding function Separator
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return League.Strings.Universal_String;
   --  Operation NamedElement::separator.
   --
   --  The query separator() gives the string that is used to separate names 
   --  when constructing a qualified name.

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned 
   --  elements of an element.

   overriding function Must_Be_Owned
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return Boolean;
   --  Operation Element::mustBeOwned.
   --
   --  The query mustBeOwned() indicates whether elements of this type must 
   --  have an owner. Subclasses of Element that do not require an owner must 
   --  override this operation.

   overriding function Is_Template_Parameter
    (Self : not null access constant UML_Literal_Unlimited_Natural_Proxy)
       return Boolean;
   --  Operation ParameterableElement::isTemplateParameter.
   --
   --  The query isTemplateParameter() determines if this parameterable 
   --  element is exposed as a formal template parameter.

end AMF.Internals.UML_Literal_Unlimited_Naturals;