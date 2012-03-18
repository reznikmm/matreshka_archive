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
-- Copyright © 2012, Vadim Godunko <vgodunko@gmail.com>                     --
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
with AMF.Internals.OCL_Elements;
with AMF.OCL.Any_Types;
with AMF.String_Collections;
with AMF.UML.Classifier_Template_Parameters;
with AMF.UML.Classifiers.Collections;
with AMF.UML.Collaboration_Uses.Collections;
with AMF.UML.Comments.Collections;
with AMF.UML.Constraints.Collections;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Element_Imports.Collections;
with AMF.UML.Elements.Collections;
with AMF.UML.Features.Collections;
with AMF.UML.Generalization_Sets.Collections;
with AMF.UML.Generalizations.Collections;
with AMF.UML.Named_Elements.Collections;
with AMF.UML.Namespaces.Collections;
with AMF.UML.Package_Imports.Collections;
with AMF.UML.Packageable_Elements.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Parameterable_Elements.Collections;
with AMF.UML.Properties.Collections;
with AMF.UML.Redefinable_Elements.Collections;
with AMF.UML.Redefinable_Template_Signatures;
with AMF.UML.String_Expressions;
with AMF.UML.Substitutions.Collections;
with AMF.UML.Template_Bindings.Collections;
with AMF.UML.Template_Parameters;
with AMF.UML.Template_Signatures;
with AMF.UML.Types;
with AMF.UML.Use_Cases.Collections;
with AMF.Visitors;

