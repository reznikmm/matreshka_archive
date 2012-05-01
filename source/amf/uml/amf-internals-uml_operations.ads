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
with AMF.String_Collections;
with AMF.UML.Behaviors.Collections;
with AMF.UML.Classes;
with AMF.UML.Classifiers.Collections;
with AMF.UML.Constraints.Collections;
with AMF.UML.Data_Types;
with AMF.UML.Dependencies.Collections;
with AMF.UML.Element_Imports.Collections;
with AMF.UML.Interfaces;
with AMF.UML.Named_Elements.Collections;
with AMF.UML.Namespaces;
with AMF.UML.Operation_Template_Parameters;
with AMF.UML.Operations.Collections;
with AMF.UML.Package_Imports.Collections;
with AMF.UML.Packageable_Elements.Collections;
with AMF.UML.Packages.Collections;
with AMF.UML.Parameter_Sets.Collections;
with AMF.UML.Parameterable_Elements.Collections;
with AMF.UML.Parameters.Collections;
with AMF.UML.Redefinable_Elements.Collections;
with AMF.UML.String_Expressions;
with AMF.UML.Template_Bindings.Collections;
with AMF.UML.Template_Parameters;
with AMF.UML.Template_Signatures;
with AMF.UML.Types.Collections;
with AMF.Visitors;

