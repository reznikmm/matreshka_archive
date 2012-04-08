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
with AMF.Internals.UML_Named_Elements;
with AMF.UML.Classifiers.Collections;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Named_Elements;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Redefinable_Elements.Collections;
with AMF.UML.Redefinable_Template_Signatures.Collections;
with AMF.UML.String_Expressions;
with AMF.UML.Template_Parameters.Collections;
with AMF.UML.Templateable_Elements;
with AMF.Visitors;

package AMF.Internals.UML_Redefinable_Template_Signatures is

   type UML_Redefinable_Template_Signature_Proxy is
     limited new AMF.Internals.UML_Named_Elements.UML_Named_Element_Proxy
       and AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature with null record;

   overriding function Get_Classifier
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.UML.Classifiers.UML_Classifier_Access;
   --  Getter of RedefinableTemplateSignature::classifier.
   --
   --  The classifier that owns this template signature.

   overriding procedure Set_Classifier
    (Self : not null access UML_Redefinable_Template_Signature_Proxy;
     To   : AMF.UML.Classifiers.UML_Classifier_Access);
   --  Setter of RedefinableTemplateSignature::classifier.
   --
   --  The classifier that owns this template signature.

   overriding function Get_Extended_Signature
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.UML.Redefinable_Template_Signatures.Collections.Set_Of_UML_Redefinable_Template_Signature;
   --  Getter of RedefinableTemplateSignature::extendedSignature.
   --
   --  The template signature that is extended by this template signature.

   overriding function Get_Inherited_Parameter
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.UML.Template_Parameters.Collections.Set_Of_UML_Template_Parameter;
   --  Getter of RedefinableTemplateSignature::inheritedParameter.
   --
   --  The formal template parameters of the extendedSignature.

   overriding function Get_Is_Leaf
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return Boolean;
   --  Getter of RedefinableElement::isLeaf.
   --
   --  Indicates whether it is possible to further redefine a
   --  RedefinableElement. If the value is true, then it is not possible to
   --  further redefine the RedefinableElement. Note that this property is
   --  preserved through package merge operations; that is, the capability to
   --  redefine a RedefinableElement (i.e., isLeaf=false) must be preserved in
   --  the resulting RedefinableElement of a package merge operation where a
   --  RedefinableElement with isLeaf=false is merged with a matching
   --  RedefinableElement with isLeaf=true: the resulting RedefinableElement
   --  will have isLeaf=false. Default value is false.

   overriding procedure Set_Is_Leaf
    (Self : not null access UML_Redefinable_Template_Signature_Proxy;
     To   : Boolean);
   --  Setter of RedefinableElement::isLeaf.
   --
   --  Indicates whether it is possible to further redefine a
   --  RedefinableElement. If the value is true, then it is not possible to
   --  further redefine the RedefinableElement. Note that this property is
   --  preserved through package merge operations; that is, the capability to
   --  redefine a RedefinableElement (i.e., isLeaf=false) must be preserved in
   --  the resulting RedefinableElement of a package merge operation where a
   --  RedefinableElement with isLeaf=false is merged with a matching
   --  RedefinableElement with isLeaf=true: the resulting RedefinableElement
   --  will have isLeaf=false. Default value is false.

   overriding function Get_Redefined_Element
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.UML.Redefinable_Elements.Collections.Set_Of_UML_Redefinable_Element;
   --  Getter of RedefinableElement::redefinedElement.
   --
   --  The redefinable element that is being redefined by this element.

   overriding function Get_Redefinition_Context
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Getter of RedefinableElement::redefinitionContext.
   --
   --  References the contexts that this element may be redefined from.

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;
   --  Getter of NamedElement::clientDependency.
   --
   --  Indicates the dependencies that reference the client.

   overriding function Get_Name
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding procedure Set_Name
    (Self : not null access UML_Redefinable_Template_Signature_Proxy;
     To   : AMF.Optional_String);
   --  Setter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;
   --  Getter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Redefinable_Template_Signature_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);
   --  Setter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding function Get_Namespace
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of NamedElement::namespace.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::qualifiedName.
   --
   --  A name which allows the NamedElement to be identified within a
   --  hierarchy of nested Namespaces. It is constructed from the names of the
   --  containing namespaces starting at the root of the hierarchy and ending
   --  with the name of the NamedElement itself.

   overriding function Get_Visibility
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind;
   --  Getter of NamedElement::visibility.
   --
   --  Determines where the NamedElement appears within different Namespaces
   --  within the overall model, and its accessibility.

   overriding procedure Set_Visibility
    (Self : not null access UML_Redefinable_Template_Signature_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind);
   --  Setter of NamedElement::visibility.
   --
   --  Determines where the NamedElement appears within different Namespaces
   --  within the overall model, and its accessibility.

   overriding function Get_Owned_Element
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   overriding function Get_Owner
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   overriding function Get_Owned_Parameter
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.UML.Template_Parameters.Collections.Ordered_Set_Of_UML_Template_Parameter;
   --  Getter of TemplateSignature::ownedParameter.
   --
   --  The formal template parameters that are owned by this template
   --  signature.

   overriding function Get_Parameter
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.UML.Template_Parameters.Collections.Ordered_Set_Of_UML_Template_Parameter;
   --  Getter of TemplateSignature::parameter.
   --
   --  The ordered set of all formal template parameters for this template
   --  signature.

   overriding function Get_Template
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.UML.Templateable_Elements.UML_Templateable_Element_Access;
   --  Getter of TemplateSignature::template.
   --
   --  The element that owns this template signature.

   overriding procedure Set_Template
    (Self : not null access UML_Redefinable_Template_Signature_Proxy;
     To   : AMF.UML.Templateable_Elements.UML_Templateable_Element_Access);
   --  Setter of TemplateSignature::template.
   --
   --  The element that owns this template signature.

   overriding function Inherited_Parameter
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.UML.Template_Parameters.Collections.Set_Of_UML_Template_Parameter;
   --  Operation RedefinableTemplateSignature::inheritedParameter.
   --
   --  Missing derivation for
   --  RedefinableTemplateSignature::/inheritedParameter : TemplateParameter

   overriding function Is_Consistent_With
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean;
   --  Operation RedefinableTemplateSignature::isConsistentWith.
   --
   --  The query isConsistentWith() specifies, for any two
   --  RedefinableTemplateSignatures in a context in which redefinition is
   --  possible, whether redefinition would be logically consistent. A
   --  redefining template signature is always consistent with a redefined
   --  template signature, since redefinition only adds new formal parameters.

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy;
     Redefined : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean;
   --  Operation RedefinableElement::isRedefinitionContextValid.
   --
   --  The query isRedefinitionContextValid() specifies whether the
   --  redefinition contexts of this RedefinableElement are properly related
   --  to the redefinition contexts of the specified RedefinableElement to
   --  allow this element to redefine the other. By default at least one of
   --  the redefinition contexts of this element must be a specialization of
   --  at least one of the redefinition contexts of the specified element.

   overriding function All_Namespaces
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;
   --  Operation NamedElement::allNamespaces.
   --
   --  The query allNamespaces() gives the sequence of namespaces in which the
   --  NamedElement is nested, working outwards.

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Operation NamedElement::allOwningPackages.
   --
   --  The query allOwningPackages() returns all the directly or indirectly
   --  owning packages.

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy;
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
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Operation NamedElement::namespace.
   --
   --  Missing derivation for NamedElement::/namespace : Namespace

   overriding function Qualified_Name
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return League.Strings.Universal_String;
   --  Operation NamedElement::qualifiedName.
   --
   --  When there is a name, and all of the containing namespaces have a name,
   --  the qualified name is constructed from the names of the containing
   --  namespaces.

   overriding function All_Owned_Elements
    (Self : not null access constant UML_Redefinable_Template_Signature_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned
   --  elements of an element.

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Redefinable_Template_Signature_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Redefinable_Template_Signature_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Redefinable_Template_Signature_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_Redefinable_Template_Signatures;
