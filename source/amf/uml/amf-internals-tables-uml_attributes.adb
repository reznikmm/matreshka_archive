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
--  This file is generated, don't edit it.
------------------------------------------------------------------------------
with AMF.Internals.Links;
with AMF.Internals.Tables.Primitive_Types_Notification;
with AMF.Internals.Tables.Standard_Profile_L2_Metamodel;
with AMF.Internals.Tables.Standard_Profile_L3_Metamodel;
with AMF.Internals.Tables.UML_Element_Table;
with AMF.Internals.Tables.UML_Metamodel;
with AMF.Internals.Tables.UML_Notification;
with AMF.Internals.Tables.UML_Types;

package body AMF.Internals.Tables.UML_Attributes is

   use type Matreshka.Internals.Strings.Shared_String_Access;

   --  Auxiliary
   --
   --     1  Auxiliary::base_Class
   --

   --  Call
   --
   --     1  Call::base_Usage
   --

   --  Create
   --
   --     2  Create::base_BehavioralFeature
   --     1  Create::base_Usage
   --

   --  Derive
   --
   --     1  Derive::base_Abstraction
   --     2  Derive::computation
   --

   --  Destroy
   --
   --     2  Destroy::base_BehavioralFeature
   --

   --  Document
   --
   --     1  Document::base_Artifact
   --     1  File::base_Artifact
   --

   --  Entity
   --
   --     1  Entity::base_Component
   --

   --  Executable
   --
   --     1  Executable::base_Artifact
   --     1  File::base_Artifact
   --

   --  Focus
   --
   --     1  Focus::base_Class
   --

   --  Framework
   --
   --     1  Framework::base_Package
   --

   --  Implement
   --
   --     1  Implement::base_Component
   --

   --  ImplementationClass
   --
   --     1  ImplementationClass::base_Class
   --

   --  Instantiate
   --
   --     1  Instantiate::base_Usage
   --

   --  Library
   --
   --     1  File::base_Artifact
   --     1  Library::base_Artifact
   --

   --  Metaclass
   --
   --     1  Metaclass::base_Class
   --

   --  ModelLibrary
   --
   --     1  ModelLibrary::base_Package
   --

   --  Process
   --
   --     1  Process::base_Component
   --

   --  Realization
   --
   --     1  Realization::base_Classifier
   --

   --  Refine
   --
   --     1  Refine::base_Abstraction
   --

   --  Responsibility
   --
   --     1  Responsibility::base_Usage
   --

   --  Script
   --
   --     1  File::base_Artifact
   --     1  Script::base_Artifact
   --

   --  Send
   --
   --     1  Send::base_Usage
   --

   --  Service
   --
   --     1  Service::base_Component
   --

   --  Source
   --
   --     1  File::base_Artifact
   --     1  Source::base_Artifact
   --

   --  Specification
   --
   --     1  Specification::base_Classifier
   --

   --  Subsystem
   --
   --     1  Subsystem::base_Component
   --

   --  Trace
   --
   --     1  Trace::base_Abstraction
   --

   --  Type
   --
   --     1  Type::base_Class
   --

   --  Utility
   --
   --     1  Utility::base_Class
   --

   --  BuildComponent
   --
   --     1  BuildComponent::base_Component
   --

   --  Metamodel
   --
   --     1  Metamodel::base_Model
   --

   --  SystemModel
   --
   --     1  SystemModel::base_Model
   --

   --  Abstraction
   --
   --     7  Abstraction::mapping
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     6  Dependency::client
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     24  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     7  Dependency::supplier
   --     5  DirectedRelationship::target

   --  AcceptCallAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     12  AcceptEventAction::isUnmarshall
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     13  AcceptCallAction::returnInformation
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     23  AcceptEventAction::result
   --     24  AcceptEventAction::trigger

   --  AcceptEventAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     12  AcceptEventAction::isUnmarshall
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     23  AcceptEventAction::result
   --     24  AcceptEventAction::trigger

   --  ActionExecutionSpecification
   --
   --     9  ActionExecutionSpecification::action
   --     17  InteractionFragment::enclosingInteraction
   --     18  InteractionFragment::enclosingOperand
   --     7  ExecutionSpecification::finish
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     8  ExecutionSpecification::start
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     24  InteractionFragment::covered
   --     29  InteractionFragment::generalOrdering
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  ActionInputPin
   --
   --     8  ActivityNode::activity
   --     17  ActionInputPin::fromAction
   --     9  ActivityNode::inStructuredNode
   --     22  Pin::isControl
   --     19  ObjectNode::isControlType
   --     7  RedefinableElement::isLeaf
   --     13  MultiplicityElement::isOrdered
   --     14  MultiplicityElement::isUnique
   --     15  MultiplicityElement::lower
   --     11  MultiplicityElement::lowerValue
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     20  ObjectNode::ordering
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     18  ObjectNode::selection
   --     10  TypedElement::type
   --     16  MultiplicityElement::upper
   --     21  ObjectNode::upperBound
   --     12  MultiplicityElement::upperValue
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     12  ObjectNode::inState
   --     6  ActivityNode::incoming
   --     7  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  Activity
   --
   --     16  BehavioredClassifier::classifierBehavior
   --     10  Behavior::context
   --     12  Class::isAbstract
   --     12  Classifier::isAbstract
   --     19  Class::isActive
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     22  Activity::isReadOnly
   --     21  Behavior::isReentrant
   --     17  Activity::isSingleExecution
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     20  Behavior::specification
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     29  Activity::edge
   --     12  Namespace::elementImport
   --     36  Class::extension
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     43  Activity::group
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     27  BehavioredClassifier::interfaceRealization
   --     14  Namespace::member
   --     33  Class::nestedClassifier
   --     24  Activity::node
   --     25  Class::ownedAttribute
   --     25  StructuredClassifier::ownedAttribute
   --     28  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     30  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     26  Class::ownedOperation
   --     37  Behavior::ownedParameter
   --     38  Behavior::ownedParameterSet
   --     35  EncapsulatedClassifier::ownedPort
   --     34  Class::ownedReception
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     31  StructuredClassifier::part
   --     44  Activity::partition
   --     39  Behavior::postcondition
   --     20  Classifier::powertypeExtent
   --     40  Behavior::precondition
   --     42  Behavior::redefinedBehavior
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     32  StructuredClassifier::role
   --     45  Activity::structuredNode
   --     22  Classifier::substitution
   --     11  Class::superClass
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase
   --     41  Activity::variable

   --  ActivityFinalNode
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     7  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ActivityParameterNode
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     19  ObjectNode::isControlType
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     20  ObjectNode::ordering
   --     1  Element::owner
   --     11  ActivityParameterNode::parameter
   --     5  NamedElement::qualifiedName
   --     18  ObjectNode::selection
   --     10  TypedElement::type
   --     21  ObjectNode::upperBound
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     12  ObjectNode::inState
   --     6  ActivityNode::incoming
   --     7  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ActivityPartition
   --
   --     12  ActivityGroup::inActivity
   --     8  ActivityPartition::isDimension
   --     9  ActivityPartition::isExternal
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     7  ActivityPartition::represents
   --     13  ActivityGroup::superGroup
   --     10  ActivityPartition::superPartition
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     25  ActivityGroup::containedEdge
   --     26  ActivityGroup::containedNode
   --     29  ActivityPartition::edge
   --     24  ActivityPartition::node
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     27  ActivityGroup::subgroup
   --     4  ActivityPartition::subpartition

   --  Actor
   --
   --     16  BehavioredClassifier::classifierBehavior
   --     12  Classifier::isAbstract
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     27  BehavioredClassifier::interfaceRealization
   --     14  Namespace::member
   --     28  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     22  Classifier::substitution
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  AddStructuralFeatureValueAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     16  AddStructuralFeatureValueAction::insertAt
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     15  AddStructuralFeatureValueAction::isReplaceAll
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     13  StructuralFeatureAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     12  WriteStructuralFeatureAction::result
   --     14  StructuralFeatureAction::structuralFeature
   --     17  WriteStructuralFeatureAction::value
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  AddVariableValueAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     16  AddVariableValueAction::insertAt
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     15  AddVariableValueAction::isReplaceAll
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     17  WriteVariableAction::value
   --     13  VariableAction::variable
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  AnyReceiveEvent
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Artifact
   --
   --     10  Artifact::fileName
   --     12  Classifier::isAbstract
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     24  Artifact::manifestation
   --     14  Namespace::member
   --     27  Artifact::nestedArtifact
   --     25  Artifact::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     26  Artifact::ownedOperation
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     22  Classifier::substitution
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  Association
   --
   --     12  Classifier::isAbstract
   --     17  Association::isDerived
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     29  Association::endType
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     14  Namespace::member
   --     37  Association::memberEnd
   --     38  Association::navigableOwnedEnd
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     39  Association::ownedEnd
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     24  Relationship::relatedElement
   --     22  Classifier::substitution
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  AssociationClass
   --
   --     16  BehavioredClassifier::classifierBehavior
   --     12  Class::isAbstract
   --     12  Classifier::isAbstract
   --     19  Class::isActive
   --     17  Association::isDerived
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     29  Association::endType
   --     36  Class::extension
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     27  BehavioredClassifier::interfaceRealization
   --     14  Namespace::member
   --     37  Association::memberEnd
   --     38  Association::navigableOwnedEnd
   --     33  Class::nestedClassifier
   --     25  Class::ownedAttribute
   --     25  StructuredClassifier::ownedAttribute
   --     28  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     30  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     39  Association::ownedEnd
   --     15  Namespace::ownedMember
   --     26  Class::ownedOperation
   --     35  EncapsulatedClassifier::ownedPort
   --     34  Class::ownedReception
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     31  StructuredClassifier::part
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     24  Relationship::relatedElement
   --     32  StructuredClassifier::role
   --     22  Classifier::substitution
   --     11  Class::superClass
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  BehaviorExecutionSpecification
   --
   --     13  BehaviorExecutionSpecification::behavior
   --     17  InteractionFragment::enclosingInteraction
   --     18  InteractionFragment::enclosingOperand
   --     7  ExecutionSpecification::finish
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     8  ExecutionSpecification::start
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     24  InteractionFragment::covered
   --     29  InteractionFragment::generalOrdering
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  BroadcastSignalAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  InvocationAction::onPort
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     13  BroadcastSignalAction::signal
   --     6  NamedElement::visibility
   --
   --     12  InvocationAction::argument
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  CallBehaviorAction
   --
   --     8  ActivityNode::activity
   --     13  CallBehaviorAction::behavior
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     15  CallAction::isSynchronous
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  InvocationAction::onPort
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     12  InvocationAction::argument
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     23  CallAction::result

   --  CallEvent
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     17  CallEvent::operation
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  CallOperationAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     15  CallAction::isSynchronous
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  InvocationAction::onPort
   --     17  CallOperationAction::operation
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     12  CallOperationAction::target
   --     6  NamedElement::visibility
   --
   --     12  InvocationAction::argument
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     23  CallAction::result

   --  CentralBufferNode
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     19  ObjectNode::isControlType
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     20  ObjectNode::ordering
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     18  ObjectNode::selection
   --     10  TypedElement::type
   --     21  ObjectNode::upperBound
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     12  ObjectNode::inState
   --     6  ActivityNode::incoming
   --     7  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ChangeEvent
   --
   --     7  ChangeEvent::changeExpression
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Class
   --
   --     16  BehavioredClassifier::classifierBehavior
   --     12  Class::isAbstract
   --     12  Classifier::isAbstract
   --     19  Class::isActive
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     36  Class::extension
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     27  BehavioredClassifier::interfaceRealization
   --     14  Namespace::member
   --     33  Class::nestedClassifier
   --     25  Class::ownedAttribute
   --     25  StructuredClassifier::ownedAttribute
   --     28  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     30  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     26  Class::ownedOperation
   --     35  EncapsulatedClassifier::ownedPort
   --     34  Class::ownedReception
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     31  StructuredClassifier::part
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     32  StructuredClassifier::role
   --     22  Classifier::substitution
   --     11  Class::superClass
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  ClassifierTemplateParameter
   --
   --     6  ClassifierTemplateParameter::allowSubstitutable
   --     2  TemplateParameter::default
   --     3  TemplateParameter::ownedDefault
   --     4  TemplateParameter::ownedParameteredElement
   --     1  Element::owner
   --     5  ClassifierTemplateParameter::parameteredElement
   --     5  TemplateParameter::parameteredElement
   --     7  TemplateParameter::signature
   --
   --     3  ClassifierTemplateParameter::constrainingClassifier
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Clause
   --
   --     15  Clause::decider
   --     1  Element::owner
   --
   --     3  Clause::body
   --     30  Clause::bodyOutput
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  Clause::predecessorClause
   --     5  Clause::successorClause
   --     31  Clause::test

   --  ClearAssociationAction
   --
   --     8  ActivityNode::activity
   --     23  ClearAssociationAction::association
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     13  ClearAssociationAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ClearStructuralFeatureAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     13  StructuralFeatureAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     12  ClearStructuralFeatureAction::result
   --     14  StructuralFeatureAction::structuralFeature
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ClearVariableAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     13  VariableAction::variable
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  Collaboration
   --
   --     16  BehavioredClassifier::classifierBehavior
   --     12  Classifier::isAbstract
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     24  Collaboration::collaborationRole
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     27  BehavioredClassifier::interfaceRealization
   --     14  Namespace::member
   --     25  StructuredClassifier::ownedAttribute
   --     28  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     30  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     31  StructuredClassifier::part
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     32  StructuredClassifier::role
   --     22  Classifier::substitution
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  CollaborationUse
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     10  CollaborationUse::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  CollaborationUse::roleBinding

   --  CombinedFragment
   --
   --     17  InteractionFragment::enclosingInteraction
   --     18  InteractionFragment::enclosingOperand
   --     7  CombinedFragment::interactionOperator
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     5  CombinedFragment::cfragmentGate
   --     3  NamedElement::clientDependency
   --     24  InteractionFragment::covered
   --     29  InteractionFragment::generalOrdering
   --     4  CombinedFragment::operand
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Comment
   --
   --     2  Comment::body
   --     1  Element::owner
   --
   --     3  Comment::annotatedElement
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  CommunicationPath
   --
   --     12  Classifier::isAbstract
   --     17  Association::isDerived
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     29  Association::endType
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     14  Namespace::member
   --     37  Association::memberEnd
   --     38  Association::navigableOwnedEnd
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     39  Association::ownedEnd
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     24  Relationship::relatedElement
   --     22  Classifier::substitution
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  Component
   --
   --     16  BehavioredClassifier::classifierBehavior
   --     12  Class::isAbstract
   --     12  Classifier::isAbstract
   --     19  Class::isActive
   --     14  Classifier::isFinalSpecialization
   --     10  Component::isIndirectlyInstantiated
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     36  Class::extension
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     27  BehavioredClassifier::interfaceRealization
   --     14  Namespace::member
   --     33  Class::nestedClassifier
   --     25  Class::ownedAttribute
   --     25  StructuredClassifier::ownedAttribute
   --     28  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     30  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     26  Class::ownedOperation
   --     35  EncapsulatedClassifier::ownedPort
   --     34  Class::ownedReception
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     24  Component::packagedElement
   --     31  StructuredClassifier::part
   --     20  Classifier::powertypeExtent
   --     37  Component::provided
   --     29  Component::realization
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     38  Component::required
   --     32  StructuredClassifier::role
   --     22  Classifier::substitution
   --     11  Class::superClass
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  ComponentRealization
   --
   --     10  ComponentRealization::abstraction
   --     7  Abstraction::mapping
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     6  Dependency::client
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     8  ComponentRealization::realizingClassifier
   --     24  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     7  Dependency::supplier
   --     5  DirectedRelationship::target

   --  ConditionalNode
   --
   --     8  ActivityNode::activity
   --     12  StructuredActivityNode::activity
   --     10  Action::context
   --     12  ActivityGroup::inActivity
   --     9  ActivityNode::inStructuredNode
   --     15  ConditionalNode::isAssured
   --     16  ConditionalNode::isDeterminate
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     14  StructuredActivityNode::mustIsolate
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     13  ActivityGroup::superGroup
   --     6  NamedElement::visibility
   --
   --     30  ConditionalNode::clause
   --     3  NamedElement::clientDependency
   --     25  ActivityGroup::containedEdge
   --     26  ActivityGroup::containedNode
   --     29  StructuredActivityNode::edge
   --     12  Namespace::elementImport
   --     18  ExecutableNode::handler
   --     13  Namespace::importedMember
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     14  Namespace::member
   --     24  StructuredActivityNode::node
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     17  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     23  ConditionalNode::result
   --     28  StructuredActivityNode::structuredNodeInput
   --     23  StructuredActivityNode::structuredNodeOutput
   --     27  ActivityGroup::subgroup
   --     41  StructuredActivityNode::variable

   --  ConnectableElementTemplateParameter
   --
   --     2  TemplateParameter::default
   --     3  TemplateParameter::ownedDefault
   --     4  TemplateParameter::ownedParameteredElement
   --     1  Element::owner
   --     5  ConnectableElementTemplateParameter::parameteredElement
   --     5  TemplateParameter::parameteredElement
   --     7  TemplateParameter::signature
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  ConnectionPointReference
   --
   --     8  Vertex::container
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     9  ConnectionPointReference::state
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     4  ConnectionPointReference::entry
   --     5  ConnectionPointReference::exit
   --     6  Vertex::incoming
   --     7  Vertex::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Connector
   --
   --     7  RedefinableElement::isLeaf
   --     18  Feature::isStatic
   --     8  Connector::kind
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     10  Connector::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     8  Connector::contract
   --     6  Connector::end
   --     7  Feature::featuringClassifier
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     9  Connector::redefinedConnector
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext

   --  ConnectorEnd
   --
   --     2  ConnectorEnd::definingEnd
   --     13  MultiplicityElement::isOrdered
   --     14  MultiplicityElement::isUnique
   --     15  MultiplicityElement::lower
   --     11  MultiplicityElement::lowerValue
   --     1  Element::owner
   --     3  ConnectorEnd::partWithPort
   --     4  ConnectorEnd::role
   --     16  MultiplicityElement::upper
   --     12  MultiplicityElement::upperValue
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  ConsiderIgnoreFragment
   --
   --     17  InteractionFragment::enclosingInteraction
   --     18  InteractionFragment::enclosingOperand
   --     7  CombinedFragment::interactionOperator
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     5  CombinedFragment::cfragmentGate
   --     3  NamedElement::clientDependency
   --     24  InteractionFragment::covered
   --     29  InteractionFragment::generalOrdering
   --     43  ConsiderIgnoreFragment::message
   --     4  CombinedFragment::operand
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Constraint
   --
   --     10  Constraint::context
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     20  Constraint::specification
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     4  Constraint::constrainedElement
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Continuation
   --
   --     17  InteractionFragment::enclosingInteraction
   --     18  InteractionFragment::enclosingOperand
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     7  Continuation::setting
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     24  InteractionFragment::covered
   --     29  InteractionFragment::generalOrdering
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  ControlFlow
   --
   --     8  ActivityEdge::activity
   --     10  ActivityEdge::guard
   --     9  ActivityEdge::inStructuredNode
   --     13  ActivityEdge::interrupts
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     11  ActivityEdge::source
   --     12  ActivityEdge::target
   --     6  NamedElement::visibility
   --     14  ActivityEdge::weight
   --
   --     3  NamedElement::clientDependency
   --     8  ActivityEdge::inGroup
   --     9  ActivityEdge::inPartition
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     6  ActivityEdge::redefinedEdge
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext

   --  CreateLinkAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     13  CreateLinkAction::endData
   --     13  LinkAction::endData
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     12  LinkAction::inputValue
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  CreateLinkObjectAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     12  CreateLinkObjectAction::result
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     13  CreateLinkAction::endData
   --     13  LinkAction::endData
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     12  LinkAction::inputValue
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  CreateObjectAction
   --
   --     8  ActivityNode::activity
   --     14  CreateObjectAction::classifier
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     12  CreateObjectAction::result
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  DataStoreNode
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     19  ObjectNode::isControlType
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     20  ObjectNode::ordering
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     18  ObjectNode::selection
   --     10  TypedElement::type
   --     21  ObjectNode::upperBound
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     12  ObjectNode::inState
   --     6  ActivityNode::incoming
   --     7  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  DataType
   --
   --     12  Classifier::isAbstract
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     14  Namespace::member
   --     25  DataType::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     26  DataType::ownedOperation
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     22  Classifier::substitution
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  DecisionNode
   --
   --     8  ActivityNode::activity
   --     10  DecisionNode::decisionInput
   --     11  DecisionNode::decisionInputFlow
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     7  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  Dependency
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     6  Dependency::client
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     24  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     7  Dependency::supplier
   --     5  DirectedRelationship::target

   --  Deployment
   --
   --     7  Deployment::location
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     6  Dependency::client
   --     3  NamedElement::clientDependency
   --     8  Deployment::configuration
   --     9  Deployment::deployedArtifact
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     24  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     7  Dependency::supplier
   --     5  DirectedRelationship::target

   --  DeploymentSpecification
   --
   --     16  DeploymentSpecification::deployment
   --     17  DeploymentSpecification::deploymentLocation
   --     18  DeploymentSpecification::executionLocation
   --     10  Artifact::fileName
   --     12  Classifier::isAbstract
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     24  Artifact::manifestation
   --     14  Namespace::member
   --     27  Artifact::nestedArtifact
   --     25  Artifact::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     26  Artifact::ownedOperation
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     22  Classifier::substitution
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  DestroyLinkAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     13  DestroyLinkAction::endData
   --     13  LinkAction::endData
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     12  LinkAction::inputValue
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  DestroyObjectAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     13  DestroyObjectAction::isDestroyLinks
   --     14  DestroyObjectAction::isDestroyOwnedObjects
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     12  DestroyObjectAction::target
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  DestructionOccurrenceSpecification
   --
   --     17  InteractionFragment::enclosingInteraction
   --     18  InteractionFragment::enclosingOperand
   --     7  MessageEnd::message
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     24  InteractionFragment::covered
   --     24  OccurrenceSpecification::covered
   --     29  InteractionFragment::generalOrdering
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  OccurrenceSpecification::toAfter
   --     5  OccurrenceSpecification::toBefore

   --  Device
   --
   --     16  BehavioredClassifier::classifierBehavior
   --     12  Class::isAbstract
   --     12  Classifier::isAbstract
   --     19  Class::isActive
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     24  DeploymentTarget::deployedElement
   --     29  DeploymentTarget::deployment
   --     12  Namespace::elementImport
   --     36  Class::extension
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     27  BehavioredClassifier::interfaceRealization
   --     14  Namespace::member
   --     33  Class::nestedClassifier
   --     37  Node::nestedNode
   --     25  Class::ownedAttribute
   --     25  StructuredClassifier::ownedAttribute
   --     28  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     30  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     26  Class::ownedOperation
   --     35  EncapsulatedClassifier::ownedPort
   --     34  Class::ownedReception
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     31  StructuredClassifier::part
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     32  StructuredClassifier::role
   --     22  Classifier::substitution
   --     11  Class::superClass
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  Duration
   --
   --     7  Duration::expr
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     10  TypedElement::type
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     4  Duration::observation
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  DurationConstraint
   --
   --     10  Constraint::context
   --     7  DurationConstraint::firstEvent
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     20  Constraint::specification
   --     20  DurationConstraint::specification
   --     20  IntervalConstraint::specification
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     4  Constraint::constrainedElement
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  DurationInterval
   --
   --     7  DurationInterval::max
   --     7  Interval::max
   --     11  DurationInterval::min
   --     11  Interval::min
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     10  TypedElement::type
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  DurationObservation
   --
   --     7  DurationObservation::firstEvent
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     4  DurationObservation::event
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  ElementImport
   --
   --     4  ElementImport::alias
   --     5  ElementImport::importedElement
   --     2  ElementImport::importingNamespace
   --     1  Element::owner
   --     3  ElementImport::visibility
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     24  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     5  DirectedRelationship::target

   --  Enumeration
   --
   --     12  Classifier::isAbstract
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     14  Namespace::member
   --     25  DataType::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     24  Enumeration::ownedLiteral
   --     15  Namespace::ownedMember
   --     26  DataType::ownedOperation
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     22  Classifier::substitution
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  EnumerationLiteral
   --
   --     7  EnumerationLiteral::enumeration
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     20  InstanceSpecification::specification
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     4  EnumerationLiteral::classifier
   --     4  InstanceSpecification::classifier
   --     3  NamedElement::clientDependency
   --     24  DeploymentTarget::deployedElement
   --     29  DeploymentTarget::deployment
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     5  InstanceSpecification::slot

   --  ExceptionHandler
   --
   --     2  ExceptionHandler::exceptionInput
   --     3  ExceptionHandler::handlerBody
   --     1  Element::owner
   --     4  ExceptionHandler::protectedNode
   --
   --     3  ExceptionHandler::exceptionType
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  ExecutionEnvironment
   --
   --     16  BehavioredClassifier::classifierBehavior
   --     12  Class::isAbstract
   --     12  Classifier::isAbstract
   --     19  Class::isActive
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     24  DeploymentTarget::deployedElement
   --     29  DeploymentTarget::deployment
   --     12  Namespace::elementImport
   --     36  Class::extension
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     27  BehavioredClassifier::interfaceRealization
   --     14  Namespace::member
   --     33  Class::nestedClassifier
   --     37  Node::nestedNode
   --     25  Class::ownedAttribute
   --     25  StructuredClassifier::ownedAttribute
   --     28  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     30  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     26  Class::ownedOperation
   --     35  EncapsulatedClassifier::ownedPort
   --     34  Class::ownedReception
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     31  StructuredClassifier::part
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     32  StructuredClassifier::role
   --     22  Classifier::substitution
   --     11  Class::superClass
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  ExecutionOccurrenceSpecification
   --
   --     17  InteractionFragment::enclosingInteraction
   --     18  InteractionFragment::enclosingOperand
   --     7  ExecutionOccurrenceSpecification::execution
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     24  InteractionFragment::covered
   --     24  OccurrenceSpecification::covered
   --     29  InteractionFragment::generalOrdering
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  OccurrenceSpecification::toAfter
   --     5  OccurrenceSpecification::toBefore

   --  ExpansionNode
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     19  ObjectNode::isControlType
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     20  ObjectNode::ordering
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     11  ExpansionNode::regionAsInput
   --     12  ExpansionNode::regionAsOutput
   --     18  ObjectNode::selection
   --     10  TypedElement::type
   --     21  ObjectNode::upperBound
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     12  ObjectNode::inState
   --     6  ActivityNode::incoming
   --     7  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ExpansionRegion
   --
   --     8  ActivityNode::activity
   --     12  StructuredActivityNode::activity
   --     10  Action::context
   --     12  ActivityGroup::inActivity
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     15  ExpansionRegion::mode
   --     14  StructuredActivityNode::mustIsolate
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     13  ActivityGroup::superGroup
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     25  ActivityGroup::containedEdge
   --     26  ActivityGroup::containedNode
   --     29  StructuredActivityNode::edge
   --     12  Namespace::elementImport
   --     18  ExecutableNode::handler
   --     13  Namespace::importedMember
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     30  ExpansionRegion::inputElement
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     14  Namespace::member
   --     24  StructuredActivityNode::node
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     31  ExpansionRegion::outputElement
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     17  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     28  StructuredActivityNode::structuredNodeInput
   --     23  StructuredActivityNode::structuredNodeOutput
   --     27  ActivityGroup::subgroup
   --     41  StructuredActivityNode::variable

   --  Expression
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     7  Expression::symbol
   --     9  ParameterableElement::templateParameter
   --     10  TypedElement::type
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     4  Expression::operand
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Extend
   --
   --     7  Extend::condition
   --     8  Extend::extendedCase
   --     9  Extend::extension
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     6  Extend::extensionLocation
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     24  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     5  DirectedRelationship::target

   --  Extension
   --
   --     12  Classifier::isAbstract
   --     17  Association::isDerived
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     10  Extension::isRequired
   --     16  Extension::metaclass
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     29  Association::endType
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     14  Namespace::member
   --     37  Association::memberEnd
   --     38  Association::navigableOwnedEnd
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     39  Association::ownedEnd
   --     39  Extension::ownedEnd
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     24  Relationship::relatedElement
   --     22  Classifier::substitution
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  ExtensionEnd
   --
   --     27  Property::aggregation
   --     23  Property::association
   --     28  Property::associationEnd
   --     24  Property::class
   --     25  Property::datatype
   --     20  Property::default
   --     21  Property::defaultValue
   --     26  Property::interface
   --     19  Property::isComposite
   --     17  Property::isDerived
   --     29  Property::isDerivedUnion
   --     30  Property::isID
   --     7  RedefinableElement::isLeaf
   --     13  MultiplicityElement::isOrdered
   --     22  Property::isReadOnly
   --     22  StructuralFeature::isReadOnly
   --     18  Feature::isStatic
   --     14  MultiplicityElement::isUnique
   --     15  ExtensionEnd::lower
   --     15  MultiplicityElement::lower
   --     11  MultiplicityElement::lowerValue
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     31  Property::opposite
   --     1  Element::owner
   --     32  Property::owningAssociation
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ConnectableElement::templateParameter
   --     9  ParameterableElement::templateParameter
   --     10  ExtensionEnd::type
   --     10  TypedElement::type
   --     16  MultiplicityElement::upper
   --     12  MultiplicityElement::upperValue
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     24  DeploymentTarget::deployedElement
   --     29  DeploymentTarget::deployment
   --     6  ConnectableElement::end
   --     7  Feature::featuringClassifier
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     8  Property::qualifier
   --     4  RedefinableElement::redefinedElement
   --     9  Property::redefinedProperty
   --     5  RedefinableElement::redefinitionContext
   --     10  Property::subsettedProperty

   --  ExtensionPoint
   --
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     8  ExtensionPoint::useCase
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext

   --  FinalState
   --
   --     8  Vertex::container
   --     9  State::doActivity
   --     10  State::entry
   --     11  State::exit
   --     19  State::isComposite
   --     7  RedefinableElement::isLeaf
   --     12  State::isOrthogonal
   --     13  State::isSimple
   --     14  State::isSubmachineState
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     15  State::redefinedState
   --     16  State::stateInvariant
   --     17  State::submachine
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     8  State::connection
   --     24  State::connectionPoint
   --     9  State::deferrableTrigger
   --     12  Namespace::elementImport
   --     13  Namespace::importedMember
   --     6  Vertex::incoming
   --     14  Namespace::member
   --     7  Vertex::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     17  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     5  State::redefinitionContext
   --     29  State::region

   --  FlowFinalNode
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     7  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ForkNode
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     7  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  FunctionBehavior
   --
   --     17  OpaqueBehavior::body
   --     16  BehavioredClassifier::classifierBehavior
   --     10  Behavior::context
   --     12  Class::isAbstract
   --     12  Classifier::isAbstract
   --     19  Class::isActive
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     21  Behavior::isReentrant
   --     18  OpaqueBehavior::language
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     20  Behavior::specification
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     36  Class::extension
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     27  BehavioredClassifier::interfaceRealization
   --     14  Namespace::member
   --     33  Class::nestedClassifier
   --     25  Class::ownedAttribute
   --     25  StructuredClassifier::ownedAttribute
   --     28  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     30  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     26  Class::ownedOperation
   --     37  Behavior::ownedParameter
   --     38  Behavior::ownedParameterSet
   --     35  EncapsulatedClassifier::ownedPort
   --     34  Class::ownedReception
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     31  StructuredClassifier::part
   --     39  Behavior::postcondition
   --     20  Classifier::powertypeExtent
   --     40  Behavior::precondition
   --     42  Behavior::redefinedBehavior
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     32  StructuredClassifier::role
   --     22  Classifier::substitution
   --     11  Class::superClass
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  Gate
   --
   --     7  MessageEnd::message
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  GeneralOrdering
   --
   --     7  GeneralOrdering::after
   --     8  GeneralOrdering::before
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Generalization
   --
   --     2  Generalization::general
   --     3  Generalization::isSubstitutable
   --     1  Element::owner
   --     4  Generalization::specific
   --
   --     3  Generalization::generalizationSet
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     24  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     5  DirectedRelationship::target

   --  GeneralizationSet
   --
   --     7  GeneralizationSet::isCovering
   --     10  GeneralizationSet::isDisjoint
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     11  GeneralizationSet::powertype
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     7  GeneralizationSet::generalization
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Image
   --
   --     2  Image::content
   --     3  Image::format
   --     4  Image::location
   --     1  Element::owner
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Include
   --
   --     7  Include::addition
   --     8  Include::includingCase
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     24  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     5  DirectedRelationship::target

   --  InformationFlow
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     6  InformationFlow::conveyed
   --     7  InformationFlow::informationSource
   --     8  InformationFlow::informationTarget
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     29  InformationFlow::realization
   --     9  InformationFlow::realizingActivityEdge
   --     10  InformationFlow::realizingConnector
   --     11  InformationFlow::realizingMessage
   --     24  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     5  DirectedRelationship::target

   --  InformationItem
   --
   --     12  Classifier::isAbstract
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     14  Namespace::member
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     24  InformationItem::represented
   --     22  Classifier::substitution
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  InitialNode
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     7  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  InputPin
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     22  Pin::isControl
   --     19  ObjectNode::isControlType
   --     7  RedefinableElement::isLeaf
   --     13  MultiplicityElement::isOrdered
   --     14  MultiplicityElement::isUnique
   --     15  MultiplicityElement::lower
   --     11  MultiplicityElement::lowerValue
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     20  ObjectNode::ordering
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     18  ObjectNode::selection
   --     10  TypedElement::type
   --     16  MultiplicityElement::upper
   --     21  ObjectNode::upperBound
   --     12  MultiplicityElement::upperValue
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     12  ObjectNode::inState
   --     6  ActivityNode::incoming
   --     7  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  InstanceSpecification
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     20  InstanceSpecification::specification
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     4  InstanceSpecification::classifier
   --     3  NamedElement::clientDependency
   --     24  DeploymentTarget::deployedElement
   --     29  DeploymentTarget::deployment
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     5  InstanceSpecification::slot

   --  InstanceValue
   --
   --     7  InstanceValue::instance
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     10  TypedElement::type
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Interaction
   --
   --     16  BehavioredClassifier::classifierBehavior
   --     10  Behavior::context
   --     17  InteractionFragment::enclosingInteraction
   --     18  InteractionFragment::enclosingOperand
   --     12  Class::isAbstract
   --     12  Classifier::isAbstract
   --     19  Class::isActive
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     21  Behavior::isReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     20  Behavior::specification
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     44  Interaction::action
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     24  InteractionFragment::covered
   --     12  Namespace::elementImport
   --     36  Class::extension
   --     10  Classifier::feature
   --     45  Interaction::formalGate
   --     41  Interaction::fragment
   --     11  Classifier::general
   --     29  InteractionFragment::generalOrdering
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     27  BehavioredClassifier::interfaceRealization
   --     46  Interaction::lifeline
   --     14  Namespace::member
   --     43  Interaction::message
   --     33  Class::nestedClassifier
   --     25  Class::ownedAttribute
   --     25  StructuredClassifier::ownedAttribute
   --     28  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     30  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     26  Class::ownedOperation
   --     37  Behavior::ownedParameter
   --     38  Behavior::ownedParameterSet
   --     35  EncapsulatedClassifier::ownedPort
   --     34  Class::ownedReception
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     31  StructuredClassifier::part
   --     39  Behavior::postcondition
   --     20  Classifier::powertypeExtent
   --     40  Behavior::precondition
   --     42  Behavior::redefinedBehavior
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     32  StructuredClassifier::role
   --     22  Classifier::substitution
   --     11  Class::superClass
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  InteractionConstraint
   --
   --     10  Constraint::context
   --     7  InteractionConstraint::maxint
   --     11  InteractionConstraint::minint
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     20  Constraint::specification
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     4  Constraint::constrainedElement
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  InteractionOperand
   --
   --     17  InteractionFragment::enclosingInteraction
   --     18  InteractionFragment::enclosingOperand
   --     10  InteractionOperand::guard
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     24  InteractionFragment::covered
   --     12  Namespace::elementImport
   --     41  InteractionOperand::fragment
   --     29  InteractionFragment::generalOrdering
   --     13  Namespace::importedMember
   --     14  Namespace::member
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     17  Namespace::packageImport

   --  InteractionUse
   --
   --     17  InteractionFragment::enclosingInteraction
   --     18  InteractionFragment::enclosingOperand
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     7  InteractionUse::refersTo
   --     8  InteractionUse::returnValue
   --     9  InteractionUse::returnValueRecipient
   --     6  NamedElement::visibility
   --
   --     4  InteractionUse::actualGate
   --     12  InteractionUse::argument
   --     3  NamedElement::clientDependency
   --     24  InteractionFragment::covered
   --     29  InteractionFragment::generalOrdering
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Interface
   --
   --     12  Classifier::isAbstract
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     33  Interface::protocol
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     14  Namespace::member
   --     33  Interface::nestedClassifier
   --     25  Interface::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     26  Interface::ownedOperation
   --     34  Interface::ownedReception
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     24  Interface::redefinedInterface
   --     5  RedefinableElement::redefinitionContext
   --     22  Classifier::substitution
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  InterfaceRealization
   --
   --     10  InterfaceRealization::contract
   --     11  InterfaceRealization::implementingClassifier
   --     7  Abstraction::mapping
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     6  Dependency::client
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     24  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     7  Dependency::supplier
   --     5  DirectedRelationship::target

   --  InterruptibleActivityRegion
   --
   --     12  ActivityGroup::inActivity
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     13  ActivityGroup::superGroup
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     25  ActivityGroup::containedEdge
   --     26  ActivityGroup::containedNode
   --     4  InterruptibleActivityRegion::interruptingEdge
   --     24  InterruptibleActivityRegion::node
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     27  ActivityGroup::subgroup

   --  Interval
   --
   --     7  Interval::max
   --     11  Interval::min
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     10  TypedElement::type
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  IntervalConstraint
   --
   --     10  Constraint::context
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     20  Constraint::specification
   --     20  IntervalConstraint::specification
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     4  Constraint::constrainedElement
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  JoinNode
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     10  JoinNode::isCombineDuplicate
   --     7  RedefinableElement::isLeaf
   --     11  JoinNode::joinSpec
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     7  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  Lifeline
   --
   --     9  Lifeline::decomposedAs
   --     8  Lifeline::interaction
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     7  Lifeline::represents
   --     10  Lifeline::selector
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     4  Lifeline::coveredBy
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  LinkEndCreationData
   --
   --     14  LinkEndData::end
   --     16  LinkEndCreationData::insertAt
   --     15  LinkEndCreationData::isReplaceAll
   --     1  Element::owner
   --     17  LinkEndData::value
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     8  LinkEndData::qualifier

   --  LinkEndData
   --
   --     14  LinkEndData::end
   --     1  Element::owner
   --     17  LinkEndData::value
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     8  LinkEndData::qualifier

   --  LinkEndDestructionData
   --
   --     2  LinkEndDestructionData::destroyAt
   --     14  LinkEndData::end
   --     3  LinkEndDestructionData::isDestroyDuplicates
   --     1  Element::owner
   --     17  LinkEndData::value
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     8  LinkEndData::qualifier

   --  LiteralBoolean
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     10  TypedElement::type
   --     7  LiteralBoolean::value
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  LiteralInteger
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     10  TypedElement::type
   --     7  LiteralInteger::value
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  LiteralNull
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     10  TypedElement::type
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  LiteralReal
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     10  TypedElement::type
   --     7  LiteralReal::value
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  LiteralString
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     10  TypedElement::type
   --     7  LiteralString::value
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  LiteralUnlimitedNatural
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     10  TypedElement::type
   --     7  LiteralUnlimitedNatural::value
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  LoopNode
   --
   --     8  ActivityNode::activity
   --     12  StructuredActivityNode::activity
   --     10  Action::context
   --     15  LoopNode::decider
   --     12  ActivityGroup::inActivity
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     16  LoopNode::isTestedFirst
   --     14  StructuredActivityNode::mustIsolate
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     13  ActivityGroup::superGroup
   --     6  NamedElement::visibility
   --
   --     30  LoopNode::bodyOutput
   --     32  LoopNode::bodyPart
   --     3  NamedElement::clientDependency
   --     25  ActivityGroup::containedEdge
   --     26  ActivityGroup::containedNode
   --     29  StructuredActivityNode::edge
   --     12  Namespace::elementImport
   --     18  ExecutableNode::handler
   --     13  Namespace::importedMember
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     33  LoopNode::loopVariable
   --     28  LoopNode::loopVariableInput
   --     14  Namespace::member
   --     24  StructuredActivityNode::node
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     17  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     23  LoopNode::result
   --     34  LoopNode::setupPart
   --     28  StructuredActivityNode::structuredNodeInput
   --     23  StructuredActivityNode::structuredNodeOutput
   --     27  ActivityGroup::subgroup
   --     31  LoopNode::test
   --     41  StructuredActivityNode::variable

   --  Manifestation
   --
   --     7  Abstraction::mapping
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     10  Manifestation::utilizedElement
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     6  Dependency::client
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     24  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     7  Dependency::supplier
   --     5  DirectedRelationship::target

   --  MergeNode
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     7  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  Message
   --
   --     9  Message::connector
   --     8  Message::interaction
   --     10  Message::messageKind
   --     11  Message::messageSort
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     12  Message::receiveEvent
   --     13  Message::sendEvent
   --     7  Message::signature
   --     6  NamedElement::visibility
   --
   --     12  Message::argument
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  MessageOccurrenceSpecification
   --
   --     17  InteractionFragment::enclosingInteraction
   --     18  InteractionFragment::enclosingOperand
   --     7  MessageEnd::message
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     24  InteractionFragment::covered
   --     24  OccurrenceSpecification::covered
   --     29  InteractionFragment::generalOrdering
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  OccurrenceSpecification::toAfter
   --     5  OccurrenceSpecification::toBefore

   --  Model
   --
   --     7  Package::URI
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     10  Package::nestingPackage
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     12  Model::viewpoint
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  Namespace::elementImport
   --     13  Namespace::importedMember
   --     14  Namespace::member
   --     4  Package::nestedPackage
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     5  Package::ownedStereotype
   --     7  Package::ownedType
   --     17  Namespace::packageImport
   --     8  Package::packageMerge
   --     24  Package::packagedElement
   --     9  Package::profileApplication
   --     6  TemplateableElement::templateBinding

   --  Node
   --
   --     16  BehavioredClassifier::classifierBehavior
   --     12  Class::isAbstract
   --     12  Classifier::isAbstract
   --     19  Class::isActive
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     24  DeploymentTarget::deployedElement
   --     29  DeploymentTarget::deployment
   --     12  Namespace::elementImport
   --     36  Class::extension
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     27  BehavioredClassifier::interfaceRealization
   --     14  Namespace::member
   --     33  Class::nestedClassifier
   --     37  Node::nestedNode
   --     25  Class::ownedAttribute
   --     25  StructuredClassifier::ownedAttribute
   --     28  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     30  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     26  Class::ownedOperation
   --     35  EncapsulatedClassifier::ownedPort
   --     34  Class::ownedReception
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     31  StructuredClassifier::part
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     32  StructuredClassifier::role
   --     22  Classifier::substitution
   --     11  Class::superClass
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  ObjectFlow
   --
   --     8  ActivityEdge::activity
   --     10  ActivityEdge::guard
   --     9  ActivityEdge::inStructuredNode
   --     13  ActivityEdge::interrupts
   --     7  RedefinableElement::isLeaf
   --     15  ObjectFlow::isMulticast
   --     16  ObjectFlow::isMultireceive
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     18  ObjectFlow::selection
   --     11  ActivityEdge::source
   --     12  ActivityEdge::target
   --     17  ObjectFlow::transformation
   --     6  NamedElement::visibility
   --     14  ActivityEdge::weight
   --
   --     3  NamedElement::clientDependency
   --     8  ActivityEdge::inGroup
   --     9  ActivityEdge::inPartition
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     6  ActivityEdge::redefinedEdge
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext

   --  OccurrenceSpecification
   --
   --     17  InteractionFragment::enclosingInteraction
   --     18  InteractionFragment::enclosingOperand
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     24  InteractionFragment::covered
   --     24  OccurrenceSpecification::covered
   --     29  InteractionFragment::generalOrdering
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  OccurrenceSpecification::toAfter
   --     5  OccurrenceSpecification::toBefore

   --  OpaqueAction
   --
   --     8  ActivityNode::activity
   --     17  OpaqueAction::body
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     18  OpaqueAction::language
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     12  OpaqueAction::inputValue
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     13  OpaqueAction::outputValue
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  OpaqueBehavior
   --
   --     17  OpaqueBehavior::body
   --     16  BehavioredClassifier::classifierBehavior
   --     10  Behavior::context
   --     12  Class::isAbstract
   --     12  Classifier::isAbstract
   --     19  Class::isActive
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     21  Behavior::isReentrant
   --     18  OpaqueBehavior::language
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     20  Behavior::specification
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     36  Class::extension
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     27  BehavioredClassifier::interfaceRealization
   --     14  Namespace::member
   --     33  Class::nestedClassifier
   --     25  Class::ownedAttribute
   --     25  StructuredClassifier::ownedAttribute
   --     28  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     30  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     26  Class::ownedOperation
   --     37  Behavior::ownedParameter
   --     38  Behavior::ownedParameterSet
   --     35  EncapsulatedClassifier::ownedPort
   --     34  Class::ownedReception
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     31  StructuredClassifier::part
   --     39  Behavior::postcondition
   --     20  Classifier::powertypeExtent
   --     40  Behavior::precondition
   --     42  Behavior::redefinedBehavior
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     32  StructuredClassifier::role
   --     22  Classifier::substitution
   --     11  Class::superClass
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  OpaqueExpression
   --
   --     13  OpaqueExpression::behavior
   --     17  OpaqueExpression::body
   --     18  OpaqueExpression::language
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     12  OpaqueExpression::result
   --     9  ParameterableElement::templateParameter
   --     10  TypedElement::type
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Operation
   --
   --     19  Operation::bodyCondition
   --     24  Operation::class
   --     17  BehavioralFeature::concurrency
   --     25  Operation::datatype
   --     26  Operation::interface
   --     12  BehavioralFeature::isAbstract
   --     7  RedefinableElement::isLeaf
   --     13  Operation::isOrdered
   --     20  Operation::isQuery
   --     18  Feature::isStatic
   --     14  Operation::isUnique
   --     15  Operation::lower
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  Operation::templateParameter
   --     9  ParameterableElement::templateParameter
   --     10  Operation::type
   --     16  Operation::upper
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  Namespace::elementImport
   --     7  Feature::featuringClassifier
   --     13  Namespace::importedMember
   --     14  Namespace::member
   --     8  BehavioralFeature::method
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     37  BehavioralFeature::ownedParameter
   --     37  Operation::ownedParameter
   --     38  BehavioralFeature::ownedParameterSet
   --     16  Namespace::ownedRule
   --     17  Namespace::packageImport
   --     39  Operation::postcondition
   --     40  Operation::precondition
   --     9  BehavioralFeature::raisedException
   --     9  Operation::raisedException
   --     4  RedefinableElement::redefinedElement
   --     10  Operation::redefinedOperation
   --     5  RedefinableElement::redefinitionContext
   --     6  TemplateableElement::templateBinding

   --  OperationTemplateParameter
   --
   --     2  TemplateParameter::default
   --     3  TemplateParameter::ownedDefault
   --     4  TemplateParameter::ownedParameteredElement
   --     1  Element::owner
   --     5  OperationTemplateParameter::parameteredElement
   --     5  TemplateParameter::parameteredElement
   --     7  TemplateParameter::signature
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  OutputPin
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     22  Pin::isControl
   --     19  ObjectNode::isControlType
   --     7  RedefinableElement::isLeaf
   --     13  MultiplicityElement::isOrdered
   --     14  MultiplicityElement::isUnique
   --     15  MultiplicityElement::lower
   --     11  MultiplicityElement::lowerValue
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     20  ObjectNode::ordering
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     18  ObjectNode::selection
   --     10  TypedElement::type
   --     16  MultiplicityElement::upper
   --     21  ObjectNode::upperBound
   --     12  MultiplicityElement::upperValue
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     12  ObjectNode::inState
   --     6  ActivityNode::incoming
   --     7  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  Package
   --
   --     7  Package::URI
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     10  Package::nestingPackage
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  Namespace::elementImport
   --     13  Namespace::importedMember
   --     14  Namespace::member
   --     4  Package::nestedPackage
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     5  Package::ownedStereotype
   --     7  Package::ownedType
   --     17  Namespace::packageImport
   --     8  Package::packageMerge
   --     24  Package::packagedElement
   --     9  Package::profileApplication
   --     6  TemplateableElement::templateBinding

   --  PackageImport
   --
   --     4  PackageImport::importedPackage
   --     2  PackageImport::importingNamespace
   --     1  Element::owner
   --     3  PackageImport::visibility
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     24  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     5  DirectedRelationship::target

   --  PackageMerge
   --
   --     2  PackageMerge::mergedPackage
   --     1  Element::owner
   --     3  PackageMerge::receivingPackage
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     24  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     5  DirectedRelationship::target

   --  Parameter
   --
   --     20  Parameter::default
   --     21  Parameter::defaultValue
   --     7  Parameter::direction
   --     18  Parameter::effect
   --     19  Parameter::isException
   --     13  MultiplicityElement::isOrdered
   --     22  Parameter::isStream
   --     14  MultiplicityElement::isUnique
   --     15  MultiplicityElement::lower
   --     11  MultiplicityElement::lowerValue
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     17  Parameter::operation
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ConnectableElement::templateParameter
   --     9  ParameterableElement::templateParameter
   --     10  TypedElement::type
   --     16  MultiplicityElement::upper
   --     12  MultiplicityElement::upperValue
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     6  ConnectableElement::end
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  Parameter::parameterSet

   --  ParameterSet
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     4  ParameterSet::condition
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     6  ParameterSet::parameter

   --  PartDecomposition
   --
   --     17  InteractionFragment::enclosingInteraction
   --     18  InteractionFragment::enclosingOperand
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     7  InteractionUse::refersTo
   --     8  InteractionUse::returnValue
   --     9  InteractionUse::returnValueRecipient
   --     6  NamedElement::visibility
   --
   --     4  InteractionUse::actualGate
   --     12  InteractionUse::argument
   --     3  NamedElement::clientDependency
   --     24  InteractionFragment::covered
   --     29  InteractionFragment::generalOrdering
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Port
   --
   --     27  Property::aggregation
   --     23  Property::association
   --     28  Property::associationEnd
   --     24  Property::class
   --     25  Property::datatype
   --     20  Property::default
   --     21  Property::defaultValue
   --     26  Property::interface
   --     34  Port::isBehavior
   --     19  Property::isComposite
   --     35  Port::isConjugated
   --     17  Property::isDerived
   --     29  Property::isDerivedUnion
   --     30  Property::isID
   --     7  RedefinableElement::isLeaf
   --     13  MultiplicityElement::isOrdered
   --     22  Property::isReadOnly
   --     22  StructuralFeature::isReadOnly
   --     36  Port::isService
   --     18  Feature::isStatic
   --     14  MultiplicityElement::isUnique
   --     15  MultiplicityElement::lower
   --     11  MultiplicityElement::lowerValue
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     31  Property::opposite
   --     1  Element::owner
   --     32  Property::owningAssociation
   --     8  ParameterableElement::owningTemplateParameter
   --     33  Port::protocol
   --     5  NamedElement::qualifiedName
   --     9  ConnectableElement::templateParameter
   --     9  ParameterableElement::templateParameter
   --     10  TypedElement::type
   --     16  MultiplicityElement::upper
   --     12  MultiplicityElement::upperValue
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     24  DeploymentTarget::deployedElement
   --     29  DeploymentTarget::deployment
   --     6  ConnectableElement::end
   --     7  Feature::featuringClassifier
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     37  Port::provided
   --     8  Property::qualifier
   --     4  RedefinableElement::redefinedElement
   --     11  Port::redefinedPort
   --     9  Property::redefinedProperty
   --     5  RedefinableElement::redefinitionContext
   --     38  Port::required
   --     10  Property::subsettedProperty

   --  PrimitiveType
   --
   --     12  Classifier::isAbstract
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     14  Namespace::member
   --     25  DataType::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     26  DataType::ownedOperation
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     22  Classifier::substitution
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  Profile
   --
   --     7  Package::URI
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     10  Package::nestingPackage
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  Namespace::elementImport
   --     13  Namespace::importedMember
   --     14  Namespace::member
   --     10  Profile::metaclassReference
   --     11  Profile::metamodelReference
   --     4  Package::nestedPackage
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     5  Package::ownedStereotype
   --     7  Package::ownedType
   --     17  Namespace::packageImport
   --     8  Package::packageMerge
   --     24  Package::packagedElement
   --     9  Package::profileApplication
   --     6  TemplateableElement::templateBinding

   --  ProfileApplication
   --
   --     2  ProfileApplication::appliedProfile
   --     3  ProfileApplication::applyingPackage
   --     4  ProfileApplication::isStrict
   --     1  Element::owner
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     24  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     5  DirectedRelationship::target

   --  Property
   --
   --     27  Property::aggregation
   --     23  Property::association
   --     28  Property::associationEnd
   --     24  Property::class
   --     25  Property::datatype
   --     20  Property::default
   --     21  Property::defaultValue
   --     26  Property::interface
   --     19  Property::isComposite
   --     17  Property::isDerived
   --     29  Property::isDerivedUnion
   --     30  Property::isID
   --     7  RedefinableElement::isLeaf
   --     13  MultiplicityElement::isOrdered
   --     22  Property::isReadOnly
   --     22  StructuralFeature::isReadOnly
   --     18  Feature::isStatic
   --     14  MultiplicityElement::isUnique
   --     15  MultiplicityElement::lower
   --     11  MultiplicityElement::lowerValue
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     31  Property::opposite
   --     1  Element::owner
   --     32  Property::owningAssociation
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ConnectableElement::templateParameter
   --     9  ParameterableElement::templateParameter
   --     10  TypedElement::type
   --     16  MultiplicityElement::upper
   --     12  MultiplicityElement::upperValue
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     24  DeploymentTarget::deployedElement
   --     29  DeploymentTarget::deployment
   --     6  ConnectableElement::end
   --     7  Feature::featuringClassifier
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     8  Property::qualifier
   --     4  RedefinableElement::redefinedElement
   --     9  Property::redefinedProperty
   --     5  RedefinableElement::redefinitionContext
   --     10  Property::subsettedProperty

   --  ProtocolConformance
   --
   --     2  ProtocolConformance::generalMachine
   --     1  Element::owner
   --     3  ProtocolConformance::specificMachine
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     24  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     5  DirectedRelationship::target

   --  ProtocolStateMachine
   --
   --     16  BehavioredClassifier::classifierBehavior
   --     10  Behavior::context
   --     12  Class::isAbstract
   --     12  Classifier::isAbstract
   --     19  Class::isActive
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     21  Behavior::isReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     20  Behavior::specification
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     43  ProtocolStateMachine::conformance
   --     24  StateMachine::connectionPoint
   --     12  Namespace::elementImport
   --     42  StateMachine::extendedStateMachine
   --     36  Class::extension
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     27  BehavioredClassifier::interfaceRealization
   --     14  Namespace::member
   --     33  Class::nestedClassifier
   --     25  Class::ownedAttribute
   --     25  StructuredClassifier::ownedAttribute
   --     28  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     30  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     26  Class::ownedOperation
   --     37  Behavior::ownedParameter
   --     38  Behavior::ownedParameterSet
   --     35  EncapsulatedClassifier::ownedPort
   --     34  Class::ownedReception
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     31  StructuredClassifier::part
   --     39  Behavior::postcondition
   --     20  Classifier::powertypeExtent
   --     40  Behavior::precondition
   --     42  Behavior::redefinedBehavior
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     29  StateMachine::region
   --     32  StructuredClassifier::role
   --     41  StateMachine::submachineState
   --     22  Classifier::substitution
   --     11  Class::superClass
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  ProtocolTransition
   --
   --     8  Transition::container
   --     9  Transition::effect
   --     10  Transition::guard
   --     7  RedefinableElement::isLeaf
   --     13  Transition::kind
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     15  ProtocolTransition::postCondition
   --     16  ProtocolTransition::preCondition
   --     5  NamedElement::qualifiedName
   --     14  Transition::redefinedTransition
   --     11  Transition::source
   --     12  Transition::target
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  Namespace::elementImport
   --     13  Namespace::importedMember
   --     14  Namespace::member
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     17  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     5  Transition::redefinitionContext
   --     6  ProtocolTransition::referred
   --     24  Transition::trigger

   --  Pseudostate
   --
   --     8  Vertex::container
   --     7  Pseudostate::kind
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     9  Pseudostate::state
   --     10  Pseudostate::stateMachine
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     6  Vertex::incoming
   --     7  Vertex::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  QualifierValue
   --
   --     1  Element::owner
   --     14  QualifierValue::qualifier
   --     17  QualifierValue::value
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  RaiseExceptionAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     12  RaiseExceptionAction::exception
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ReadExtentAction
   --
   --     8  ActivityNode::activity
   --     14  ReadExtentAction::classifier
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     12  ReadExtentAction::result
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ReadIsClassifiedObjectAction
   --
   --     8  ActivityNode::activity
   --     14  ReadIsClassifiedObjectAction::classifier
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     15  ReadIsClassifiedObjectAction::isDirect
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     13  ReadIsClassifiedObjectAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     12  ReadIsClassifiedObjectAction::result
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ReadLinkAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     12  ReadLinkAction::result
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     13  LinkAction::endData
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     12  LinkAction::inputValue
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ReadLinkObjectEndAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     14  ReadLinkObjectEndAction::end
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     13  ReadLinkObjectEndAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     12  ReadLinkObjectEndAction::result
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ReadLinkObjectEndQualifierAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     13  ReadLinkObjectEndQualifierAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     14  ReadLinkObjectEndQualifierAction::qualifier
   --     12  ReadLinkObjectEndQualifierAction::result
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ReadSelfAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     12  ReadSelfAction::result
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ReadStructuralFeatureAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     13  StructuralFeatureAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     12  ReadStructuralFeatureAction::result
   --     14  StructuralFeatureAction::structuralFeature
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ReadVariableAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     12  ReadVariableAction::result
   --     13  VariableAction::variable
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  Realization
   --
   --     7  Abstraction::mapping
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     6  Dependency::client
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     24  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     7  Dependency::supplier
   --     5  DirectedRelationship::target

   --  Reception
   --
   --     17  BehavioralFeature::concurrency
   --     12  BehavioralFeature::isAbstract
   --     7  RedefinableElement::isLeaf
   --     18  Feature::isStatic
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     13  Reception::signal
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  Namespace::elementImport
   --     7  Feature::featuringClassifier
   --     13  Namespace::importedMember
   --     14  Namespace::member
   --     8  BehavioralFeature::method
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     37  BehavioralFeature::ownedParameter
   --     38  BehavioralFeature::ownedParameterSet
   --     16  Namespace::ownedRule
   --     17  Namespace::packageImport
   --     9  BehavioralFeature::raisedException
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext

   --  ReclassifyObjectAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     15  ReclassifyObjectAction::isReplaceAll
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     13  ReclassifyObjectAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     12  ReclassifyObjectAction::newClassifier
   --     13  ReclassifyObjectAction::oldClassifier
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  RedefinableTemplateSignature
   --
   --     8  RedefinableTemplateSignature::classifier
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     8  TemplateSignature::template
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     7  RedefinableTemplateSignature::extendedSignature
   --     8  RedefinableTemplateSignature::inheritedParameter
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     37  TemplateSignature::ownedParameter
   --     6  TemplateSignature::parameter
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext

   --  ReduceAction
   --
   --     8  ActivityNode::activity
   --     14  ReduceAction::collection
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     13  ReduceAction::isOrdered
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     15  ReduceAction::reducer
   --     12  ReduceAction::result
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  Region
   --
   --     8  Region::extendedRegion
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     9  Region::state
   --     10  Region::stateMachine
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  Namespace::elementImport
   --     13  Namespace::importedMember
   --     14  Namespace::member
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     17  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     5  Region::redefinitionContext
   --     6  Region::subvertex
   --     7  Region::transition

   --  RemoveStructuralFeatureValueAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     15  RemoveStructuralFeatureValueAction::isRemoveDuplicates
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     13  StructuralFeatureAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     16  RemoveStructuralFeatureValueAction::removeAt
   --     12  WriteStructuralFeatureAction::result
   --     14  StructuralFeatureAction::structuralFeature
   --     17  WriteStructuralFeatureAction::value
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  RemoveVariableValueAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     15  RemoveVariableValueAction::isRemoveDuplicates
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     16  RemoveVariableValueAction::removeAt
   --     17  WriteVariableAction::value
   --     13  VariableAction::variable
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ReplyAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     12  ReplyAction::replyToCall
   --     13  ReplyAction::returnInformation
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     12  ReplyAction::replyValue

   --  SendObjectAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  InvocationAction::onPort
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     12  SendObjectAction::target
   --     6  NamedElement::visibility
   --
   --     12  InvocationAction::argument
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     12  SendObjectAction::request

   --  SendSignalAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  InvocationAction::onPort
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     13  SendSignalAction::signal
   --     12  SendSignalAction::target
   --     6  NamedElement::visibility
   --
   --     12  InvocationAction::argument
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  SequenceNode
   --
   --     8  ActivityNode::activity
   --     12  StructuredActivityNode::activity
   --     10  Action::context
   --     12  ActivityGroup::inActivity
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     14  StructuredActivityNode::mustIsolate
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     13  ActivityGroup::superGroup
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     25  ActivityGroup::containedEdge
   --     26  ActivityGroup::containedNode
   --     29  StructuredActivityNode::edge
   --     12  Namespace::elementImport
   --     24  SequenceNode::executableNode
   --     18  ExecutableNode::handler
   --     13  Namespace::importedMember
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     14  Namespace::member
   --     24  StructuredActivityNode::node
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     17  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     28  StructuredActivityNode::structuredNodeInput
   --     23  StructuredActivityNode::structuredNodeOutput
   --     27  ActivityGroup::subgroup
   --     41  StructuredActivityNode::variable

   --  Signal
   --
   --     12  Classifier::isAbstract
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     14  Namespace::member
   --     25  Signal::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     22  Classifier::substitution
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  SignalEvent
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  SignalEvent::signal
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Slot
   --
   --     2  Slot::definingFeature
   --     1  Element::owner
   --     3  Slot::owningInstance
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     3  Slot::value

   --  StartClassifierBehaviorAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     13  StartClassifierBehaviorAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  StartObjectBehaviorAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     15  CallAction::isSynchronous
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     13  StartObjectBehaviorAction::object
   --     14  InvocationAction::onPort
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     12  InvocationAction::argument
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     23  CallAction::result

   --  State
   --
   --     8  Vertex::container
   --     9  State::doActivity
   --     10  State::entry
   --     11  State::exit
   --     19  State::isComposite
   --     7  RedefinableElement::isLeaf
   --     12  State::isOrthogonal
   --     13  State::isSimple
   --     14  State::isSubmachineState
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     15  State::redefinedState
   --     16  State::stateInvariant
   --     17  State::submachine
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     8  State::connection
   --     24  State::connectionPoint
   --     9  State::deferrableTrigger
   --     12  Namespace::elementImport
   --     13  Namespace::importedMember
   --     6  Vertex::incoming
   --     14  Namespace::member
   --     7  Vertex::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     17  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     5  State::redefinitionContext
   --     29  State::region

   --  StateInvariant
   --
   --     17  InteractionFragment::enclosingInteraction
   --     18  InteractionFragment::enclosingOperand
   --     7  StateInvariant::invariant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     24  InteractionFragment::covered
   --     24  StateInvariant::covered
   --     29  InteractionFragment::generalOrdering
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  StateMachine
   --
   --     16  BehavioredClassifier::classifierBehavior
   --     10  Behavior::context
   --     12  Class::isAbstract
   --     12  Classifier::isAbstract
   --     19  Class::isActive
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     21  Behavior::isReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     20  Behavior::specification
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     24  StateMachine::connectionPoint
   --     12  Namespace::elementImport
   --     42  StateMachine::extendedStateMachine
   --     36  Class::extension
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     27  BehavioredClassifier::interfaceRealization
   --     14  Namespace::member
   --     33  Class::nestedClassifier
   --     25  Class::ownedAttribute
   --     25  StructuredClassifier::ownedAttribute
   --     28  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     30  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     26  Class::ownedOperation
   --     37  Behavior::ownedParameter
   --     38  Behavior::ownedParameterSet
   --     35  EncapsulatedClassifier::ownedPort
   --     34  Class::ownedReception
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     31  StructuredClassifier::part
   --     39  Behavior::postcondition
   --     20  Classifier::powertypeExtent
   --     40  Behavior::precondition
   --     42  Behavior::redefinedBehavior
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     29  StateMachine::region
   --     32  StructuredClassifier::role
   --     41  StateMachine::submachineState
   --     22  Classifier::substitution
   --     11  Class::superClass
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  Stereotype
   --
   --     16  BehavioredClassifier::classifierBehavior
   --     12  Class::isAbstract
   --     12  Classifier::isAbstract
   --     19  Class::isActive
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     10  Stereotype::profile
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     36  Class::extension
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     24  Stereotype::icon
   --     13  Namespace::importedMember
   --     18  Classifier::inheritedMember
   --     27  BehavioredClassifier::interfaceRealization
   --     14  Namespace::member
   --     33  Class::nestedClassifier
   --     25  Class::ownedAttribute
   --     25  StructuredClassifier::ownedAttribute
   --     28  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     30  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     26  Class::ownedOperation
   --     35  EncapsulatedClassifier::ownedPort
   --     34  Class::ownedReception
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     31  StructuredClassifier::part
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     32  StructuredClassifier::role
   --     22  Classifier::substitution
   --     11  Class::superClass
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  StringExpression
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  StringExpression::owningExpression
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     7  Expression::symbol
   --     9  ParameterableElement::templateParameter
   --     10  TypedElement::type
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     4  Expression::operand
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     5  StringExpression::subExpression
   --     6  TemplateableElement::templateBinding

   --  StructuredActivityNode
   --
   --     8  ActivityNode::activity
   --     12  StructuredActivityNode::activity
   --     10  Action::context
   --     12  ActivityGroup::inActivity
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     14  StructuredActivityNode::mustIsolate
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     13  ActivityGroup::superGroup
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     25  ActivityGroup::containedEdge
   --     26  ActivityGroup::containedNode
   --     29  StructuredActivityNode::edge
   --     12  Namespace::elementImport
   --     18  ExecutableNode::handler
   --     13  Namespace::importedMember
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     14  Namespace::member
   --     24  StructuredActivityNode::node
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     17  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     28  StructuredActivityNode::structuredNodeInput
   --     23  StructuredActivityNode::structuredNodeOutput
   --     27  ActivityGroup::subgroup
   --     41  StructuredActivityNode::variable

   --  Substitution
   --
   --     10  Substitution::contract
   --     7  Abstraction::mapping
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     11  Substitution::substitutingClassifier
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     6  Dependency::client
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     24  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     7  Dependency::supplier
   --     5  DirectedRelationship::target

   --  TemplateBinding
   --
   --     2  TemplateBinding::boundElement
   --     1  Element::owner
   --     7  TemplateBinding::signature
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     3  TemplateBinding::parameterSubstitution
   --     24  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     5  DirectedRelationship::target

   --  TemplateParameter
   --
   --     2  TemplateParameter::default
   --     3  TemplateParameter::ownedDefault
   --     4  TemplateParameter::ownedParameteredElement
   --     1  Element::owner
   --     5  TemplateParameter::parameteredElement
   --     7  TemplateParameter::signature
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  TemplateParameterSubstitution
   --
   --     2  TemplateParameterSubstitution::actual
   --     3  TemplateParameterSubstitution::formal
   --     4  TemplateParameterSubstitution::ownedActual
   --     1  Element::owner
   --     5  TemplateParameterSubstitution::templateBinding
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  TemplateSignature
   --
   --     1  Element::owner
   --     8  TemplateSignature::template
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     37  TemplateSignature::ownedParameter
   --     6  TemplateSignature::parameter

   --  TestIdentityAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     13  TestIdentityAction::first
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     12  TestIdentityAction::result
   --     14  TestIdentityAction::second
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  TimeConstraint
   --
   --     10  Constraint::context
   --     7  TimeConstraint::firstEvent
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     20  Constraint::specification
   --     20  IntervalConstraint::specification
   --     20  TimeConstraint::specification
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     4  Constraint::constrainedElement
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  TimeEvent
   --
   --     7  TimeEvent::isRelative
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --     10  TimeEvent::when
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  TimeExpression
   --
   --     7  TimeExpression::expr
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     10  TypedElement::type
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     4  TimeExpression::observation
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  TimeInterval
   --
   --     7  Interval::max
   --     7  TimeInterval::max
   --     11  Interval::min
   --     11  TimeInterval::min
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     10  TypedElement::type
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  TimeObservation
   --
   --     7  TimeObservation::event
   --     10  TimeObservation::firstEvent
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Transition
   --
   --     8  Transition::container
   --     9  Transition::effect
   --     10  Transition::guard
   --     7  RedefinableElement::isLeaf
   --     13  Transition::kind
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     14  Transition::redefinedTransition
   --     11  Transition::source
   --     12  Transition::target
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  Namespace::elementImport
   --     13  Namespace::importedMember
   --     14  Namespace::member
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     17  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     5  Transition::redefinitionContext
   --     24  Transition::trigger

   --  Trigger
   --
   --     7  Trigger::event
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  Trigger::port

   --  UnmarshallAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     13  UnmarshallAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     12  UnmarshallAction::unmarshallType
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     23  UnmarshallAction::result

   --  Usage
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     6  Dependency::client
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     24  Relationship::relatedElement
   --     4  DirectedRelationship::source
   --     7  Dependency::supplier
   --     5  DirectedRelationship::target

   --  UseCase
   --
   --     16  BehavioredClassifier::classifierBehavior
   --     12  Classifier::isAbstract
   --     14  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     11  Classifier::ownedTemplateSignature
   --     11  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     13  Type::package
   --     5  NamedElement::qualifiedName
   --     15  Classifier::representation
   --     9  Classifier::templateParameter
   --     9  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     8  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     9  Classifier::collaborationUse
   --     12  Namespace::elementImport
   --     24  UseCase::extend
   --     25  UseCase::extensionPoint
   --     10  Classifier::feature
   --     11  Classifier::general
   --     7  Classifier::generalization
   --     13  Namespace::importedMember
   --     26  UseCase::include
   --     18  Classifier::inheritedMember
   --     27  BehavioredClassifier::interfaceRealization
   --     14  Namespace::member
   --     28  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     15  Namespace::ownedMember
   --     16  Namespace::ownedRule
   --     19  Classifier::ownedUseCase
   --     17  Namespace::packageImport
   --     20  Classifier::powertypeExtent
   --     21  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     29  UseCase::subject
   --     22  Classifier::substitution
   --     6  TemplateableElement::templateBinding
   --     23  Classifier::useCase

   --  ValuePin
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     22  Pin::isControl
   --     19  ObjectNode::isControlType
   --     7  RedefinableElement::isLeaf
   --     13  MultiplicityElement::isOrdered
   --     14  MultiplicityElement::isUnique
   --     15  MultiplicityElement::lower
   --     11  MultiplicityElement::lowerValue
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     20  ObjectNode::ordering
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     18  ObjectNode::selection
   --     10  TypedElement::type
   --     16  MultiplicityElement::upper
   --     21  ObjectNode::upperBound
   --     12  MultiplicityElement::upperValue
   --     17  ValuePin::value
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     12  ObjectNode::inState
   --     6  ActivityNode::incoming
   --     7  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ValueSpecificationAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     12  ValueSpecificationAction::result
   --     17  ValueSpecificationAction::value
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     18  ExecutableNode::handler
   --     8  ActivityNode::inGroup
   --     10  ActivityNode::inInterruptibleRegion
   --     9  ActivityNode::inPartition
   --     6  ActivityNode::incoming
   --     19  Action::input
   --     20  Action::localPostcondition
   --     21  Action::localPrecondition
   --     7  ActivityNode::outgoing
   --     22  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  Variable
   --
   --     7  Variable::activityScope
   --     13  MultiplicityElement::isOrdered
   --     14  MultiplicityElement::isUnique
   --     15  MultiplicityElement::lower
   --     11  MultiplicityElement::lowerValue
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     8  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     17  Variable::scope
   --     9  ConnectableElement::templateParameter
   --     9  ParameterableElement::templateParameter
   --     10  TypedElement::type
   --     16  MultiplicityElement::upper
   --     12  MultiplicityElement::upperValue
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     6  ConnectableElement::end
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   ----------------------
   -- Internal_Get_URI --
   ----------------------

   function Internal_Get_URI
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).String_Value;
   end Internal_Get_URI;

   ------------------------------
   -- Internal_Get_Abstraction --
   ------------------------------

   function Internal_Get_Abstraction
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_Abstraction;

   -------------------------
   -- Internal_Get_Action --
   -------------------------

   function Internal_Get_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (9).Link, Self);
   end Internal_Get_Action;

   -------------------------
   -- Internal_Get_Action --
   -------------------------

   function Internal_Get_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 44;
   end Internal_Get_Action;

   ---------------------------
   -- Internal_Get_Activity --
   ---------------------------

   function Internal_Get_Activity
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Activity;

   ---------------------------------
   -- Internal_Get_Activity_Scope --
   ---------------------------------

   function Internal_Get_Activity_Scope
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Activity_Scope;

   -------------------------
   -- Internal_Get_Actual --
   -------------------------

   function Internal_Get_Actual
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).Link, Self);
   end Internal_Get_Actual;

   ------------------------------
   -- Internal_Get_Actual_Gate --
   ------------------------------

   function Internal_Get_Actual_Gate
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Actual_Gate;

   ---------------------------
   -- Internal_Get_Addition --
   ---------------------------

   function Internal_Get_Addition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Addition;

   ------------------------
   -- Internal_Get_After --
   ------------------------

   function Internal_Get_After
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_After;

   ------------------------------
   -- Internal_Get_Aggregation --
   ------------------------------

   function Internal_Get_Aggregation
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Aggregation_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (27).Aggregation_Kind_Value;
   end Internal_Get_Aggregation;

   ------------------------
   -- Internal_Get_Alias --
   ------------------------

   function Internal_Get_Alias
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (4).String_Value;
   end Internal_Get_Alias;

   --------------------------------------
   -- Internal_Get_Allow_Substitutable --
   --------------------------------------

   function Internal_Get_Allow_Substitutable
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (6).Boolean_Value;
   end Internal_Get_Allow_Substitutable;

   ------------------------------------
   -- Internal_Get_Annotated_Element --
   ------------------------------------

   function Internal_Get_Annotated_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 3;
   end Internal_Get_Annotated_Element;

   ----------------------------------
   -- Internal_Get_Applied_Profile --
   ----------------------------------

   function Internal_Get_Applied_Profile
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).Link, Self);
   end Internal_Get_Applied_Profile;

   -----------------------------------
   -- Internal_Get_Applying_Package --
   -----------------------------------

   function Internal_Get_Applying_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).Link, Self);
   end Internal_Get_Applying_Package;

   ---------------------------
   -- Internal_Get_Argument --
   ---------------------------

   function Internal_Get_Argument
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 12;
   end Internal_Get_Argument;

   ------------------------------
   -- Internal_Get_Association --
   ------------------------------

   function Internal_Get_Association
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (23).Link, Self);
   end Internal_Get_Association;

   ----------------------------------
   -- Internal_Get_Association_End --
   ----------------------------------

   function Internal_Get_Association_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (28).Link, Self);
   end Internal_Get_Association_End;

   ----------------------------
   -- Internal_Get_Attribute --
   ----------------------------

   function Internal_Get_Attribute
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 8;
   end Internal_Get_Attribute;

   -----------------------------------
   -- Internal_Get_Base_Abstraction --
   -----------------------------------

   function Internal_Get_Base_Abstraction
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Abstraction;

   --------------------------------
   -- Internal_Get_Base_Artifact --
   --------------------------------

   function Internal_Get_Base_Artifact
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Artifact;

   ------------------------------------------
   -- Internal_Get_Base_Behavioral_Feature --
   ------------------------------------------

   function Internal_Get_Base_Behavioral_Feature
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).Link, Self);
   end Internal_Get_Base_Behavioral_Feature;

   -----------------------------
   -- Internal_Get_Base_Class --
   -----------------------------

   function Internal_Get_Base_Class
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Class;

   ----------------------------------
   -- Internal_Get_Base_Classifier --
   ----------------------------------

   function Internal_Get_Base_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Classifier;

   ---------------------------------
   -- Internal_Get_Base_Component --
   ---------------------------------

   function Internal_Get_Base_Component
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Component;

   -----------------------------
   -- Internal_Get_Base_Model --
   -----------------------------

   function Internal_Get_Base_Model
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Model;

   -------------------------------
   -- Internal_Get_Base_Package --
   -------------------------------

   function Internal_Get_Base_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Package;

   -----------------------------
   -- Internal_Get_Base_Usage --
   -----------------------------

   function Internal_Get_Base_Usage
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Usage;

   -------------------------
   -- Internal_Get_Before --
   -------------------------

   function Internal_Get_Before
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Before;

   ---------------------------
   -- Internal_Get_Behavior --
   ---------------------------

   function Internal_Get_Behavior
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Link, Self);
   end Internal_Get_Behavior;

   -----------------------
   -- Internal_Get_Body --
   -----------------------

   function Internal_Get_Body
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 3;
   end Internal_Get_Body;

   -----------------------
   -- Internal_Get_Body --
   -----------------------

   function Internal_Get_Body
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).String_Value;
   end Internal_Get_Body;

   -----------------------
   -- Internal_Get_Body --
   -----------------------

   function Internal_Get_Body
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_String is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).String_Collection;
   end Internal_Get_Body;

   ---------------------------------
   -- Internal_Get_Body_Condition --
   ---------------------------------

   function Internal_Get_Body_Condition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (19).Link, Self);
   end Internal_Get_Body_Condition;

   ------------------------------
   -- Internal_Get_Body_Output --
   ------------------------------

   function Internal_Get_Body_Output
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 30;
   end Internal_Get_Body_Output;

   ----------------------------
   -- Internal_Get_Body_Part --
   ----------------------------

   function Internal_Get_Body_Part
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 32;
   end Internal_Get_Body_Part;

   --------------------------------
   -- Internal_Get_Bound_Element --
   --------------------------------

   function Internal_Get_Bound_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).Link, Self);
   end Internal_Get_Bound_Element;

   ---------------------------------
   -- Internal_Get_Cfragment_Gate --
   ---------------------------------

   function Internal_Get_Cfragment_Gate
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 5;
   end Internal_Get_Cfragment_Gate;

   ------------------------------------
   -- Internal_Get_Change_Expression --
   ------------------------------------

   function Internal_Get_Change_Expression
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Change_Expression;

   ------------------------
   -- Internal_Get_Class --
   ------------------------

   function Internal_Get_Class
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (24).Link, Self);
   end Internal_Get_Class;

   -----------------------------
   -- Internal_Get_Classifier --
   -----------------------------

   function Internal_Get_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Link, Self);
   end Internal_Get_Classifier;

   -----------------------------
   -- Internal_Get_Classifier --
   -----------------------------

   function Internal_Get_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Classifier;

   --------------------------------------
   -- Internal_Get_Classifier_Behavior --
   --------------------------------------

   function Internal_Get_Classifier_Behavior
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Link, Self);
   end Internal_Get_Classifier_Behavior;

   -------------------------
   -- Internal_Get_Clause --
   -------------------------

   function Internal_Get_Clause
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 30;
   end Internal_Get_Clause;

   -------------------------
   -- Internal_Get_Client --
   -------------------------

   function Internal_Get_Client
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 6;
   end Internal_Get_Client;

   ------------------------------------
   -- Internal_Get_Client_Dependency --
   ------------------------------------

   function Internal_Get_Client_Dependency
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 3;
   end Internal_Get_Client_Dependency;

   -------------------------------------
   -- Internal_Get_Collaboration_Role --
   -------------------------------------

   function Internal_Get_Collaboration_Role
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 24;
   end Internal_Get_Collaboration_Role;

   ------------------------------------
   -- Internal_Get_Collaboration_Use --
   ------------------------------------

   function Internal_Get_Collaboration_Use
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 9;
   end Internal_Get_Collaboration_Use;

   -----------------------------
   -- Internal_Get_Collection --
   -----------------------------

   function Internal_Get_Collection
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Link, Self);
   end Internal_Get_Collection;

   ------------------------------
   -- Internal_Get_Computation --
   ------------------------------

   function Internal_Get_Computation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).Link, Self);
   end Internal_Get_Computation;

   ------------------------------
   -- Internal_Get_Concurrency --
   ------------------------------

   function Internal_Get_Concurrency
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Call_Concurrency_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).Call_Concurrency_Kind_Value;
   end Internal_Get_Concurrency;

   ----------------------------
   -- Internal_Get_Condition --
   ----------------------------

   function Internal_Get_Condition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Condition;

   ----------------------------
   -- Internal_Get_Condition --
   ----------------------------

   function Internal_Get_Condition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Condition;

   --------------------------------
   -- Internal_Get_Configuration --
   --------------------------------

   function Internal_Get_Configuration
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 8;
   end Internal_Get_Configuration;

   ------------------------------
   -- Internal_Get_Conformance --
   ------------------------------

   function Internal_Get_Conformance
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 43;
   end Internal_Get_Conformance;

   -----------------------------
   -- Internal_Get_Connection --
   -----------------------------

   function Internal_Get_Connection
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 8;
   end Internal_Get_Connection;

   -----------------------------------
   -- Internal_Get_Connection_Point --
   -----------------------------------

   function Internal_Get_Connection_Point
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 24;
   end Internal_Get_Connection_Point;

   ----------------------------
   -- Internal_Get_Connector --
   ----------------------------

   function Internal_Get_Connector
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (9).Link, Self);
   end Internal_Get_Connector;

   --------------------------------------
   -- Internal_Get_Constrained_Element --
   --------------------------------------

   function Internal_Get_Constrained_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Constrained_Element;

   ------------------------------------------
   -- Internal_Get_Constraining_Classifier --
   ------------------------------------------

   function Internal_Get_Constraining_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 3;
   end Internal_Get_Constraining_Classifier;

   ---------------------------------
   -- Internal_Get_Contained_Edge --
   ---------------------------------

   function Internal_Get_Contained_Edge
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 25;
   end Internal_Get_Contained_Edge;

   ---------------------------------
   -- Internal_Get_Contained_Node --
   ---------------------------------

   function Internal_Get_Contained_Node
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 26;
   end Internal_Get_Contained_Node;

   ----------------------------
   -- Internal_Get_Container --
   ----------------------------

   function Internal_Get_Container
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Container;

   --------------------------
   -- Internal_Get_Content --
   --------------------------

   function Internal_Get_Content
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).String_Value;
   end Internal_Get_Content;

   --------------------------
   -- Internal_Get_Context --
   --------------------------

   function Internal_Get_Context
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_Context;

   ---------------------------
   -- Internal_Get_Contract --
   ---------------------------

   function Internal_Get_Contract
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 8;
   end Internal_Get_Contract;

   ---------------------------
   -- Internal_Get_Contract --
   ---------------------------

   function Internal_Get_Contract
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_Contract;

   ---------------------------
   -- Internal_Get_Conveyed --
   ---------------------------

   function Internal_Get_Conveyed
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 6;
   end Internal_Get_Conveyed;

   --------------------------
   -- Internal_Get_Covered --
   --------------------------

   function Internal_Get_Covered
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 24;
   end Internal_Get_Covered;

   -----------------------------
   -- Internal_Get_Covered_By --
   -----------------------------

   function Internal_Get_Covered_By
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Covered_By;

   ---------------------------
   -- Internal_Get_Datatype --
   ---------------------------

   function Internal_Get_Datatype
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (25).Link, Self);
   end Internal_Get_Datatype;

   --------------------------
   -- Internal_Get_Decider --
   --------------------------

   function Internal_Get_Decider
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Link, Self);
   end Internal_Get_Decider;

   ---------------------------------
   -- Internal_Get_Decision_Input --
   ---------------------------------

   function Internal_Get_Decision_Input
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_Decision_Input;

   --------------------------------------
   -- Internal_Get_Decision_Input_Flow --
   --------------------------------------

   function Internal_Get_Decision_Input_Flow
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Link, Self);
   end Internal_Get_Decision_Input_Flow;

   --------------------------------
   -- Internal_Get_Decomposed_As --
   --------------------------------

   function Internal_Get_Decomposed_As
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (9).Link, Self);
   end Internal_Get_Decomposed_As;

   --------------------------
   -- Internal_Get_Default --
   --------------------------

   function Internal_Get_Default
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (20).String_Value;
   end Internal_Get_Default;

   --------------------------
   -- Internal_Get_Default --
   --------------------------

   function Internal_Get_Default
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).Link, Self);
   end Internal_Get_Default;

   --------------------------------
   -- Internal_Get_Default_Value --
   --------------------------------

   function Internal_Get_Default_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (21).Link, Self);
   end Internal_Get_Default_Value;

   -------------------------------------
   -- Internal_Get_Deferrable_Trigger --
   -------------------------------------

   function Internal_Get_Deferrable_Trigger
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 9;
   end Internal_Get_Deferrable_Trigger;

   -------------------------------
   -- Internal_Get_Defining_End --
   -------------------------------

   function Internal_Get_Defining_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).Link, Self);
   end Internal_Get_Defining_End;

   -----------------------------------
   -- Internal_Get_Defining_Feature --
   -----------------------------------

   function Internal_Get_Defining_Feature
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).Link, Self);
   end Internal_Get_Defining_Feature;

   ------------------------------------
   -- Internal_Get_Deployed_Artifact --
   ------------------------------------

   function Internal_Get_Deployed_Artifact
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 9;
   end Internal_Get_Deployed_Artifact;

   -----------------------------------
   -- Internal_Get_Deployed_Element --
   -----------------------------------

   function Internal_Get_Deployed_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 24;
   end Internal_Get_Deployed_Element;

   -----------------------------
   -- Internal_Get_Deployment --
   -----------------------------

   function Internal_Get_Deployment
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Link, Self);
   end Internal_Get_Deployment;

   -----------------------------
   -- Internal_Get_Deployment --
   -----------------------------

   function Internal_Get_Deployment
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 29;
   end Internal_Get_Deployment;

   --------------------------------------
   -- Internal_Get_Deployment_Location --
   --------------------------------------

   function Internal_Get_Deployment_Location
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).String_Value;
   end Internal_Get_Deployment_Location;

   -----------------------------
   -- Internal_Get_Destroy_At --
   -----------------------------

   function Internal_Get_Destroy_At
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).Link, Self);
   end Internal_Get_Destroy_At;

   ----------------------------
   -- Internal_Get_Direction --
   ----------------------------

   function Internal_Get_Direction
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Parameter_Direction_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Parameter_Direction_Kind_Value;
   end Internal_Get_Direction;

   ------------------------------
   -- Internal_Get_Do_Activity --
   ------------------------------

   function Internal_Get_Do_Activity
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (9).Link, Self);
   end Internal_Get_Do_Activity;

   -----------------------
   -- Internal_Get_Edge --
   -----------------------

   function Internal_Get_Edge
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 29;
   end Internal_Get_Edge;

   -------------------------
   -- Internal_Get_Effect --
   -------------------------

   function Internal_Get_Effect
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.Optional_UML_Parameter_Effect_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (18).Parameter_Effect_Kind_Holder;
   end Internal_Get_Effect;

   -------------------------
   -- Internal_Get_Effect --
   -------------------------

   function Internal_Get_Effect
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (9).Link, Self);
   end Internal_Get_Effect;

   ---------------------------------
   -- Internal_Get_Element_Import --
   ---------------------------------

   function Internal_Get_Element_Import
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 12;
   end Internal_Get_Element_Import;

   ----------------------------------------
   -- Internal_Get_Enclosing_Interaction --
   ----------------------------------------

   function Internal_Get_Enclosing_Interaction
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).Link, Self);
   end Internal_Get_Enclosing_Interaction;

   ------------------------------------
   -- Internal_Get_Enclosing_Operand --
   ------------------------------------

   function Internal_Get_Enclosing_Operand
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (18).Link, Self);
   end Internal_Get_Enclosing_Operand;

   ----------------------
   -- Internal_Get_End --
   ----------------------

   function Internal_Get_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 6;
   end Internal_Get_End;

   ----------------------
   -- Internal_Get_End --
   ----------------------

   function Internal_Get_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Link, Self);
   end Internal_Get_End;

   ---------------------------
   -- Internal_Get_End_Data --
   ---------------------------

   function Internal_Get_End_Data
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 13;
   end Internal_Get_End_Data;

   ---------------------------
   -- Internal_Get_End_Type --
   ---------------------------

   function Internal_Get_End_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 29;
   end Internal_Get_End_Type;

   ------------------------
   -- Internal_Get_Entry --
   ------------------------

   function Internal_Get_Entry
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Entry;

   ------------------------
   -- Internal_Get_Entry --
   ------------------------

   function Internal_Get_Entry
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_Entry;

   ------------------------------
   -- Internal_Get_Enumeration --
   ------------------------------

   function Internal_Get_Enumeration
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Enumeration;

   ------------------------
   -- Internal_Get_Event --
   ------------------------

   function Internal_Get_Event
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Event;

   ------------------------
   -- Internal_Get_Event --
   ------------------------

   function Internal_Get_Event
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Event;

   ----------------------------
   -- Internal_Get_Exception --
   ----------------------------

   function Internal_Get_Exception
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).Link, Self);
   end Internal_Get_Exception;

   ----------------------------------
   -- Internal_Get_Exception_Input --
   ----------------------------------

   function Internal_Get_Exception_Input
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).Link, Self);
   end Internal_Get_Exception_Input;

   ---------------------------------
   -- Internal_Get_Exception_Type --
   ---------------------------------

   function Internal_Get_Exception_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 3;
   end Internal_Get_Exception_Type;

   ----------------------------------
   -- Internal_Get_Executable_Node --
   ----------------------------------

   function Internal_Get_Executable_Node
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 24;
   end Internal_Get_Executable_Node;

   ----------------------------
   -- Internal_Get_Execution --
   ----------------------------

   function Internal_Get_Execution
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Execution;

   -------------------------------------
   -- Internal_Get_Execution_Location --
   -------------------------------------

   function Internal_Get_Execution_Location
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (18).String_Value;
   end Internal_Get_Execution_Location;

   -----------------------
   -- Internal_Get_Exit --
   -----------------------

   function Internal_Get_Exit
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 5;
   end Internal_Get_Exit;

   -----------------------
   -- Internal_Get_Exit --
   -----------------------

   function Internal_Get_Exit
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Link, Self);
   end Internal_Get_Exit;

   -----------------------
   -- Internal_Get_Expr --
   -----------------------

   function Internal_Get_Expr
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Expr;

   -------------------------
   -- Internal_Get_Extend --
   -------------------------

   function Internal_Get_Extend
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 24;
   end Internal_Get_Extend;

   --------------------------------
   -- Internal_Get_Extended_Case --
   --------------------------------

   function Internal_Get_Extended_Case
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Extended_Case;

   ----------------------------------
   -- Internal_Get_Extended_Region --
   ----------------------------------

   function Internal_Get_Extended_Region
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Extended_Region;

   -------------------------------------
   -- Internal_Get_Extended_Signature --
   -------------------------------------

   function Internal_Get_Extended_Signature
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 7;
   end Internal_Get_Extended_Signature;

   -----------------------------------------
   -- Internal_Get_Extended_State_Machine --
   -----------------------------------------

   function Internal_Get_Extended_State_Machine
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 42;
   end Internal_Get_Extended_State_Machine;

   ----------------------------
   -- Internal_Get_Extension --
   ----------------------------

   function Internal_Get_Extension
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 36;
   end Internal_Get_Extension;

   ----------------------------
   -- Internal_Get_Extension --
   ----------------------------

   function Internal_Get_Extension
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (9).Link, Self);
   end Internal_Get_Extension;

   -------------------------------------
   -- Internal_Get_Extension_Location --
   -------------------------------------

   function Internal_Get_Extension_Location
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 6;
   end Internal_Get_Extension_Location;

   ----------------------------------
   -- Internal_Get_Extension_Point --
   ----------------------------------

   function Internal_Get_Extension_Point
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 25;
   end Internal_Get_Extension_Point;

   --------------------------
   -- Internal_Get_Feature --
   --------------------------

   function Internal_Get_Feature
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 10;
   end Internal_Get_Feature;

   ---------------------------------------
   -- Internal_Get_Featuring_Classifier --
   ---------------------------------------

   function Internal_Get_Featuring_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 7;
   end Internal_Get_Featuring_Classifier;

   ----------------------------
   -- Internal_Get_File_Name --
   ----------------------------

   function Internal_Get_File_Name
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).String_Value;
   end Internal_Get_File_Name;

   -------------------------
   -- Internal_Get_Finish --
   -------------------------

   function Internal_Get_Finish
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Finish;

   ------------------------
   -- Internal_Get_First --
   ------------------------

   function Internal_Get_First
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Link, Self);
   end Internal_Get_First;

   ------------------------------
   -- Internal_Get_First_Event --
   ------------------------------

   function Internal_Get_First_Event
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Collection;
   end Internal_Get_First_Event;

   ------------------------------
   -- Internal_Get_First_Event --
   ------------------------------

   function Internal_Get_First_Event
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Holder;
   end Internal_Get_First_Event;

   ------------------------------
   -- Internal_Get_First_Event --
   ------------------------------

   function Internal_Get_First_Event
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Boolean_Value;
   end Internal_Get_First_Event;

   -------------------------
   -- Internal_Get_Formal --
   -------------------------

   function Internal_Get_Formal
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).Link, Self);
   end Internal_Get_Formal;

   ------------------------------
   -- Internal_Get_Formal_Gate --
   ------------------------------

   function Internal_Get_Formal_Gate
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 45;
   end Internal_Get_Formal_Gate;

   -------------------------
   -- Internal_Get_Format --
   -------------------------

   function Internal_Get_Format
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).String_Value;
   end Internal_Get_Format;

   ---------------------------
   -- Internal_Get_Fragment --
   ---------------------------

   function Internal_Get_Fragment
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 41;
   end Internal_Get_Fragment;

   ------------------------------
   -- Internal_Get_From_Action --
   ------------------------------

   function Internal_Get_From_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).Link, Self);
   end Internal_Get_From_Action;

   --------------------------
   -- Internal_Get_General --
   --------------------------

   function Internal_Get_General
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 11;
   end Internal_Get_General;

   --------------------------
   -- Internal_Get_General --
   --------------------------

   function Internal_Get_General
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).Link, Self);
   end Internal_Get_General;

   ----------------------------------
   -- Internal_Get_General_Machine --
   ----------------------------------

   function Internal_Get_General_Machine
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).Link, Self);
   end Internal_Get_General_Machine;

   -----------------------------------
   -- Internal_Get_General_Ordering --
   -----------------------------------

   function Internal_Get_General_Ordering
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 29;
   end Internal_Get_General_Ordering;

   ---------------------------------
   -- Internal_Get_Generalization --
   ---------------------------------

   function Internal_Get_Generalization
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 7;
   end Internal_Get_Generalization;

   -------------------------------------
   -- Internal_Get_Generalization_Set --
   -------------------------------------

   function Internal_Get_Generalization_Set
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 3;
   end Internal_Get_Generalization_Set;

   ------------------------
   -- Internal_Get_Group --
   ------------------------

   function Internal_Get_Group
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 43;
   end Internal_Get_Group;

   ------------------------
   -- Internal_Get_Guard --
   ------------------------

   function Internal_Get_Guard
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_Guard;

   --------------------------
   -- Internal_Get_Handler --
   --------------------------

   function Internal_Get_Handler
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 18;
   end Internal_Get_Handler;

   -------------------------------
   -- Internal_Get_Handler_Body --
   -------------------------------

   function Internal_Get_Handler_Body
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).Link, Self);
   end Internal_Get_Handler_Body;

   -----------------------
   -- Internal_Get_Icon --
   -----------------------

   function Internal_Get_Icon
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 24;
   end Internal_Get_Icon;

   ------------------------------------------
   -- Internal_Get_Implementing_Classifier --
   ------------------------------------------

   function Internal_Get_Implementing_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Link, Self);
   end Internal_Get_Implementing_Classifier;

   -----------------------------------
   -- Internal_Get_Imported_Element --
   -----------------------------------

   function Internal_Get_Imported_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (5).Link, Self);
   end Internal_Get_Imported_Element;

   ----------------------------------
   -- Internal_Get_Imported_Member --
   ----------------------------------

   function Internal_Get_Imported_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 13;
   end Internal_Get_Imported_Member;

   -----------------------------------
   -- Internal_Get_Imported_Package --
   -----------------------------------

   function Internal_Get_Imported_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (4).Link, Self);
   end Internal_Get_Imported_Package;

   --------------------------------------
   -- Internal_Get_Importing_Namespace --
   --------------------------------------

   function Internal_Get_Importing_Namespace
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).Link, Self);
   end Internal_Get_Importing_Namespace;

   ------------------------------
   -- Internal_Get_In_Activity --
   ------------------------------

   function Internal_Get_In_Activity
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).Link, Self);
   end Internal_Get_In_Activity;

   ---------------------------
   -- Internal_Get_In_Group --
   ---------------------------

   function Internal_Get_In_Group
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 8;
   end Internal_Get_In_Group;

   ------------------------------------------
   -- Internal_Get_In_Interruptible_Region --
   ------------------------------------------

   function Internal_Get_In_Interruptible_Region
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 10;
   end Internal_Get_In_Interruptible_Region;

   -------------------------------
   -- Internal_Get_In_Partition --
   -------------------------------

   function Internal_Get_In_Partition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 9;
   end Internal_Get_In_Partition;

   ---------------------------
   -- Internal_Get_In_State --
   ---------------------------

   function Internal_Get_In_State
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 12;
   end Internal_Get_In_State;

   -------------------------------------
   -- Internal_Get_In_Structured_Node --
   -------------------------------------

   function Internal_Get_In_Structured_Node
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (9).Link, Self);
   end Internal_Get_In_Structured_Node;

   --------------------------
   -- Internal_Get_Include --
   --------------------------

   function Internal_Get_Include
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 26;
   end Internal_Get_Include;

   ---------------------------------
   -- Internal_Get_Including_Case --
   ---------------------------------

   function Internal_Get_Including_Case
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Including_Case;

   ---------------------------
   -- Internal_Get_Incoming --
   ---------------------------

   function Internal_Get_Incoming
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 6;
   end Internal_Get_Incoming;

   -------------------------------------
   -- Internal_Get_Information_Source --
   -------------------------------------

   function Internal_Get_Information_Source
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 7;
   end Internal_Get_Information_Source;

   -------------------------------------
   -- Internal_Get_Information_Target --
   -------------------------------------

   function Internal_Get_Information_Target
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 8;
   end Internal_Get_Information_Target;

   -----------------------------------
   -- Internal_Get_Inherited_Member --
   -----------------------------------

   function Internal_Get_Inherited_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 18;
   end Internal_Get_Inherited_Member;

   --------------------------------------
   -- Internal_Get_Inherited_Parameter --
   --------------------------------------

   function Internal_Get_Inherited_Parameter
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 8;
   end Internal_Get_Inherited_Parameter;

   ------------------------
   -- Internal_Get_Input --
   ------------------------

   function Internal_Get_Input
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 19;
   end Internal_Get_Input;

   --------------------------------
   -- Internal_Get_Input_Element --
   --------------------------------

   function Internal_Get_Input_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 30;
   end Internal_Get_Input_Element;

   ------------------------------
   -- Internal_Get_Input_Value --
   ------------------------------

   function Internal_Get_Input_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 12;
   end Internal_Get_Input_Value;

   ----------------------------
   -- Internal_Get_Insert_At --
   ----------------------------

   function Internal_Get_Insert_At
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Link, Self);
   end Internal_Get_Insert_At;

   ---------------------------
   -- Internal_Get_Instance --
   ---------------------------

   function Internal_Get_Instance
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Instance;

   ------------------------------
   -- Internal_Get_Interaction --
   ------------------------------

   function Internal_Get_Interaction
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Interaction;

   ---------------------------------------
   -- Internal_Get_Interaction_Operator --
   ---------------------------------------

   function Internal_Get_Interaction_Operator
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Interaction_Operator_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Interaction_Operator_Kind_Value;
   end Internal_Get_Interaction_Operator;

   ----------------------------
   -- Internal_Get_Interface --
   ----------------------------

   function Internal_Get_Interface
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (26).Link, Self);
   end Internal_Get_Interface;

   ----------------------------------------
   -- Internal_Get_Interface_Realization --
   ----------------------------------------

   function Internal_Get_Interface_Realization
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 27;
   end Internal_Get_Interface_Realization;

   ------------------------------------
   -- Internal_Get_Interrupting_Edge --
   ------------------------------------

   function Internal_Get_Interrupting_Edge
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Interrupting_Edge;

   -----------------------------
   -- Internal_Get_Interrupts --
   -----------------------------

   function Internal_Get_Interrupts
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Link, Self);
   end Internal_Get_Interrupts;

   ----------------------------
   -- Internal_Get_Invariant --
   ----------------------------

   function Internal_Get_Invariant
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Invariant;

   ------------------------------
   -- Internal_Get_Is_Abstract --
   ------------------------------

   function Internal_Get_Is_Abstract
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).Boolean_Value;
   end Internal_Get_Is_Abstract;

   ----------------------------
   -- Internal_Get_Is_Active --
   ----------------------------

   function Internal_Get_Is_Active
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (19).Boolean_Value;
   end Internal_Get_Is_Active;

   -----------------------------
   -- Internal_Get_Is_Assured --
   -----------------------------

   function Internal_Get_Is_Assured
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Boolean_Value;
   end Internal_Get_Is_Assured;

   ------------------------------
   -- Internal_Get_Is_Behavior --
   ------------------------------

   function Internal_Get_Is_Behavior
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (34).Boolean_Value;
   end Internal_Get_Is_Behavior;

   ---------------------------------------
   -- Internal_Get_Is_Combine_Duplicate --
   ---------------------------------------

   function Internal_Get_Is_Combine_Duplicate
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Boolean_Value;
   end Internal_Get_Is_Combine_Duplicate;

   -------------------------------
   -- Internal_Get_Is_Composite --
   -------------------------------

   function Internal_Get_Is_Composite
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (19).Boolean_Value;
   end Internal_Get_Is_Composite;

   --------------------------------
   -- Internal_Get_Is_Conjugated --
   --------------------------------

   function Internal_Get_Is_Conjugated
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (35).Boolean_Value;
   end Internal_Get_Is_Conjugated;

   -----------------------------
   -- Internal_Get_Is_Control --
   -----------------------------

   function Internal_Get_Is_Control
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (22).Boolean_Value;
   end Internal_Get_Is_Control;

   ----------------------------------
   -- Internal_Get_Is_Control_Type --
   ----------------------------------

   function Internal_Get_Is_Control_Type
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (19).Boolean_Value;
   end Internal_Get_Is_Control_Type;

   ------------------------------
   -- Internal_Get_Is_Covering --
   ------------------------------

   function Internal_Get_Is_Covering
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Value;
   end Internal_Get_Is_Covering;

   -----------------------------
   -- Internal_Get_Is_Derived --
   -----------------------------

   function Internal_Get_Is_Derived
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).Boolean_Value;
   end Internal_Get_Is_Derived;

   -----------------------------------
   -- Internal_Get_Is_Derived_Union --
   -----------------------------------

   function Internal_Get_Is_Derived_Union
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (29).Boolean_Value;
   end Internal_Get_Is_Derived_Union;

   ----------------------------------------
   -- Internal_Get_Is_Destroy_Duplicates --
   ----------------------------------------

   function Internal_Get_Is_Destroy_Duplicates
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).Boolean_Value;
   end Internal_Get_Is_Destroy_Duplicates;

   -----------------------------------
   -- Internal_Get_Is_Destroy_Links --
   -----------------------------------

   function Internal_Get_Is_Destroy_Links
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Boolean_Value;
   end Internal_Get_Is_Destroy_Links;

   -------------------------------------------
   -- Internal_Get_Is_Destroy_Owned_Objects --
   -------------------------------------------

   function Internal_Get_Is_Destroy_Owned_Objects
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Boolean_Value;
   end Internal_Get_Is_Destroy_Owned_Objects;

   ---------------------------------
   -- Internal_Get_Is_Determinate --
   ---------------------------------

   function Internal_Get_Is_Determinate
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Boolean_Value;
   end Internal_Get_Is_Determinate;

   -------------------------------
   -- Internal_Get_Is_Dimension --
   -------------------------------

   function Internal_Get_Is_Dimension
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (8).Boolean_Value;
   end Internal_Get_Is_Dimension;

   ----------------------------
   -- Internal_Get_Is_Direct --
   ----------------------------

   function Internal_Get_Is_Direct
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Boolean_Value;
   end Internal_Get_Is_Direct;

   ------------------------------
   -- Internal_Get_Is_Disjoint --
   ------------------------------

   function Internal_Get_Is_Disjoint
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Boolean_Value;
   end Internal_Get_Is_Disjoint;

   -------------------------------
   -- Internal_Get_Is_Exception --
   -------------------------------

   function Internal_Get_Is_Exception
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (19).Boolean_Value;
   end Internal_Get_Is_Exception;

   ------------------------------
   -- Internal_Get_Is_External --
   ------------------------------

   function Internal_Get_Is_External
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (9).Boolean_Value;
   end Internal_Get_Is_External;

   ------------------------------------------
   -- Internal_Get_Is_Final_Specialization --
   ------------------------------------------

   function Internal_Get_Is_Final_Specialization
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Boolean_Value;
   end Internal_Get_Is_Final_Specialization;

   ------------------------
   -- Internal_Get_Is_ID --
   ------------------------

   function Internal_Get_Is_ID
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (30).Boolean_Value;
   end Internal_Get_Is_ID;

   ---------------------------------------------
   -- Internal_Get_Is_Indirectly_Instantiated --
   ---------------------------------------------

   function Internal_Get_Is_Indirectly_Instantiated
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Boolean_Value;
   end Internal_Get_Is_Indirectly_Instantiated;

   --------------------------
   -- Internal_Get_Is_Leaf --
   --------------------------

   function Internal_Get_Is_Leaf
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Value;
   end Internal_Get_Is_Leaf;

   ---------------------------------------
   -- Internal_Get_Is_Locally_Reentrant --
   ---------------------------------------

   function Internal_Get_Is_Locally_Reentrant
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Boolean_Value;
   end Internal_Get_Is_Locally_Reentrant;

   -------------------------------
   -- Internal_Get_Is_Multicast --
   -------------------------------

   function Internal_Get_Is_Multicast
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Boolean_Value;
   end Internal_Get_Is_Multicast;

   ----------------------------------
   -- Internal_Get_Is_Multireceive --
   ----------------------------------

   function Internal_Get_Is_Multireceive
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Boolean_Value;
   end Internal_Get_Is_Multireceive;

   -----------------------------
   -- Internal_Get_Is_Ordered --
   -----------------------------

   function Internal_Get_Is_Ordered
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Boolean_Value;
   end Internal_Get_Is_Ordered;

   --------------------------------
   -- Internal_Get_Is_Orthogonal --
   --------------------------------

   function Internal_Get_Is_Orthogonal
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).Boolean_Value;
   end Internal_Get_Is_Orthogonal;

   ---------------------------
   -- Internal_Get_Is_Query --
   ---------------------------

   function Internal_Get_Is_Query
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (20).Boolean_Value;
   end Internal_Get_Is_Query;

   -------------------------------
   -- Internal_Get_Is_Read_Only --
   -------------------------------

   function Internal_Get_Is_Read_Only
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (22).Boolean_Value;
   end Internal_Get_Is_Read_Only;

   -------------------------------
   -- Internal_Get_Is_Reentrant --
   -------------------------------

   function Internal_Get_Is_Reentrant
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (21).Boolean_Value;
   end Internal_Get_Is_Reentrant;

   ------------------------------
   -- Internal_Get_Is_Relative --
   ------------------------------

   function Internal_Get_Is_Relative
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Value;
   end Internal_Get_Is_Relative;

   ---------------------------------------
   -- Internal_Get_Is_Remove_Duplicates --
   ---------------------------------------

   function Internal_Get_Is_Remove_Duplicates
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Boolean_Value;
   end Internal_Get_Is_Remove_Duplicates;

   ---------------------------------
   -- Internal_Get_Is_Replace_All --
   ---------------------------------

   function Internal_Get_Is_Replace_All
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Boolean_Value;
   end Internal_Get_Is_Replace_All;

   ------------------------------
   -- Internal_Get_Is_Required --
   ------------------------------

   function Internal_Get_Is_Required
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Boolean_Value;
   end Internal_Get_Is_Required;

   -----------------------------
   -- Internal_Get_Is_Service --
   -----------------------------

   function Internal_Get_Is_Service
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (36).Boolean_Value;
   end Internal_Get_Is_Service;

   ----------------------------
   -- Internal_Get_Is_Simple --
   ----------------------------

   function Internal_Get_Is_Simple
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Boolean_Value;
   end Internal_Get_Is_Simple;

   --------------------------------------
   -- Internal_Get_Is_Single_Execution --
   --------------------------------------

   function Internal_Get_Is_Single_Execution
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).Boolean_Value;
   end Internal_Get_Is_Single_Execution;

   ----------------------------
   -- Internal_Get_Is_Static --
   ----------------------------

   function Internal_Get_Is_Static
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (18).Boolean_Value;
   end Internal_Get_Is_Static;

   ----------------------------
   -- Internal_Get_Is_Stream --
   ----------------------------

   function Internal_Get_Is_Stream
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (22).Boolean_Value;
   end Internal_Get_Is_Stream;

   ----------------------------
   -- Internal_Get_Is_Strict --
   ----------------------------

   function Internal_Get_Is_Strict
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (4).Boolean_Value;
   end Internal_Get_Is_Strict;

   --------------------------------------
   -- Internal_Get_Is_Submachine_State --
   --------------------------------------

   function Internal_Get_Is_Submachine_State
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Boolean_Value;
   end Internal_Get_Is_Submachine_State;

   -----------------------------------
   -- Internal_Get_Is_Substitutable --
   -----------------------------------

   function Internal_Get_Is_Substitutable
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).Boolean_Holder;
   end Internal_Get_Is_Substitutable;

   ---------------------------------
   -- Internal_Get_Is_Synchronous --
   ---------------------------------

   function Internal_Get_Is_Synchronous
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Boolean_Value;
   end Internal_Get_Is_Synchronous;

   ----------------------------------
   -- Internal_Get_Is_Tested_First --
   ----------------------------------

   function Internal_Get_Is_Tested_First
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Boolean_Value;
   end Internal_Get_Is_Tested_First;

   ----------------------------
   -- Internal_Get_Is_Unique --
   ----------------------------

   function Internal_Get_Is_Unique
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Boolean_Value;
   end Internal_Get_Is_Unique;

   --------------------------------
   -- Internal_Get_Is_Unmarshall --
   --------------------------------

   function Internal_Get_Is_Unmarshall
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).Boolean_Value;
   end Internal_Get_Is_Unmarshall;

   ----------------------------
   -- Internal_Get_Join_Spec --
   ----------------------------

   function Internal_Get_Join_Spec
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Link, Self);
   end Internal_Get_Join_Spec;

   -----------------------
   -- Internal_Get_Kind --
   -----------------------

   function Internal_Get_Kind
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Connector_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (8).Connector_Kind_Value;
   end Internal_Get_Kind;

   -----------------------
   -- Internal_Get_Kind --
   -----------------------

   function Internal_Get_Kind
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Pseudostate_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Pseudostate_Kind_Value;
   end Internal_Get_Kind;

   -----------------------
   -- Internal_Get_Kind --
   -----------------------

   function Internal_Get_Kind
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Transition_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Transition_Kind_Value;
   end Internal_Get_Kind;

   ---------------------------
   -- Internal_Get_Language --
   ---------------------------

   function Internal_Get_Language
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_String is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (18).String_Collection;
   end Internal_Get_Language;

   ---------------------------
   -- Internal_Get_Lifeline --
   ---------------------------

   function Internal_Get_Lifeline
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 46;
   end Internal_Get_Lifeline;

   --------------------------------------
   -- Internal_Get_Local_Postcondition --
   --------------------------------------

   function Internal_Get_Local_Postcondition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 20;
   end Internal_Get_Local_Postcondition;

   -------------------------------------
   -- Internal_Get_Local_Precondition --
   -------------------------------------

   function Internal_Get_Local_Precondition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 21;
   end Internal_Get_Local_Precondition;

   ---------------------------
   -- Internal_Get_Location --
   ---------------------------

   function Internal_Get_Location
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Location;

   ---------------------------
   -- Internal_Get_Location --
   ---------------------------

   function Internal_Get_Location
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (4).String_Value;
   end Internal_Get_Location;

   --------------------------------
   -- Internal_Get_Loop_Variable --
   --------------------------------

   function Internal_Get_Loop_Variable
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 33;
   end Internal_Get_Loop_Variable;

   --------------------------------------
   -- Internal_Get_Loop_Variable_Input --
   --------------------------------------

   function Internal_Get_Loop_Variable_Input
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 28;
   end Internal_Get_Loop_Variable_Input;

   ------------------------
   -- Internal_Get_Lower --
   ------------------------

   function Internal_Get_Lower
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Integer is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Integer_Holder;
   end Internal_Get_Lower;

   ------------------------------
   -- Internal_Get_Lower_Value --
   ------------------------------

   function Internal_Get_Lower_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Link, Self);
   end Internal_Get_Lower_Value;

   --------------------------------
   -- Internal_Get_Manifestation --
   --------------------------------

   function Internal_Get_Manifestation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 24;
   end Internal_Get_Manifestation;

   --------------------------
   -- Internal_Get_Mapping --
   --------------------------

   function Internal_Get_Mapping
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Mapping;

   ----------------------
   -- Internal_Get_Max --
   ----------------------

   function Internal_Get_Max
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Max;

   -------------------------
   -- Internal_Get_Maxint --
   -------------------------

   function Internal_Get_Maxint
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Maxint;

   -------------------------
   -- Internal_Get_Member --
   -------------------------

   function Internal_Get_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 14;
   end Internal_Get_Member;

   -----------------------------
   -- Internal_Get_Member_End --
   -----------------------------

   function Internal_Get_Member_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 37;
   end Internal_Get_Member_End;

   ---------------------------------
   -- Internal_Get_Merged_Package --
   ---------------------------------

   function Internal_Get_Merged_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).Link, Self);
   end Internal_Get_Merged_Package;

   --------------------------
   -- Internal_Get_Message --
   --------------------------

   function Internal_Get_Message
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 43;
   end Internal_Get_Message;

   --------------------------
   -- Internal_Get_Message --
   --------------------------

   function Internal_Get_Message
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Message;

   -------------------------------
   -- Internal_Get_Message_Kind --
   -------------------------------

   function Internal_Get_Message_Kind
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Message_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Message_Kind_Value;
   end Internal_Get_Message_Kind;

   -------------------------------
   -- Internal_Get_Message_Sort --
   -------------------------------

   function Internal_Get_Message_Sort
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Message_Sort is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Message_Sort_Value;
   end Internal_Get_Message_Sort;

   ----------------------------
   -- Internal_Get_Metaclass --
   ----------------------------

   function Internal_Get_Metaclass
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Link, Self);
   end Internal_Get_Metaclass;

   --------------------------------------
   -- Internal_Get_Metaclass_Reference --
   --------------------------------------

   function Internal_Get_Metaclass_Reference
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 10;
   end Internal_Get_Metaclass_Reference;

   --------------------------------------
   -- Internal_Get_Metamodel_Reference --
   --------------------------------------

   function Internal_Get_Metamodel_Reference
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 11;
   end Internal_Get_Metamodel_Reference;

   -------------------------
   -- Internal_Get_Method --
   -------------------------

   function Internal_Get_Method
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 8;
   end Internal_Get_Method;

   ----------------------
   -- Internal_Get_Min --
   ----------------------

   function Internal_Get_Min
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Link, Self);
   end Internal_Get_Min;

   -------------------------
   -- Internal_Get_Minint --
   -------------------------

   function Internal_Get_Minint
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Link, Self);
   end Internal_Get_Minint;

   -----------------------
   -- Internal_Get_Mode --
   -----------------------

   function Internal_Get_Mode
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Expansion_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Expansion_Kind_Value;
   end Internal_Get_Mode;

   -------------------------------
   -- Internal_Get_Must_Isolate --
   -------------------------------

   function Internal_Get_Must_Isolate
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Boolean_Value;
   end Internal_Get_Must_Isolate;

   -----------------------
   -- Internal_Get_Name --
   -----------------------

   function Internal_Get_Name
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).String_Value;
   end Internal_Get_Name;

   ----------------------------------
   -- Internal_Get_Name_Expression --
   ----------------------------------

   function Internal_Get_Name_Expression
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).Link, Self);
   end Internal_Get_Name_Expression;

   ----------------------------
   -- Internal_Get_Namespace --
   ----------------------------

   function Internal_Get_Namespace
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (4).Link, Self);
   end Internal_Get_Namespace;

   --------------------------------------
   -- Internal_Get_Navigable_Owned_End --
   --------------------------------------

   function Internal_Get_Navigable_Owned_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 38;
   end Internal_Get_Navigable_Owned_End;

   ----------------------------------
   -- Internal_Get_Nested_Artifact --
   ----------------------------------

   function Internal_Get_Nested_Artifact
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 27;
   end Internal_Get_Nested_Artifact;

   ------------------------------------
   -- Internal_Get_Nested_Classifier --
   ------------------------------------

   function Internal_Get_Nested_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 33;
   end Internal_Get_Nested_Classifier;

   ------------------------------
   -- Internal_Get_Nested_Node --
   ------------------------------

   function Internal_Get_Nested_Node
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 37;
   end Internal_Get_Nested_Node;

   ---------------------------------
   -- Internal_Get_Nested_Package --
   ---------------------------------

   function Internal_Get_Nested_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Nested_Package;

   ----------------------------------
   -- Internal_Get_Nesting_Package --
   ----------------------------------

   function Internal_Get_Nesting_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_Nesting_Package;

   ---------------------------------
   -- Internal_Get_New_Classifier --
   ---------------------------------

   function Internal_Get_New_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 12;
   end Internal_Get_New_Classifier;

   -----------------------
   -- Internal_Get_Node --
   -----------------------

   function Internal_Get_Node
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 24;
   end Internal_Get_Node;

   -------------------------
   -- Internal_Get_Object --
   -------------------------

   function Internal_Get_Object
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Link, Self);
   end Internal_Get_Object;

   ------------------------------
   -- Internal_Get_Observation --
   ------------------------------

   function Internal_Get_Observation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Observation;

   ---------------------------------
   -- Internal_Get_Old_Classifier --
   ---------------------------------

   function Internal_Get_Old_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 13;
   end Internal_Get_Old_Classifier;

   --------------------------
   -- Internal_Get_On_Port --
   --------------------------

   function Internal_Get_On_Port
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Link, Self);
   end Internal_Get_On_Port;

   --------------------------
   -- Internal_Get_Operand --
   --------------------------

   function Internal_Get_Operand
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Operand;

   ----------------------------
   -- Internal_Get_Operation --
   ----------------------------

   function Internal_Get_Operation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).Link, Self);
   end Internal_Get_Operation;

   ---------------------------
   -- Internal_Get_Opposite --
   ---------------------------

   function Internal_Get_Opposite
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (31).Link, Self);
   end Internal_Get_Opposite;

   ---------------------------
   -- Internal_Get_Ordering --
   ---------------------------

   function Internal_Get_Ordering
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Object_Node_Ordering_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (20).Object_Node_Ordering_Kind_Value;
   end Internal_Get_Ordering;

   ---------------------------
   -- Internal_Get_Outgoing --
   ---------------------------

   function Internal_Get_Outgoing
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 7;
   end Internal_Get_Outgoing;

   -------------------------
   -- Internal_Get_Output --
   -------------------------

   function Internal_Get_Output
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 22;
   end Internal_Get_Output;

   ---------------------------------
   -- Internal_Get_Output_Element --
   ---------------------------------

   function Internal_Get_Output_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 31;
   end Internal_Get_Output_Element;

   -------------------------------
   -- Internal_Get_Output_Value --
   -------------------------------

   function Internal_Get_Output_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 13;
   end Internal_Get_Output_Value;

   -------------------------------
   -- Internal_Get_Owned_Actual --
   -------------------------------

   function Internal_Get_Owned_Actual
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (4).Link, Self);
   end Internal_Get_Owned_Actual;

   ----------------------------------
   -- Internal_Get_Owned_Attribute --
   ----------------------------------

   function Internal_Get_Owned_Attribute
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 25;
   end Internal_Get_Owned_Attribute;

   ---------------------------------
   -- Internal_Get_Owned_Behavior --
   ---------------------------------

   function Internal_Get_Owned_Behavior
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 28;
   end Internal_Get_Owned_Behavior;

   --------------------------------
   -- Internal_Get_Owned_Comment --
   --------------------------------

   function Internal_Get_Owned_Comment
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 1;
   end Internal_Get_Owned_Comment;

   ----------------------------------
   -- Internal_Get_Owned_Connector --
   ----------------------------------

   function Internal_Get_Owned_Connector
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 30;
   end Internal_Get_Owned_Connector;

   --------------------------------
   -- Internal_Get_Owned_Default --
   --------------------------------

   function Internal_Get_Owned_Default
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).Link, Self);
   end Internal_Get_Owned_Default;

   --------------------------------
   -- Internal_Get_Owned_Element --
   --------------------------------

   function Internal_Get_Owned_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 2;
   end Internal_Get_Owned_Element;

   ----------------------------
   -- Internal_Get_Owned_End --
   ----------------------------

   function Internal_Get_Owned_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 39;
   end Internal_Get_Owned_End;

   --------------------------------
   -- Internal_Get_Owned_Literal --
   --------------------------------

   function Internal_Get_Owned_Literal
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 24;
   end Internal_Get_Owned_Literal;

   -------------------------------
   -- Internal_Get_Owned_Member --
   -------------------------------

   function Internal_Get_Owned_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 15;
   end Internal_Get_Owned_Member;

   ----------------------------------
   -- Internal_Get_Owned_Operation --
   ----------------------------------

   function Internal_Get_Owned_Operation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 26;
   end Internal_Get_Owned_Operation;

   ----------------------------------
   -- Internal_Get_Owned_Parameter --
   ----------------------------------

   function Internal_Get_Owned_Parameter
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 37;
   end Internal_Get_Owned_Parameter;

   --------------------------------------
   -- Internal_Get_Owned_Parameter_Set --
   --------------------------------------

   function Internal_Get_Owned_Parameter_Set
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 38;
   end Internal_Get_Owned_Parameter_Set;

   --------------------------------------------
   -- Internal_Get_Owned_Parametered_Element --
   --------------------------------------------

   function Internal_Get_Owned_Parametered_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (4).Link, Self);
   end Internal_Get_Owned_Parametered_Element;

   -----------------------------
   -- Internal_Get_Owned_Port --
   -----------------------------

   function Internal_Get_Owned_Port
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 35;
   end Internal_Get_Owned_Port;

   ----------------------------------
   -- Internal_Get_Owned_Reception --
   ----------------------------------

   function Internal_Get_Owned_Reception
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 34;
   end Internal_Get_Owned_Reception;

   -----------------------------
   -- Internal_Get_Owned_Rule --
   -----------------------------

   function Internal_Get_Owned_Rule
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 16;
   end Internal_Get_Owned_Rule;

   -----------------------------------
   -- Internal_Get_Owned_Stereotype --
   -----------------------------------

   function Internal_Get_Owned_Stereotype
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 5;
   end Internal_Get_Owned_Stereotype;

   -------------------------------------------
   -- Internal_Get_Owned_Template_Signature --
   -------------------------------------------

   function Internal_Get_Owned_Template_Signature
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Link, Self);
   end Internal_Get_Owned_Template_Signature;

   -----------------------------
   -- Internal_Get_Owned_Type --
   -----------------------------

   function Internal_Get_Owned_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 7;
   end Internal_Get_Owned_Type;

   ---------------------------------
   -- Internal_Get_Owned_Use_Case --
   ---------------------------------

   function Internal_Get_Owned_Use_Case
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 19;
   end Internal_Get_Owned_Use_Case;

   ------------------------
   -- Internal_Get_Owner --
   ------------------------

   function Internal_Get_Owner
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Owner;

   -------------------------------------
   -- Internal_Get_Owning_Association --
   -------------------------------------

   function Internal_Get_Owning_Association
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (32).Link, Self);
   end Internal_Get_Owning_Association;

   ------------------------------------
   -- Internal_Get_Owning_Expression --
   ------------------------------------

   function Internal_Get_Owning_Expression
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).Link, Self);
   end Internal_Get_Owning_Expression;

   ----------------------------------
   -- Internal_Get_Owning_Instance --
   ----------------------------------

   function Internal_Get_Owning_Instance
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).Link, Self);
   end Internal_Get_Owning_Instance;

   --------------------------------------------
   -- Internal_Get_Owning_Template_Parameter --
   --------------------------------------------

   function Internal_Get_Owning_Template_Parameter
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Owning_Template_Parameter;

   --------------------------
   -- Internal_Get_Package --
   --------------------------

   function Internal_Get_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Link, Self);
   end Internal_Get_Package;

   ---------------------------------
   -- Internal_Get_Package_Import --
   ---------------------------------

   function Internal_Get_Package_Import
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 17;
   end Internal_Get_Package_Import;

   --------------------------------
   -- Internal_Get_Package_Merge --
   --------------------------------

   function Internal_Get_Package_Merge
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 8;
   end Internal_Get_Package_Merge;

   -----------------------------------
   -- Internal_Get_Packaged_Element --
   -----------------------------------

   function Internal_Get_Packaged_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 24;
   end Internal_Get_Packaged_Element;

   ----------------------------
   -- Internal_Get_Parameter --
   ----------------------------

   function Internal_Get_Parameter
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Link, Self);
   end Internal_Get_Parameter;

   ----------------------------
   -- Internal_Get_Parameter --
   ----------------------------

   function Internal_Get_Parameter
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 6;
   end Internal_Get_Parameter;

   --------------------------------
   -- Internal_Get_Parameter_Set --
   --------------------------------

   function Internal_Get_Parameter_Set
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Parameter_Set;

   -----------------------------------------
   -- Internal_Get_Parameter_Substitution --
   -----------------------------------------

   function Internal_Get_Parameter_Substitution
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 3;
   end Internal_Get_Parameter_Substitution;

   --------------------------------------
   -- Internal_Get_Parametered_Element --
   --------------------------------------

   function Internal_Get_Parametered_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (5).Link, Self);
   end Internal_Get_Parametered_Element;

   -----------------------
   -- Internal_Get_Part --
   -----------------------

   function Internal_Get_Part
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 31;
   end Internal_Get_Part;

   ---------------------------------
   -- Internal_Get_Part_With_Port --
   ---------------------------------

   function Internal_Get_Part_With_Port
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).Link, Self);
   end Internal_Get_Part_With_Port;

   ----------------------------
   -- Internal_Get_Partition --
   ----------------------------

   function Internal_Get_Partition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 44;
   end Internal_Get_Partition;

   -----------------------
   -- Internal_Get_Port --
   -----------------------

   function Internal_Get_Port
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Port;

   ---------------------------------
   -- Internal_Get_Post_Condition --
   ---------------------------------

   function Internal_Get_Post_Condition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Link, Self);
   end Internal_Get_Post_Condition;

   --------------------------------
   -- Internal_Get_Postcondition --
   --------------------------------

   function Internal_Get_Postcondition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 39;
   end Internal_Get_Postcondition;

   ----------------------------
   -- Internal_Get_Powertype --
   ----------------------------

   function Internal_Get_Powertype
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Link, Self);
   end Internal_Get_Powertype;

   -----------------------------------
   -- Internal_Get_Powertype_Extent --
   -----------------------------------

   function Internal_Get_Powertype_Extent
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 20;
   end Internal_Get_Powertype_Extent;

   --------------------------------
   -- Internal_Get_Pre_Condition --
   --------------------------------

   function Internal_Get_Pre_Condition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Link, Self);
   end Internal_Get_Pre_Condition;

   -------------------------------
   -- Internal_Get_Precondition --
   -------------------------------

   function Internal_Get_Precondition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 40;
   end Internal_Get_Precondition;

   -------------------------------------
   -- Internal_Get_Predecessor_Clause --
   -------------------------------------

   function Internal_Get_Predecessor_Clause
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Predecessor_Clause;

   --------------------------
   -- Internal_Get_Profile --
   --------------------------

   function Internal_Get_Profile
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_Profile;

   --------------------------------------
   -- Internal_Get_Profile_Application --
   --------------------------------------

   function Internal_Get_Profile_Application
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 9;
   end Internal_Get_Profile_Application;

   ---------------------------------
   -- Internal_Get_Protected_Node --
   ---------------------------------

   function Internal_Get_Protected_Node
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (4).Link, Self);
   end Internal_Get_Protected_Node;

   ---------------------------
   -- Internal_Get_Protocol --
   ---------------------------

   function Internal_Get_Protocol
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (33).Link, Self);
   end Internal_Get_Protocol;

   ---------------------------
   -- Internal_Get_Provided --
   ---------------------------

   function Internal_Get_Provided
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 37;
   end Internal_Get_Provided;

   ---------------------------------
   -- Internal_Get_Qualified_Name --
   ---------------------------------

   function Internal_Get_Qualified_Name
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (5).String_Value;
   end Internal_Get_Qualified_Name;

   ----------------------------
   -- Internal_Get_Qualifier --
   ----------------------------

   function Internal_Get_Qualifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 8;
   end Internal_Get_Qualifier;

   ----------------------------
   -- Internal_Get_Qualifier --
   ----------------------------

   function Internal_Get_Qualifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Link, Self);
   end Internal_Get_Qualifier;

   -----------------------------------
   -- Internal_Get_Raised_Exception --
   -----------------------------------

   function Internal_Get_Raised_Exception
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 9;
   end Internal_Get_Raised_Exception;

   ------------------------------
   -- Internal_Get_Realization --
   ------------------------------

   function Internal_Get_Realization
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 29;
   end Internal_Get_Realization;

   ------------------------------------------
   -- Internal_Get_Realizing_Activity_Edge --
   ------------------------------------------

   function Internal_Get_Realizing_Activity_Edge
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 9;
   end Internal_Get_Realizing_Activity_Edge;

   ---------------------------------------
   -- Internal_Get_Realizing_Classifier --
   ---------------------------------------

   function Internal_Get_Realizing_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 8;
   end Internal_Get_Realizing_Classifier;

   --------------------------------------
   -- Internal_Get_Realizing_Connector --
   --------------------------------------

   function Internal_Get_Realizing_Connector
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 10;
   end Internal_Get_Realizing_Connector;

   ------------------------------------
   -- Internal_Get_Realizing_Message --
   ------------------------------------

   function Internal_Get_Realizing_Message
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 11;
   end Internal_Get_Realizing_Message;

   --------------------------------
   -- Internal_Get_Receive_Event --
   --------------------------------

   function Internal_Get_Receive_Event
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).Link, Self);
   end Internal_Get_Receive_Event;

   ------------------------------------
   -- Internal_Get_Receiving_Package --
   ------------------------------------

   function Internal_Get_Receiving_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).Link, Self);
   end Internal_Get_Receiving_Package;

   -------------------------------------
   -- Internal_Get_Redefined_Behavior --
   -------------------------------------

   function Internal_Get_Redefined_Behavior
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 42;
   end Internal_Get_Redefined_Behavior;

   ---------------------------------------
   -- Internal_Get_Redefined_Classifier --
   ---------------------------------------

   function Internal_Get_Redefined_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 21;
   end Internal_Get_Redefined_Classifier;

   --------------------------------------
   -- Internal_Get_Redefined_Connector --
   --------------------------------------

   function Internal_Get_Redefined_Connector
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 9;
   end Internal_Get_Redefined_Connector;

   ---------------------------------
   -- Internal_Get_Redefined_Edge --
   ---------------------------------

   function Internal_Get_Redefined_Edge
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 6;
   end Internal_Get_Redefined_Edge;

   ------------------------------------
   -- Internal_Get_Redefined_Element --
   ------------------------------------

   function Internal_Get_Redefined_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Redefined_Element;

   --------------------------------------
   -- Internal_Get_Redefined_Interface --
   --------------------------------------

   function Internal_Get_Redefined_Interface
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 24;
   end Internal_Get_Redefined_Interface;

   ---------------------------------
   -- Internal_Get_Redefined_Node --
   ---------------------------------

   function Internal_Get_Redefined_Node
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 11;
   end Internal_Get_Redefined_Node;

   --------------------------------------
   -- Internal_Get_Redefined_Operation --
   --------------------------------------

   function Internal_Get_Redefined_Operation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 10;
   end Internal_Get_Redefined_Operation;

   ---------------------------------
   -- Internal_Get_Redefined_Port --
   ---------------------------------

   function Internal_Get_Redefined_Port
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 11;
   end Internal_Get_Redefined_Port;

   -------------------------------------
   -- Internal_Get_Redefined_Property --
   -------------------------------------

   function Internal_Get_Redefined_Property
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 9;
   end Internal_Get_Redefined_Property;

   ----------------------------------
   -- Internal_Get_Redefined_State --
   ----------------------------------

   function Internal_Get_Redefined_State
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Link, Self);
   end Internal_Get_Redefined_State;

   ---------------------------------------
   -- Internal_Get_Redefined_Transition --
   ---------------------------------------

   function Internal_Get_Redefined_Transition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Link, Self);
   end Internal_Get_Redefined_Transition;

   ---------------------------------------
   -- Internal_Get_Redefinition_Context --
   ---------------------------------------

   function Internal_Get_Redefinition_Context
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 5;
   end Internal_Get_Redefinition_Context;

   --------------------------
   -- Internal_Get_Reducer --
   --------------------------

   function Internal_Get_Reducer
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Link, Self);
   end Internal_Get_Reducer;

   ---------------------------
   -- Internal_Get_Referred --
   ---------------------------

   function Internal_Get_Referred
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 6;
   end Internal_Get_Referred;

   ----------------------------
   -- Internal_Get_Refers_To --
   ----------------------------

   function Internal_Get_Refers_To
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Refers_To;

   -------------------------
   -- Internal_Get_Region --
   -------------------------

   function Internal_Get_Region
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 29;
   end Internal_Get_Region;

   ----------------------------------
   -- Internal_Get_Region_As_Input --
   ----------------------------------

   function Internal_Get_Region_As_Input
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Link, Self);
   end Internal_Get_Region_As_Input;

   -----------------------------------
   -- Internal_Get_Region_As_Output --
   -----------------------------------

   function Internal_Get_Region_As_Output
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).Link, Self);
   end Internal_Get_Region_As_Output;

   ----------------------------------
   -- Internal_Get_Related_Element --
   ----------------------------------

   function Internal_Get_Related_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 24;
   end Internal_Get_Related_Element;

   ----------------------------
   -- Internal_Get_Remove_At --
   ----------------------------

   function Internal_Get_Remove_At
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Link, Self);
   end Internal_Get_Remove_At;

   --------------------------------
   -- Internal_Get_Reply_To_Call --
   --------------------------------

   function Internal_Get_Reply_To_Call
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).Link, Self);
   end Internal_Get_Reply_To_Call;

   ------------------------------
   -- Internal_Get_Reply_Value --
   ------------------------------

   function Internal_Get_Reply_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 12;
   end Internal_Get_Reply_Value;

   ---------------------------------
   -- Internal_Get_Representation --
   ---------------------------------

   function Internal_Get_Representation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Link, Self);
   end Internal_Get_Representation;

   ------------------------------
   -- Internal_Get_Represented --
   ------------------------------

   function Internal_Get_Represented
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 24;
   end Internal_Get_Represented;

   -----------------------------
   -- Internal_Get_Represents --
   -----------------------------

   function Internal_Get_Represents
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Represents;

   --------------------------
   -- Internal_Get_Request --
   --------------------------

   function Internal_Get_Request
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 12;
   end Internal_Get_Request;

   ---------------------------
   -- Internal_Get_Required --
   ---------------------------

   function Internal_Get_Required
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 38;
   end Internal_Get_Required;

   -------------------------
   -- Internal_Get_Result --
   -------------------------

   function Internal_Get_Result
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 23;
   end Internal_Get_Result;

   -------------------------
   -- Internal_Get_Result --
   -------------------------

   function Internal_Get_Result
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).Link, Self);
   end Internal_Get_Result;

   -------------------------------------
   -- Internal_Get_Return_Information --
   -------------------------------------

   function Internal_Get_Return_Information
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Link, Self);
   end Internal_Get_Return_Information;

   -------------------------------
   -- Internal_Get_Return_Value --
   -------------------------------

   function Internal_Get_Return_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Return_Value;

   -----------------------------------------
   -- Internal_Get_Return_Value_Recipient --
   -----------------------------------------

   function Internal_Get_Return_Value_Recipient
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (9).Link, Self);
   end Internal_Get_Return_Value_Recipient;

   -----------------------
   -- Internal_Get_Role --
   -----------------------

   function Internal_Get_Role
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (4).Link, Self);
   end Internal_Get_Role;

   -----------------------
   -- Internal_Get_Role --
   -----------------------

   function Internal_Get_Role
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 32;
   end Internal_Get_Role;

   -------------------------------
   -- Internal_Get_Role_Binding --
   -------------------------------

   function Internal_Get_Role_Binding
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Role_Binding;

   ------------------------
   -- Internal_Get_Scope --
   ------------------------

   function Internal_Get_Scope
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).Link, Self);
   end Internal_Get_Scope;

   -------------------------
   -- Internal_Get_Second --
   -------------------------

   function Internal_Get_Second
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Link, Self);
   end Internal_Get_Second;

   ----------------------------
   -- Internal_Get_Selection --
   ----------------------------

   function Internal_Get_Selection
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (18).Link, Self);
   end Internal_Get_Selection;

   ---------------------------
   -- Internal_Get_Selector --
   ---------------------------

   function Internal_Get_Selector
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_Selector;

   -----------------------------
   -- Internal_Get_Send_Event --
   -----------------------------

   function Internal_Get_Send_Event
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Link, Self);
   end Internal_Get_Send_Event;

   --------------------------
   -- Internal_Get_Setting --
   --------------------------

   function Internal_Get_Setting
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Value;
   end Internal_Get_Setting;

   -----------------------------
   -- Internal_Get_Setup_Part --
   -----------------------------

   function Internal_Get_Setup_Part
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 34;
   end Internal_Get_Setup_Part;

   -------------------------
   -- Internal_Get_Signal --
   -------------------------

   function Internal_Get_Signal
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Link, Self);
   end Internal_Get_Signal;

   ----------------------------
   -- Internal_Get_Signature --
   ----------------------------

   function Internal_Get_Signature
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Link, Self);
   end Internal_Get_Signature;

   -----------------------
   -- Internal_Get_Slot --
   -----------------------

   function Internal_Get_Slot
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 5;
   end Internal_Get_Slot;

   -------------------------
   -- Internal_Get_Source --
   -------------------------

   function Internal_Get_Source
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Link, Self);
   end Internal_Get_Source;

   -------------------------
   -- Internal_Get_Source --
   -------------------------

   function Internal_Get_Source
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Source;

   ---------------------------
   -- Internal_Get_Specific --
   ---------------------------

   function Internal_Get_Specific
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (4).Link, Self);
   end Internal_Get_Specific;

   -----------------------------------
   -- Internal_Get_Specific_Machine --
   -----------------------------------

   function Internal_Get_Specific_Machine
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).Link, Self);
   end Internal_Get_Specific_Machine;

   --------------------------------
   -- Internal_Get_Specification --
   --------------------------------

   function Internal_Get_Specification
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (20).Link, Self);
   end Internal_Get_Specification;

   ------------------------
   -- Internal_Get_Start --
   ------------------------

   function Internal_Get_Start
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Start;

   ------------------------
   -- Internal_Get_State --
   ------------------------

   function Internal_Get_State
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (9).Link, Self);
   end Internal_Get_State;

   ----------------------------------
   -- Internal_Get_State_Invariant --
   ----------------------------------

   function Internal_Get_State_Invariant
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Link, Self);
   end Internal_Get_State_Invariant;

   --------------------------------
   -- Internal_Get_State_Machine --
   --------------------------------

   function Internal_Get_State_Machine
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_State_Machine;

   -------------------------------------
   -- Internal_Get_Structural_Feature --
   -------------------------------------

   function Internal_Get_Structural_Feature
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Link, Self);
   end Internal_Get_Structural_Feature;

   ----------------------------------
   -- Internal_Get_Structured_Node --
   ----------------------------------

   function Internal_Get_Structured_Node
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 45;
   end Internal_Get_Structured_Node;

   ----------------------------------------
   -- Internal_Get_Structured_Node_Input --
   ----------------------------------------

   function Internal_Get_Structured_Node_Input
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 28;
   end Internal_Get_Structured_Node_Input;

   -----------------------------------------
   -- Internal_Get_Structured_Node_Output --
   -----------------------------------------

   function Internal_Get_Structured_Node_Output
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 23;
   end Internal_Get_Structured_Node_Output;

   ---------------------------------
   -- Internal_Get_Sub_Expression --
   ---------------------------------

   function Internal_Get_Sub_Expression
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 5;
   end Internal_Get_Sub_Expression;

   ---------------------------
   -- Internal_Get_Subgroup --
   ---------------------------

   function Internal_Get_Subgroup
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 27;
   end Internal_Get_Subgroup;

   --------------------------
   -- Internal_Get_Subject --
   --------------------------

   function Internal_Get_Subject
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 29;
   end Internal_Get_Subject;

   -----------------------------
   -- Internal_Get_Submachine --
   -----------------------------

   function Internal_Get_Submachine
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).Link, Self);
   end Internal_Get_Submachine;

   -----------------------------------
   -- Internal_Get_Submachine_State --
   -----------------------------------

   function Internal_Get_Submachine_State
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 41;
   end Internal_Get_Submachine_State;

   -------------------------------
   -- Internal_Get_Subpartition --
   -------------------------------

   function Internal_Get_Subpartition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Subpartition;

   -------------------------------------
   -- Internal_Get_Subsetted_Property --
   -------------------------------------

   function Internal_Get_Subsetted_Property
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 10;
   end Internal_Get_Subsetted_Property;

   ------------------------------------------
   -- Internal_Get_Substituting_Classifier --
   ------------------------------------------

   function Internal_Get_Substituting_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Link, Self);
   end Internal_Get_Substituting_Classifier;

   -------------------------------
   -- Internal_Get_Substitution --
   -------------------------------

   function Internal_Get_Substitution
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 22;
   end Internal_Get_Substitution;

   ----------------------------
   -- Internal_Get_Subvertex --
   ----------------------------

   function Internal_Get_Subvertex
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 6;
   end Internal_Get_Subvertex;

   -----------------------------------
   -- Internal_Get_Successor_Clause --
   -----------------------------------

   function Internal_Get_Successor_Clause
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 5;
   end Internal_Get_Successor_Clause;

   ------------------------------
   -- Internal_Get_Super_Class --
   ------------------------------

   function Internal_Get_Super_Class
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 11;
   end Internal_Get_Super_Class;

   ------------------------------
   -- Internal_Get_Super_Group --
   ------------------------------

   function Internal_Get_Super_Group
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Link, Self);
   end Internal_Get_Super_Group;

   ----------------------------------
   -- Internal_Get_Super_Partition --
   ----------------------------------

   function Internal_Get_Super_Partition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_Super_Partition;

   ---------------------------
   -- Internal_Get_Supplier --
   ---------------------------

   function Internal_Get_Supplier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 7;
   end Internal_Get_Supplier;

   -------------------------
   -- Internal_Get_Symbol --
   -------------------------

   function Internal_Get_Symbol
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).String_Value;
   end Internal_Get_Symbol;

   -------------------------
   -- Internal_Get_Target --
   -------------------------

   function Internal_Get_Target
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).Link, Self);
   end Internal_Get_Target;

   -------------------------
   -- Internal_Get_Target --
   -------------------------

   function Internal_Get_Target
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 5;
   end Internal_Get_Target;

   ---------------------------
   -- Internal_Get_Template --
   ---------------------------

   function Internal_Get_Template
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Template;

   -----------------------------------
   -- Internal_Get_Template_Binding --
   -----------------------------------

   function Internal_Get_Template_Binding
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (5).Link, Self);
   end Internal_Get_Template_Binding;

   -----------------------------------
   -- Internal_Get_Template_Binding --
   -----------------------------------

   function Internal_Get_Template_Binding
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 6;
   end Internal_Get_Template_Binding;

   -------------------------------------
   -- Internal_Get_Template_Parameter --
   -------------------------------------

   function Internal_Get_Template_Parameter
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (9).Link, Self);
   end Internal_Get_Template_Parameter;

   -----------------------
   -- Internal_Get_Test --
   -----------------------

   function Internal_Get_Test
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 31;
   end Internal_Get_Test;

   ---------------------------
   -- Internal_Get_To_After --
   ---------------------------

   function Internal_Get_To_After
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_To_After;

   ----------------------------
   -- Internal_Get_To_Before --
   ----------------------------

   function Internal_Get_To_Before
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 5;
   end Internal_Get_To_Before;

   ---------------------------------
   -- Internal_Get_Transformation --
   ---------------------------------

   function Internal_Get_Transformation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).Link, Self);
   end Internal_Get_Transformation;

   -----------------------------
   -- Internal_Get_Transition --
   -----------------------------

   function Internal_Get_Transition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 7;
   end Internal_Get_Transition;

   --------------------------
   -- Internal_Get_Trigger --
   --------------------------

   function Internal_Get_Trigger
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 24;
   end Internal_Get_Trigger;

   -----------------------
   -- Internal_Get_Type --
   -----------------------

   function Internal_Get_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_Type;

   ----------------------------------
   -- Internal_Get_Unmarshall_Type --
   ----------------------------------

   function Internal_Get_Unmarshall_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).Link, Self);
   end Internal_Get_Unmarshall_Type;

   ------------------------
   -- Internal_Get_Upper --
   ------------------------

   function Internal_Get_Upper
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Unlimited_Natural is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Unlimited_Natural_Holder;
   end Internal_Get_Upper;

   ------------------------------
   -- Internal_Get_Upper_Bound --
   ------------------------------

   function Internal_Get_Upper_Bound
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (21).Link, Self);
   end Internal_Get_Upper_Bound;

   ------------------------------
   -- Internal_Get_Upper_Value --
   ------------------------------

   function Internal_Get_Upper_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).Link, Self);
   end Internal_Get_Upper_Value;

   ---------------------------
   -- Internal_Get_Use_Case --
   ---------------------------

   function Internal_Get_Use_Case
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 23;
   end Internal_Get_Use_Case;

   ---------------------------
   -- Internal_Get_Use_Case --
   ---------------------------

   function Internal_Get_Use_Case
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (8).Link, Self);
   end Internal_Get_Use_Case;

   -----------------------------------
   -- Internal_Get_Utilized_Element --
   -----------------------------------

   function Internal_Get_Utilized_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_Utilized_Element;

   ------------------------
   -- Internal_Get_Value --
   ------------------------

   function Internal_Get_Value
    (Self : AMF.Internals.AMF_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Value;
   end Internal_Get_Value;

   ------------------------
   -- Internal_Get_Value --
   ------------------------

   function Internal_Get_Value
    (Self : AMF.Internals.AMF_Element)
       return Integer is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Integer_Value;
   end Internal_Get_Value;

   ------------------------
   -- Internal_Get_Value --
   ------------------------

   function Internal_Get_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Real_Value;
   end Internal_Get_Value;

   ------------------------
   -- Internal_Get_Value --
   ------------------------

   function Internal_Get_Value
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).String_Value;
   end Internal_Get_Value;

   ------------------------
   -- Internal_Get_Value --
   ------------------------

   function Internal_Get_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Unlimited_Natural is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Unlimited_Natural_Value;
   end Internal_Get_Value;

   ------------------------
   -- Internal_Get_Value --
   ------------------------

   function Internal_Get_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 3;
   end Internal_Get_Value;

   ------------------------
   -- Internal_Get_Value --
   ------------------------

   function Internal_Get_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).Link, Self);
   end Internal_Get_Value;

   ---------------------------
   -- Internal_Get_Variable --
   ---------------------------

   function Internal_Get_Variable
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 41;
   end Internal_Get_Variable;

   ---------------------------
   -- Internal_Get_Variable --
   ---------------------------

   function Internal_Get_Variable
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Link, Self);
   end Internal_Get_Variable;

   ----------------------------
   -- Internal_Get_Viewpoint --
   ----------------------------

   function Internal_Get_Viewpoint
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).String_Value;
   end Internal_Get_Viewpoint;

   -----------------------------
   -- Internal_Get_Visibility --
   -----------------------------

   function Internal_Get_Visibility
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Visibility_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).Visibility_Kind_Value;
   end Internal_Get_Visibility;

   -----------------------------
   -- Internal_Get_Visibility --
   -----------------------------

   function Internal_Get_Visibility
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.Optional_UML_Visibility_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (6).Visibility_Kind_Holder;
   end Internal_Get_Visibility;

   -------------------------
   -- Internal_Get_Weight --
   -------------------------

   function Internal_Get_Weight
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Link, Self);
   end Internal_Get_Weight;

   -----------------------
   -- Internal_Get_When --
   -----------------------

   function Internal_Get_When
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Link, Self);
   end Internal_Get_When;

   ----------------------
   -- Internal_Set_URI --
   ----------------------

   procedure Internal_Set_URI
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).String_Value;

      UML_Element_Table.Table (Self).Member (7).String_Value := To;

      if UML_Element_Table.Table (Self).Member (7).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (7).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Package_URI, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_URI;

   ------------------------------
   -- Internal_Set_Abstraction --
   ------------------------------

   procedure Internal_Set_Abstraction
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Component_Realization =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Component_Realization_Abstraction,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Abstraction;

   -------------------------
   -- Internal_Set_Action --
   -------------------------

   procedure Internal_Set_Action
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Action_Execution_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Action_Execution_Specification_Action_Action_Execution_Specification,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Action;

   ---------------------------
   -- Internal_Set_Activity --
   ---------------------------

   procedure Internal_Set_Activity
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Accept_Call_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Accept_Event_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Action_Input_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Activity_Final_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Activity_Parameter_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Add_Structural_Feature_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Add_Variable_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Broadcast_Signal_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Call_Behavior_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Call_Operation_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Central_Buffer_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Clear_Association_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Clear_Structural_Feature_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Clear_Variable_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Conditional_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Control_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Edge_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Create_Link_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Create_Link_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Create_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Data_Store_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Decision_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Destroy_Link_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Destroy_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Expansion_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Expansion_Region =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Flow_Final_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Fork_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Initial_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Input_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Join_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Loop_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Merge_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Object_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Edge_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Output_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Raise_Exception_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Extent_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Is_Classified_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Link_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Link_Object_End_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Link_Object_End_Qualifier_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Self_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Structural_Feature_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Variable_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Reclassify_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Reduce_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Remove_Structural_Feature_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Remove_Variable_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Reply_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Send_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Send_Signal_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Sequence_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Start_Classifier_Behavior_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Start_Object_Behavior_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Structured_Activity_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Test_Identity_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Unmarshall_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Value_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Value_Specification_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Activity,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Activity;

   ---------------------------------
   -- Internal_Set_Activity_Scope --
   ---------------------------------

   procedure Internal_Set_Activity_Scope
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Variable =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Variable_Activity_Scope,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Activity_Scope;

   -------------------------
   -- Internal_Set_Actual --
   -------------------------

   procedure Internal_Set_Actual
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Template_Parameter_Substitution =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Substitution_Actual_Template_Parameter_Substitution,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Actual;

   ---------------------------
   -- Internal_Set_Addition --
   ---------------------------

   procedure Internal_Set_Addition
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Include =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Include_Addition_Include,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Addition;

   ------------------------
   -- Internal_Set_After --
   ------------------------

   procedure Internal_Set_After
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_General_Ordering =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Occurrence_Specification_To_Before_After,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_After;

   ------------------------------
   -- Internal_Set_Aggregation --
   ------------------------------

   procedure Internal_Set_Aggregation
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Aggregation_Kind)
   is
      Old : AMF.UML.UML_Aggregation_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (27).Aggregation_Kind_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (27).Aggregation_Kind_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Aggregation, Old, To);
   end Internal_Set_Aggregation;

   ------------------------
   -- Internal_Set_Alias --
   ------------------------

   procedure Internal_Set_Alias
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (4).String_Value;

      UML_Element_Table.Table (Self).Member (4).String_Value := To;

      if UML_Element_Table.Table (Self).Member (4).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (4).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Import_Alias, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Alias;

   --------------------------------------
   -- Internal_Set_Allow_Substitutable --
   --------------------------------------

   procedure Internal_Set_Allow_Substitutable
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (6).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (6).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Allow_Substitutable, Old, To);
   end Internal_Set_Allow_Substitutable;

   ----------------------------------
   -- Internal_Set_Applied_Profile --
   ----------------------------------

   procedure Internal_Set_Applied_Profile
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Profile_Application =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Profile_Application_Applied_Profile_Profile_Application,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Applied_Profile;

   -----------------------------------
   -- Internal_Set_Applying_Package --
   -----------------------------------

   procedure Internal_Set_Applying_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Profile_Application =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Profile_Application_Applying_Package,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Applying_Package;

   ------------------------------
   -- Internal_Set_Association --
   ------------------------------

   procedure Internal_Set_Association
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Clear_Association_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Clear_Association_Action_Association_Clear_Association_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Extension_End =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Association_Member_End_Association,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Port =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Association_Member_End_Association,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Association_Member_End_Association,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Association;

   ----------------------------------
   -- Internal_Set_Association_End --
   ----------------------------------

   procedure Internal_Set_Association_End
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Extension_End =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Qualifier_Association_End,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Port =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Qualifier_Association_End,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Qualifier_Association_End,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Association_End;

   -----------------------------------
   -- Internal_Set_Base_Abstraction --
   -----------------------------------

   procedure Internal_Set_Base_Abstraction
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Derive =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Derive_Base_Abstraction,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Refine =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Refine_Base_Abstraction,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Trace =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Trace_Base_Abstraction,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Abstraction;

   --------------------------------
   -- Internal_Set_Base_Artifact --
   --------------------------------

   procedure Internal_Set_Base_Artifact
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Document =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Document_Base_Artifact,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Executable =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Executable_Base_Artifact,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Library =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_File_Base_Artifact,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Script =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_File_Base_Artifact,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Source =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_File_Base_Artifact,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Artifact;

   ------------------------------------------
   -- Internal_Set_Base_Behavioral_Feature --
   ------------------------------------------

   procedure Internal_Set_Base_Behavioral_Feature
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Create =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Create_Base_Behavioral_Feature,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Destroy =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Destroy_Base_Behavioral_Feature,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Behavioral_Feature;

   -----------------------------
   -- Internal_Set_Base_Class --
   -----------------------------

   procedure Internal_Set_Base_Class
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Auxiliary =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Auxiliary_Base_Class,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Focus =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Focus_Base_Class,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Implementation_Class =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Implementation_Class_Base_Class,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Metaclass =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Metaclass_Base_Class,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Type_Base_Class,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Utility =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Utility_Base_Class,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Class;

   ----------------------------------
   -- Internal_Set_Base_Classifier --
   ----------------------------------

   procedure Internal_Set_Base_Classifier
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Realization =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Realization_Base_Classifier,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Specification_Base_Classifier,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Classifier;

   ---------------------------------
   -- Internal_Set_Base_Component --
   ---------------------------------

   procedure Internal_Set_Base_Component
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Entity =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Entity_Base_Component,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Implement =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Implement_Base_Component,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Process =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Process_Base_Component,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Service =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Service_Base_Component,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Subsystem =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Subsystem_Base_Component,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L3_Build_Component =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L3_Metamodel.MA_Standard_Profile_L3_A_Extension_Build_Component_Base_Component,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Component;

   -----------------------------
   -- Internal_Set_Base_Model --
   -----------------------------

   procedure Internal_Set_Base_Model
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L3_Metamodel =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L3_Metamodel.MA_Standard_Profile_L3_A_Extension_Metamodel_Base_Model,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L3_System_Model =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L3_Metamodel.MA_Standard_Profile_L3_A_Extension_System_Model_Base_Model,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Model;

   -------------------------------
   -- Internal_Set_Base_Package --
   -------------------------------

   procedure Internal_Set_Base_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Framework =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Framework_Base_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Model_Library =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Model_Library_Base_Package,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Package;

   -----------------------------
   -- Internal_Set_Base_Usage --
   -----------------------------

   procedure Internal_Set_Base_Usage
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Call =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Call_Base_Usage,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Create =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Create_Base_Usage,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Instantiate =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Instantiate_Base_Usage,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Responsibility =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Responsibility_Base_Usage,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Send =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Send_Base_Usage,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Usage;

   -------------------------
   -- Internal_Set_Before --
   -------------------------

   procedure Internal_Set_Before
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_General_Ordering =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_General_Ordering_Before_To_After,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Before;

   ---------------------------
   -- Internal_Set_Behavior --
   ---------------------------

   procedure Internal_Set_Behavior
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Behavior_Execution_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behavior_Execution_Specification_Behavior_Behavior_Execution_Specification,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Call_Behavior_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Call_Behavior_Action_Behavior_Call_Behavior_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Opaque_Expression_Behavior_Opaque_Expression,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Behavior;

   -----------------------
   -- Internal_Set_Body --
   -----------------------

   procedure Internal_Set_Body
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).String_Value;

      UML_Element_Table.Table (Self).Member (2).String_Value := To;

      if UML_Element_Table.Table (Self).Member (2).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (2).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Comment_Body, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Body;

   ---------------------------------
   -- Internal_Set_Body_Condition --
   ---------------------------------

   procedure Internal_Set_Body_Condition
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Operation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Operation_Body_Condition_Body_Context,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Body_Condition;

   --------------------------------
   -- Internal_Set_Bound_Element --
   --------------------------------

   procedure Internal_Set_Bound_Element
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Template_Binding =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Templateable_Element_Template_Binding_Bound_Element,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Bound_Element;

   ------------------------------------
   -- Internal_Set_Change_Expression --
   ------------------------------------

   procedure Internal_Set_Change_Expression
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Change_Event =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Change_Event_Change_Expression_Change_Event,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Change_Expression;

   ------------------------
   -- Internal_Set_Class --
   ------------------------

   procedure Internal_Set_Class
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Extension_End =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Class_Owned_Attribute_Class,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Operation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Class_Owned_Operation_Class,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Port =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Class_Owned_Attribute_Class,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Class_Owned_Attribute_Class,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Class;

   -----------------------------
   -- Internal_Set_Classifier --
   -----------------------------

   procedure Internal_Set_Classifier
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Create_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Create_Object_Action_Classifier_Create_Object_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Extent_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Read_Extent_Action_Classifier_Read_Extent_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Is_Classified_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Read_Is_Classified_Object_Action_Classifier_Read_Is_Classified_Object_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Redefinable_Template_Signature =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Classifier;

   --------------------------------------
   -- Internal_Set_Classifier_Behavior --
   --------------------------------------

   procedure Internal_Set_Classifier_Behavior
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Activity =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behaviored_Classifier_Classifier_Behavior_Behaviored_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Actor =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behaviored_Classifier_Classifier_Behavior_Behaviored_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Association_Class =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behaviored_Classifier_Classifier_Behavior_Behaviored_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Class =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behaviored_Classifier_Classifier_Behavior_Behaviored_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Collaboration =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behaviored_Classifier_Classifier_Behavior_Behaviored_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Component =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behaviored_Classifier_Classifier_Behavior_Behaviored_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Device =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behaviored_Classifier_Classifier_Behavior_Behaviored_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Execution_Environment =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behaviored_Classifier_Classifier_Behavior_Behaviored_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Function_Behavior =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behaviored_Classifier_Classifier_Behavior_Behaviored_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behaviored_Classifier_Classifier_Behavior_Behaviored_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behaviored_Classifier_Classifier_Behavior_Behaviored_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Behavior =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behaviored_Classifier_Classifier_Behavior_Behaviored_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Protocol_State_Machine =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behaviored_Classifier_Classifier_Behavior_Behaviored_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_State_Machine =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behaviored_Classifier_Classifier_Behavior_Behaviored_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Stereotype =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behaviored_Classifier_Classifier_Behavior_Behaviored_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Use_Case =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behaviored_Classifier_Classifier_Behavior_Behaviored_Classifier,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Classifier_Behavior;

   -----------------------------
   -- Internal_Set_Collection --
   -----------------------------

   procedure Internal_Set_Collection
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Reduce_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Reduce_Action_Collection_Reduce_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Collection;

   ------------------------------
   -- Internal_Set_Computation --
   ------------------------------

   procedure Internal_Set_Computation
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_Standard_Profile_L2_Derive =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Standard_Profile_L2_Metamodel.MA_Standard_Profile_L2_A_Extension_Derive_Computation,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Computation;

   ------------------------------
   -- Internal_Set_Concurrency --
   ------------------------------

   procedure Internal_Set_Concurrency
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Call_Concurrency_Kind)
   is
      Old : AMF.UML.UML_Call_Concurrency_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).Call_Concurrency_Kind_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).Call_Concurrency_Kind_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavioral_Feature_Concurrency, Old, To);
   end Internal_Set_Concurrency;

   ----------------------------
   -- Internal_Set_Condition --
   ----------------------------

   procedure Internal_Set_Condition
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Extend =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Extend_Condition_Extend,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Condition;

   ----------------------------
   -- Internal_Set_Connector --
   ----------------------------

   procedure Internal_Set_Connector
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Message =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Message_Connector_Message,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Connector;

   ----------------------------
   -- Internal_Set_Container --
   ----------------------------

   procedure Internal_Set_Container
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Connection_Point_Reference =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Region_Subvertex_Container,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Final_State =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Region_Subvertex_Container,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Protocol_Transition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Region_Transition_Container,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Pseudostate =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Region_Subvertex_Container,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_State =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Region_Subvertex_Container,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Transition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Region_Transition_Container,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Container;

   --------------------------
   -- Internal_Set_Content --
   --------------------------

   procedure Internal_Set_Content
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).String_Value;

      UML_Element_Table.Table (Self).Member (2).String_Value := To;

      if UML_Element_Table.Table (Self).Member (2).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (2).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Image_Content, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Content;

   ---------------------------
   -- Internal_Set_Contract --
   ---------------------------

   procedure Internal_Set_Contract
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Interface_Realization =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interface_Realization_Contract_Interface_Realization,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Substitution =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Substitution_Contract_Substitution,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Contract;

   ---------------------------
   -- Internal_Set_Datatype --
   ---------------------------

   procedure Internal_Set_Datatype
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Extension_End =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Data_Type_Owned_Attribute_Datatype,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Operation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Data_Type_Owned_Operation_Datatype,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Port =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Data_Type_Owned_Attribute_Datatype,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Data_Type_Owned_Attribute_Datatype,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Datatype;

   --------------------------
   -- Internal_Set_Decider --
   --------------------------

   procedure Internal_Set_Decider
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Clause =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Clause_Decider_Clause,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Loop_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Loop_Node_Decider_Loop_Node,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Decider;

   ---------------------------------
   -- Internal_Set_Decision_Input --
   ---------------------------------

   procedure Internal_Set_Decision_Input
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Decision_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Decision_Node_Decision_Input_Decision_Node,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Decision_Input;

   --------------------------------------
   -- Internal_Set_Decision_Input_Flow --
   --------------------------------------

   procedure Internal_Set_Decision_Input_Flow
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Decision_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Decision_Node_Decision_Input_Flow_Decision_Node,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Decision_Input_Flow;

   --------------------------------
   -- Internal_Set_Decomposed_As --
   --------------------------------

   procedure Internal_Set_Decomposed_As
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Lifeline =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Lifeline_Decomposed_As_Lifeline,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Decomposed_As;

   --------------------------
   -- Internal_Set_Default --
   --------------------------

   procedure Internal_Set_Default
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (20).String_Value;

      UML_Element_Table.Table (Self).Member (20).String_Value := To;

      if UML_Element_Table.Table (Self).Member (20).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (20).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Default, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Default;

   --------------------------
   -- Internal_Set_Default --
   --------------------------

   procedure Internal_Set_Default
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Classifier_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Default_Template_Parameter,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Connectable_Element_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Default_Template_Parameter,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Operation_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Default_Template_Parameter,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Default_Template_Parameter,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Default;

   --------------------------------
   -- Internal_Set_Default_Value --
   --------------------------------

   procedure Internal_Set_Default_Value
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Extension_End =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Default_Value_Owning_Property,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameter_Default_Value_Owning_Parameter,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Port =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Default_Value_Owning_Property,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Default_Value_Owning_Property,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Default_Value;

   -----------------------------------
   -- Internal_Set_Defining_Feature --
   -----------------------------------

   procedure Internal_Set_Defining_Feature
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Slot =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Slot_Defining_Feature_Slot,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Defining_Feature;

   -----------------------------
   -- Internal_Set_Deployment --
   -----------------------------

   procedure Internal_Set_Deployment
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Deployment_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Deployment_Configuration_Deployment,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Deployment;

   --------------------------------------
   -- Internal_Set_Deployment_Location --
   --------------------------------------

   procedure Internal_Set_Deployment_Location
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).String_Value;

      UML_Element_Table.Table (Self).Member (17).String_Value := To;

      if UML_Element_Table.Table (Self).Member (17).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (17).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Deployment_Specification_Deployment_Location, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Deployment_Location;

   -----------------------------
   -- Internal_Set_Destroy_At --
   -----------------------------

   procedure Internal_Set_Destroy_At
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Link_End_Destruction_Data =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Link_End_Destruction_Data_Destroy_At_Link_End_Destruction_Data,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Destroy_At;

   ----------------------------
   -- Internal_Set_Direction --
   ----------------------------

   procedure Internal_Set_Direction
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Parameter_Direction_Kind)
   is
      Old : AMF.UML.UML_Parameter_Direction_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Parameter_Direction_Kind_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Parameter_Direction_Kind_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameter_Direction, Old, To);
   end Internal_Set_Direction;

   ------------------------------
   -- Internal_Set_Do_Activity --
   ------------------------------

   procedure Internal_Set_Do_Activity
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Final_State =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_Do_Activity_State,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_State =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_Do_Activity_State,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Do_Activity;

   -------------------------
   -- Internal_Set_Effect --
   -------------------------

   procedure Internal_Set_Effect
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.Optional_UML_Parameter_Effect_Kind)
   is
      Old : AMF.UML.Optional_UML_Parameter_Effect_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (18).Parameter_Effect_Kind_Holder;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (18).Parameter_Effect_Kind_Holder := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameter_Effect, Old, To);
   end Internal_Set_Effect;

   -------------------------
   -- Internal_Set_Effect --
   -------------------------

   procedure Internal_Set_Effect
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Protocol_Transition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Transition_Effect_Transition,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Transition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Transition_Effect_Transition,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Effect;

   ----------------------------------------
   -- Internal_Set_Enclosing_Interaction --
   ----------------------------------------

   procedure Internal_Set_Enclosing_Interaction
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Action_Execution_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Fragment_Enclosing_Interaction,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Behavior_Execution_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Fragment_Enclosing_Interaction,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Combined_Fragment =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Fragment_Enclosing_Interaction,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Consider_Ignore_Fragment =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Fragment_Enclosing_Interaction,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Continuation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Fragment_Enclosing_Interaction,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Destruction_Occurrence_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Fragment_Enclosing_Interaction,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Execution_Occurrence_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Fragment_Enclosing_Interaction,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Fragment_Enclosing_Interaction,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction_Operand =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Fragment_Enclosing_Interaction,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction_Use =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Fragment_Enclosing_Interaction,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Message_Occurrence_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Fragment_Enclosing_Interaction,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Occurrence_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Fragment_Enclosing_Interaction,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Part_Decomposition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Fragment_Enclosing_Interaction,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_State_Invariant =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Fragment_Enclosing_Interaction,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Enclosing_Interaction;

   ------------------------------------
   -- Internal_Set_Enclosing_Operand --
   ------------------------------------

   procedure Internal_Set_Enclosing_Operand
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Action_Execution_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Operand_Fragment_Enclosing_Operand,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Behavior_Execution_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Operand_Fragment_Enclosing_Operand,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Combined_Fragment =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Operand_Fragment_Enclosing_Operand,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Consider_Ignore_Fragment =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Operand_Fragment_Enclosing_Operand,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Continuation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Operand_Fragment_Enclosing_Operand,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Destruction_Occurrence_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Operand_Fragment_Enclosing_Operand,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Execution_Occurrence_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Operand_Fragment_Enclosing_Operand,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Operand_Fragment_Enclosing_Operand,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction_Operand =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Operand_Fragment_Enclosing_Operand,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction_Use =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Operand_Fragment_Enclosing_Operand,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Message_Occurrence_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Operand_Fragment_Enclosing_Operand,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Occurrence_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Operand_Fragment_Enclosing_Operand,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Part_Decomposition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Operand_Fragment_Enclosing_Operand,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_State_Invariant =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Operand_Fragment_Enclosing_Operand,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Enclosing_Operand;

   ----------------------
   -- Internal_Set_End --
   ----------------------

   procedure Internal_Set_End
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Link_End_Creation_Data =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Link_End_Data_End_Link_End_Data,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Link_End_Data =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Link_End_Data_End_Link_End_Data,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Link_End_Destruction_Data =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Link_End_Data_End_Link_End_Data,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Link_Object_End_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Read_Link_Object_End_Action_End_Read_Link_Object_End_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_End;

   ------------------------
   -- Internal_Set_Entry --
   ------------------------

   procedure Internal_Set_Entry
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Final_State =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_Entry_State,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_State =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_Entry_State,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Entry;

   ------------------------------
   -- Internal_Set_Enumeration --
   ------------------------------

   procedure Internal_Set_Enumeration
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Enumeration_Literal =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Enumeration_Owned_Literal_Enumeration,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Enumeration;

   ------------------------
   -- Internal_Set_Event --
   ------------------------

   procedure Internal_Set_Event
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Time_Observation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Time_Observation_Event_Time_Observation,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Trigger =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Trigger_Event_Trigger,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Event;

   ----------------------------
   -- Internal_Set_Exception --
   ----------------------------

   procedure Internal_Set_Exception
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Raise_Exception_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Raise_Exception_Action_Exception_Raise_Exception_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Exception;

   ----------------------------------
   -- Internal_Set_Exception_Input --
   ----------------------------------

   procedure Internal_Set_Exception_Input
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Exception_Handler =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Exception_Handler_Exception_Input_Exception_Handler,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Exception_Input;

   ----------------------------
   -- Internal_Set_Execution --
   ----------------------------

   procedure Internal_Set_Execution
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Execution_Occurrence_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Execution_Occurrence_Specification_Execution_Execution_Occurrence_Specification,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Execution;

   -------------------------------------
   -- Internal_Set_Execution_Location --
   -------------------------------------

   procedure Internal_Set_Execution_Location
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (18).String_Value;

      UML_Element_Table.Table (Self).Member (18).String_Value := To;

      if UML_Element_Table.Table (Self).Member (18).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (18).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Deployment_Specification_Execution_Location, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Execution_Location;

   -----------------------
   -- Internal_Set_Exit --
   -----------------------

   procedure Internal_Set_Exit
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Final_State =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_Exit_State,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_State =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_Exit_State,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Exit;

   -----------------------
   -- Internal_Set_Expr --
   -----------------------

   procedure Internal_Set_Expr
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Duration =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Duration_Expr_Duration,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Time_Expression_Expr_Time_Expression,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Expr;

   --------------------------------
   -- Internal_Set_Extended_Case --
   --------------------------------

   procedure Internal_Set_Extended_Case
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Extend =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Extend_Extended_Case_Extend,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Extended_Case;

   ----------------------------------
   -- Internal_Set_Extended_Region --
   ----------------------------------

   procedure Internal_Set_Extended_Region
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Region =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Region_Extended_Region_Region,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Extended_Region;

   ----------------------------
   -- Internal_Set_Extension --
   ----------------------------

   procedure Internal_Set_Extension
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Extend =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Use_Case_Extend_Extension,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Extension;

   ----------------------------
   -- Internal_Set_File_Name --
   ----------------------------

   procedure Internal_Set_File_Name
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).String_Value;

      UML_Element_Table.Table (Self).Member (10).String_Value := To;

      if UML_Element_Table.Table (Self).Member (10).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (10).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Artifact_File_Name, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_File_Name;

   -------------------------
   -- Internal_Set_Finish --
   -------------------------

   procedure Internal_Set_Finish
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Action_Execution_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Execution_Specification_Finish_Execution_Specification,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Behavior_Execution_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Execution_Specification_Finish_Execution_Specification,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Finish;

   ------------------------
   -- Internal_Set_First --
   ------------------------

   procedure Internal_Set_First
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Test_Identity_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Test_Identity_Action_First_Test_Identity_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_First;

   ------------------------------
   -- Internal_Set_First_Event --
   ------------------------------

   procedure Internal_Set_First_Event
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Boolean)
   is
      Old : AMF.Optional_Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Holder;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Holder := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Time_Constraint_First_Event, Old, To);
   end Internal_Set_First_Event;

   ------------------------------
   -- Internal_Set_First_Event --
   ------------------------------

   procedure Internal_Set_First_Event
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Time_Observation_First_Event, Old, To);
   end Internal_Set_First_Event;

   -------------------------
   -- Internal_Set_Formal --
   -------------------------

   procedure Internal_Set_Formal
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Template_Parameter_Substitution =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Substitution_Formal_Template_Parameter_Substitution,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Formal;

   -------------------------
   -- Internal_Set_Format --
   -------------------------

   procedure Internal_Set_Format
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).String_Value;

      UML_Element_Table.Table (Self).Member (3).String_Value := To;

      if UML_Element_Table.Table (Self).Member (3).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (3).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Image_Format, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Format;

   ------------------------------
   -- Internal_Set_From_Action --
   ------------------------------

   procedure Internal_Set_From_Action
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Action_Input_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Action_Input_Pin_From_Action_Action_Input_Pin,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_From_Action;

   --------------------------
   -- Internal_Set_General --
   --------------------------

   procedure Internal_Set_General
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Generalization =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Generalization_General_Generalization,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_General;

   ----------------------------------
   -- Internal_Set_General_Machine --
   ----------------------------------

   procedure Internal_Set_General_Machine
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Protocol_Conformance =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Protocol_Conformance_General_Machine_Protocol_Conformance,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_General_Machine;

   ------------------------
   -- Internal_Set_Guard --
   ------------------------

   procedure Internal_Set_Guard
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Control_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Edge_Guard_Activity_Edge,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction_Operand =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Operand_Guard_Interaction_Operand,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Object_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Edge_Guard_Activity_Edge,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Protocol_Transition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Transition_Guard_Transition,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Transition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Transition_Guard_Transition,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Guard;

   -------------------------------
   -- Internal_Set_Handler_Body --
   -------------------------------

   procedure Internal_Set_Handler_Body
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Exception_Handler =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Exception_Handler_Handler_Body_Exception_Handler,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Handler_Body;

   ------------------------------------------
   -- Internal_Set_Implementing_Classifier --
   ------------------------------------------

   procedure Internal_Set_Implementing_Classifier
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Interface_Realization =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behaviored_Classifier_Interface_Realization_Implementing_Classifier,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Implementing_Classifier;

   -----------------------------------
   -- Internal_Set_Imported_Element --
   -----------------------------------

   procedure Internal_Set_Imported_Element
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Element_Import =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Import_Imported_Element_Element_Import,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Imported_Element;

   -----------------------------------
   -- Internal_Set_Imported_Package --
   -----------------------------------

   procedure Internal_Set_Imported_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Package_Import =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Import_Imported_Package_Package_Import,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Imported_Package;

   --------------------------------------
   -- Internal_Set_Importing_Namespace --
   --------------------------------------

   procedure Internal_Set_Importing_Namespace
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Element_Import =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Element_Import_Importing_Namespace,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Package_Import =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Namespace_Package_Import_Importing_Namespace,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Importing_Namespace;

   ------------------------------
   -- Internal_Set_In_Activity --
   ------------------------------

   procedure Internal_Set_In_Activity
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Activity_Partition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Group_In_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Conditional_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Group_In_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Expansion_Region =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Group_In_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interruptible_Activity_Region =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Group_In_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Loop_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Group_In_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Sequence_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Group_In_Activity,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Structured_Activity_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Group_In_Activity,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_In_Activity;

   -------------------------------------
   -- Internal_Set_In_Structured_Node --
   -------------------------------------

   procedure Internal_Set_In_Structured_Node
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Accept_Call_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Accept_Event_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Action_Input_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Activity_Final_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Activity_Parameter_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Add_Structural_Feature_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Add_Variable_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Broadcast_Signal_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Call_Behavior_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Call_Operation_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Central_Buffer_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Clear_Association_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Clear_Structural_Feature_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Clear_Variable_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Conditional_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Control_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Edge_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Create_Link_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Create_Link_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Create_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Data_Store_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Decision_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Destroy_Link_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Destroy_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Expansion_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Expansion_Region =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Flow_Final_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Fork_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Initial_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Input_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Join_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Loop_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Merge_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Object_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Edge_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Output_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Raise_Exception_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Extent_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Is_Classified_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Link_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Link_Object_End_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Link_Object_End_Qualifier_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Self_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Structural_Feature_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Variable_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Reclassify_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Reduce_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Remove_Structural_Feature_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Remove_Variable_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Reply_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Send_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Send_Signal_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Sequence_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Start_Classifier_Behavior_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Start_Object_Behavior_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Structured_Activity_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Test_Identity_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Unmarshall_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Value_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Value_Specification_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Node_In_Structured_Node,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_In_Structured_Node;

   ---------------------------------
   -- Internal_Set_Including_Case --
   ---------------------------------

   procedure Internal_Set_Including_Case
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Include =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Use_Case_Include_Including_Case,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Including_Case;

   ----------------------------
   -- Internal_Set_Insert_At --
   ----------------------------

   procedure Internal_Set_Insert_At
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Add_Structural_Feature_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Add_Structural_Feature_Value_Action_Insert_At_Add_Structural_Feature_Value_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Add_Variable_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Add_Variable_Value_Action_Insert_At_Add_Variable_Value_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Link_End_Creation_Data =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Link_End_Creation_Data_Insert_At_Link_End_Creation_Data,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Insert_At;

   ---------------------------
   -- Internal_Set_Instance --
   ---------------------------

   procedure Internal_Set_Instance
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Instance_Value =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Instance_Value_Instance_Instance_Value,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Instance;

   ------------------------------
   -- Internal_Set_Interaction --
   ------------------------------

   procedure Internal_Set_Interaction
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Lifeline =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Lifeline_Interaction,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Message =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Message_Interaction,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Interaction;

   ---------------------------------------
   -- Internal_Set_Interaction_Operator --
   ---------------------------------------

   procedure Internal_Set_Interaction_Operator
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Interaction_Operator_Kind)
   is
      Old : AMF.UML.UML_Interaction_Operator_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Interaction_Operator_Kind_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Interaction_Operator_Kind_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Combined_Fragment_Interaction_Operator, Old, To);
   end Internal_Set_Interaction_Operator;

   ----------------------------
   -- Internal_Set_Interface --
   ----------------------------

   procedure Internal_Set_Interface
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Extension_End =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interface_Owned_Attribute_Interface,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Operation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interface_Owned_Operation_Interface,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Port =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interface_Owned_Attribute_Interface,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interface_Owned_Attribute_Interface,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Interface;

   -----------------------------
   -- Internal_Set_Interrupts --
   -----------------------------

   procedure Internal_Set_Interrupts
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Control_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interruptible_Activity_Region_Interrupting_Edge_Interrupts,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Object_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interruptible_Activity_Region_Interrupting_Edge_Interrupts,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Interrupts;

   ----------------------------
   -- Internal_Set_Invariant --
   ----------------------------

   procedure Internal_Set_Invariant
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_State_Invariant =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_Invariant_Invariant_State_Invariant,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Invariant;

   ------------------------------
   -- Internal_Set_Is_Abstract --
   ------------------------------

   procedure Internal_Set_Is_Abstract
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Is_Abstract, Old, To);
   end Internal_Set_Is_Abstract;

   ----------------------------
   -- Internal_Set_Is_Active --
   ----------------------------

   procedure Internal_Set_Is_Active
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (19).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (19).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Is_Active, Old, To);
   end Internal_Set_Is_Active;

   -----------------------------
   -- Internal_Set_Is_Assured --
   -----------------------------

   procedure Internal_Set_Is_Assured
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Conditional_Node_Is_Assured, Old, To);
   end Internal_Set_Is_Assured;

   ------------------------------
   -- Internal_Set_Is_Behavior --
   ------------------------------

   procedure Internal_Set_Is_Behavior
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (34).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (34).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Port_Is_Behavior, Old, To);
   end Internal_Set_Is_Behavior;

   ---------------------------------------
   -- Internal_Set_Is_Combine_Duplicate --
   ---------------------------------------

   procedure Internal_Set_Is_Combine_Duplicate
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Join_Node_Is_Combine_Duplicate, Old, To);
   end Internal_Set_Is_Combine_Duplicate;

   -------------------------------
   -- Internal_Set_Is_Composite --
   -------------------------------

   procedure Internal_Set_Is_Composite
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (19).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (19).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Is_Composite, Old, To);
   end Internal_Set_Is_Composite;

   --------------------------------
   -- Internal_Set_Is_Conjugated --
   --------------------------------

   procedure Internal_Set_Is_Conjugated
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (35).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (35).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Port_Is_Conjugated, Old, To);
   end Internal_Set_Is_Conjugated;

   -----------------------------
   -- Internal_Set_Is_Control --
   -----------------------------

   procedure Internal_Set_Is_Control
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (22).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (22).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Pin_Is_Control, Old, To);
   end Internal_Set_Is_Control;

   ----------------------------------
   -- Internal_Set_Is_Control_Type --
   ----------------------------------

   procedure Internal_Set_Is_Control_Type
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (19).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (19).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Object_Node_Is_Control_Type, Old, To);
   end Internal_Set_Is_Control_Type;

   ------------------------------
   -- Internal_Set_Is_Covering --
   ------------------------------

   procedure Internal_Set_Is_Covering
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Generalization_Set_Is_Covering, Old, To);
   end Internal_Set_Is_Covering;

   -----------------------------
   -- Internal_Set_Is_Derived --
   -----------------------------

   procedure Internal_Set_Is_Derived
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Association_Is_Derived, Old, To);
   end Internal_Set_Is_Derived;

   -----------------------------------
   -- Internal_Set_Is_Derived_Union --
   -----------------------------------

   procedure Internal_Set_Is_Derived_Union
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (29).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (29).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Is_Derived_Union, Old, To);
   end Internal_Set_Is_Derived_Union;

   ----------------------------------------
   -- Internal_Set_Is_Destroy_Duplicates --
   ----------------------------------------

   procedure Internal_Set_Is_Destroy_Duplicates
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Link_End_Destruction_Data_Is_Destroy_Duplicates, Old, To);
   end Internal_Set_Is_Destroy_Duplicates;

   -----------------------------------
   -- Internal_Set_Is_Destroy_Links --
   -----------------------------------

   procedure Internal_Set_Is_Destroy_Links
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Destroy_Object_Action_Is_Destroy_Links, Old, To);
   end Internal_Set_Is_Destroy_Links;

   -------------------------------------------
   -- Internal_Set_Is_Destroy_Owned_Objects --
   -------------------------------------------

   procedure Internal_Set_Is_Destroy_Owned_Objects
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Destroy_Object_Action_Is_Destroy_Owned_Objects, Old, To);
   end Internal_Set_Is_Destroy_Owned_Objects;

   ---------------------------------
   -- Internal_Set_Is_Determinate --
   ---------------------------------

   procedure Internal_Set_Is_Determinate
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Conditional_Node_Is_Determinate, Old, To);
   end Internal_Set_Is_Determinate;

   -------------------------------
   -- Internal_Set_Is_Dimension --
   -------------------------------

   procedure Internal_Set_Is_Dimension
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (8).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (8).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Partition_Is_Dimension, Old, To);
   end Internal_Set_Is_Dimension;

   ----------------------------
   -- Internal_Set_Is_Direct --
   ----------------------------

   procedure Internal_Set_Is_Direct
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Read_Is_Classified_Object_Action_Is_Direct, Old, To);
   end Internal_Set_Is_Direct;

   ------------------------------
   -- Internal_Set_Is_Disjoint --
   ------------------------------

   procedure Internal_Set_Is_Disjoint
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Generalization_Set_Is_Disjoint, Old, To);
   end Internal_Set_Is_Disjoint;

   -------------------------------
   -- Internal_Set_Is_Exception --
   -------------------------------

   procedure Internal_Set_Is_Exception
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (19).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (19).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameter_Is_Exception, Old, To);
   end Internal_Set_Is_Exception;

   ------------------------------
   -- Internal_Set_Is_External --
   ------------------------------

   procedure Internal_Set_Is_External
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (9).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (9).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Partition_Is_External, Old, To);
   end Internal_Set_Is_External;

   ------------------------------------------
   -- Internal_Set_Is_Final_Specialization --
   ------------------------------------------

   procedure Internal_Set_Is_Final_Specialization
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization, Old, To);
   end Internal_Set_Is_Final_Specialization;

   ------------------------
   -- Internal_Set_Is_ID --
   ------------------------

   procedure Internal_Set_Is_ID
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (30).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (30).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Is_ID, Old, To);
   end Internal_Set_Is_ID;

   ---------------------------------------------
   -- Internal_Set_Is_Indirectly_Instantiated --
   ---------------------------------------------

   procedure Internal_Set_Is_Indirectly_Instantiated
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Component_Is_Indirectly_Instantiated, Old, To);
   end Internal_Set_Is_Indirectly_Instantiated;

   --------------------------
   -- Internal_Set_Is_Leaf --
   --------------------------

   procedure Internal_Set_Is_Leaf
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Redefinable_Element_Is_Leaf, Old, To);
   end Internal_Set_Is_Leaf;

   ---------------------------------------
   -- Internal_Set_Is_Locally_Reentrant --
   ---------------------------------------

   procedure Internal_Set_Is_Locally_Reentrant
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Action_Is_Locally_Reentrant, Old, To);
   end Internal_Set_Is_Locally_Reentrant;

   -------------------------------
   -- Internal_Set_Is_Multicast --
   -------------------------------

   procedure Internal_Set_Is_Multicast
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Object_Flow_Is_Multicast, Old, To);
   end Internal_Set_Is_Multicast;

   ----------------------------------
   -- Internal_Set_Is_Multireceive --
   ----------------------------------

   procedure Internal_Set_Is_Multireceive
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Object_Flow_Is_Multireceive, Old, To);
   end Internal_Set_Is_Multireceive;

   -----------------------------
   -- Internal_Set_Is_Ordered --
   -----------------------------

   procedure Internal_Set_Is_Ordered
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Is_Ordered, Old, To);
   end Internal_Set_Is_Ordered;

   ---------------------------
   -- Internal_Set_Is_Query --
   ---------------------------

   procedure Internal_Set_Is_Query
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (20).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (20).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Operation_Is_Query, Old, To);
   end Internal_Set_Is_Query;

   -------------------------------
   -- Internal_Set_Is_Read_Only --
   -------------------------------

   procedure Internal_Set_Is_Read_Only
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (22).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (22).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Is_Read_Only, Old, To);
   end Internal_Set_Is_Read_Only;

   -------------------------------
   -- Internal_Set_Is_Reentrant --
   -------------------------------

   procedure Internal_Set_Is_Reentrant
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (21).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (21).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Is_Reentrant, Old, To);
   end Internal_Set_Is_Reentrant;

   ------------------------------
   -- Internal_Set_Is_Relative --
   ------------------------------

   procedure Internal_Set_Is_Relative
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Time_Event_Is_Relative, Old, To);
   end Internal_Set_Is_Relative;

   ---------------------------------------
   -- Internal_Set_Is_Remove_Duplicates --
   ---------------------------------------

   procedure Internal_Set_Is_Remove_Duplicates
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Remove_Structural_Feature_Value_Action_Is_Remove_Duplicates, Old, To);
   end Internal_Set_Is_Remove_Duplicates;

   ---------------------------------
   -- Internal_Set_Is_Replace_All --
   ---------------------------------

   procedure Internal_Set_Is_Replace_All
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Add_Structural_Feature_Value_Action_Is_Replace_All, Old, To);
   end Internal_Set_Is_Replace_All;

   -----------------------------
   -- Internal_Set_Is_Service --
   -----------------------------

   procedure Internal_Set_Is_Service
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (36).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (36).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Port_Is_Service, Old, To);
   end Internal_Set_Is_Service;

   --------------------------------------
   -- Internal_Set_Is_Single_Execution --
   --------------------------------------

   procedure Internal_Set_Is_Single_Execution
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Is_Single_Execution, Old, To);
   end Internal_Set_Is_Single_Execution;

   ----------------------------
   -- Internal_Set_Is_Static --
   ----------------------------

   procedure Internal_Set_Is_Static
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (18).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (18).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Feature_Is_Static, Old, To);
   end Internal_Set_Is_Static;

   ----------------------------
   -- Internal_Set_Is_Stream --
   ----------------------------

   procedure Internal_Set_Is_Stream
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (22).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (22).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameter_Is_Stream, Old, To);
   end Internal_Set_Is_Stream;

   ----------------------------
   -- Internal_Set_Is_Strict --
   ----------------------------

   procedure Internal_Set_Is_Strict
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (4).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (4).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Profile_Application_Is_Strict, Old, To);
   end Internal_Set_Is_Strict;

   -----------------------------------
   -- Internal_Set_Is_Substitutable --
   -----------------------------------

   procedure Internal_Set_Is_Substitutable
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Boolean)
   is
      Old : AMF.Optional_Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).Boolean_Holder;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).Boolean_Holder := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Generalization_Is_Substitutable, Old, To);
   end Internal_Set_Is_Substitutable;

   ---------------------------------
   -- Internal_Set_Is_Synchronous --
   ---------------------------------

   procedure Internal_Set_Is_Synchronous
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Call_Action_Is_Synchronous, Old, To);
   end Internal_Set_Is_Synchronous;

   ----------------------------------
   -- Internal_Set_Is_Tested_First --
   ----------------------------------

   procedure Internal_Set_Is_Tested_First
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Loop_Node_Is_Tested_First, Old, To);
   end Internal_Set_Is_Tested_First;

   ----------------------------
   -- Internal_Set_Is_Unique --
   ----------------------------

   procedure Internal_Set_Is_Unique
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Is_Unique, Old, To);
   end Internal_Set_Is_Unique;

   --------------------------------
   -- Internal_Set_Is_Unmarshall --
   --------------------------------

   procedure Internal_Set_Is_Unmarshall
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Accept_Event_Action_Is_Unmarshall, Old, To);
   end Internal_Set_Is_Unmarshall;

   ----------------------------
   -- Internal_Set_Join_Spec --
   ----------------------------

   procedure Internal_Set_Join_Spec
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Join_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Join_Node_Join_Spec_Join_Node,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Join_Spec;

   -----------------------
   -- Internal_Set_Kind --
   -----------------------

   procedure Internal_Set_Kind
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Pseudostate_Kind)
   is
      Old : AMF.UML.UML_Pseudostate_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Pseudostate_Kind_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Pseudostate_Kind_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Pseudostate_Kind, Old, To);
   end Internal_Set_Kind;

   -----------------------
   -- Internal_Set_Kind --
   -----------------------

   procedure Internal_Set_Kind
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Transition_Kind)
   is
      Old : AMF.UML.UML_Transition_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Transition_Kind_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Transition_Kind_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Transition_Kind, Old, To);
   end Internal_Set_Kind;

   ---------------------------
   -- Internal_Set_Location --
   ---------------------------

   procedure Internal_Set_Location
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Deployment =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Deployment_Target_Deployment_Location,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Location;

   ---------------------------
   -- Internal_Set_Location --
   ---------------------------

   procedure Internal_Set_Location
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (4).String_Value;

      UML_Element_Table.Table (Self).Member (4).String_Value := To;

      if UML_Element_Table.Table (Self).Member (4).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (4).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Image_Location, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Location;

   ------------------------
   -- Internal_Set_Lower --
   ------------------------

   procedure Internal_Set_Lower
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Integer)
   is
      Old : AMF.Optional_Integer;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Integer_Holder;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Integer_Holder := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Lower, Old, To);
   end Internal_Set_Lower;

   ------------------------------
   -- Internal_Set_Lower_Value --
   ------------------------------

   procedure Internal_Set_Lower_Value
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Action_Input_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Lower_Value_Owning_Lower,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Connector_End =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Lower_Value_Owning_Lower,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Extension_End =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Lower_Value_Owning_Lower,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Input_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Lower_Value_Owning_Lower,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Output_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Lower_Value_Owning_Lower,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Lower_Value_Owning_Lower,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Port =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Lower_Value_Owning_Lower,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Lower_Value_Owning_Lower,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Value_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Lower_Value_Owning_Lower,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Variable =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Lower_Value_Owning_Lower,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Lower_Value;

   --------------------------
   -- Internal_Set_Mapping --
   --------------------------

   procedure Internal_Set_Mapping
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Abstraction =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Abstraction_Mapping_Abstraction,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Component_Realization =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Abstraction_Mapping_Abstraction,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interface_Realization =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Abstraction_Mapping_Abstraction,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Manifestation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Abstraction_Mapping_Abstraction,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Realization =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Abstraction_Mapping_Abstraction,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Substitution =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Abstraction_Mapping_Abstraction,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Mapping;

   ----------------------
   -- Internal_Set_Max --
   ----------------------

   procedure Internal_Set_Max
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Duration_Interval =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Duration_Interval_Max_Duration_Interval,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interval =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interval_Max_Interval,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Interval =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interval_Max_Interval,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Max;

   -------------------------
   -- Internal_Set_Maxint --
   -------------------------

   procedure Internal_Set_Maxint
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Interaction_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Constraint_Maxint_Interaction_Constraint,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Maxint;

   ---------------------------------
   -- Internal_Set_Merged_Package --
   ---------------------------------

   procedure Internal_Set_Merged_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Package_Merge =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Merge_Merged_Package_Package_Merge,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Merged_Package;

   --------------------------
   -- Internal_Set_Message --
   --------------------------

   procedure Internal_Set_Message
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Destruction_Occurrence_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Message_End_Message_Message_End,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Gate =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Message_End_Message_Message_End,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Message_Occurrence_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Message_End_Message_Message_End,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Message;

   -------------------------------
   -- Internal_Set_Message_Sort --
   -------------------------------

   procedure Internal_Set_Message_Sort
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Message_Sort)
   is
      Old : AMF.UML.UML_Message_Sort;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Message_Sort_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Message_Sort_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Message_Message_Sort, Old, To);
   end Internal_Set_Message_Sort;

   ----------------------
   -- Internal_Set_Min --
   ----------------------

   procedure Internal_Set_Min
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Duration_Interval =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Duration_Interval_Min_Duration_Interval,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interval =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interval_Min_Interval,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Interval =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interval_Min_Interval,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Min;

   -------------------------
   -- Internal_Set_Minint --
   -------------------------

   procedure Internal_Set_Minint
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Interaction_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Constraint_Minint_Interaction_Constraint,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Minint;

   -----------------------
   -- Internal_Set_Mode --
   -----------------------

   procedure Internal_Set_Mode
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Expansion_Kind)
   is
      Old : AMF.UML.UML_Expansion_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Expansion_Kind_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).Expansion_Kind_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Expansion_Region_Mode, Old, To);
   end Internal_Set_Mode;

   -------------------------------
   -- Internal_Set_Must_Isolate --
   -------------------------------

   procedure Internal_Set_Must_Isolate
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Must_Isolate, Old, To);
   end Internal_Set_Must_Isolate;

   -----------------------
   -- Internal_Set_Name --
   -----------------------

   procedure Internal_Set_Name
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).String_Value;

      UML_Element_Table.Table (Self).Member (2).String_Value := To;

      if UML_Element_Table.Table (Self).Member (2).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (2).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Name, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Name;

   ----------------------------------
   -- Internal_Set_Name_Expression --
   ----------------------------------

   procedure Internal_Set_Name_Expression
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Abstraction =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Accept_Call_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Accept_Event_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Action_Execution_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Action_Input_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Activity =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Activity_Final_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Activity_Parameter_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Activity_Partition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Actor =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Add_Structural_Feature_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Add_Variable_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Any_Receive_Event =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Artifact =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Association =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Association_Class =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Behavior_Execution_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Broadcast_Signal_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Call_Behavior_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Call_Event =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Call_Operation_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Central_Buffer_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Change_Event =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Class =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Clear_Association_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Clear_Structural_Feature_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Clear_Variable_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Collaboration =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Collaboration_Use =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Combined_Fragment =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Communication_Path =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Component =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Component_Realization =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Conditional_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Connection_Point_Reference =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Connector =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Consider_Ignore_Fragment =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Continuation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Control_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Create_Link_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Create_Link_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Create_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Data_Store_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Data_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Decision_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Dependency =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Deployment =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Deployment_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Destroy_Link_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Destroy_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Destruction_Occurrence_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Device =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Duration =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Duration_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Duration_Interval =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Duration_Observation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Enumeration =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Enumeration_Literal =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Execution_Environment =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Execution_Occurrence_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Expansion_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Expansion_Region =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Extend =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Extension =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Extension_End =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Extension_Point =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Final_State =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Flow_Final_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Fork_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Function_Behavior =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Gate =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_General_Ordering =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Generalization_Set =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Include =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Information_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Information_Item =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Initial_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Input_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Instance_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Instance_Value =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction_Operand =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction_Use =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interface =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interface_Realization =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interruptible_Activity_Region =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interval =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interval_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Join_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Lifeline =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Boolean =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Integer =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Null =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Real =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_String =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Unlimited_Natural =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Loop_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Manifestation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Merge_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Message =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Message_Occurrence_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Model =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Object_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Occurrence_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Behavior =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Operation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Output_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Package =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Parameter_Set =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Part_Decomposition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Port =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Primitive_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Profile =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Protocol_State_Machine =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Protocol_Transition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Pseudostate =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Raise_Exception_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Extent_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Is_Classified_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Link_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Link_Object_End_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Link_Object_End_Qualifier_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Self_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Structural_Feature_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Variable_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Realization =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Reception =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Reclassify_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Redefinable_Template_Signature =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Reduce_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Region =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Remove_Structural_Feature_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Remove_Variable_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Reply_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Send_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Send_Signal_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Sequence_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Signal =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Signal_Event =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Start_Classifier_Behavior_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Start_Object_Behavior_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_State =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_State_Invariant =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_State_Machine =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Stereotype =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_String_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Structured_Activity_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Substitution =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Test_Identity_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Event =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Interval =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Observation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Transition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Trigger =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Unmarshall_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Usage =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Use_Case =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Value_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Value_Specification_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Variable =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Name_Expression_Named_Element,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Name_Expression;

   ----------------------------------
   -- Internal_Set_Nesting_Package --
   ----------------------------------

   procedure Internal_Set_Nesting_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Model =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Nested_Package_Nesting_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Package =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Nested_Package_Nesting_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Profile =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Nested_Package_Nesting_Package,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Nesting_Package;

   -------------------------
   -- Internal_Set_Object --
   -------------------------

   procedure Internal_Set_Object
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Add_Structural_Feature_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structural_Feature_Action_Object_Structural_Feature_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Clear_Association_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Clear_Association_Action_Object_Clear_Association_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Clear_Structural_Feature_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structural_Feature_Action_Object_Structural_Feature_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Is_Classified_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Read_Is_Classified_Object_Action_Object_Read_Is_Classified_Object_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Link_Object_End_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Read_Link_Object_End_Action_Object_Read_Link_Object_End_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Link_Object_End_Qualifier_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Read_Link_Object_End_Qualifier_Action_Object_Read_Link_Object_End_Qualifier_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Structural_Feature_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structural_Feature_Action_Object_Structural_Feature_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Reclassify_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Reclassify_Object_Action_Object_Reclassify_Object_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Remove_Structural_Feature_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structural_Feature_Action_Object_Structural_Feature_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Start_Classifier_Behavior_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Start_Classifier_Behavior_Action_Object_Start_Classifier_Behavior_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Start_Object_Behavior_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Start_Object_Behavior_Action_Object_Start_Object_Behavior_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Unmarshall_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Unmarshall_Action_Object_Unmarshall_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Object;

   --------------------------
   -- Internal_Set_On_Port --
   --------------------------

   procedure Internal_Set_On_Port
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Broadcast_Signal_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Invocation_Action_On_Port_Invocation_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Call_Behavior_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Invocation_Action_On_Port_Invocation_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Call_Operation_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Invocation_Action_On_Port_Invocation_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Send_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Invocation_Action_On_Port_Invocation_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Send_Signal_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Invocation_Action_On_Port_Invocation_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Start_Object_Behavior_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Invocation_Action_On_Port_Invocation_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_On_Port;

   ----------------------------
   -- Internal_Set_Operation --
   ----------------------------

   procedure Internal_Set_Operation
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Call_Event =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Call_Event_Operation_Call_Event,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Call_Operation_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Call_Operation_Action_Operation_Call_Operation_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Operation_Owned_Parameter_Operation,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Operation;

   ---------------------------
   -- Internal_Set_Opposite --
   ---------------------------

   procedure Internal_Set_Opposite
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Extension_End =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Opposite_Property,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Port =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Opposite_Property,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Opposite_Property,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Opposite;

   ---------------------------
   -- Internal_Set_Ordering --
   ---------------------------

   procedure Internal_Set_Ordering
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Object_Node_Ordering_Kind)
   is
      Old : AMF.UML.UML_Object_Node_Ordering_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (20).Object_Node_Ordering_Kind_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (20).Object_Node_Ordering_Kind_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Object_Node_Ordering, Old, To);
   end Internal_Set_Ordering;

   -------------------------------
   -- Internal_Set_Owned_Actual --
   -------------------------------

   procedure Internal_Set_Owned_Actual
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Template_Parameter_Substitution =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Substitution_Owned_Actual_Template_Parameter_Substitution,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Owned_Actual;

   --------------------------------
   -- Internal_Set_Owned_Default --
   --------------------------------

   procedure Internal_Set_Owned_Default
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Classifier_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Default_Template_Parameter,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Connectable_Element_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Default_Template_Parameter,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Operation_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Default_Template_Parameter,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Default_Template_Parameter,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Owned_Default;

   --------------------------------------------
   -- Internal_Set_Owned_Parametered_Element --
   --------------------------------------------

   procedure Internal_Set_Owned_Parametered_Element
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Classifier_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Connectable_Element_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Operation_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Owned_Parametered_Element;

   -------------------------------------------
   -- Internal_Set_Owned_Template_Signature --
   -------------------------------------------

   procedure Internal_Set_Owned_Template_Signature
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Activity =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Actor =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Artifact =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Association =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Association_Class =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Class =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Collaboration =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Communication_Path =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Component =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Data_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Deployment_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Device =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Enumeration =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Execution_Environment =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Extension =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Function_Behavior =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Information_Item =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interface =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Model =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Templateable_Element_Owned_Template_Signature_Template,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Behavior =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Operation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Templateable_Element_Owned_Template_Signature_Template,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Package =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Templateable_Element_Owned_Template_Signature_Template,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Primitive_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Profile =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Templateable_Element_Owned_Template_Signature_Template,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Protocol_State_Machine =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Signal =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_State_Machine =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Stereotype =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_String_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Templateable_Element_Owned_Template_Signature_Template,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Use_Case =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Owned_Template_Signature_Classifier,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Owned_Template_Signature;

   -------------------------------------
   -- Internal_Set_Owning_Association --
   -------------------------------------

   procedure Internal_Set_Owning_Association
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Extension_End =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Association_Owned_End_Owning_Association,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Port =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Association_Owned_End_Owning_Association,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Association_Owned_End_Owning_Association,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Owning_Association;

   ------------------------------------
   -- Internal_Set_Owning_Expression --
   ------------------------------------

   procedure Internal_Set_Owning_Expression
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_String_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Sub_Expression_Owning_Expression,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Owning_Expression;

   ----------------------------------
   -- Internal_Set_Owning_Instance --
   ----------------------------------

   procedure Internal_Set_Owning_Instance
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Slot =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Instance_Specification_Slot_Owning_Instance,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Owning_Instance;

   --------------------------------------------
   -- Internal_Set_Owning_Template_Parameter --
   --------------------------------------------

   procedure Internal_Set_Owning_Template_Parameter
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Abstraction =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Activity =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Actor =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Any_Receive_Event =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Artifact =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Association =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Association_Class =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Call_Event =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Change_Event =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Class =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Collaboration =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Communication_Path =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Component =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Component_Realization =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Data_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Dependency =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Deployment =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Deployment_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Device =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Duration =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Duration_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Duration_Interval =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Duration_Observation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Enumeration =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Enumeration_Literal =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Execution_Environment =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Extension =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Extension_End =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Function_Behavior =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Generalization_Set =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Information_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Information_Item =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Instance_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Instance_Value =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interface =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interface_Realization =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interval =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interval_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Boolean =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Integer =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Null =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Real =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_String =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Unlimited_Natural =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Manifestation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Model =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Behavior =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Operation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Package =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Port =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Primitive_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Profile =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Protocol_State_Machine =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Realization =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Signal =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Signal_Event =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_State_Machine =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Stereotype =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_String_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Substitution =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Event =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Interval =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Observation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Usage =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Use_Case =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Variable =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parametered_Element_Owning_Template_Parameter,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Owning_Template_Parameter;

   --------------------------
   -- Internal_Set_Package --
   --------------------------

   procedure Internal_Set_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Activity =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Actor =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Artifact =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Association =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Association_Class =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Class =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Collaboration =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Communication_Path =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Component =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Data_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Deployment_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Device =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Enumeration =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Execution_Environment =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Extension =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Function_Behavior =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Information_Item =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interface =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Behavior =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Primitive_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Protocol_State_Machine =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Signal =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_State_Machine =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Stereotype =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Use_Case =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Owned_Type_Package,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Package;

   ----------------------------
   -- Internal_Set_Parameter --
   ----------------------------

   procedure Internal_Set_Parameter
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Activity_Parameter_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Parameter_Node_Parameter_Activity_Parameter_Node,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Parameter;

   --------------------------------------
   -- Internal_Set_Parametered_Element --
   --------------------------------------

   procedure Internal_Set_Parametered_Element
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Classifier_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Connectable_Element_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Template_Parameter_Parametered_Element,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Operation_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Operation_Template_Parameter_Parametered_Element,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Parametered_Element;

   ---------------------------------
   -- Internal_Set_Part_With_Port --
   ---------------------------------

   procedure Internal_Set_Part_With_Port
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Connector_End =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connector_End_Part_With_Port_Connector_End,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Part_With_Port;

   ---------------------------------
   -- Internal_Set_Post_Condition --
   ---------------------------------

   procedure Internal_Set_Post_Condition
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Protocol_Transition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Protocol_Transition_Post_Condition_Owning_Transition,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Post_Condition;

   ----------------------------
   -- Internal_Set_Powertype --
   ----------------------------

   procedure Internal_Set_Powertype
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Generalization_Set =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Powertype_Extent_Powertype,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Powertype;

   --------------------------------
   -- Internal_Set_Pre_Condition --
   --------------------------------

   procedure Internal_Set_Pre_Condition
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Protocol_Transition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Protocol_Transition_Pre_Condition_Protocol_Transition,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Pre_Condition;

   ---------------------------------
   -- Internal_Set_Protected_Node --
   ---------------------------------

   procedure Internal_Set_Protected_Node
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Exception_Handler =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Executable_Node_Handler_Protected_Node,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Protected_Node;

   ---------------------------
   -- Internal_Set_Protocol --
   ---------------------------

   procedure Internal_Set_Protocol
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Interface =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interface_Protocol_Interface,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Port =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Port_Protocol_Port,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Protocol;

   ----------------------------
   -- Internal_Set_Qualifier --
   ----------------------------

   procedure Internal_Set_Qualifier
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Qualifier_Value =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Qualifier_Value_Qualifier_Qualifier_Value,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Link_Object_End_Qualifier_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Read_Link_Object_End_Qualifier_Action_Qualifier_Read_Link_Object_End_Qualifier_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Qualifier;

   --------------------------------
   -- Internal_Set_Receive_Event --
   --------------------------------

   procedure Internal_Set_Receive_Event
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Message =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Message_Receive_Event_End_Message,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Receive_Event;

   ------------------------------------
   -- Internal_Set_Receiving_Package --
   ------------------------------------

   procedure Internal_Set_Receiving_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Package_Merge =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Package_Merge_Receiving_Package,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Receiving_Package;

   ----------------------------------
   -- Internal_Set_Redefined_State --
   ----------------------------------

   procedure Internal_Set_Redefined_State
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Final_State =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_Redefined_State_State,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_State =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_Redefined_State_State,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Redefined_State;

   ---------------------------------------
   -- Internal_Set_Redefined_Transition --
   ---------------------------------------

   procedure Internal_Set_Redefined_Transition
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Protocol_Transition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Transition_Redefined_Transition_Transition,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Transition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Transition_Redefined_Transition_Transition,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Redefined_Transition;

   --------------------------
   -- Internal_Set_Reducer --
   --------------------------

   procedure Internal_Set_Reducer
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Reduce_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Reduce_Action_Reducer_Reduce_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Reducer;

   ----------------------------
   -- Internal_Set_Refers_To --
   ----------------------------

   procedure Internal_Set_Refers_To
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Interaction_Use =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Use_Refers_To_Interaction_Use,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Part_Decomposition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Use_Refers_To_Interaction_Use,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Refers_To;

   ----------------------------------
   -- Internal_Set_Region_As_Input --
   ----------------------------------

   procedure Internal_Set_Region_As_Input
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Expansion_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Expansion_Region_Input_Element_Region_As_Input,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Region_As_Input;

   -----------------------------------
   -- Internal_Set_Region_As_Output --
   -----------------------------------

   procedure Internal_Set_Region_As_Output
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Expansion_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Expansion_Region_Output_Element_Region_As_Output,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Region_As_Output;

   ----------------------------
   -- Internal_Set_Remove_At --
   ----------------------------

   procedure Internal_Set_Remove_At
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Remove_Structural_Feature_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Remove_Structural_Feature_Value_Action_Remove_At_Remove_Structural_Feature_Value_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Remove_Variable_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Remove_Variable_Value_Action_Remove_At_Remove_Variable_Value_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Remove_At;

   --------------------------------
   -- Internal_Set_Reply_To_Call --
   --------------------------------

   procedure Internal_Set_Reply_To_Call
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Reply_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Reply_Action_Reply_To_Call_Reply_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Reply_To_Call;

   ---------------------------------
   -- Internal_Set_Representation --
   ---------------------------------

   procedure Internal_Set_Representation
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Activity =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Actor =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Artifact =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Association =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Association_Class =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Class =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Collaboration =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Communication_Path =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Component =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Data_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Deployment_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Device =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Enumeration =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Execution_Environment =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Extension =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Function_Behavior =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Information_Item =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interface =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Behavior =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Primitive_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Protocol_State_Machine =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Signal =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_State_Machine =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Stereotype =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Use_Case =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Representation_Classifier,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Representation;

   -----------------------------
   -- Internal_Set_Represents --
   -----------------------------

   procedure Internal_Set_Represents
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Activity_Partition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Partition_Represents_Activity_Partition,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Lifeline =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Lifeline_Represents_Lifeline,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Represents;

   -------------------------
   -- Internal_Set_Result --
   -------------------------

   procedure Internal_Set_Result
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Add_Structural_Feature_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Write_Structural_Feature_Action_Result_Write_Structural_Feature_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Clear_Structural_Feature_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Clear_Structural_Feature_Action_Result_Clear_Structural_Feature_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Create_Link_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Create_Link_Object_Action_Result_Create_Link_Object_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Create_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Create_Object_Action_Result_Create_Object_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Opaque_Expression_Result_Opaque_Expression,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Extent_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Read_Extent_Action_Result_Read_Extent_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Is_Classified_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Read_Is_Classified_Object_Action_Result_Read_Is_Classified_Object_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Link_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Read_Link_Action_Result_Read_Link_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Link_Object_End_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Read_Link_Object_End_Action_Result_Read_Link_Object_End_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Link_Object_End_Qualifier_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Read_Link_Object_End_Qualifier_Action_Result_Read_Link_Object_End_Qualifier_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Self_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Read_Self_Action_Result_Read_Self_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Structural_Feature_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Read_Structural_Feature_Action_Result_Read_Structural_Feature_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Variable_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Read_Variable_Action_Result_Read_Variable_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Reduce_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Reduce_Action_Result_Reduce_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Remove_Structural_Feature_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Write_Structural_Feature_Action_Result_Write_Structural_Feature_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Test_Identity_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Test_Identity_Action_Result_Test_Identity_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Value_Specification_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Value_Specification_Action_Result_Value_Specification_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Result;

   -------------------------------------
   -- Internal_Set_Return_Information --
   -------------------------------------

   procedure Internal_Set_Return_Information
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Accept_Call_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Accept_Call_Action_Return_Information_Accept_Call_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Reply_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Reply_Action_Return_Information_Reply_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Return_Information;

   -------------------------------
   -- Internal_Set_Return_Value --
   -------------------------------

   procedure Internal_Set_Return_Value
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Interaction_Use =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Use_Return_Value_Interaction_Use,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Part_Decomposition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Use_Return_Value_Interaction_Use,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Return_Value;

   -----------------------------------------
   -- Internal_Set_Return_Value_Recipient --
   -----------------------------------------

   procedure Internal_Set_Return_Value_Recipient
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Interaction_Use =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Use_Return_Value_Recipient_Interaction_Use,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Part_Decomposition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Use_Return_Value_Recipient_Interaction_Use,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Return_Value_Recipient;

   -----------------------
   -- Internal_Set_Role --
   -----------------------

   procedure Internal_Set_Role
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Connector_End =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_End_Role,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Role;

   ------------------------
   -- Internal_Set_Scope --
   ------------------------

   procedure Internal_Set_Scope
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Variable =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structured_Activity_Node_Variable_Scope,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Scope;

   -------------------------
   -- Internal_Set_Second --
   -------------------------

   procedure Internal_Set_Second
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Test_Identity_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Test_Identity_Action_Second_Test_Identity_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Second;

   ----------------------------
   -- Internal_Set_Selection --
   ----------------------------

   procedure Internal_Set_Selection
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Action_Input_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Node_Selection_Object_Node,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Activity_Parameter_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Node_Selection_Object_Node,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Central_Buffer_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Node_Selection_Object_Node,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Data_Store_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Node_Selection_Object_Node,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Expansion_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Node_Selection_Object_Node,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Input_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Node_Selection_Object_Node,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Object_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Flow_Selection_Object_Flow,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Output_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Node_Selection_Object_Node,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Value_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Node_Selection_Object_Node,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Selection;

   ---------------------------
   -- Internal_Set_Selector --
   ---------------------------

   procedure Internal_Set_Selector
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Lifeline =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Lifeline_Selector_Lifeline,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Selector;

   -----------------------------
   -- Internal_Set_Send_Event --
   -----------------------------

   procedure Internal_Set_Send_Event
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Message =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Message_Send_Event_End_Message,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Send_Event;

   --------------------------
   -- Internal_Set_Setting --
   --------------------------

   procedure Internal_Set_Setting
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Continuation_Setting, Old, To);
   end Internal_Set_Setting;

   -------------------------
   -- Internal_Set_Signal --
   -------------------------

   procedure Internal_Set_Signal
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Broadcast_Signal_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Broadcast_Signal_Action_Signal_Broadcast_Signal_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Reception =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Reception_Signal_Reception,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Send_Signal_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Send_Signal_Action_Signal_Send_Signal_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Signal_Event =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Signal_Event_Signal_Signal_Event,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Signal;

   ----------------------------
   -- Internal_Set_Signature --
   ----------------------------

   procedure Internal_Set_Signature
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Classifier_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Signature_Owned_Parameter_Signature,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Connectable_Element_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Signature_Owned_Parameter_Signature,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Message =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Message_Signature_Message,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Operation_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Signature_Owned_Parameter_Signature,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Template_Binding =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Binding_Signature_Template_Binding,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Template_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Signature_Owned_Parameter_Signature,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Signature;

   -------------------------
   -- Internal_Set_Source --
   -------------------------

   procedure Internal_Set_Source
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Control_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Outgoing_Source,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Object_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Outgoing_Source,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Protocol_Transition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Vertex_Outgoing_Source,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Transition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Vertex_Outgoing_Source,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Source;

   ---------------------------
   -- Internal_Set_Specific --
   ---------------------------

   procedure Internal_Set_Specific
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Generalization =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Generalization_Specific,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Specific;

   -----------------------------------
   -- Internal_Set_Specific_Machine --
   -----------------------------------

   procedure Internal_Set_Specific_Machine
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Protocol_Conformance =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Protocol_State_Machine_Conformance_Specific_Machine,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Specific_Machine;

   --------------------------------
   -- Internal_Set_Specification --
   --------------------------------

   procedure Internal_Set_Specification
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Activity =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behavioral_Feature_Method_Specification,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Constraint_Specification_Owning_Constraint,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Duration_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Constraint_Specification_Owning_Constraint,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Enumeration_Literal =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Instance_Specification_Specification_Owning_Instance_Spec,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Function_Behavior =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behavioral_Feature_Method_Specification,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Instance_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Instance_Specification_Specification_Owning_Instance_Spec,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behavioral_Feature_Method_Specification,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Constraint_Specification_Owning_Constraint,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interval_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Constraint_Specification_Owning_Constraint,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Behavior =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behavioral_Feature_Method_Specification,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Protocol_State_Machine =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behavioral_Feature_Method_Specification,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_State_Machine =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behavioral_Feature_Method_Specification,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Constraint_Specification_Owning_Constraint,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Specification;

   ------------------------
   -- Internal_Set_Start --
   ------------------------

   procedure Internal_Set_Start
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Action_Execution_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Execution_Specification_Start_Execution_Specification,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Behavior_Execution_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Execution_Specification_Start_Execution_Specification,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Start;

   ------------------------
   -- Internal_Set_State --
   ------------------------

   procedure Internal_Set_State
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Connection_Point_Reference =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_Connection_State,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Pseudostate =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_Connection_Point_State,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Region =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_Region_State,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_State;

   ----------------------------------
   -- Internal_Set_State_Invariant --
   ----------------------------------

   procedure Internal_Set_State_Invariant
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Final_State =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_State_Invariant_Owning_State,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_State =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_State_Invariant_Owning_State,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_State_Invariant;

   --------------------------------
   -- Internal_Set_State_Machine --
   --------------------------------

   procedure Internal_Set_State_Machine
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Pseudostate =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_Machine_Connection_Point_State_Machine,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Region =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_Machine_Region_State_Machine,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_State_Machine;

   -------------------------------------
   -- Internal_Set_Structural_Feature --
   -------------------------------------

   procedure Internal_Set_Structural_Feature
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Add_Structural_Feature_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structural_Feature_Action_Structural_Feature_Structural_Feature_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Clear_Structural_Feature_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structural_Feature_Action_Structural_Feature_Structural_Feature_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Structural_Feature_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structural_Feature_Action_Structural_Feature_Structural_Feature_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Remove_Structural_Feature_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structural_Feature_Action_Structural_Feature_Structural_Feature_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Structural_Feature;

   -----------------------------
   -- Internal_Set_Submachine --
   -----------------------------

   procedure Internal_Set_Submachine
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Final_State =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_Machine_Submachine_State_Submachine,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_State =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_Machine_Submachine_State_Submachine,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Submachine;

   ------------------------------------------
   -- Internal_Set_Substituting_Classifier --
   ------------------------------------------

   procedure Internal_Set_Substituting_Classifier
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Substitution =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Substitution_Substituting_Classifier,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Substituting_Classifier;

   ----------------------------------
   -- Internal_Set_Super_Partition --
   ----------------------------------

   procedure Internal_Set_Super_Partition
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Activity_Partition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Partition_Subpartition_Super_Partition,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Super_Partition;

   -------------------------
   -- Internal_Set_Symbol --
   -------------------------

   procedure Internal_Set_Symbol
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).String_Value;

      UML_Element_Table.Table (Self).Member (7).String_Value := To;

      if UML_Element_Table.Table (Self).Member (7).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (7).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Expression_Symbol, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Symbol;

   -------------------------
   -- Internal_Set_Target --
   -------------------------

   procedure Internal_Set_Target
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Call_Operation_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Call_Operation_Action_Target_Call_Operation_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Control_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Incoming_Target,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Destroy_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Destroy_Object_Action_Target_Destroy_Object_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Object_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Incoming_Target,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Protocol_Transition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Vertex_Incoming_Target,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Send_Object_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Send_Object_Action_Target_Send_Object_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Send_Signal_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Send_Signal_Action_Target_Send_Signal_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Transition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Vertex_Incoming_Target,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Target;

   ---------------------------
   -- Internal_Set_Template --
   ---------------------------

   procedure Internal_Set_Template
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Redefinable_Template_Signature =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Templateable_Element_Owned_Template_Signature_Template,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Template_Signature =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Templateable_Element_Owned_Template_Signature_Template,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Template;

   -----------------------------------
   -- Internal_Set_Template_Binding --
   -----------------------------------

   procedure Internal_Set_Template_Binding
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Template_Parameter_Substitution =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Binding_Parameter_Substitution_Template_Binding,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Template_Binding;

   -------------------------------------
   -- Internal_Set_Template_Parameter --
   -------------------------------------

   procedure Internal_Set_Template_Parameter
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Abstraction =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Activity =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Actor =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Any_Receive_Event =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Artifact =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Association =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Association_Class =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Call_Event =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Change_Event =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Class =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Collaboration =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Communication_Path =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Component =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Component_Realization =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Data_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Dependency =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Deployment =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Deployment_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Device =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Duration =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Duration_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Duration_Interval =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Duration_Observation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Enumeration =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Enumeration_Literal =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Execution_Environment =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Extension =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Extension_End =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Function_Behavior =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Generalization_Set =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Information_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Information_Item =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Instance_Specification =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Instance_Value =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interaction_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interface =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interface_Realization =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interval =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Interval_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Boolean =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Integer =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Null =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Real =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_String =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Unlimited_Natural =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Manifestation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Model =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Behavior =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Operation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Operation_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Package =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Port =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Primitive_Type =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Profile =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Protocol_State_Machine =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Realization =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Signal =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Signal_Event =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_State_Machine =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Stereotype =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_String_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Substitution =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Constraint =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Event =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Interval =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Observation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Usage =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Parametered_Element_Template_Parameter,
              To,
              Self);

         when AMF.Internals.Tables.UML_Types.E_UML_Use_Case =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Parametered_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Variable =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connectable_Element_Template_Parameter_Parametered_Element,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Template_Parameter;

   ---------------------------------
   -- Internal_Set_Transformation --
   ---------------------------------

   procedure Internal_Set_Transformation
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Object_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Flow_Transformation_Object_Flow,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Transformation;

   -----------------------
   -- Internal_Set_Type --
   -----------------------

   procedure Internal_Set_Type
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Action_Input_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Activity_Parameter_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Central_Buffer_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Collaboration_Use =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Collaboration_Use_Type_Collaboration_Use,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Connector =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connector_Type_Connector,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Data_Store_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Duration =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Duration_Interval =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Expansion_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Extension_End =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Extension_End_Type_Extension_End,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Input_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Instance_Value =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Interval =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Boolean =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Integer =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Null =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Real =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_String =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Literal_Unlimited_Natural =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Opaque_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Operation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Operation_Type_Operation,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Output_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Port =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_String_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Expression =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Time_Interval =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Value_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Variable =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Typed_Element_Type_Typed_Element,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Type;

   ----------------------------------
   -- Internal_Set_Unmarshall_Type --
   ----------------------------------

   procedure Internal_Set_Unmarshall_Type
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Unmarshall_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Unmarshall_Action_Unmarshall_Type_Unmarshall_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Unmarshall_Type;

   ------------------------
   -- Internal_Set_Upper --
   ------------------------

   procedure Internal_Set_Upper
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Unlimited_Natural)
   is
      Old : AMF.Optional_Unlimited_Natural;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Unlimited_Natural_Holder;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Unlimited_Natural_Holder := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Upper, Old, To);
   end Internal_Set_Upper;

   ------------------------------
   -- Internal_Set_Upper_Bound --
   ------------------------------

   procedure Internal_Set_Upper_Bound
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Action_Input_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Node_Upper_Bound_Object_Node,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Activity_Parameter_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Node_Upper_Bound_Object_Node,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Central_Buffer_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Node_Upper_Bound_Object_Node,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Data_Store_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Node_Upper_Bound_Object_Node,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Expansion_Node =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Node_Upper_Bound_Object_Node,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Input_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Node_Upper_Bound_Object_Node,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Output_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Node_Upper_Bound_Object_Node,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Value_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Node_Upper_Bound_Object_Node,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Upper_Bound;

   ------------------------------
   -- Internal_Set_Upper_Value --
   ------------------------------

   procedure Internal_Set_Upper_Value
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Action_Input_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Upper_Value_Owning_Upper,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Connector_End =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Upper_Value_Owning_Upper,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Extension_End =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Upper_Value_Owning_Upper,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Input_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Upper_Value_Owning_Upper,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Output_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Upper_Value_Owning_Upper,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Parameter =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Upper_Value_Owning_Upper,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Port =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Upper_Value_Owning_Upper,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Property =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Upper_Value_Owning_Upper,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Value_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Upper_Value_Owning_Upper,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Variable =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Multiplicity_Element_Upper_Value_Owning_Upper,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Upper_Value;

   ---------------------------
   -- Internal_Set_Use_Case --
   ---------------------------

   procedure Internal_Set_Use_Case
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Extension_Point =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Use_Case_Extension_Point_Use_Case,
              To,
              Self);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Use_Case;

   -----------------------------------
   -- Internal_Set_Utilized_Element --
   -----------------------------------

   procedure Internal_Set_Utilized_Element
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Manifestation =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Manifestation_Utilized_Element_Manifestation,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Utilized_Element;

   ------------------------
   -- Internal_Set_Value --
   ------------------------

   procedure Internal_Set_Value
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Literal_Boolean_Value, Old, To);
   end Internal_Set_Value;

   ------------------------
   -- Internal_Set_Value --
   ------------------------

   procedure Internal_Set_Value
    (Self : AMF.Internals.AMF_Element;
     To   : Integer)
   is
      Old : Integer;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Integer_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Integer_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Literal_Integer_Value, Old, To);
   end Internal_Set_Value;

   ------------------------
   -- Internal_Set_Value --
   ------------------------

   procedure Internal_Set_Value
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real)
   is
      Old : AMF.Real;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Real_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Real_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Literal_Real_Value, Old, To);
   end Internal_Set_Value;

   ------------------------
   -- Internal_Set_Value --
   ------------------------

   procedure Internal_Set_Value
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).String_Value;

      UML_Element_Table.Table (Self).Member (7).String_Value := To;

      if UML_Element_Table.Table (Self).Member (7).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (7).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Literal_String_Value, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Value;

   ------------------------
   -- Internal_Set_Value --
   ------------------------

   procedure Internal_Set_Value
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Unlimited_Natural)
   is
      Old : AMF.Unlimited_Natural;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Unlimited_Natural_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Unlimited_Natural_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Literal_Unlimited_Natural_Value, Old, To);
   end Internal_Set_Value;

   ------------------------
   -- Internal_Set_Value --
   ------------------------

   procedure Internal_Set_Value
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Add_Structural_Feature_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Write_Structural_Feature_Action_Value_Write_Structural_Feature_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Add_Variable_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Write_Variable_Action_Value_Write_Variable_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Link_End_Creation_Data =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Link_End_Data_Value_Link_End_Data,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Link_End_Data =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Link_End_Data_Value_Link_End_Data,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Link_End_Destruction_Data =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Link_End_Data_Value_Link_End_Data,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Qualifier_Value =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Qualifier_Value_Value_Qualifier_Value,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Remove_Structural_Feature_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Write_Structural_Feature_Action_Value_Write_Structural_Feature_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Remove_Variable_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Write_Variable_Action_Value_Write_Variable_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Value_Pin =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Value_Pin_Value_Value_Pin,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Value_Specification_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Value_Specification_Action_Value_Value_Specification_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Value;

   ---------------------------
   -- Internal_Set_Variable --
   ---------------------------

   procedure Internal_Set_Variable
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Add_Variable_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Variable_Action_Variable_Variable_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Clear_Variable_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Variable_Action_Variable_Variable_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Read_Variable_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Variable_Action_Variable_Variable_Action,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Remove_Variable_Value_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Variable_Action_Variable_Variable_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Variable;

   ----------------------------
   -- Internal_Set_Viewpoint --
   ----------------------------

   procedure Internal_Set_Viewpoint
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).String_Value;

      UML_Element_Table.Table (Self).Member (12).String_Value := To;

      if UML_Element_Table.Table (Self).Member (12).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (12).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Model_Viewpoint, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Viewpoint;

   -----------------------------
   -- Internal_Set_Visibility --
   -----------------------------

   procedure Internal_Set_Visibility
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Visibility_Kind)
   is
      Old : AMF.UML.UML_Visibility_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).Visibility_Kind_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).Visibility_Kind_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Import_Visibility, Old, To);
   end Internal_Set_Visibility;

   -----------------------------
   -- Internal_Set_Visibility --
   -----------------------------

   procedure Internal_Set_Visibility
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.Optional_UML_Visibility_Kind)
   is
      Old : AMF.UML.Optional_UML_Visibility_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (6).Visibility_Kind_Holder;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (6).Visibility_Kind_Holder := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Named_Element_Visibility, Old, To);
   end Internal_Set_Visibility;

   -------------------------
   -- Internal_Set_Weight --
   -------------------------

   procedure Internal_Set_Weight
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Control_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Edge_Weight_Activity_Edge,
              Self,
              To);

         when AMF.Internals.Tables.UML_Types.E_UML_Object_Flow =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Edge_Weight_Activity_Edge,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Weight;

   -----------------------
   -- Internal_Set_When --
   -----------------------

   procedure Internal_Set_When
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UML_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UML_Types.E_UML_Time_Event =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.UML_Metamodel.MA_UML_Time_Event_When_Time_Event,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_When;

end AMF.Internals.Tables.UML_Attributes;