package AMF.Internals.UML_Operations is

   type UML_Operation_Proxy is
     limited new AMF.Internals.UML_Named_Elements.UML_Named_Element_Proxy
       and AMF.UML.Operations.UML_Operation with null record;

   overriding function Get_Body_Condition
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Constraints.UML_Constraint_Access;
   --  Getter of Operation::bodyCondition.
   --
   --  An optional Constraint on the result values of an invocation of this
   --  Operation.

   overriding procedure Set_Body_Condition
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Constraints.UML_Constraint_Access);
   --  Setter of Operation::bodyCondition.
   --
   --  An optional Constraint on the result values of an invocation of this
   --  Operation.

   overriding function Get_Class
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Classes.UML_Class_Access;
   --  Getter of Operation::class.
   --
   --  The class that owns the operation.

   overriding procedure Set_Class
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Classes.UML_Class_Access);
   --  Setter of Operation::class.
   --
   --  The class that owns the operation.

   overriding function Get_Datatype
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Data_Types.UML_Data_Type_Access;
   --  Getter of Operation::datatype.
   --
   --  The DataType that owns this Operation.

   overriding procedure Set_Datatype
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Data_Types.UML_Data_Type_Access);
   --  Setter of Operation::datatype.
   --
   --  The DataType that owns this Operation.

   overriding function Get_Interface
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Interfaces.UML_Interface_Access;
   --  Getter of Operation::interface.
   --
   --  The Interface that owns this Operation.

   overriding procedure Set_Interface
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Interfaces.UML_Interface_Access);
   --  Setter of Operation::interface.
   --
   --  The Interface that owns this Operation.

   overriding function Get_Is_Ordered
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;
   --  Getter of Operation::isOrdered.
   --
   --  This information is derived from the return result for this Operation.
   --  Specifies whether the return parameter is ordered or not, if present.

   overriding function Get_Is_Query
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;
   --  Getter of Operation::isQuery.
   --
   --  Specifies whether an execution of the BehavioralFeature leaves the
   --  state of the system unchanged (isQuery=true) or whether side effects
   --  may occur (isQuery=false).

   overriding procedure Set_Is_Query
    (Self : not null access UML_Operation_Proxy;
     To   : Boolean);
   --  Setter of Operation::isQuery.
   --
   --  Specifies whether an execution of the BehavioralFeature leaves the
   --  state of the system unchanged (isQuery=true) or whether side effects
   --  may occur (isQuery=false).

   overriding function Get_Is_Unique
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;
   --  Getter of Operation::isUnique.
   --
   --  This information is derived from the return result for this Operation.
   --  Specifies whether the return parameter is unique or not, if present.

   overriding function Get_Lower
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.Optional_Integer;
   --  Getter of Operation::lower.
   --
   --  Specifies the lower multiplicity of the return parameter, if present.
   --  This information is derived from the return result for this Operation.

   overriding function Get_Owned_Parameter
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Parameters.Collections.Ordered_Set_Of_UML_Parameter;
   --  Getter of Operation::ownedParameter.
   --
   --  Specifies the ordered set of formal parameters of this
   --  BehavioralFeature.
   --  Specifies the parameters owned by this Operation.

   overriding function Get_Postcondition
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint;
   --  Getter of Operation::postcondition.
   --
   --  An optional set of Constraints specifying the state of the system when
   --  the Operation is completed.

   overriding function Get_Precondition
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint;
   --  Getter of Operation::precondition.
   --
   --  An optional set of Constraints on the state of the system when the
   --  Operation is invoked.

   overriding function Get_Raised_Exception
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Types.Collections.Set_Of_UML_Type;
   --  Getter of Operation::raisedException.
   --
   --  References the Types representing exceptions that may be raised during
   --  an invocation of this operation.

   overriding function Get_Redefined_Operation
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Operations.Collections.Set_Of_UML_Operation;
   --  Getter of Operation::redefinedOperation.
   --
   --  References the Operations that are redefined by this Operation.

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter_Access;
   --  Getter of Operation::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter_Access);
   --  Setter of Operation::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding function Get_Type
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Types.UML_Type_Access;
   --  Getter of Operation::type.
   --
   --  This information is derived from the return result for this Operation.
   --  Specifies the return result of the operation, if present.

   overriding function Get_Upper
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.Optional_Unlimited_Natural;
   --  Getter of Operation::upper.
   --
   --  Specifies the upper multiplicity of the return parameter, if present.
   --  This information is derived from the return result for this Operation.

   overriding function Get_Concurrency
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.UML_Call_Concurrency_Kind;
   --  Getter of BehavioralFeature::concurrency.
   --
   --  Specifies the semantics of concurrent calls to the same passive
   --  instance (i.e., an instance originating from a class with isActive
   --  being false). Active instances control access to their own behavioral
   --  features.

   overriding procedure Set_Concurrency
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.UML_Call_Concurrency_Kind);
   --  Setter of BehavioralFeature::concurrency.
   --
   --  Specifies the semantics of concurrent calls to the same passive
   --  instance (i.e., an instance originating from a class with isActive
   --  being false). Active instances control access to their own behavioral
   --  features.

   overriding function Get_Is_Abstract
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;
   --  Getter of BehavioralFeature::isAbstract.
   --
   --  If true, then the behavioral feature does not have an implementation,
   --  and one must be supplied by a more specific element. If false, the
   --  behavioral feature must have an implementation in the classifier or one
   --  must be inherited from a more general element.

   overriding procedure Set_Is_Abstract
    (Self : not null access UML_Operation_Proxy;
     To   : Boolean);
   --  Setter of BehavioralFeature::isAbstract.
   --
   --  If true, then the behavioral feature does not have an implementation,
   --  and one must be supplied by a more specific element. If false, the
   --  behavioral feature must have an implementation in the classifier or one
   --  must be inherited from a more general element.

   overriding function Get_Method
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Behaviors.Collections.Set_Of_UML_Behavior;
   --  Getter of BehavioralFeature::method.
   --
   --  A behavioral description that implements the behavioral feature. There
   --  may be at most one behavior for a particular pairing of a classifier
   --  (as owner of the behavior) and a behavioral feature (as specification
   --  of the behavior).

   overriding function Get_Owned_Parameter_Set
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Parameter_Sets.Collections.Set_Of_UML_Parameter_Set;
   --  Getter of BehavioralFeature::ownedParameterSet.
   --
   --  The ParameterSets owned by this BehavioralFeature.

   overriding function Get_Featuring_Classifier
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Getter of Feature::featuringClassifier.
   --
   --  The Classifiers that have this Feature as a feature.

   overriding function Get_Is_Static
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;
   --  Getter of Feature::isStatic.
   --
   --  Specifies whether this feature characterizes individual instances
   --  classified by the classifier (false) or the classifier itself (true).

   overriding procedure Set_Is_Static
    (Self : not null access UML_Operation_Proxy;
     To   : Boolean);
   --  Setter of Feature::isStatic.
   --
   --  Specifies whether this feature characterizes individual instances
   --  classified by the classifier (false) or the classifier itself (true).

   overriding function Get_Is_Leaf
    (Self : not null access constant UML_Operation_Proxy)
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
    (Self : not null access UML_Operation_Proxy;
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
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Redefinable_Elements.Collections.Set_Of_UML_Redefinable_Element;
   --  Getter of RedefinableElement::redefinedElement.
   --
   --  The redefinable element that is being redefined by this element.

   overriding function Get_Redefinition_Context
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Classifiers.Collections.Set_Of_UML_Classifier;
   --  Getter of RedefinableElement::redefinitionContext.
   --
   --  References the contexts that this element may be redefined from.

   overriding function Get_Client_Dependency
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Dependencies.Collections.Set_Of_UML_Dependency;
   --  Getter of NamedElement::clientDependency.
   --
   --  Indicates the dependencies that reference the client.

   overriding function Get_Name_Expression
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.String_Expressions.UML_String_Expression_Access;
   --  Getter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding procedure Set_Name_Expression
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.String_Expressions.UML_String_Expression_Access);
   --  Setter of NamedElement::nameExpression.
   --
   --  The string expression used to define the name of this named element.

   overriding function Get_Namespace
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Getter of NamedElement::namespace.
   --
   --  Specifies the namespace that owns the NamedElement.

   overriding function Get_Qualified_Name
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.Optional_String;
   --  Getter of NamedElement::qualifiedName.
   --
   --  A name which allows the NamedElement to be identified within a
   --  hierarchy of nested Namespaces. It is constructed from the names of the
   --  containing namespaces starting at the root of the hierarchy and ending
   --  with the name of the NamedElement itself.

   overriding function Get_Element_Import
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Element_Imports.Collections.Set_Of_UML_Element_Import;
   --  Getter of Namespace::elementImport.
   --
   --  References the ElementImports owned by the Namespace.

   overriding function Get_Imported_Member
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Getter of Namespace::importedMember.
   --
   --  References the PackageableElements that are members of this Namespace
   --  as a result of either PackageImports or ElementImports.

   overriding function Get_Member
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Getter of Namespace::member.
   --
   --  A collection of NamedElements identifiable within the Namespace, either
   --  by being owned or by being introduced by importing or inheritance.

   overriding function Get_Owned_Member
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Getter of Namespace::ownedMember.
   --
   --  A collection of NamedElements owned by the Namespace.

   overriding function Get_Owned_Rule
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Constraints.Collections.Set_Of_UML_Constraint;
   --  Getter of Namespace::ownedRule.
   --
   --  Specifies a set of Constraints owned by this Namespace.

   overriding function Get_Package_Import
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Package_Imports.Collections.Set_Of_UML_Package_Import;
   --  Getter of Namespace::packageImport.
   --
   --  References the PackageImports owned by the Namespace.

   overriding function Get_Owned_Template_Signature
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Template_Signatures.UML_Template_Signature_Access;
   --  Getter of TemplateableElement::ownedTemplateSignature.
   --
   --  The optional template signature specifying the formal template
   --  parameters.

   overriding procedure Set_Owned_Template_Signature
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Template_Signatures.UML_Template_Signature_Access);
   --  Setter of TemplateableElement::ownedTemplateSignature.
   --
   --  The optional template signature specifying the formal template
   --  parameters.

   overriding function Get_Template_Binding
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Template_Bindings.Collections.Set_Of_UML_Template_Binding;
   --  Getter of TemplateableElement::templateBinding.
   --
   --  The optional bindings from this element to templates.

   overriding function Get_Owning_Template_Parameter
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding procedure Set_Owning_Template_Parameter
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::owningTemplateParameter.
   --
   --  The formal template parameter that owns this element.

   overriding function Get_Template_Parameter
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
   --  Getter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding procedure Set_Template_Parameter
    (Self : not null access UML_Operation_Proxy;
     To   : AMF.UML.Template_Parameters.UML_Template_Parameter_Access);
   --  Setter of ParameterableElement::templateParameter.
   --
   --  The template parameter that exposes this element as a formal parameter.

   overriding function Is_Consistent_With
    (Self : not null access constant UML_Operation_Proxy;
     Redefinee : AMF.UML.Redefinable_Elements.UML_Redefinable_Element_Access)
       return Boolean;
   --  Operation Operation::isConsistentWith.
   --
   --  A redefining operation is consistent with a redefined operation if it
   --  has the same number of owned parameters, and the type of each owned
   --  parameter conforms to the type of the corresponding redefined parameter.
   --  The query isConsistentWith() specifies, for any two Operations in a
   --  context in which redefinition is possible, whether redefinition would
   --  be consistent in the sense of maintaining type covariance. Other senses
   --  of consistency may be required, for example to determine consistency in
   --  the sense of contravariance. Users may define alternative queries under
   --  names different from 'isConsistentWith()', as for example, users may
   --  define a query named 'isContravariantWith()'.

   overriding function Is_Ordered
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;
   --  Operation Operation::isOrdered.
   --
   --  If this operation has a return parameter, isOrdered equals the value of
   --  isOrdered for that parameter. Otherwise isOrdered is false.

   overriding function Is_Unique
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;
   --  Operation Operation::isUnique.
   --
   --  If this operation has a return parameter, isUnique equals the value of
   --  isUnique for that parameter. Otherwise isUnique is true.

   overriding function Lower
    (Self : not null access constant UML_Operation_Proxy)
       return Integer;
   --  Operation Operation::lower.
   --
   --  If this operation has a return parameter, lower equals the value of
   --  lower for that parameter. Otherwise lower is not defined.

   overriding function Return_Result
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Parameters.Collections.Set_Of_UML_Parameter;
   --  Operation Operation::returnResult.
   --
   --  The query returnResult() returns the set containing the return
   --  parameter of the Operation if one exists, otherwise, it returns an
   --  empty set

   overriding function Types
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Types.UML_Type_Access;
   --  Operation Operation::type.
   --
   --  If this operation has a return parameter, type equals the value of type
   --  for that parameter. Otherwise type is not defined.

   overriding function Upper
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.Unlimited_Natural;
   --  Operation Operation::upper.
   --
   --  If this operation has a return parameter, upper equals the value of
   --  upper for that parameter. Otherwise upper is not defined.

   overriding function Is_Distinguishable_From
    (Self : not null access constant UML_Operation_Proxy;
     N : AMF.UML.Named_Elements.UML_Named_Element_Access;
     Ns : AMF.UML.Namespaces.UML_Namespace_Access)
       return Boolean;
   --  Operation BehavioralFeature::isDistinguishableFrom.
   --
   --  The query isDistinguishableFrom() determines whether two
   --  BehavioralFeatures may coexist in the same Namespace. It specifies that
   --  they have to have different signatures.

   overriding function Is_Redefinition_Context_Valid
    (Self : not null access constant UML_Operation_Proxy;
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

   overriding function All_Owning_Packages
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Packages.Collections.Set_Of_UML_Package;
   --  Operation NamedElement::allOwningPackages.
   --
   --  The query allOwningPackages() returns all the directly or indirectly
   --  owning packages.

   overriding function Namespace
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Namespaces.UML_Namespace_Access;
   --  Operation NamedElement::namespace.
   --
   --  Missing derivation for NamedElement::/namespace : Namespace

   overriding function Exclude_Collisions
    (Self : not null access constant UML_Operation_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Operation Namespace::excludeCollisions.
   --
   --  The query excludeCollisions() excludes from a set of
   --  PackageableElements any that would not be distinguishable from each
   --  other in this namespace.

   overriding function Get_Names_Of_Member
    (Self : not null access constant UML_Operation_Proxy;
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
    (Self : not null access constant UML_Operation_Proxy;
     Imps : AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Operation Namespace::importMembers.
   --
   --  The query importMembers() defines which of a set of PackageableElements
   --  are actually imported into the namespace. This excludes hidden ones,
   --  i.e., those which have names that conflict with names of owned members,
   --  and also excludes elements which would have the same name when imported.

   overriding function Imported_Member
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element;
   --  Operation Namespace::importedMember.
   --
   --  The importedMember property is derived from the ElementImports and the
   --  PackageImports. References the PackageableElements that are members of
   --  this Namespace as a result of either PackageImports or ElementImports.

   overriding function Members_Are_Distinguishable
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;
   --  Operation Namespace::membersAreDistinguishable.
   --
   --  The Boolean query membersAreDistinguishable() determines whether all of
   --  the namespace's members are distinguishable within it.

   overriding function Owned_Member
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Named_Elements.Collections.Set_Of_UML_Named_Element;
   --  Operation Namespace::ownedMember.
   --
   --  Missing derivation for Namespace::/ownedMember : NamedElement

   overriding function Is_Template
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;
   --  Operation TemplateableElement::isTemplate.
   --
   --  The query isTemplate() returns whether this templateable element is
   --  actually a template.

   overriding function Parameterable_Elements
    (Self : not null access constant UML_Operation_Proxy)
       return AMF.UML.Parameterable_Elements.Collections.Set_Of_UML_Parameterable_Element;
   --  Operation TemplateableElement::parameterableElements.
   --
   --  The query parameterableElements() returns the set of elements that may
   --  be used as the parametered elements for a template parameter of this
   --  templateable element. By default, this set includes all the owned
   --  elements. Subclasses may override this operation if they choose to
   --  restrict the set of parameterable elements.

   overriding function Is_Compatible_With
    (Self : not null access constant UML_Operation_Proxy;
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
    (Self : not null access constant UML_Operation_Proxy)
       return Boolean;
   --  Operation ParameterableElement::isTemplateParameter.
   --
   --  The query isTemplateParameter() determines if this parameterable
   --  element is exposed as a formal template parameter.

   overriding procedure Enter_Element
    (Self    : not null access constant UML_Operation_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Leave_Element
    (Self    : not null access constant UML_Operation_Proxy;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Control : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of visitor interface.

   overriding procedure Visit_Element
    (Self     : not null access constant UML_Operation_Proxy;
     Iterator : in out AMF.Visitors.Abstract_Iterator'Class;
     Visitor  : in out AMF.Visitors.Abstract_Visitor'Class;
     Control  : in out AMF.Visitors.Traverse_Control);
   --  Dispatch call to corresponding subprogram of iterator interface.

end AMF.Internals.UML_Operations;
