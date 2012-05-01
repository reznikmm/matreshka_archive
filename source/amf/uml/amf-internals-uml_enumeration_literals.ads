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
with AMF.UML.Classifiers.Collections;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Deployments.Collections;
with AMF.UML.Enumeration_Literals;
with AMF.UML.Enumerations;
with AMF.UML.Named_Elements;
with AMF.UML.Namespaces;
with AMF.UML.Packageable_Elements.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Parameterable_Elements;
with AMF.UML.Slots.Collections;
with AMF.UML.String_Expressions;
with AMF.UML.Template_Parameters;
with AMF.UML.Value_Specifications;
with AMF.Visitors;

package AMF.Internals.UML_Enumeration_Literals is

   type UML_Enumeration_Literal_Proxy is
     limited new AMF.Internals.UML_Packageable_Elements.UML_Packageable_Element_Proxy
       and AMF.UML.Enumeration_Literals.UML_Enumeration_Literal with null record;

   overriding function Get_Classifier
    (Self : not null access constant UML_Enumeration_Literal_Proxy)
       return AMF.UML.Enumerations.UML_Enumeration_Access;
   --  Getter of EnumerationLiteral::classifier.
   --
   --  The classifier of this EnumerationLiteral derived to be equal to its
   --  enumeration.

   overriding function Get_Enumeration
    (Self : not null access constant UML_Enumeration_Literal_Proxy)
       return AMF.UML.Enumerations.UML_Enumeration_Access;
   --  Getter of EnumerationLiteral::enumeration.
   --
   --  The Enumeration that this EnumerationLiteral is a member of.

   overriding procedure Set_Enumeration
    (Self : not null access UML_Enumeration_Literal_Proxy;
     To   : AMF.UML.Enumerations.UML_Enumeration_Access);
   --  Setter of EnumerationLiteral::enumeration.
   --
   --  The Enumeration that this EnumerationLiteral is a member of.

   overriding function Get_Classifier
    (Self : not null access constant UML_Enumeration_Literal_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Getter of InstanceSpecification::classifier.
   --
   --  The classifier or classifiers of the represented instance. If multiple
   --  classifiers are specified, the instance is classified by all of them.

   overriding function Get_Slot
    (Self : not null access constant UML_Enumeration_Literal_Proxy)
       return AMF.UML.Slots.Collections.Set_Of_UML_Slot;
   --  Getter of InstanceSpecification::slot.
   --
   --  A slot giving the value or values of a structural feature of the
   --  instance. An instance specification can have one slot per structural
   --  feature of its classifiers, including inherited features. It is not
   --  necessary to model a slot for each structural feature, in which case
   --  the instance specification is a partial description.

   overriding function Get_Specification
    (Self : not null access constant UML_Enumeration_Literal_Proxy)
       return AMF.UML.Value_Specifications.UML_Value_Specification_Access;
   --  Getter of InstanceSpecification::specification.
   --
   --  A specification of how to compute, derive, or construct the instance.

   overriding procedure Set_Specification
    (Self : not null access UML_Enumeration_Literal_Proxy;
     To   : AMF.UML.Value_Specifications.UML_Value_Specification_Access);
   --  Setter of InstanceSpecification::specification.
   --
   --  A specification of how to compute, derive, or construct the instance.

   overriding function Get_Deployed_Element
    (Self : not null access constant UML_Enumeration_Literal_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Getter of DeploymentTarget::deployedElement.
   --
   --  The set of elements that are manifested in an Artifact that is involved
   --  in Deployment to a DeploymentTarget.

   overriding function Get_Deployment
    (Self : not null access constant UML_Enumeration_Literal_Proxy)
       return AMF.UML.Deployments.Collections.Set_Of_UML_Deployment;
   --  Getter of DeploymentTarget::deployment.
   --
   --  The set of Deployments for a DeploymentTarget.

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Enumeration_Literal_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;
   --  Getter of NamedElement::clientDependency.
   --
   --  Indicates the dependencies that reference the client.

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Enumeration_Literal_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;
   --  Getter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Enumeration_Literal_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);
   --  Setter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding function Get_Namespace
    (Self : not null access constant UML_Enumeration_Literal_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of NamedElement::namespace.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Enumeration_Literal_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::qualifiedName.
   --
   --  A name which allows the NamedElement to be identified within a
   --  hierarchy of nested Namespaces. It is constructed from the names of the
   --  containing namespaces starting at the root of the hierarchy and ending
   --  with the name of the NamedElement itself.

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UML_Enumeration_Literal_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding procedure Set_Owning_Template_Parameter
    (Self : not null access UML_Enumeration_Literal_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Enumeration_Literal_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Enumeration_Literal_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding function Classifier
    (Self : not null access constant UML_Enumeration_Literal_Proxy)
       return AMF.UML.Enumerations.UML_Enumeration_Access;
   --  Operation EnumerationLiteral::classifier.
   --
   --  Missing derivation for EnumerationLiteral::/classifier : Enumeration

   overriding function Deployed_Element
    (Self : not null access constant UML_Enumeration_Literal_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Operation DeploymentTarget::deployedElement.
   --
   --  Missing derivation for DeploymentTarget::/deployedElement :
   --  PackageableElement

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Enumeration_Literal_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Operation NamedElement::allOwningPackages.
   --
   --  The query allOwningPackages() returns all the directly or indirectly
   --  owning packages.

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Enumeration_Literal_Proxy;
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
    (Self : not null access constant UML_Enumeration_Literal_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Operation NamedElement::namespace.
   --
   --  Missing derivation for NamedElement::/namespace : Namespace

   overriding function Is_Compatible_With
    (Self : not null access constant UML_Enumeration_Literal_Proxy;
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
    (Self : not null access constant UML_Enumeration_Literal_Proxy)
       return Boolean;
   --  Operation ParameterableElement::isTemplateParameter.
   --
   --  The query isTemplateParameter() determines if this parameterable
   --  element is exposed as a formal template parameter.

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Enumeration_Literal_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Enumeration_Literal_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Enumeration_Literal_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_Enumeration_Literals;
