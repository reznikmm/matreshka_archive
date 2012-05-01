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
with AMF.UML.Classifiers;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Named_Elements.Collections;
with AMF.UML.Namespaces;
with AMF.UML.Opaque_Expressions;
with AMF.UML.Packages.Collections;
with AMF.UML.Parameterable_Elements;
with AMF.UML.String_Expressions;
with AMF.UML.Substitutions;
with AMF.UML.Template_Parameters;
with AMF.Visitors;

package AMF.Internals.UML_Substitutions is

   type UML_Substitution_Proxy is
     limited new AMF.Internals.UML_Packageable_Elements.UML_Packageable_Element_Proxy
       and AMF.UML.Substitutions.UML_Substitution with null record;

   overriding function Get_Contract
    (Self : not null access constant UML_Substitution_Proxy)
       return AMF.UML.Classifiers.UML_Classifier_Access;
   --  Getter of Substitution::contract.
   --
   --  The contract with which the substituting classifier complies.

   overriding procedure Set_Contract
    (Self : not null access UML_Substitution_Proxy;
     To   : AMF.UML.Classifiers.UML_Classifier_Access);
   --  Setter of Substitution::contract.
   --
   --  The contract with which the substituting classifier complies.

   overriding function Get_Substituting_Classifier
    (Self : not null access constant UML_Substitution_Proxy)
       return AMF.UML.Classifiers.UML_Classifier_Access;
   --  Getter of Substitution::substitutingClassifier.
   --
   --  Instances of the substituting classifier are runtime substitutable
   --  where instances of the contract classifier are expected.

   overriding procedure Set_Substituting_Classifier
    (Self : not null access UML_Substitution_Proxy;
     To   : AMF.UML.Classifiers.UML_Classifier_Access);
   --  Setter of Substitution::substitutingClassifier.
   --
   --  Instances of the substituting classifier are runtime substitutable
   --  where instances of the contract classifier are expected.

   overriding function Get_Mapping
    (Self : not null access constant UML_Substitution_Proxy)
       return AMF.UML.Opaque_Expressions.UML_Opaque_Expression_Access;
   --  Getter of Abstraction::mapping.
   --
   --  An composition of an Expression that states the abstraction
   --  relationship between the supplier and the client. In some cases, such
   --  as Derivation, it is usually formal and unidirectional; in other cases,
   --  such as Trace, it is usually informal and bidirectional. The mapping
   --  expression is optional and may be omitted if the precise relationship
   --  between the elements is not specified.

   overriding procedure Set_Mapping
    (Self : not null access UML_Substitution_Proxy;
     To   : AMF.UML.Opaque_Expressions.UML_Opaque_Expression_Access);
   --  Setter of Abstraction::mapping.
   --
   --  An composition of an Expression that states the abstraction
   --  relationship between the supplier and the client. In some cases, such
   --  as Derivation, it is usually formal and unidirectional; in other cases,
   --  such as Trace, it is usually informal and bidirectional. The mapping
   --  expression is optional and may be omitted if the precise relationship
   --  between the elements is not specified.

   overriding function Get_Client
    (Self : not null access constant UML_Substitution_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Getter of Dependency::client.
   --
   --  The element(s) dependent on the supplier element(s). In some cases
   --  (such as a Trace Abstraction) the assignment of direction (that is, the
   --  designation of the client element) is at the discretion of the modeler,
   --  and is a stipulation.

   overriding function Get_Supplier
    (Self : not null access constant UML_Substitution_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Getter of Dependency::supplier.
   --
   --  The element(s) independent of the client element(s), in the same
   --  respect and the same dependency relationship. In some directed
   --  dependency relationships (such as Refinement Abstractions), a common
   --  convention in the domain of class-based OO software is to put the more
   --  abstract element in this role. Despite this convention, users of UML
   --  may stipulate a sense of dependency suitable for their domain, which
   --  makes a more abstract element dependent on that which is more specific.

   overriding function Get_Source
    (Self : not null access constant UML_Substitution_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of DirectedRelationship::source.
   --
   --  Specifies the sources of the DirectedRelationship.

   overriding function Get_Target
    (Self : not null access constant UML_Substitution_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of DirectedRelationship::target.
   --
   --  Specifies the targets of the DirectedRelationship.

   overriding function Get_Related_Element
    (Self : not null access constant UML_Substitution_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Relationship::relatedElement.
   --
   --  Specifies the elements related by the Relationship.

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Substitution_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;
   --  Getter of NamedElement::clientDependency.
   --
   --  Indicates the dependencies that reference the client.

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Substitution_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;
   --  Getter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Substitution_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);
   --  Setter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding function Get_Namespace
    (Self : not null access constant UML_Substitution_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of NamedElement::namespace.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Substitution_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::qualifiedName.
   --
   --  A name which allows the NamedElement to be identified within a
   --  hierarchy of nested Namespaces. It is constructed from the names of the
   --  containing namespaces starting at the root of the hierarchy and ending
   --  with the name of the NamedElement itself.

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UML_Substitution_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding procedure Set_Owning_Template_Parameter
    (Self : not null access UML_Substitution_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Substitution_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Substitution_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Substitution_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Operation NamedElement::allOwningPackages.
   --
   --  The query allOwningPackages() returns all the directly or indirectly
   --  owning packages.

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Substitution_Proxy;
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
    (Self : not null access constant UML_Substitution_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Operation NamedElement::namespace.
   --
   --  Missing derivation for NamedElement::/namespace : Namespace

   overriding function Qualified_Name
    (Self : not null access constant UML_Substitution_Proxy)
       return League.Strings.Universal_String;
   --  Operation NamedElement::qualifiedName.
   --
   --  When there is a name, and all of the containing namespaces have a name,
   --  the qualified name is constructed from the names of the containing
   --  namespaces.

   overriding function Is_Compatible_With
    (Self : not null access constant UML_Substitution_Proxy;
     P : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
       return Boolean;
   --  Operation ParameterableElement::isCompatibleWith.
   --
   --  The query isCompatibleWith() determines if this parameterable element
   --  is compatible with the specified parameterable element. By default
   --  parameterable element P is compatible with parameterable element Q if
   --  the kind of P is the same or a subtype as the kind of Q. Subclasses
   --  should override this operation to specify different compatibility
   --  constraints.

   overriding function Is_Template_Parameter
    (Self : not null access constant UML_Substitution_Proxy)
       return Boolean;
   --  Operation ParameterableElement::isTemplateParameter.
   --
   --  The query isTemplateParameter() determines if this parameterable
   --  element is exposed as a formal template parameter.

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Substitution_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Substitution_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Substitution_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_Substitutions;
