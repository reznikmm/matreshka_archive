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
-- Copyright © 2011-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
with AMF.Internals.UML_Packageable_Elements;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Named_Elements;
with AMF.UML.Namespaces;
with AMF.UML.Packages.Collections;
with AMF.UML.Parameterable_Elements.Collections;
with AMF.UML.String_Expressions.Collections;
with AMF.UML.Template_Bindings.Collections;
with AMF.UML.Template_Parameters;
with AMF.UML.Template_Signatures;
with AMF.UML.Types;
with AMF.UML.Value_Specifications.Collections;
with AMF.Visitors;

package AMF.Internals.UML_String_Expressions is

   type UML_String_Expression_Proxy is
     limited new AMF.Internals.UML_Packageable_Elements.UML_Packageable_Element_Proxy
       and AMF.UML.String_Expressions.UML_String_Expression with null record;

   overriding function Get_Owning_Expression
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;
   --  Getter of StringExpression::owningExpression.
   --
   --  The string expression of which this expression is a substring.

   overriding procedure Set_Owning_Expression
    (Self : not null access UML_String_Expression_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);
   --  Setter of StringExpression::owningExpression.
   --
   --  The string expression of which this expression is a substring.

   overriding function Get_Sub_Expression
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.UML.String_Expressions.Collections.Set_Of_UML_String_Expression;
   --  Getter of StringExpression::subExpression.
   --
   --  The StringExpressions that constitute this StringExpression.

   overriding function Get_Operand
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.UML.Value_Specifications.Collections.Ordered_Set_Of_UML_Value_Specification;
   --  Getter of Expression::operand.
   --
   --  Specifies a sequence of operands.

   overriding function Get_Symbol
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.Optional_String;
   --  Getter of Expression::symbol.
   --
   --  The symbol associated with the node in the expression tree.

   overriding procedure Set_Symbol
    (Self : not null access UML_String_Expression_Proxy;
     To   : AMF.Optional_String);
   --  Setter of Expression::symbol.
   --
   --  The symbol associated with the node in the expression tree.

   overriding function Get_Type
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.UML.Types.UML_Type_Access;
   --  Getter of TypedElement::type.
   --
   --  The type of the TypedElement.
   --  This information is derived from the return result for this Operation.

   overriding procedure Set_Type
    (Self : not null access UML_String_Expression_Proxy;
     To   : AMF.UML.Types.UML_Type_Access);
   --  Setter of TypedElement::type.
   --
   --  The type of the TypedElement.
   --  This information is derived from the return result for this Operation.

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;
   --  Getter of NamedElement::clientDependency.
   --
   --  Indicates the dependencies that reference the client.

   overriding function Get_Name_Expression
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;
   --  Getter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding procedure Set_Name_Expression
    (Self : not null access UML_String_Expression_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);
   --  Setter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding function Get_Namespace
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of NamedElement::namespace.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::qualifiedName.
   --
   --  A name which allows the NamedElement to be identified within a
   --  hierarchy of nested Namespaces. It is constructed from the names of the
   --  containing namespaces starting at the root of the hierarchy and ending
   --  with the name of the NamedElement itself.

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding procedure Set_Owning_Template_Parameter
    (Self : not null access UML_String_Expression_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_String_Expression_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding function Get_Owned_Template_Signature
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.UML.Template_Signatures.UML_Template_Signature_Access;
   --  Getter of TemplateableElement::ownedTemplateSignature.
   --
   --  The optional template signature specifying the formal template
   --  parameters.

   overriding procedure Set_Owned_Template_Signature
    (Self : not null access UML_String_Expression_Proxy;
     To   : AMF.UML.Template_Signatures.UML_Template_Signature_Access);
   --  Setter of TemplateableElement::ownedTemplateSignature.
   --
   --  The optional template signature specifying the formal template
   --  parameters.

   overriding function Get_Template_Binding
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.UML.Template_Bindings.Collections.Set_Of_UML_Template_Binding;
   --  Getter of TemplateableElement::templateBinding.
   --
   --  The optional bindings from this element to templates.

   overriding function String_Value
    (Self : not null access constant UML_String_Expression_Proxy)
       return League.Strings.Universal_String;
   --  Operation StringExpression::stringValue.
   --
   --  The query stringValue() returns the string that concatenates, in order,
   --  all the component string literals of all the subexpressions that are
   --  part of the StringExpression.

   overriding function Boolean_Value
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.Optional_Boolean;
   --  Operation ValueSpecification::booleanValue.
   --
   --  The query booleanValue() gives a single Boolean value when one can be
   --  computed.

   overriding function Integer_Value
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.Optional_Integer;
   --  Operation ValueSpecification::integerValue.
   --
   --  The query integerValue() gives a single Integer value when one can be
   --  computed.

   overriding function Is_Compatible_With
    (Self : not null access constant UML_String_Expression_Proxy;
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

   overriding function Is_Computable
    (Self : not null access constant UML_String_Expression_Proxy)
       return Boolean;
   --  Operation ValueSpecification::isComputable.
   --
   --  The query isComputable() determines whether a value specification can
   --  be computed in a model. This operation cannot be fully defined in OCL.
   --  A conforming implementation is expected to deliver true for this
   --  operation for all value specifications that it can compute, and to
   --  compute all of those for which the operation is true. A conforming
   --  implementation is expected to be able to compute the value of all
   --  literals.

   overriding function Is_Null
    (Self : not null access constant UML_String_Expression_Proxy)
       return Boolean;
   --  Operation ValueSpecification::isNull.
   --
   --  The query isNull() returns true when it can be computed that the value
   --  is null.

   overriding function Real_Value
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.Optional_Real;
   --  Operation ValueSpecification::realValue.
   --
   --  The query realValue() gives a single Real value when one can be
   --  computed.

   overriding function String_Value
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.Optional_String;
   --  Operation ValueSpecification::stringValue.
   --
   --  The query stringValue() gives a single String value when one can be
   --  computed.

   overriding function Unlimited_Value
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.Optional_Unlimited_Natural;
   --  Operation ValueSpecification::unlimitedValue.
   --
   --  The query unlimitedValue() gives a single UnlimitedNatural value when
   --  one can be computed.

   overriding function All_Owning_Packages
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Operation NamedElement::allOwningPackages.
   --
   --  The query allOwningPackages() returns all the directly or indirectly
   --  owning packages.

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_String_Expression_Proxy;
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
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Operation NamedElement::namespace.
   --
   --  Missing derivation for NamedElement::/namespace : Namespace

   overriding function Is_Template_Parameter
    (Self : not null access constant UML_String_Expression_Proxy)
       return Boolean;
   --  Operation ParameterableElement::isTemplateParameter.
   --
   --  The query isTemplateParameter() determines if this parameterable
   --  element is exposed as a formal template parameter.

   overriding function Is_Template
    (Self : not null access constant UML_String_Expression_Proxy)
       return Boolean;
   --  Operation TemplateableElement::isTemplate.
   --
   --  The query isTemplate() returns whether this templateable element is
   --  actually a template.

   overriding function Parameterable_Elements
    (Self : not null access constant UML_String_Expression_Proxy)
       return AMF.UML.Parameterable_Elements.Collections.Set_Of_UML_Parameterable_Element;
   --  Operation TemplateableElement::parameterableElements.
   --
   --  The query parameterableElements() returns the set of elements that may
   --  be used as the parametered elements for a template parameter of this
   --  templateable element. By default, this set includes all the owned
   --  elements. Subclasses may override this operation if they choose to
   --  restrict the set of parameterable elements.

   overriding procedure Enter_Element
    (Self    : not null access constant UML_String_Expression_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Element
    (Self    : not null access constant UML_String_Expression_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Element
    (Self     : not null access constant UML_String_Expression_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_String_Expressions;