package AMF.Internals.OCL_Any_Types is

   type OCL_Any_Type_Proxy is
     limited new AMF.Internals.OCL_Elements.OCL_Element_Proxy
       and AMF.OCL.Any_Types.OCL_Any_Type with null record;

   overriding function Get_Attribute
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Properties.Collections.Set_Of_UML_Property;
   --  Getter of Classifier::attribute.
   --
   --  Refers to all of the Properties that are direct (i.e. not inherited or 
   --  imported) attributes of the classifier.

   overriding function Get_Collaboration_Use
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Collaboration_Uses.Collections.Set_Of_UML_Collaboration_Use;
   --  Getter of Classifier::collaborationUse.
   --
   --  References the collaboration uses owned by the classifier.

   overriding function Get_Feature
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Features.Collections.Set_Of_UML_Feature;
   --  Getter of Classifier::feature.
   --
   --  Specifies each feature defined in the classifier.
   --  Note that there may be members of the Classifier that are of the type 
   --  Feature but are not included in this association, e.g. inherited 
   --  features.

   overriding function Get_General
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Getter of Classifier::general.
   --
   --  Specifies the general Classifiers for this Classifier.
   --  References the general classifier in the Generalization relationship.

   overriding function Get_Generalization
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Generalizations.Collections.Set_Of_UML_Generalization;
   --  Getter of Classifier::generalization.
   --
   --  Specifies the Generalization relationships for this Classifier. These 
   --  Generalizations navigaten to more general classifiers in the 
   --  generalization hierarchy.

   overriding function Get_Inherited_Member
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Getter of Classifier::inheritedMember.
   --
   --  Specifies all elements inherited by this classifier from the general 
   --  classifiers.

   overriding function Get_Is_Abstract
    (Self : not null access constant OCL_Any_Type_Proxy)
       return Boolean;
   --  Getter of Classifier::isAbstract.
   --
   --  If true, the Classifier does not provide a complete declaration and can 
   --  typically not be instantiated. An abstract classifier is intended to be 
   --  used by other classifiers e.g. as the target of general 
   --  metarelationships or generalization relationships.

   overriding procedure Set_Is_Abstract
    (Self : not null access OCL_Any_Type_Proxy;
     To   : Boolean);
   --  Setter of Classifier::isAbstract.
   --
   --  If true, the Classifier does not provide a complete declaration and can 
   --  typically not be instantiated. An abstract classifier is intended to be 
   --  used by other classifiers e.g. as the target of general 
   --  metarelationships or generalization relationships.

   overriding function Get_Is_Final_Specialization
    (Self : not null access constant OCL_Any_Type_Proxy)
       return Boolean;
   --  Getter of Classifier::isFinalSpecialization.
   --
   --  If true, the Classifier cannot be specialized by generalization. Note 
   --  that this property is preserved through package merge operations; that 
   --  is, the capability to specialize a Classifier (i.e., 
   --  isFinalSpecialization =false) must be preserved in the resulting 
   --  Classifier of a package merge operation where a Classifier with 
   --  isFinalSpecialization =false is merged with a matching Classifier with 
   --  isFinalSpecialization =true: the resulting Classifier will have 
   --  isFinalSpecialization =false.

   overriding procedure Set_Is_Final_Specialization
    (Self : not null access OCL_Any_Type_Proxy;
     To   : Boolean);
   --  Setter of Classifier::isFinalSpecialization.
   --
   --  If true, the Classifier cannot be specialized by generalization. Note 
   --  that this property is preserved through package merge operations; that 
   --  is, the capability to specialize a Classifier (i.e., 
   --  isFinalSpecialization =false) must be preserved in the resulting 
   --  Classifier of a package merge operation where a Classifier with 
   --  isFinalSpecialization =false is merged with a matching Classifier with 
   --  isFinalSpecialization =true: the resulting Classifier will have 
   --  isFinalSpecialization =false.

   overriding function Get_Owned_Template_Signature
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access;
   --  Getter of Classifier::ownedTemplateSignature.
   --
   --  The optional template signature specifying the formal template 
   --  parameters.

   overriding procedure Set_Owned_Template_Signature
    (Self : not null access OCL_Any_Type_Proxy;
     To   : AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access);
   --  Setter of Classifier::ownedTemplateSignature.
   --
   --  The optional template signature specifying the formal template 
   --  parameters.

   overriding function Get_Owned_Use_Case
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Use_Cases.Collections.Set_Of_UML_Use_Case;
   --  Getter of Classifier::ownedUseCase.
   --
   --  References the use cases owned by this classifier.

   overriding function Get_Powertype_Extent
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Generalization_Sets.Collections.Set_Of_UML_Generalization_Set;
   --  Getter of Classifier::powertypeExtent.
   --
   --  Designates the GeneralizationSet of which the associated Classifier is 
   --  a power type.

   overriding function Get_Redefined_Classifier
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Getter of Classifier::redefinedClassifier.
   --
   --  References the Classifiers that are redefined by this Classifier.

   overriding function Get_Representation
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access;
   --  Getter of Classifier::representation.
   --
   --  References a collaboration use which indicates the collaboration that 
   --  represents this classifier.

   overriding procedure Set_Representation
    (Self : not null access OCL_Any_Type_Proxy;
     To   : AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access);
   --  Setter of Classifier::representation.
   --
   --  References a collaboration use which indicates the collaboration that 
   --  represents this classifier.

   overriding function Get_Substitution
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Substitutions.Collections.Set_Of_UML_Substitution;
   --  Getter of Classifier::substitution.
   --
   --  References the substitutions that are owned by this Classifier.

   overriding function Get_Template_Parameter
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access;
   --  Getter of Classifier::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding procedure Set_Template_Parameter
    (Self : not null access OCL_Any_Type_Proxy;
     To   : AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access);
   --  Setter of Classifier::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding function Get_Use_Case
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Use_Cases.Collections.Set_Of_UML_Use_Case;
   --  Getter of Classifier::useCase.
   --
   --  The set of use cases for which this Classifier is the subject.

   overriding function Get_Element_Import
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Element_Imports.Collections.Set_Of_UML_Element_Import;
   --  Getter of Namespace::elementImport.
   --
   --  References the ElementImports owned by the Namespace.

   overriding function Get_Imported_Member
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Getter of Namespace::importedMember.
   --
   --  References the PackageableElements that are members of this Namespace 
   --  as a result of either PackageImports or ElementImports.

   overriding function Get_Member
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Getter of Namespace::member.
   --
   --  A collection of NamedElements identifiable within the Namespace, either 
   --  by being owned or by being introduced by importing or inheritance.

   overriding function Get_Owned_Member
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Getter of Namespace::ownedMember.
   --
   --  A collection of NamedElements owned by the Namespace.

   overriding function Get_Owned_Rule
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint;
   --  Getter of Namespace::ownedRule.
   --
   --  Specifies a set of Constraints owned by this Namespace.

   overriding function Get_Package_Import
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Package_Imports.Collections.Set_Of_UML_Package_Import;
   --  Getter of Namespace::packageImport.
   --
   --  References the PackageImports owned by the Namespace.

   overriding function Get_Client_Dependency
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;
   --  Getter of NamedElement::clientDependency.
   --
   --  Indicates the dependencies that reference the client.

   overriding function Get_Name
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding procedure Set_Name
    (Self : not null access OCL_Any_Type_Proxy;
     To   : AMF.Optional_String);
   --  Setter of NamedElement::name.
   --
   --  The name of the NamedElement.

   overriding function Get_Name_Expression
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;
   --  Getter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding procedure Set_Name_Expression
    (Self : not null access OCL_Any_Type_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);
   --  Setter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding function Get_Namespace
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of NamedElement::namespace.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Qualified_Name
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::qualifiedName.
   --
   --  A name which allows the NamedElement to be identified within a 
   --  hierarchy of nested Namespaces. It is constructed from the names of the 
   --  containing namespaces starting at the root of the hierarchy and ending 
   --  with the name of the NamedElement itself.

   overriding function Get_Visibility
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Optional_UML_Visibility_Kind;
   --  Getter of NamedElement::visibility.
   --
   --  Determines where the NamedElement appears within different Namespaces 
   --  within the overall model, and its accessibility.

   overriding procedure Set_Visibility
    (Self : not null access OCL_Any_Type_Proxy;
     To   : AMF.UML.Optional_UML_Visibility_Kind);
   --  Setter of NamedElement::visibility.
   --
   --  Determines where the NamedElement appears within different Namespaces 
   --  within the overall model, and its accessibility.

   overriding function Get_Owned_Comment
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Comments.Collections.Set_Of_UML_Comment;
   --  Getter of Element::ownedComment.
   --
   --  The Comments owned by this element.

   overriding function Get_Owned_Element
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Getter of Element::ownedElement.
   --
   --  The Elements owned by this element.

   overriding function Get_Owner
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Elements.UML_Element_Access;
   --  Getter of Element::owner.
   --
   --  The Element that owns this element.

   overriding function Get_Package
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Packages.UML_Package_Access;
   --  Getter of Type::package.
   --
   --  Specifies the owning package of this classifier, if any.

   overriding procedure Set_Package
    (Self : not null access OCL_Any_Type_Proxy;
     To   : AMF.UML.Packages.UML_Package_Access);
   --  Setter of Type::package.
   --
   --  Specifies the owning package of this classifier, if any.

   overriding function Get_Visibility
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.UML_Visibility_Kind;
   --  Getter of PackageableElement::visibility.
   --
   --  Indicates that packageable elements must always have a visibility, 
   --  i.e., visibility is not optional.

   overriding procedure Set_Visibility
    (Self : not null access OCL_Any_Type_Proxy;
     To   : AMF.UML.UML_Visibility_Kind);
   --  Setter of PackageableElement::visibility.
   --
   --  Indicates that packageable elements must always have a visibility, 
   --  i.e., visibility is not optional.

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding procedure Set_Owning_Template_Parameter
    (Self : not null access OCL_Any_Type_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding function Get_Template_Parameter
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding procedure Set_Template_Parameter
    (Self : not null access OCL_Any_Type_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding function Get_Owned_Template_Signature
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Template_Signatures.UML_Template_Signature_Access;
   --  Getter of TemplateableElement::ownedTemplateSignature.
   --
   --  The optional template signature specifying the formal template 
   --  parameters.

   overriding procedure Set_Owned_Template_Signature
    (Self : not null access OCL_Any_Type_Proxy;
     To   : AMF.UML.Template_Signatures.UML_Template_Signature_Access);
   --  Setter of TemplateableElement::ownedTemplateSignature.
   --
   --  The optional template signature specifying the formal template 
   --  parameters.

   overriding function Get_Template_Binding
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Template_Bindings.Collections.Set_Of_UML_Template_Binding;
   --  Getter of TemplateableElement::templateBinding.
   --
   --  The optional bindings from this element to templates.

   overriding function Get_Is_Leaf
    (Self : not null access constant OCL_Any_Type_Proxy)
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
    (Self : not null access OCL_Any_Type_Proxy;
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
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Redefinable_Elements.Collections.Set_Of_UML_Redefinable_Element;
   --  Getter of RedefinableElement::redefinedElement.
   --
   --  The redefinable element that is being redefined by this element.

   overriding function Get_Redefinition_Context
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Getter of RedefinableElement::redefinitionContext.
   --
   --  References the contexts that this element may be redefined from.

   overriding function All_Features
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Features.Collections.Set_Of_UML_Feature;
   --  Operation Classifier::allFeatures.
   --
   --  The query allFeatures() gives all of the features in the namespace of 
   --  the classifier. In general, through mechanisms such as inheritance, 
   --  this will be a larger set than feature.

   overriding function All_Parents
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Operation Classifier::allParents.
   --
   --  The query allParents() gives all of the direct and indirect ancestors 
   --  of a generalized Classifier.

   overriding function Conforms_To
    (Self : not null access constant OCL_Any_Type_Proxy;
     Other : AMF.UML.Classifiers.UML_Classifier_Access)
       return Boolean;
   --  Operation Classifier::conformsTo.
   --
   --  The query conformsTo() gives true for a classifier that defines a type 
   --  that conforms to another. This is used, for example, in the 
   --  specification of signature conformance for operations.

   overriding function General
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Operation Classifier::general.
   --
   --  The general classifiers are the classifiers referenced by the 
   --  generalization relationships.

   overriding function Has_Visibility_Of
    (Self : not null access constant OCL_Any_Type_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return Boolean;
   --  Operation Classifier::hasVisibilityOf.
   --
   --  The query hasVisibilityOf() determines whether a named element is 
   --  visible in the classifier. By default all are visible. It is only 
   --  called when the argument is something owned by a parent.

   overriding function Inherit
    (Self : not null access constant OCL_Any_Type_Proxy;
     Inhs : AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Operation Classifier::inherit.
   --
   --  The query inherit() defines how to inherit a set of elements. Here the 
   --  operation is defined to inherit them all. It is intended to be 
   --  redefined in circumstances where inheritance is affected by 
   --  redefinition.
   --  The inherit operation is overridden to exclude redefined properties.

   overriding function Inheritable_Members
    (Self : not null access constant OCL_Any_Type_Proxy;
     C : AMF.UML.Classifiers.UML_Classifier_Access)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Operation Classifier::inheritableMembers.
   --
   --  The query inheritableMembers() gives all of the members of a classifier 
   --  that may be inherited in one of its descendants, subject to whatever 
   --  visibility restrictions apply.

   overriding function Inherited_Member
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Operation Classifier::inheritedMember.
   --
   --  The inheritedMember association is derived by inheriting the 
   --  inheritable members of the parents.
   --  The inheritedMember association is derived by inheriting the 
   --  inheritable members of the parents.

   overriding function Is_Template
    (Self : not null access constant OCL_Any_Type_Proxy)
       return Boolean;
   --  Operation Classifier::isTemplate.
   --
   --  The query isTemplate() returns whether this templateable element is 
   --  actually a template.

   overriding function May_Specialize_Type
    (Self : not null access constant OCL_Any_Type_Proxy;
     C : AMF.UML.Classifiers.UML_Classifier_Access)
       return Boolean;
   --  Operation Classifier::maySpecializeType.
   --
   --  The query maySpecializeType() determines whether this classifier may 
   --  have a generalization relationship to classifiers of the specified 
   --  type. By default a classifier may specialize classifiers of the same or 
   --  a more general type. It is intended to be redefined by classifiers that 
   --  have different specialization constraints.

   overriding function Parents
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Operation Classifier::parents.
   --
   --  The query parents() gives all of the immediate ancestors of a 
   --  generalized Classifier.

   overriding function Exclude_Collisions
    (Self : not null access constant OCL_Any_Type_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Operation Namespace::excludeCollisions.
   --
   --  The query excludeCollisions() excludes from a set of 
   --  PackageableElements any that would not be distinguishable from each 
   --  other in this namespace.

   overriding function Get_Names_Of_Member
    (Self : not null access constant OCL_Any_Type_Proxy;
     Element : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return AMF.String_Collections.Set_Of_String;
   --  Operation Namespace::getNamesOfMember.
   --
   --  The query getNamesOfMember() takes importing into account. It gives 
   --  back the set of names that an element would have in an importing 
   --  namespace, either because it is owned, or if not owned then imported 
   --  individually, or if not individually then from a package.
   --  The query getNamesOfMember() gives a set of all of the names that a 
   --  member would have in a Namespace. In general a member can have multiple 
   --  names in a Namespace if it is imported more than once with different 
   --  aliases. The query takes account of importing. It gives back the set of 
   --  names that an element would have in an importing namespace, either 
   --  because it is owned, or if not owned then imported individually, or if 
   --  not individually then from a package.

   overriding function Import_Members
    (Self : not null access constant OCL_Any_Type_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Operation Namespace::importMembers.
   --
   --  The query importMembers() defines which of a set of PackageableElements 
   --  are actually imported into the namespace. This excludes hidden ones, 
   --  i.e., those which have names that conflict with names of owned members, 
   --  and also excludes elements which would have the same name when imported.

   overriding function Imported_Member
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Operation Namespace::importedMember.
   --
   --  The importedMember property is derived from the ElementImports and the 
   --  PackageImports. References the PackageableElements that are members of 
   --  this Namespace as a result of either PackageImports or ElementImports.

   overriding function Members_Are_Distinguishable
    (Self : not null access constant OCL_Any_Type_Proxy)
       return Boolean;
   --  Operation Namespace::membersAreDistinguishable.
   --
   --  The Boolean query membersAreDistinguishable() determines whether all of 
   --  the namespace's members are distinguishable within it.

   overriding function Owned_Member
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Operation Namespace::ownedMember.
   --
   --  Missing derivation for Namespace::/ownedMember : NamedElement

   overriding function All_Namespaces
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Namespaces.Collections.Ordered_Set_Of_UML_Namespace;
   --  Operation NamedElement::allNamespaces.
   --
   --  The query allNamespaces() gives the sequence of namespaces in which the 
   --  NamedElement is nested, working outwards.

   overriding function All_Owning_Packages
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Operation NamedElement::allOwningPackages.
   --
   --  The query allOwningPackages() returns all the directly or indirectly 
   --  owning packages.

   overriding function Is_Distinguishable_From
    (Self : not null access constant OCL_Any_Type_Proxy;
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
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Operation NamedElement::namespace.
   --
   --  Missing derivation for NamedElement::/namespace : Namespace

   overriding function Qualified_Name
    (Self : not null access constant OCL_Any_Type_Proxy)
       return League.Strings.Universal_String;
   --  Operation NamedElement::qualifiedName.
   --
   --  When there is a name, and all of the containing namespaces have a name, 
   --  the qualified name is constructed from the names of the containing 
   --  namespaces.

   overriding function Separator
    (Self : not null access constant OCL_Any_Type_Proxy)
       return League.Strings.Universal_String;
   --  Operation NamedElement::separator.
   --
   --  The query separator() gives the string that is used to separate names 
   --  when constructing a qualified name.

   overriding function All_Owned_Elements
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Elements.Collections.Set_Of_UML_Element;
   --  Operation Element::allOwnedElements.
   --
   --  The query allOwnedElements() gives all of the direct and indirect owned 
   --  elements of an element.

   overriding function Must_Be_Owned
    (Self : not null access constant OCL_Any_Type_Proxy)
       return Boolean;
   --  Operation Element::mustBeOwned.
   --
   --  The query mustBeOwned() indicates whether elements of this type must 
   --  have an owner. Subclasses of Element that do not require an owner must 
   --  override this operation.

   overriding function Conforms_To
    (Self : not null access constant OCL_Any_Type_Proxy;
     Other : AMF.UML.Types.UML_Type_Access)
       return Boolean;
   --  Operation Type::conformsTo.
   --
   --  The query conformsTo() gives true for a type that conforms to another. 
   --  By default, two types do not conform to each other. This query is 
   --  intended to be redefined for specific conformance situations.

   overriding function Is_Compatible_With
    (Self : not null access constant OCL_Any_Type_Proxy;
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
    (Self : not null access constant OCL_Any_Type_Proxy)
       return Boolean;
   --  Operation ParameterableElement::isTemplateParameter.
   --
   --  The query isTemplateParameter() determines if this parameterable 
   --  element is exposed as a formal template parameter.

   overriding function Parameterable_Elements
    (Self : not null access constant OCL_Any_Type_Proxy)
       return AMF.UML.Parameterable_Elements.Collections.Set_Of_UML_Parameterable_Element;
   --  Operation TemplateableElement::parameterableElements.
   --
   --  The query parameterableElements() returns the set of elements that may 
   --  be used as the parametered elements for a template parameter of this 
   --  templateable element. By default, this set includes all the owned 
   --  elements. Subclasses may override this operation if they choose to 
   --  restrict the set of parameterable elements.

   overriding function Is_Consistent_With
    (Self : not null access constant OCL_Any_Type_Proxy;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean;
   --  Operation RedefinableElement::isConsistentWith.
   --
   --  The query isConsistentWith() specifies, for any two RedefinableElements 
   --  in a context in which redefinition is possible, whether redefinition 
   --  would be logically consistent. By default, this is false; this 
   --  operation must be overridden for subclasses of RedefinableElement to 
   --  define the consistency conditions.

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant OCL_Any_Type_Proxy;
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

   overriding procedure Enter_Element
    (Self    : not null access constant OCL_Any_Type_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Leave_Element
    (Self    : not null access constant OCL_Any_Type_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);

   overriding procedure Visit_Element
    (Self     : not null access constant OCL_Any_Type_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);

end AMF.Internals.OCL_Any_Types;
