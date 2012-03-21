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
with AMF.Internals.Tables.UML_Element_Table;
with AMF.Internals.Tables.UML_Metamodel;
with AMF.Internals.Tables.UML_Notification;

package body AMF.Internals.Tables.UML_Attributes is

   use type Matreshka.Internals.Strings.Shared_String_Access;

   --  Abstraction
   --
   --     102  Abstraction::mapping
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     102  Dependency::client
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     57  Relationship::relatedElement
   --     58  DirectedRelationship::source
   --     103  Dependency::supplier
   --     59  DirectedRelationship::target

   --  AcceptCallAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     30  AcceptEventAction::isUnmarshall
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     31  AcceptCallAction::returnInformation
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     51  AcceptEventAction::result
   --     56  AcceptEventAction::trigger

   --  AcceptEventAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     30  AcceptEventAction::isUnmarshall
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     51  AcceptEventAction::result
   --     56  AcceptEventAction::trigger

   --  ActionExecutionSpecification
   --
   --     95  ActionExecutionSpecification::action
   --     28  InteractionFragment::enclosingInteraction
   --     29  InteractionFragment::enclosingOperand
   --     93  ExecutionSpecification::finish
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     94  ExecutionSpecification::start
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     54  InteractionFragment::covered
   --     55  InteractionFragment::generalOrdering
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  ActionInputPin
   --
   --     8  ActivityNode::activity
   --     99  ActionInputPin::fromAction
   --     9  ActivityNode::inStructuredNode
   --     84  Pin::isControl
   --     80  ObjectNode::isControlType
   --     7  RedefinableElement::isLeaf
   --     34  MultiplicityElement::isOrdered
   --     35  MultiplicityElement::isUnique
   --     36  MultiplicityElement::lower
   --     37  MultiplicityElement::lowerValue
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     81  ObjectNode::ordering
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     82  ObjectNode::selection
   --     62  TypedElement::type
   --     38  MultiplicityElement::upper
   --     83  ObjectNode::upperBound
   --     39  MultiplicityElement::upperValue
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     90  ObjectNode::inState
   --     9  ActivityNode::incoming
   --     10  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  Activity
   --
   --     22  BehavioredClassifier::classifierBehavior
   --     10  Behavior::context
   --     19  Class::isAbstract
   --     19  Classifier::isAbstract
   --     49  Class::isActive
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     108  Activity::isReadOnly
   --     50  Behavior::isReentrant
   --     109  Activity::isSingleExecution
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     51  Behavior::specification
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     48  Activity::edge
   --     19  Namespace::elementImport
   --     70  Class::extension
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     104  Activity::group
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     43  BehavioredClassifier::interfaceRealization
   --     21  Namespace::member
   --     71  Class::nestedClassifier
   --     49  Activity::node
   --     61  Class::ownedAttribute
   --     61  StructuredClassifier::ownedAttribute
   --     44  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     62  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     68  Class::ownedOperation
   --     73  Behavior::ownedParameter
   --     74  Behavior::ownedParameterSet
   --     65  EncapsulatedClassifier::ownedPort
   --     72  Class::ownedReception
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     63  StructuredClassifier::part
   --     105  Activity::partition
   --     75  Behavior::postcondition
   --     39  Classifier::powertypeExtent
   --     76  Behavior::precondition
   --     77  Behavior::redefinedBehavior
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     64  StructuredClassifier::role
   --     106  Activity::structuredNode
   --     41  Classifier::substitution
   --     35  Class::superClass
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase
   --     52  Activity::variable

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
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     10  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ActivityParameterNode
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     80  ObjectNode::isControlType
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     81  ObjectNode::ordering
   --     1  Element::owner
   --     180  ActivityParameterNode::parameter
   --     5  NamedElement::qualifiedName
   --     82  ObjectNode::selection
   --     62  TypedElement::type
   --     83  ObjectNode::upperBound
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     90  ObjectNode::inState
   --     9  ActivityNode::incoming
   --     10  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ActivityPartition
   --
   --     23  ActivityGroup::inActivity
   --     189  ActivityPartition::isDimension
   --     190  ActivityPartition::isExternal
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     146  ActivityPartition::represents
   --     24  ActivityGroup::superGroup
   --     191  ActivityPartition::superPartition
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     45  ActivityGroup::containedEdge
   --     46  ActivityGroup::containedNode
   --     48  ActivityPartition::edge
   --     49  ActivityPartition::node
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     47  ActivityGroup::subgroup
   --     131  ActivityPartition::subpartition

   --  Actor
   --
   --     22  BehavioredClassifier::classifierBehavior
   --     19  Classifier::isAbstract
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     43  BehavioredClassifier::interfaceRealization
   --     21  Namespace::member
   --     44  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     41  Classifier::substitution
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  AddStructuralFeatureValueAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     177  AddStructuralFeatureValueAction::insertAt
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     178  AddStructuralFeatureValueAction::isReplaceAll
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     40  StructuralFeatureAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     42  WriteStructuralFeatureAction::result
   --     41  StructuralFeatureAction::structuralFeature
   --     43  WriteStructuralFeatureAction::value
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
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
   --     177  AddVariableValueAction::insertAt
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     178  AddVariableValueAction::isReplaceAll
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     43  WriteVariableAction::value
   --     58  VariableAction::variable
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
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
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Artifact
   --
   --     214  Artifact::fileName
   --     19  Classifier::isAbstract
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     152  Artifact::manifestation
   --     21  Namespace::member
   --     153  Artifact::nestedArtifact
   --     61  Artifact::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     68  Artifact::ownedOperation
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     41  Classifier::substitution
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  Association
   --
   --     19  Classifier::isAbstract
   --     137  Association::isDerived
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     118  Association::endType
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     21  Namespace::member
   --     119  Association::memberEnd
   --     120  Association::navigableOwnedEnd
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     121  Association::ownedEnd
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     57  Relationship::relatedElement
   --     41  Classifier::substitution
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  AssociationClass
   --
   --     22  BehavioredClassifier::classifierBehavior
   --     19  Class::isAbstract
   --     19  Classifier::isAbstract
   --     49  Class::isActive
   --     137  Association::isDerived
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     118  Association::endType
   --     70  Class::extension
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     43  BehavioredClassifier::interfaceRealization
   --     21  Namespace::member
   --     119  Association::memberEnd
   --     120  Association::navigableOwnedEnd
   --     71  Class::nestedClassifier
   --     61  Class::ownedAttribute
   --     61  StructuredClassifier::ownedAttribute
   --     44  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     62  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     121  Association::ownedEnd
   --     22  Namespace::ownedMember
   --     68  Class::ownedOperation
   --     65  EncapsulatedClassifier::ownedPort
   --     72  Class::ownedReception
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     63  StructuredClassifier::part
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     57  Relationship::relatedElement
   --     64  StructuredClassifier::role
   --     41  Classifier::substitution
   --     35  Class::superClass
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  BehaviorExecutionSpecification
   --
   --     85  BehaviorExecutionSpecification::behavior
   --     28  InteractionFragment::enclosingInteraction
   --     29  InteractionFragment::enclosingOperand
   --     93  ExecutionSpecification::finish
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     94  ExecutionSpecification::start
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     54  InteractionFragment::covered
   --     55  InteractionFragment::generalOrdering
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
   --     46  InvocationAction::onPort
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     47  BroadcastSignalAction::signal
   --     6  NamedElement::visibility
   --
   --     66  InvocationAction::argument
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  CallBehaviorAction
   --
   --     8  ActivityNode::activity
   --     85  CallBehaviorAction::behavior
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     57  CallAction::isSynchronous
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     46  InvocationAction::onPort
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     66  InvocationAction::argument
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     51  CallAction::result

   --  CallEvent
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     89  CallEvent::operation
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
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
   --     57  CallAction::isSynchronous
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     46  InvocationAction::onPort
   --     89  CallOperationAction::operation
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     77  CallOperationAction::target
   --     6  NamedElement::visibility
   --
   --     66  InvocationAction::argument
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     51  CallAction::result

   --  CentralBufferNode
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     80  ObjectNode::isControlType
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     81  ObjectNode::ordering
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     82  ObjectNode::selection
   --     62  TypedElement::type
   --     83  ObjectNode::upperBound
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     90  ObjectNode::inState
   --     9  ActivityNode::incoming
   --     10  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ChangeEvent
   --
   --     105  ChangeEvent::changeExpression
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Class
   --
   --     22  BehavioredClassifier::classifierBehavior
   --     19  Class::isAbstract
   --     19  Classifier::isAbstract
   --     49  Class::isActive
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     70  Class::extension
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     43  BehavioredClassifier::interfaceRealization
   --     21  Namespace::member
   --     71  Class::nestedClassifier
   --     61  Class::ownedAttribute
   --     61  StructuredClassifier::ownedAttribute
   --     44  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     62  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     68  Class::ownedOperation
   --     65  EncapsulatedClassifier::ownedPort
   --     72  Class::ownedReception
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     63  StructuredClassifier::part
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     64  StructuredClassifier::role
   --     41  Classifier::substitution
   --     35  Class::superClass
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  ClassifierTemplateParameter
   --
   --     206  ClassifierTemplateParameter::allowSubstitutable
   --     52  TemplateParameter::default
   --     53  TemplateParameter::ownedDefault
   --     54  TemplateParameter::ownedParameteredElement
   --     1  Element::owner
   --     55  ClassifierTemplateParameter::parameteredElement
   --     55  TemplateParameter::parameteredElement
   --     33  TemplateParameter::signature
   --
   --     136  ClassifierTemplateParameter::constrainingClassifier
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Clause
   --
   --     207  Clause::decider
   --     1  Element::owner
   --
   --     137  Clause::body
   --     138  Clause::bodyOutput
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     139  Clause::predecessorClause
   --     140  Clause::successorClause
   --     141  Clause::test

   --  ClearAssociationAction
   --
   --     8  ActivityNode::activity
   --     166  ClearAssociationAction::association
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     40  ClearAssociationAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
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
   --     40  StructuralFeatureAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     42  ClearStructuralFeatureAction::result
   --     41  StructuralFeatureAction::structuralFeature
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
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
   --     58  VariableAction::variable
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  Collaboration
   --
   --     22  BehavioredClassifier::classifierBehavior
   --     19  Classifier::isAbstract
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     168  Collaboration::collaborationRole
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     43  BehavioredClassifier::interfaceRealization
   --     21  Namespace::member
   --     61  StructuredClassifier::ownedAttribute
   --     44  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     62  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     63  StructuredClassifier::part
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     64  StructuredClassifier::role
   --     41  Classifier::substitution
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  CollaborationUse
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     62  CollaborationUse::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     169  CollaborationUse::roleBinding

   --  CombinedFragment
   --
   --     28  InteractionFragment::enclosingInteraction
   --     29  InteractionFragment::enclosingOperand
   --     136  CombinedFragment::interactionOperator
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     116  CombinedFragment::cfragmentGate
   --     3  NamedElement::clientDependency
   --     54  InteractionFragment::covered
   --     55  InteractionFragment::generalOrdering
   --     112  CombinedFragment::operand
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Comment
   --
   --     235  Comment::body
   --     1  Element::owner
   --
   --     174  Comment::annotatedElement
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  CommunicationPath
   --
   --     19  Classifier::isAbstract
   --     137  Association::isDerived
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     118  Association::endType
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     21  Namespace::member
   --     119  Association::memberEnd
   --     120  Association::navigableOwnedEnd
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     121  Association::ownedEnd
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     57  Relationship::relatedElement
   --     41  Classifier::substitution
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  Component
   --
   --     22  BehavioredClassifier::classifierBehavior
   --     19  Class::isAbstract
   --     19  Classifier::isAbstract
   --     49  Class::isActive
   --     20  Classifier::isFinalSpecialization
   --     247  Component::isIndirectlyInstantiated
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     70  Class::extension
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     43  BehavioredClassifier::interfaceRealization
   --     21  Namespace::member
   --     71  Class::nestedClassifier
   --     61  Class::ownedAttribute
   --     61  StructuredClassifier::ownedAttribute
   --     44  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     62  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     68  Class::ownedOperation
   --     65  EncapsulatedClassifier::ownedPort
   --     72  Class::ownedReception
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     30  Component::packagedElement
   --     63  StructuredClassifier::part
   --     39  Classifier::powertypeExtent
   --     132  Component::provided
   --     161  Component::realization
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     134  Component::required
   --     64  StructuredClassifier::role
   --     41  Classifier::substitution
   --     35  Class::superClass
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  ComponentRealization
   --
   --     254  ComponentRealization::abstraction
   --     102  Abstraction::mapping
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     102  Dependency::client
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     182  ComponentRealization::realizingClassifier
   --     57  Relationship::relatedElement
   --     58  DirectedRelationship::source
   --     103  Dependency::supplier
   --     59  DirectedRelationship::target

   --  ConditionalNode
   --
   --     8  ActivityNode::activity
   --     23  StructuredActivityNode::activity
   --     10  Action::context
   --     23  ActivityGroup::inActivity
   --     9  ActivityNode::inStructuredNode
   --     26  ConditionalNode::isAssured
   --     27  ConditionalNode::isDeterminate
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     25  StructuredActivityNode::mustIsolate
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     24  ActivityGroup::superGroup
   --     6  NamedElement::visibility
   --
   --     53  ConditionalNode::clause
   --     3  NamedElement::clientDependency
   --     45  ActivityGroup::containedEdge
   --     46  ActivityGroup::containedNode
   --     48  StructuredActivityNode::edge
   --     19  Namespace::elementImport
   --     12  ExecutableNode::handler
   --     20  Namespace::importedMember
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     21  Namespace::member
   --     49  StructuredActivityNode::node
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     24  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     51  ConditionalNode::result
   --     50  StructuredActivityNode::structuredNodeInput
   --     51  StructuredActivityNode::structuredNodeOutput
   --     47  ActivityGroup::subgroup
   --     52  StructuredActivityNode::variable

   --  ConnectableElementTemplateParameter
   --
   --     52  TemplateParameter::default
   --     53  TemplateParameter::ownedDefault
   --     54  TemplateParameter::ownedParameteredElement
   --     1  Element::owner
   --     55  ConnectableElementTemplateParameter::parameteredElement
   --     55  TemplateParameter::parameteredElement
   --     33  TemplateParameter::signature
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  ConnectionPointReference
   --
   --     72  Vertex::container
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     87  ConnectionPointReference::state
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     92  ConnectionPointReference::entry
   --     93  ConnectionPointReference::exit
   --     9  Vertex::incoming
   --     10  Vertex::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Connector
   --
   --     7  RedefinableElement::isLeaf
   --     96  Feature::isStatic
   --     97  Connector::kind
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     62  Connector::type
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     97  Connector::contract
   --     87  Connector::end
   --     96  Feature::featuringClassifier
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     98  Connector::redefinedConnector
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext

   --  ConnectorEnd
   --
   --     114  ConnectorEnd::definingEnd
   --     34  MultiplicityElement::isOrdered
   --     35  MultiplicityElement::isUnique
   --     36  MultiplicityElement::lower
   --     37  MultiplicityElement::lowerValue
   --     1  Element::owner
   --     115  ConnectorEnd::partWithPort
   --     116  ConnectorEnd::role
   --     38  MultiplicityElement::upper
   --     39  MultiplicityElement::upperValue
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  ConsiderIgnoreFragment
   --
   --     28  InteractionFragment::enclosingInteraction
   --     29  InteractionFragment::enclosingOperand
   --     136  CombinedFragment::interactionOperator
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     116  CombinedFragment::cfragmentGate
   --     3  NamedElement::clientDependency
   --     54  InteractionFragment::covered
   --     55  InteractionFragment::generalOrdering
   --     117  ConsiderIgnoreFragment::message
   --     112  CombinedFragment::operand
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Constraint
   --
   --     10  Constraint::context
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     51  Constraint::specification
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     110  Constraint::constrainedElement
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Continuation
   --
   --     28  InteractionFragment::enclosingInteraction
   --     29  InteractionFragment::enclosingOperand
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     175  Continuation::setting
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     54  InteractionFragment::covered
   --     55  InteractionFragment::generalOrdering
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  ControlFlow
   --
   --     8  ActivityEdge::activity
   --     48  ActivityEdge::guard
   --     9  ActivityEdge::inStructuredNode
   --     133  ActivityEdge::interrupts
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     76  ActivityEdge::source
   --     77  ActivityEdge::target
   --     6  NamedElement::visibility
   --     134  ActivityEdge::weight
   --
   --     3  NamedElement::clientDependency
   --     6  ActivityEdge::inGroup
   --     8  ActivityEdge::inPartition
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     115  ActivityEdge::redefinedEdge
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
   --     17  CreateLinkAction::endData
   --     17  LinkAction::endData
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     18  LinkAction::inputValue
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
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
   --     42  CreateLinkObjectAction::result
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     17  CreateLinkAction::endData
   --     17  LinkAction::endData
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     18  LinkAction::inputValue
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  CreateObjectAction
   --
   --     8  ActivityNode::activity
   --     135  CreateObjectAction::classifier
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     42  CreateObjectAction::result
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  DataStoreNode
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     80  ObjectNode::isControlType
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     81  ObjectNode::ordering
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     82  ObjectNode::selection
   --     62  TypedElement::type
   --     83  ObjectNode::upperBound
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     90  ObjectNode::inState
   --     9  ActivityNode::incoming
   --     10  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  DataType
   --
   --     19  Classifier::isAbstract
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     21  Namespace::member
   --     61  DataType::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     68  DataType::ownedOperation
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     41  Classifier::substitution
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  DecisionNode
   --
   --     8  ActivityNode::activity
   --     192  DecisionNode::decisionInput
   --     193  DecisionNode::decisionInputFlow
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
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     10  ActivityNode::outgoing
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
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     102  Dependency::client
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     57  Relationship::relatedElement
   --     58  DirectedRelationship::source
   --     103  Dependency::supplier
   --     59  DirectedRelationship::target

   --  Deployment
   --
   --     212  Deployment::location
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     102  Dependency::client
   --     3  NamedElement::clientDependency
   --     146  Deployment::configuration
   --     147  Deployment::deployedArtifact
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     57  Relationship::relatedElement
   --     58  DirectedRelationship::source
   --     103  Dependency::supplier
   --     59  DirectedRelationship::target

   --  DeploymentSpecification
   --
   --     215  DeploymentSpecification::deployment
   --     216  DeploymentSpecification::deploymentLocation
   --     217  DeploymentSpecification::executionLocation
   --     214  Artifact::fileName
   --     19  Classifier::isAbstract
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     152  Artifact::manifestation
   --     21  Namespace::member
   --     153  Artifact::nestedArtifact
   --     61  Artifact::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     68  Artifact::ownedOperation
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     41  Classifier::substitution
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

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
   --     17  DestroyLinkAction::endData
   --     17  LinkAction::endData
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     18  LinkAction::inputValue
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
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
   --     230  DestroyObjectAction::isDestroyLinks
   --     231  DestroyObjectAction::isDestroyOwnedObjects
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     77  DestroyObjectAction::target
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  DestructionOccurrenceSpecification
   --
   --     28  InteractionFragment::enclosingInteraction
   --     29  InteractionFragment::enclosingOperand
   --     195  MessageEnd::message
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     54  InteractionFragment::covered
   --     54  OccurrenceSpecification::covered
   --     55  InteractionFragment::generalOrdering
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     100  OccurrenceSpecification::toAfter
   --     101  OccurrenceSpecification::toBefore

   --  Device
   --
   --     22  BehavioredClassifier::classifierBehavior
   --     19  Class::isAbstract
   --     19  Classifier::isAbstract
   --     49  Class::isActive
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     82  DeploymentTarget::deployedElement
   --     83  DeploymentTarget::deployment
   --     19  Namespace::elementImport
   --     70  Class::extension
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     43  BehavioredClassifier::interfaceRealization
   --     21  Namespace::member
   --     71  Class::nestedClassifier
   --     99  Node::nestedNode
   --     61  Class::ownedAttribute
   --     61  StructuredClassifier::ownedAttribute
   --     44  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     62  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     68  Class::ownedOperation
   --     65  EncapsulatedClassifier::ownedPort
   --     72  Class::ownedReception
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     63  StructuredClassifier::part
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     64  StructuredClassifier::role
   --     41  Classifier::substitution
   --     35  Class::superClass
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  Duration
   --
   --     130  Duration::expr
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     62  TypedElement::type
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     114  Duration::observation
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  DurationConstraint
   --
   --     10  Constraint::context
   --     234  DurationConstraint::firstEvent
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     51  Constraint::specification
   --     51  DurationConstraint::specification
   --     51  IntervalConstraint::specification
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     110  Constraint::constrainedElement
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  DurationInterval
   --
   --     111  DurationInterval::max
   --     111  Interval::max
   --     112  DurationInterval::min
   --     112  Interval::min
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     62  TypedElement::type
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  DurationObservation
   --
   --     234  DurationObservation::firstEvent
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     176  DurationObservation::event
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  ElementImport
   --
   --     252  ElementImport::alias
   --     253  ElementImport::importedElement
   --     128  ElementImport::importingNamespace
   --     1  Element::owner
   --     129  ElementImport::visibility
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     57  Relationship::relatedElement
   --     58  DirectedRelationship::source
   --     59  DirectedRelationship::target

   --  Enumeration
   --
   --     19  Classifier::isAbstract
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     21  Namespace::member
   --     61  DataType::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     69  Enumeration::ownedLiteral
   --     22  Namespace::ownedMember
   --     68  DataType::ownedOperation
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     41  Classifier::substitution
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  EnumerationLiteral
   --
   --     56  EnumerationLiteral::enumeration
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     51  InstanceSpecification::specification
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     84  EnumerationLiteral::classifier
   --     84  InstanceSpecification::classifier
   --     3  NamedElement::clientDependency
   --     82  DeploymentTarget::deployedElement
   --     83  DeploymentTarget::deployment
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     85  InstanceSpecification::slot

   --  ExceptionHandler
   --
   --     69  ExceptionHandler::exceptionInput
   --     70  ExceptionHandler::handlerBody
   --     1  Element::owner
   --     71  ExceptionHandler::protectedNode
   --
   --     88  ExceptionHandler::exceptionType
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  ExecutionEnvironment
   --
   --     22  BehavioredClassifier::classifierBehavior
   --     19  Class::isAbstract
   --     19  Classifier::isAbstract
   --     49  Class::isActive
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     82  DeploymentTarget::deployedElement
   --     83  DeploymentTarget::deployment
   --     19  Namespace::elementImport
   --     70  Class::extension
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     43  BehavioredClassifier::interfaceRealization
   --     21  Namespace::member
   --     71  Class::nestedClassifier
   --     99  Node::nestedNode
   --     61  Class::ownedAttribute
   --     61  StructuredClassifier::ownedAttribute
   --     44  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     62  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     68  Class::ownedOperation
   --     65  EncapsulatedClassifier::ownedPort
   --     72  Class::ownedReception
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     63  StructuredClassifier::part
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     64  StructuredClassifier::role
   --     41  Classifier::substitution
   --     35  Class::superClass
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  ExecutionOccurrenceSpecification
   --
   --     28  InteractionFragment::enclosingInteraction
   --     29  InteractionFragment::enclosingOperand
   --     98  ExecutionOccurrenceSpecification::execution
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     54  InteractionFragment::covered
   --     54  OccurrenceSpecification::covered
   --     55  InteractionFragment::generalOrdering
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     100  OccurrenceSpecification::toAfter
   --     101  OccurrenceSpecification::toBefore

   --  ExpansionNode
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     80  ObjectNode::isControlType
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     81  ObjectNode::ordering
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     106  ExpansionNode::regionAsInput
   --     107  ExpansionNode::regionAsOutput
   --     82  ObjectNode::selection
   --     62  TypedElement::type
   --     83  ObjectNode::upperBound
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     90  ObjectNode::inState
   --     9  ActivityNode::incoming
   --     10  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ExpansionRegion
   --
   --     8  ActivityNode::activity
   --     23  StructuredActivityNode::activity
   --     10  Action::context
   --     23  ActivityGroup::inActivity
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     110  ExpansionRegion::mode
   --     25  StructuredActivityNode::mustIsolate
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     24  ActivityGroup::superGroup
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     45  ActivityGroup::containedEdge
   --     46  ActivityGroup::containedNode
   --     48  StructuredActivityNode::edge
   --     19  Namespace::elementImport
   --     12  ExecutableNode::handler
   --     20  Namespace::importedMember
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     108  ExpansionRegion::inputElement
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     21  Namespace::member
   --     49  StructuredActivityNode::node
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     109  ExpansionRegion::outputElement
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     24  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     50  StructuredActivityNode::structuredNodeInput
   --     51  StructuredActivityNode::structuredNodeOutput
   --     47  ActivityGroup::subgroup
   --     52  StructuredActivityNode::variable

   --  Expression
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     122  Expression::symbol
   --     13  ParameterableElement::templateParameter
   --     62  TypedElement::type
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     112  Expression::operand
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Extend
   --
   --     123  Extend::condition
   --     124  Extend::extendedCase
   --     125  Extend::extension
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     113  Extend::extensionLocation
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     57  Relationship::relatedElement
   --     58  DirectedRelationship::source
   --     59  DirectedRelationship::target

   --  Extension
   --
   --     19  Classifier::isAbstract
   --     137  Association::isDerived
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     138  Extension::isRequired
   --     139  Extension::metaclass
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     118  Association::endType
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     21  Namespace::member
   --     119  Association::memberEnd
   --     120  Association::navigableOwnedEnd
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     121  Association::ownedEnd
   --     121  Extension::ownedEnd
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     57  Relationship::relatedElement
   --     41  Classifier::substitution
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  ExtensionEnd
   --
   --     165  Property::aggregation
   --     166  Property::association
   --     167  Property::associationEnd
   --     168  Property::class
   --     169  Property::datatype
   --     149  Property::default
   --     150  Property::defaultValue
   --     170  Property::interface
   --     158  Property::isComposite
   --     137  Property::isDerived
   --     171  Property::isDerivedUnion
   --     172  Property::isID
   --     7  RedefinableElement::isLeaf
   --     34  MultiplicityElement::isOrdered
   --     108  Property::isReadOnly
   --     108  StructuralFeature::isReadOnly
   --     96  Feature::isStatic
   --     35  MultiplicityElement::isUnique
   --     36  ExtensionEnd::lower
   --     36  MultiplicityElement::lower
   --     37  MultiplicityElement::lowerValue
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     173  Property::opposite
   --     1  Element::owner
   --     174  Property::owningAssociation
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ConnectableElement::templateParameter
   --     13  ParameterableElement::templateParameter
   --     62  ExtensionEnd::type
   --     62  TypedElement::type
   --     38  MultiplicityElement::upper
   --     39  MultiplicityElement::upperValue
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     82  DeploymentTarget::deployedElement
   --     83  DeploymentTarget::deployment
   --     87  ConnectableElement::end
   --     96  Feature::featuringClassifier
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     126  Property::qualifier
   --     4  RedefinableElement::redefinedElement
   --     127  Property::redefinedProperty
   --     5  RedefinableElement::redefinitionContext
   --     128  Property::subsettedProperty

   --  ExtensionPoint
   --
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     179  ExtensionPoint::useCase
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext

   --  FinalState
   --
   --     72  Vertex::container
   --     155  State::doActivity
   --     156  State::entry
   --     157  State::exit
   --     158  State::isComposite
   --     7  RedefinableElement::isLeaf
   --     159  State::isOrthogonal
   --     160  State::isSimple
   --     161  State::isSubmachineState
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     162  State::redefinedState
   --     163  State::stateInvariant
   --     164  State::submachine
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     124  State::connection
   --     78  State::connectionPoint
   --     125  State::deferrableTrigger
   --     19  Namespace::elementImport
   --     20  Namespace::importedMember
   --     9  Vertex::incoming
   --     21  Namespace::member
   --     10  Vertex::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     24  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     5  State::redefinitionContext
   --     79  State::region

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
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     10  ActivityNode::outgoing
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
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     10  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  FunctionBehavior
   --
   --     187  OpaqueBehavior::body
   --     22  BehavioredClassifier::classifierBehavior
   --     10  Behavior::context
   --     19  Class::isAbstract
   --     19  Classifier::isAbstract
   --     49  Class::isActive
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     50  Behavior::isReentrant
   --     188  OpaqueBehavior::language
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     51  Behavior::specification
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     70  Class::extension
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     43  BehavioredClassifier::interfaceRealization
   --     21  Namespace::member
   --     71  Class::nestedClassifier
   --     61  Class::ownedAttribute
   --     61  StructuredClassifier::ownedAttribute
   --     44  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     62  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     68  Class::ownedOperation
   --     73  Behavior::ownedParameter
   --     74  Behavior::ownedParameterSet
   --     65  EncapsulatedClassifier::ownedPort
   --     72  Class::ownedReception
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     63  StructuredClassifier::part
   --     75  Behavior::postcondition
   --     39  Classifier::powertypeExtent
   --     76  Behavior::precondition
   --     77  Behavior::redefinedBehavior
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     64  StructuredClassifier::role
   --     41  Classifier::substitution
   --     35  Class::superClass
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  Gate
   --
   --     195  MessageEnd::message
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
   --     201  GeneralOrdering::after
   --     202  GeneralOrdering::before
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
   --     203  Generalization::general
   --     204  Generalization::isSubstitutable
   --     1  Element::owner
   --     205  Generalization::specific
   --
   --     135  Generalization::generalizationSet
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     57  Relationship::relatedElement
   --     58  DirectedRelationship::source
   --     59  DirectedRelationship::target

   --  GeneralizationSet
   --
   --     209  GeneralizationSet::isCovering
   --     210  GeneralizationSet::isDisjoint
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     211  GeneralizationSet::powertype
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     36  GeneralizationSet::generalization
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Image
   --
   --     219  Image::content
   --     220  Image::format
   --     221  Image::location
   --     1  Element::owner
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Include
   --
   --     226  Include::addition
   --     227  Include::includingCase
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
   --     57  Relationship::relatedElement
   --     58  DirectedRelationship::source
   --     59  DirectedRelationship::target

   --  InformationFlow
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     158  InformationFlow::conveyed
   --     159  InformationFlow::informationSource
   --     160  InformationFlow::informationTarget
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     161  InformationFlow::realization
   --     162  InformationFlow::realizingActivityEdge
   --     163  InformationFlow::realizingConnector
   --     164  InformationFlow::realizingMessage
   --     57  Relationship::relatedElement
   --     58  DirectedRelationship::source
   --     59  DirectedRelationship::target

   --  InformationItem
   --
   --     19  Classifier::isAbstract
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     21  Namespace::member
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     171  InformationItem::represented
   --     41  Classifier::substitution
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

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
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     10  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  InputPin
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     84  Pin::isControl
   --     80  ObjectNode::isControlType
   --     7  RedefinableElement::isLeaf
   --     34  MultiplicityElement::isOrdered
   --     35  MultiplicityElement::isUnique
   --     36  MultiplicityElement::lower
   --     37  MultiplicityElement::lowerValue
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     81  ObjectNode::ordering
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     82  ObjectNode::selection
   --     62  TypedElement::type
   --     38  MultiplicityElement::upper
   --     83  ObjectNode::upperBound
   --     39  MultiplicityElement::upperValue
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     90  ObjectNode::inState
   --     9  ActivityNode::incoming
   --     10  ActivityNode::outgoing
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
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     51  InstanceSpecification::specification
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     84  InstanceSpecification::classifier
   --     3  NamedElement::clientDependency
   --     82  DeploymentTarget::deployedElement
   --     83  DeploymentTarget::deployment
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     85  InstanceSpecification::slot

   --  InstanceValue
   --
   --     248  InstanceValue::instance
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     62  TypedElement::type
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Interaction
   --
   --     22  BehavioredClassifier::classifierBehavior
   --     10  Behavior::context
   --     28  InteractionFragment::enclosingInteraction
   --     29  InteractionFragment::enclosingOperand
   --     19  Class::isAbstract
   --     19  Classifier::isAbstract
   --     49  Class::isActive
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     50  Behavior::isReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     51  Behavior::specification
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     177  Interaction::action
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     54  InteractionFragment::covered
   --     19  Namespace::elementImport
   --     70  Class::extension
   --     34  Classifier::feature
   --     178  Interaction::formalGate
   --     67  Interaction::fragment
   --     35  Classifier::general
   --     55  InteractionFragment::generalOrdering
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     43  BehavioredClassifier::interfaceRealization
   --     179  Interaction::lifeline
   --     21  Namespace::member
   --     117  Interaction::message
   --     71  Class::nestedClassifier
   --     61  Class::ownedAttribute
   --     61  StructuredClassifier::ownedAttribute
   --     44  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     62  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     68  Class::ownedOperation
   --     73  Behavior::ownedParameter
   --     74  Behavior::ownedParameterSet
   --     65  EncapsulatedClassifier::ownedPort
   --     72  Class::ownedReception
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     63  StructuredClassifier::part
   --     75  Behavior::postcondition
   --     39  Classifier::powertypeExtent
   --     76  Behavior::precondition
   --     77  Behavior::redefinedBehavior
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     64  StructuredClassifier::role
   --     41  Classifier::substitution
   --     35  Class::superClass
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  InteractionConstraint
   --
   --     10  Constraint::context
   --     250  InteractionConstraint::maxint
   --     251  InteractionConstraint::minint
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     51  Constraint::specification
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     110  Constraint::constrainedElement
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  InteractionOperand
   --
   --     28  InteractionFragment::enclosingInteraction
   --     29  InteractionFragment::enclosingOperand
   --     48  InteractionOperand::guard
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     54  InteractionFragment::covered
   --     19  Namespace::elementImport
   --     67  InteractionOperand::fragment
   --     55  InteractionFragment::generalOrdering
   --     20  Namespace::importedMember
   --     21  Namespace::member
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     24  Namespace::packageImport

   --  InteractionUse
   --
   --     28  InteractionFragment::enclosingInteraction
   --     29  InteractionFragment::enclosingOperand
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     59  InteractionUse::refersTo
   --     60  InteractionUse::returnValue
   --     61  InteractionUse::returnValueRecipient
   --     6  NamedElement::visibility
   --
   --     86  InteractionUse::actualGate
   --     66  InteractionUse::argument
   --     3  NamedElement::clientDependency
   --     54  InteractionFragment::covered
   --     55  InteractionFragment::generalOrdering
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Interface
   --
   --     19  Classifier::isAbstract
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     90  Interface::protocol
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     21  Namespace::member
   --     71  Interface::nestedClassifier
   --     61  Interface::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     68  Interface::ownedOperation
   --     72  Interface::ownedReception
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     95  Interface::redefinedInterface
   --     5  RedefinableElement::redefinitionContext
   --     41  Classifier::substitution
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  InterfaceRealization
   --
   --     103  InterfaceRealization::contract
   --     104  InterfaceRealization::implementingClassifier
   --     102  Abstraction::mapping
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     102  Dependency::client
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     57  Relationship::relatedElement
   --     58  DirectedRelationship::source
   --     103  Dependency::supplier
   --     59  DirectedRelationship::target

   --  InterruptibleActivityRegion
   --
   --     23  ActivityGroup::inActivity
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     24  ActivityGroup::superGroup
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     45  ActivityGroup::containedEdge
   --     46  ActivityGroup::containedNode
   --     107  InterruptibleActivityRegion::interruptingEdge
   --     49  InterruptibleActivityRegion::node
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     47  ActivityGroup::subgroup

   --  Interval
   --
   --     111  Interval::max
   --     112  Interval::min
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     62  TypedElement::type
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
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     51  Constraint::specification
   --     51  IntervalConstraint::specification
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     110  Constraint::constrainedElement
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  JoinNode
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     131  JoinNode::isCombineDuplicate
   --     7  RedefinableElement::isLeaf
   --     132  JoinNode::joinSpec
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     10  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  Lifeline
   --
   --     144  Lifeline::decomposedAs
   --     145  Lifeline::interaction
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     146  Lifeline::represents
   --     147  Lifeline::selector
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     122  Lifeline::coveredBy
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  LinkEndCreationData
   --
   --     176  LinkEndData::end
   --     177  LinkEndCreationData::insertAt
   --     178  LinkEndCreationData::isReplaceAll
   --     1  Element::owner
   --     43  LinkEndData::value
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     126  LinkEndData::qualifier

   --  LinkEndData
   --
   --     176  LinkEndData::end
   --     1  Element::owner
   --     43  LinkEndData::value
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     126  LinkEndData::qualifier

   --  LinkEndDestructionData
   --
   --     181  LinkEndDestructionData::destroyAt
   --     176  LinkEndData::end
   --     182  LinkEndDestructionData::isDestroyDuplicates
   --     1  Element::owner
   --     43  LinkEndData::value
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     126  LinkEndData::qualifier

   --  LiteralBoolean
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     62  TypedElement::type
   --     186  LiteralBoolean::value
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
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     62  TypedElement::type
   --     200  LiteralInteger::value
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
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     62  TypedElement::type
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
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     62  TypedElement::type
   --     208  LiteralReal::value
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
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     62  TypedElement::type
   --     218  LiteralString::value
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
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     62  TypedElement::type
   --     228  LiteralUnlimitedNatural::value
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  LoopNode
   --
   --     8  ActivityNode::activity
   --     23  StructuredActivityNode::activity
   --     10  Action::context
   --     207  LoopNode::decider
   --     23  ActivityGroup::inActivity
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     229  LoopNode::isTestedFirst
   --     25  StructuredActivityNode::mustIsolate
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     24  ActivityGroup::superGroup
   --     6  NamedElement::visibility
   --
   --     138  LoopNode::bodyOutput
   --     165  LoopNode::bodyPart
   --     3  NamedElement::clientDependency
   --     45  ActivityGroup::containedEdge
   --     46  ActivityGroup::containedNode
   --     48  StructuredActivityNode::edge
   --     19  Namespace::elementImport
   --     12  ExecutableNode::handler
   --     20  Namespace::importedMember
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     166  LoopNode::loopVariable
   --     50  LoopNode::loopVariableInput
   --     21  Namespace::member
   --     49  StructuredActivityNode::node
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     24  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     51  LoopNode::result
   --     167  LoopNode::setupPart
   --     50  StructuredActivityNode::structuredNodeInput
   --     51  StructuredActivityNode::structuredNodeOutput
   --     47  ActivityGroup::subgroup
   --     141  LoopNode::test
   --     52  StructuredActivityNode::variable

   --  Manifestation
   --
   --     102  Abstraction::mapping
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     233  Manifestation::utilizedElement
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     102  Dependency::client
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     57  Relationship::relatedElement
   --     58  DirectedRelationship::source
   --     103  Dependency::supplier
   --     59  DirectedRelationship::target

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
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     10  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  Message
   --
   --     238  Message::connector
   --     145  Message::interaction
   --     239  Message::messageKind
   --     240  Message::messageSort
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     241  Message::receiveEvent
   --     242  Message::sendEvent
   --     33  Message::signature
   --     6  NamedElement::visibility
   --
   --     66  Message::argument
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  MessageOccurrenceSpecification
   --
   --     28  InteractionFragment::enclosingInteraction
   --     29  InteractionFragment::enclosingOperand
   --     195  MessageEnd::message
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     54  InteractionFragment::covered
   --     54  OccurrenceSpecification::covered
   --     55  InteractionFragment::generalOrdering
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     100  OccurrenceSpecification::toAfter
   --     101  OccurrenceSpecification::toBefore

   --  Model
   --
   --     15  Package::URI
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     16  Package::nestingPackage
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     17  Model::viewpoint
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     19  Namespace::elementImport
   --     20  Namespace::importedMember
   --     21  Namespace::member
   --     26  Package::nestedPackage
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     27  Package::ownedStereotype
   --     28  Package::ownedType
   --     24  Namespace::packageImport
   --     29  Package::packageMerge
   --     30  Package::packagedElement
   --     31  Package::profileApplication
   --     25  TemplateableElement::templateBinding

   --  Node
   --
   --     22  BehavioredClassifier::classifierBehavior
   --     19  Class::isAbstract
   --     19  Classifier::isAbstract
   --     49  Class::isActive
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     82  DeploymentTarget::deployedElement
   --     83  DeploymentTarget::deployment
   --     19  Namespace::elementImport
   --     70  Class::extension
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     43  BehavioredClassifier::interfaceRealization
   --     21  Namespace::member
   --     71  Class::nestedClassifier
   --     99  Node::nestedNode
   --     61  Class::ownedAttribute
   --     61  StructuredClassifier::ownedAttribute
   --     44  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     62  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     68  Class::ownedOperation
   --     65  EncapsulatedClassifier::ownedPort
   --     72  Class::ownedReception
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     63  StructuredClassifier::part
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     64  StructuredClassifier::role
   --     41  Classifier::substitution
   --     35  Class::superClass
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  ObjectFlow
   --
   --     8  ActivityEdge::activity
   --     48  ActivityEdge::guard
   --     9  ActivityEdge::inStructuredNode
   --     133  ActivityEdge::interrupts
   --     7  RedefinableElement::isLeaf
   --     183  ObjectFlow::isMulticast
   --     184  ObjectFlow::isMultireceive
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     82  ObjectFlow::selection
   --     76  ActivityEdge::source
   --     77  ActivityEdge::target
   --     185  ObjectFlow::transformation
   --     6  NamedElement::visibility
   --     134  ActivityEdge::weight
   --
   --     3  NamedElement::clientDependency
   --     6  ActivityEdge::inGroup
   --     8  ActivityEdge::inPartition
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     115  ActivityEdge::redefinedEdge
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext

   --  OccurrenceSpecification
   --
   --     28  InteractionFragment::enclosingInteraction
   --     29  InteractionFragment::enclosingOperand
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     54  InteractionFragment::covered
   --     54  OccurrenceSpecification::covered
   --     55  InteractionFragment::generalOrdering
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     100  OccurrenceSpecification::toAfter
   --     101  OccurrenceSpecification::toBefore

   --  OpaqueAction
   --
   --     8  ActivityNode::activity
   --     187  OpaqueAction::body
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     188  OpaqueAction::language
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     18  OpaqueAction::inputValue
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     154  OpaqueAction::outputValue
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  OpaqueBehavior
   --
   --     187  OpaqueBehavior::body
   --     22  BehavioredClassifier::classifierBehavior
   --     10  Behavior::context
   --     19  Class::isAbstract
   --     19  Classifier::isAbstract
   --     49  Class::isActive
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     50  Behavior::isReentrant
   --     188  OpaqueBehavior::language
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     51  Behavior::specification
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     70  Class::extension
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     43  BehavioredClassifier::interfaceRealization
   --     21  Namespace::member
   --     71  Class::nestedClassifier
   --     61  Class::ownedAttribute
   --     61  StructuredClassifier::ownedAttribute
   --     44  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     62  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     68  Class::ownedOperation
   --     73  Behavior::ownedParameter
   --     74  Behavior::ownedParameterSet
   --     65  EncapsulatedClassifier::ownedPort
   --     72  Class::ownedReception
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     63  StructuredClassifier::part
   --     75  Behavior::postcondition
   --     39  Classifier::powertypeExtent
   --     76  Behavior::precondition
   --     77  Behavior::redefinedBehavior
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     64  StructuredClassifier::role
   --     41  Classifier::substitution
   --     35  Class::superClass
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  OpaqueExpression
   --
   --     85  OpaqueExpression::behavior
   --     187  OpaqueExpression::body
   --     188  OpaqueExpression::language
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     42  OpaqueExpression::result
   --     13  ParameterableElement::templateParameter
   --     62  TypedElement::type
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Operation
   --
   --     236  Operation::bodyCondition
   --     168  Operation::class
   --     213  BehavioralFeature::concurrency
   --     169  Operation::datatype
   --     170  Operation::interface
   --     19  BehavioralFeature::isAbstract
   --     7  RedefinableElement::isLeaf
   --     34  Operation::isOrdered
   --     237  Operation::isQuery
   --     96  Feature::isStatic
   --     35  Operation::isUnique
   --     36  Operation::lower
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  Operation::templateParameter
   --     13  ParameterableElement::templateParameter
   --     62  Operation::type
   --     38  Operation::upper
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     19  Namespace::elementImport
   --     96  Feature::featuringClassifier
   --     20  Namespace::importedMember
   --     21  Namespace::member
   --     150  BehavioralFeature::method
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     73  BehavioralFeature::ownedParameter
   --     73  Operation::ownedParameter
   --     74  BehavioralFeature::ownedParameterSet
   --     23  Namespace::ownedRule
   --     24  Namespace::packageImport
   --     75  Operation::postcondition
   --     76  Operation::precondition
   --     151  BehavioralFeature::raisedException
   --     151  Operation::raisedException
   --     4  RedefinableElement::redefinedElement
   --     175  Operation::redefinedOperation
   --     5  RedefinableElement::redefinitionContext
   --     25  TemplateableElement::templateBinding

   --  OperationTemplateParameter
   --
   --     52  TemplateParameter::default
   --     53  TemplateParameter::ownedDefault
   --     54  TemplateParameter::ownedParameteredElement
   --     1  Element::owner
   --     55  OperationTemplateParameter::parameteredElement
   --     55  TemplateParameter::parameteredElement
   --     33  TemplateParameter::signature
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  OutputPin
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     84  Pin::isControl
   --     80  ObjectNode::isControlType
   --     7  RedefinableElement::isLeaf
   --     34  MultiplicityElement::isOrdered
   --     35  MultiplicityElement::isUnique
   --     36  MultiplicityElement::lower
   --     37  MultiplicityElement::lowerValue
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     81  ObjectNode::ordering
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     82  ObjectNode::selection
   --     62  TypedElement::type
   --     38  MultiplicityElement::upper
   --     83  ObjectNode::upperBound
   --     39  MultiplicityElement::upperValue
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     90  ObjectNode::inState
   --     9  ActivityNode::incoming
   --     10  ActivityNode::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  Package
   --
   --     15  Package::URI
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     16  Package::nestingPackage
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     19  Namespace::elementImport
   --     20  Namespace::importedMember
   --     21  Namespace::member
   --     26  Package::nestedPackage
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     27  Package::ownedStereotype
   --     28  Package::ownedType
   --     24  Namespace::packageImport
   --     29  Package::packageMerge
   --     30  Package::packagedElement
   --     31  Package::profileApplication
   --     25  TemplateableElement::templateBinding

   --  PackageImport
   --
   --     127  PackageImport::importedPackage
   --     128  PackageImport::importingNamespace
   --     1  Element::owner
   --     129  PackageImport::visibility
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     57  Relationship::relatedElement
   --     58  DirectedRelationship::source
   --     59  DirectedRelationship::target

   --  PackageMerge
   --
   --     140  PackageMerge::mergedPackage
   --     1  Element::owner
   --     141  PackageMerge::receivingPackage
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     57  Relationship::relatedElement
   --     58  DirectedRelationship::source
   --     59  DirectedRelationship::target

   --  Parameter
   --
   --     149  Parameter::default
   --     150  Parameter::defaultValue
   --     151  Parameter::direction
   --     152  Parameter::effect
   --     153  Parameter::isException
   --     34  MultiplicityElement::isOrdered
   --     154  Parameter::isStream
   --     35  MultiplicityElement::isUnique
   --     36  MultiplicityElement::lower
   --     37  MultiplicityElement::lowerValue
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     89  Parameter::operation
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ConnectableElement::templateParameter
   --     13  ParameterableElement::templateParameter
   --     62  TypedElement::type
   --     38  MultiplicityElement::upper
   --     39  MultiplicityElement::upperValue
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     87  ConnectableElement::end
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     123  Parameter::parameterSet

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
   --     129  ParameterSet::condition
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     91  ParameterSet::parameter

   --  PartDecomposition
   --
   --     28  InteractionFragment::enclosingInteraction
   --     29  InteractionFragment::enclosingOperand
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     59  InteractionUse::refersTo
   --     60  InteractionUse::returnValue
   --     61  InteractionUse::returnValueRecipient
   --     6  NamedElement::visibility
   --
   --     86  InteractionUse::actualGate
   --     66  InteractionUse::argument
   --     3  NamedElement::clientDependency
   --     54  InteractionFragment::covered
   --     55  InteractionFragment::generalOrdering
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Port
   --
   --     165  Property::aggregation
   --     166  Property::association
   --     167  Property::associationEnd
   --     168  Property::class
   --     169  Property::datatype
   --     149  Property::default
   --     150  Property::defaultValue
   --     170  Property::interface
   --     197  Port::isBehavior
   --     158  Property::isComposite
   --     198  Port::isConjugated
   --     137  Property::isDerived
   --     171  Property::isDerivedUnion
   --     172  Property::isID
   --     7  RedefinableElement::isLeaf
   --     34  MultiplicityElement::isOrdered
   --     108  Property::isReadOnly
   --     108  StructuralFeature::isReadOnly
   --     199  Port::isService
   --     96  Feature::isStatic
   --     35  MultiplicityElement::isUnique
   --     36  MultiplicityElement::lower
   --     37  MultiplicityElement::lowerValue
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     173  Property::opposite
   --     1  Element::owner
   --     174  Property::owningAssociation
   --     12  ParameterableElement::owningTemplateParameter
   --     90  Port::protocol
   --     5  NamedElement::qualifiedName
   --     13  ConnectableElement::templateParameter
   --     13  ParameterableElement::templateParameter
   --     62  TypedElement::type
   --     38  MultiplicityElement::upper
   --     39  MultiplicityElement::upperValue
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     82  DeploymentTarget::deployedElement
   --     83  DeploymentTarget::deployment
   --     87  ConnectableElement::end
   --     96  Feature::featuringClassifier
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     132  Port::provided
   --     126  Property::qualifier
   --     4  RedefinableElement::redefinedElement
   --     133  Port::redefinedPort
   --     127  Property::redefinedProperty
   --     5  RedefinableElement::redefinitionContext
   --     134  Port::required
   --     128  Property::subsettedProperty

   --  PrimitiveType
   --
   --     19  Classifier::isAbstract
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     21  Namespace::member
   --     61  DataType::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     68  DataType::ownedOperation
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     41  Classifier::substitution
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  Profile
   --
   --     15  Package::URI
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     16  Package::nestingPackage
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     19  Namespace::elementImport
   --     20  Namespace::importedMember
   --     21  Namespace::member
   --     148  Profile::metaclassReference
   --     149  Profile::metamodelReference
   --     26  Package::nestedPackage
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     27  Package::ownedStereotype
   --     28  Package::ownedType
   --     24  Namespace::packageImport
   --     29  Package::packageMerge
   --     30  Package::packagedElement
   --     31  Package::profileApplication
   --     25  TemplateableElement::templateBinding

   --  ProfileApplication
   --
   --     222  ProfileApplication::appliedProfile
   --     223  ProfileApplication::applyingPackage
   --     224  ProfileApplication::isStrict
   --     1  Element::owner
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     57  Relationship::relatedElement
   --     58  DirectedRelationship::source
   --     59  DirectedRelationship::target

   --  Property
   --
   --     165  Property::aggregation
   --     166  Property::association
   --     167  Property::associationEnd
   --     168  Property::class
   --     169  Property::datatype
   --     149  Property::default
   --     150  Property::defaultValue
   --     170  Property::interface
   --     158  Property::isComposite
   --     137  Property::isDerived
   --     171  Property::isDerivedUnion
   --     172  Property::isID
   --     7  RedefinableElement::isLeaf
   --     34  MultiplicityElement::isOrdered
   --     108  Property::isReadOnly
   --     108  StructuralFeature::isReadOnly
   --     96  Feature::isStatic
   --     35  MultiplicityElement::isUnique
   --     36  MultiplicityElement::lower
   --     37  MultiplicityElement::lowerValue
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     173  Property::opposite
   --     1  Element::owner
   --     174  Property::owningAssociation
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ConnectableElement::templateParameter
   --     13  ParameterableElement::templateParameter
   --     62  TypedElement::type
   --     38  MultiplicityElement::upper
   --     39  MultiplicityElement::upperValue
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     82  DeploymentTarget::deployedElement
   --     83  DeploymentTarget::deployment
   --     87  ConnectableElement::end
   --     96  Feature::featuringClassifier
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     126  Property::qualifier
   --     4  RedefinableElement::redefinedElement
   --     127  Property::redefinedProperty
   --     5  RedefinableElement::redefinitionContext
   --     128  Property::subsettedProperty

   --  ProtocolConformance
   --
   --     44  ProtocolConformance::generalMachine
   --     1  Element::owner
   --     45  ProtocolConformance::specificMachine
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     57  Relationship::relatedElement
   --     58  DirectedRelationship::source
   --     59  DirectedRelationship::target

   --  ProtocolStateMachine
   --
   --     22  BehavioredClassifier::classifierBehavior
   --     10  Behavior::context
   --     19  Class::isAbstract
   --     19  Classifier::isAbstract
   --     49  Class::isActive
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     50  Behavior::isReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     51  Behavior::specification
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     81  ProtocolStateMachine::conformance
   --     78  StateMachine::connectionPoint
   --     19  Namespace::elementImport
   --     77  StateMachine::extendedStateMachine
   --     70  Class::extension
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     43  BehavioredClassifier::interfaceRealization
   --     21  Namespace::member
   --     71  Class::nestedClassifier
   --     61  Class::ownedAttribute
   --     61  StructuredClassifier::ownedAttribute
   --     44  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     62  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     68  Class::ownedOperation
   --     73  Behavior::ownedParameter
   --     74  Behavior::ownedParameterSet
   --     65  EncapsulatedClassifier::ownedPort
   --     72  Class::ownedReception
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     63  StructuredClassifier::part
   --     75  Behavior::postcondition
   --     39  Classifier::powertypeExtent
   --     76  Behavior::precondition
   --     77  Behavior::redefinedBehavior
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     79  StateMachine::region
   --     64  StructuredClassifier::role
   --     80  StateMachine::submachineState
   --     41  Classifier::substitution
   --     35  Class::superClass
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  ProtocolTransition
   --
   --     72  Transition::container
   --     73  Transition::effect
   --     48  Transition::guard
   --     7  RedefinableElement::isLeaf
   --     74  Transition::kind
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     78  ProtocolTransition::postCondition
   --     79  ProtocolTransition::preCondition
   --     5  NamedElement::qualifiedName
   --     75  Transition::redefinedTransition
   --     76  Transition::source
   --     77  Transition::target
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     19  Namespace::elementImport
   --     20  Namespace::importedMember
   --     21  Namespace::member
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     24  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     5  Transition::redefinitionContext
   --     89  ProtocolTransition::referred
   --     56  Transition::trigger

   --  Pseudostate
   --
   --     72  Vertex::container
   --     91  Pseudostate::kind
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     87  Pseudostate::state
   --     92  Pseudostate::stateMachine
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     9  Vertex::incoming
   --     10  Vertex::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  QualifierValue
   --
   --     1  Element::owner
   --     117  QualifierValue::qualifier
   --     43  QualifierValue::value
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  RaiseExceptionAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     126  RaiseExceptionAction::exception
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
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ReadExtentAction
   --
   --     8  ActivityNode::activity
   --     135  ReadExtentAction::classifier
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     42  ReadExtentAction::result
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ReadIsClassifiedObjectAction
   --
   --     8  ActivityNode::activity
   --     135  ReadIsClassifiedObjectAction::classifier
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     148  ReadIsClassifiedObjectAction::isDirect
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     40  ReadIsClassifiedObjectAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     42  ReadIsClassifiedObjectAction::result
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
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
   --     42  ReadLinkAction::result
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     17  LinkAction::endData
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     18  LinkAction::inputValue
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  ReadLinkObjectEndAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     176  ReadLinkObjectEndAction::end
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     40  ReadLinkObjectEndAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     42  ReadLinkObjectEndAction::result
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
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
   --     40  ReadLinkObjectEndQualifierAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     117  ReadLinkObjectEndQualifierAction::qualifier
   --     42  ReadLinkObjectEndQualifierAction::result
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
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
   --     42  ReadSelfAction::result
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
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
   --     40  StructuralFeatureAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     42  ReadStructuralFeatureAction::result
   --     41  StructuralFeatureAction::structuralFeature
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
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
   --     42  ReadVariableAction::result
   --     58  VariableAction::variable
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  Realization
   --
   --     102  Abstraction::mapping
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     102  Dependency::client
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     57  Relationship::relatedElement
   --     58  DirectedRelationship::source
   --     103  Dependency::supplier
   --     59  DirectedRelationship::target

   --  Reception
   --
   --     213  BehavioralFeature::concurrency
   --     19  BehavioralFeature::isAbstract
   --     7  RedefinableElement::isLeaf
   --     96  Feature::isStatic
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     47  Reception::signal
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     19  Namespace::elementImport
   --     96  Feature::featuringClassifier
   --     20  Namespace::importedMember
   --     21  Namespace::member
   --     150  BehavioralFeature::method
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     73  BehavioralFeature::ownedParameter
   --     74  BehavioralFeature::ownedParameterSet
   --     23  Namespace::ownedRule
   --     24  Namespace::packageImport
   --     151  BehavioralFeature::raisedException
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext

   --  ReclassifyObjectAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     178  ReclassifyObjectAction::isReplaceAll
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     40  ReclassifyObjectAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     155  ReclassifyObjectAction::newClassifier
   --     156  ReclassifyObjectAction::oldClassifier
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  RedefinableTemplateSignature
   --
   --     86  RedefinableTemplateSignature::classifier
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     86  TemplateSignature::template
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     172  RedefinableTemplateSignature::extendedSignature
   --     173  RedefinableTemplateSignature::inheritedParameter
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     73  TemplateSignature::ownedParameter
   --     91  TemplateSignature::parameter
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext

   --  ReduceAction
   --
   --     8  ActivityNode::activity
   --     245  ReduceAction::collection
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     34  ReduceAction::isOrdered
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     246  ReduceAction::reducer
   --     42  ReduceAction::result
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  Region
   --
   --     249  Region::extendedRegion
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     87  Region::state
   --     92  Region::stateMachine
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     19  Namespace::elementImport
   --     20  Namespace::importedMember
   --     21  Namespace::member
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     24  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     5  Region::redefinitionContext
   --     180  Region::subvertex
   --     181  Region::transition

   --  RemoveStructuralFeatureValueAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     63  RemoveStructuralFeatureValueAction::isRemoveDuplicates
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     40  StructuralFeatureAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     64  RemoveStructuralFeatureValueAction::removeAt
   --     42  WriteStructuralFeatureAction::result
   --     41  StructuralFeatureAction::structuralFeature
   --     43  WriteStructuralFeatureAction::value
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
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
   --     63  RemoveVariableValueAction::isRemoveDuplicates
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     64  RemoveVariableValueAction::removeAt
   --     43  WriteVariableAction::value
   --     58  VariableAction::variable
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
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
   --     88  ReplyAction::replyToCall
   --     31  ReplyAction::returnInformation
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     94  ReplyAction::replyValue

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
   --     46  InvocationAction::onPort
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     77  SendObjectAction::target
   --     6  NamedElement::visibility
   --
   --     66  InvocationAction::argument
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     66  SendObjectAction::request

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
   --     46  InvocationAction::onPort
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     47  SendSignalAction::signal
   --     77  SendSignalAction::target
   --     6  NamedElement::visibility
   --
   --     66  InvocationAction::argument
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  SequenceNode
   --
   --     8  ActivityNode::activity
   --     23  StructuredActivityNode::activity
   --     10  Action::context
   --     23  ActivityGroup::inActivity
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     25  StructuredActivityNode::mustIsolate
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     24  ActivityGroup::superGroup
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     45  ActivityGroup::containedEdge
   --     46  ActivityGroup::containedNode
   --     48  StructuredActivityNode::edge
   --     19  Namespace::elementImport
   --     49  SequenceNode::executableNode
   --     12  ExecutableNode::handler
   --     20  Namespace::importedMember
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     21  Namespace::member
   --     49  StructuredActivityNode::node
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     24  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     50  StructuredActivityNode::structuredNodeInput
   --     51  StructuredActivityNode::structuredNodeOutput
   --     47  ActivityGroup::subgroup
   --     52  StructuredActivityNode::variable

   --  Signal
   --
   --     19  Classifier::isAbstract
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     21  Namespace::member
   --     61  Signal::ownedAttribute
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     41  Classifier::substitution
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  SignalEvent
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     47  SignalEvent::signal
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Slot
   --
   --     118  Slot::definingFeature
   --     1  Element::owner
   --     119  Slot::owningInstance
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     111  Slot::value

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
   --     40  StartClassifierBehaviorAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
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
   --     57  CallAction::isSynchronous
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     40  StartObjectBehaviorAction::object
   --     46  InvocationAction::onPort
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     66  InvocationAction::argument
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     51  CallAction::result

   --  State
   --
   --     72  Vertex::container
   --     155  State::doActivity
   --     156  State::entry
   --     157  State::exit
   --     158  State::isComposite
   --     7  RedefinableElement::isLeaf
   --     159  State::isOrthogonal
   --     160  State::isSimple
   --     161  State::isSubmachineState
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     162  State::redefinedState
   --     163  State::stateInvariant
   --     164  State::submachine
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     124  State::connection
   --     78  State::connectionPoint
   --     125  State::deferrableTrigger
   --     19  Namespace::elementImport
   --     20  Namespace::importedMember
   --     9  Vertex::incoming
   --     21  Namespace::member
   --     10  Vertex::outgoing
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     24  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     5  State::redefinitionContext
   --     79  State::region

   --  StateInvariant
   --
   --     28  InteractionFragment::enclosingInteraction
   --     29  InteractionFragment::enclosingOperand
   --     196  StateInvariant::invariant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     54  InteractionFragment::covered
   --     54  StateInvariant::covered
   --     55  InteractionFragment::generalOrdering
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  StateMachine
   --
   --     22  BehavioredClassifier::classifierBehavior
   --     10  Behavior::context
   --     19  Class::isAbstract
   --     19  Classifier::isAbstract
   --     49  Class::isActive
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     50  Behavior::isReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     51  Behavior::specification
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     78  StateMachine::connectionPoint
   --     19  Namespace::elementImport
   --     77  StateMachine::extendedStateMachine
   --     70  Class::extension
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     43  BehavioredClassifier::interfaceRealization
   --     21  Namespace::member
   --     71  Class::nestedClassifier
   --     61  Class::ownedAttribute
   --     61  StructuredClassifier::ownedAttribute
   --     44  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     62  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     68  Class::ownedOperation
   --     73  Behavior::ownedParameter
   --     74  Behavior::ownedParameterSet
   --     65  EncapsulatedClassifier::ownedPort
   --     72  Class::ownedReception
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     63  StructuredClassifier::part
   --     75  Behavior::postcondition
   --     39  Classifier::powertypeExtent
   --     76  Behavior::precondition
   --     77  Behavior::redefinedBehavior
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     79  StateMachine::region
   --     64  StructuredClassifier::role
   --     80  StateMachine::submachineState
   --     41  Classifier::substitution
   --     35  Class::superClass
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  Stereotype
   --
   --     22  BehavioredClassifier::classifierBehavior
   --     19  Class::isAbstract
   --     19  Classifier::isAbstract
   --     49  Class::isActive
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     225  Stereotype::profile
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     70  Class::extension
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     157  Stereotype::icon
   --     20  Namespace::importedMember
   --     37  Classifier::inheritedMember
   --     43  BehavioredClassifier::interfaceRealization
   --     21  Namespace::member
   --     71  Class::nestedClassifier
   --     61  Class::ownedAttribute
   --     61  StructuredClassifier::ownedAttribute
   --     44  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     62  StructuredClassifier::ownedConnector
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     68  Class::ownedOperation
   --     65  EncapsulatedClassifier::ownedPort
   --     72  Class::ownedReception
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     63  StructuredClassifier::part
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     64  StructuredClassifier::role
   --     41  Classifier::substitution
   --     35  Class::superClass
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  StringExpression
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     232  StringExpression::owningExpression
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     122  Expression::symbol
   --     13  ParameterableElement::templateParameter
   --     62  TypedElement::type
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     112  Expression::operand
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     170  StringExpression::subExpression
   --     25  TemplateableElement::templateBinding

   --  StructuredActivityNode
   --
   --     8  ActivityNode::activity
   --     23  StructuredActivityNode::activity
   --     10  Action::context
   --     23  ActivityGroup::inActivity
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     25  StructuredActivityNode::mustIsolate
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     24  ActivityGroup::superGroup
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     45  ActivityGroup::containedEdge
   --     46  ActivityGroup::containedNode
   --     48  StructuredActivityNode::edge
   --     19  Namespace::elementImport
   --     12  ExecutableNode::handler
   --     20  Namespace::importedMember
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     21  Namespace::member
   --     49  StructuredActivityNode::node
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     24  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     50  StructuredActivityNode::structuredNodeInput
   --     51  StructuredActivityNode::structuredNodeOutput
   --     47  ActivityGroup::subgroup
   --     52  StructuredActivityNode::variable

   --  Substitution
   --
   --     103  Substitution::contract
   --     102  Abstraction::mapping
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     255  Substitution::substitutingClassifier
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     102  Dependency::client
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     57  Relationship::relatedElement
   --     58  DirectedRelationship::source
   --     103  Dependency::supplier
   --     59  DirectedRelationship::target

   --  TemplateBinding
   --
   --     32  TemplateBinding::boundElement
   --     1  Element::owner
   --     33  TemplateBinding::signature
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     60  TemplateBinding::parameterSubstitution
   --     57  Relationship::relatedElement
   --     58  DirectedRelationship::source
   --     59  DirectedRelationship::target

   --  TemplateParameter
   --
   --     52  TemplateParameter::default
   --     53  TemplateParameter::ownedDefault
   --     54  TemplateParameter::ownedParameteredElement
   --     1  Element::owner
   --     55  TemplateParameter::parameteredElement
   --     33  TemplateParameter::signature
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  TemplateParameterSubstitution
   --
   --     65  TemplateParameterSubstitution::actual
   --     66  TemplateParameterSubstitution::formal
   --     67  TemplateParameterSubstitution::ownedActual
   --     1  Element::owner
   --     68  TemplateParameterSubstitution::templateBinding
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  TemplateSignature
   --
   --     1  Element::owner
   --     86  TemplateSignature::template
   --
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     73  TemplateSignature::ownedParameter
   --     91  TemplateSignature::parameter

   --  TestIdentityAction
   --
   --     8  ActivityNode::activity
   --     10  Action::context
   --     100  TestIdentityAction::first
   --     9  ActivityNode::inStructuredNode
   --     7  RedefinableElement::isLeaf
   --     11  Action::isLocallyReentrant
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     42  TestIdentityAction::result
   --     101  TestIdentityAction::second
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  TimeConstraint
   --
   --     10  Constraint::context
   --     113  TimeConstraint::firstEvent
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     51  Constraint::specification
   --     51  IntervalConstraint::specification
   --     51  TimeConstraint::specification
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     110  Constraint::constrainedElement
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  TimeEvent
   --
   --     120  TimeEvent::isRelative
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --     121  TimeEvent::when
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  TimeExpression
   --
   --     130  TimeExpression::expr
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     62  TypedElement::type
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     114  TimeExpression::observation
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  TimeInterval
   --
   --     111  Interval::max
   --     111  TimeInterval::max
   --     112  Interval::min
   --     112  TimeInterval::min
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     62  TypedElement::type
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  TimeObservation
   --
   --     142  TimeObservation::event
   --     143  TimeObservation::firstEvent
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   --  Transition
   --
   --     72  Transition::container
   --     73  Transition::effect
   --     48  Transition::guard
   --     7  RedefinableElement::isLeaf
   --     74  Transition::kind
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     75  Transition::redefinedTransition
   --     76  Transition::source
   --     77  Transition::target
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     19  Namespace::elementImport
   --     20  Namespace::importedMember
   --     21  Namespace::member
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     24  Namespace::packageImport
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     5  Transition::redefinitionContext
   --     56  Transition::trigger

   --  Trigger
   --
   --     142  Trigger::event
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
   --     130  Trigger::port

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
   --     40  UnmarshallAction::object
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     194  UnmarshallAction::unmarshallType
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext
   --     51  UnmarshallAction::result

   --  Usage
   --
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     102  Dependency::client
   --     3  NamedElement::clientDependency
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     57  Relationship::relatedElement
   --     58  DirectedRelationship::source
   --     103  Dependency::supplier
   --     59  DirectedRelationship::target

   --  UseCase
   --
   --     22  BehavioredClassifier::classifierBehavior
   --     19  Classifier::isAbstract
   --     20  Classifier::isFinalSpecialization
   --     7  RedefinableElement::isLeaf
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     14  Classifier::ownedTemplateSignature
   --     14  TemplateableElement::ownedTemplateSignature
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     18  Type::package
   --     5  NamedElement::qualifiedName
   --     21  Classifier::representation
   --     13  Classifier::templateParameter
   --     13  ParameterableElement::templateParameter
   --     6  NamedElement::visibility
   --     6  PackageableElement::visibility
   --
   --     32  Classifier::attribute
   --     3  NamedElement::clientDependency
   --     33  Classifier::collaborationUse
   --     19  Namespace::elementImport
   --     142  UseCase::extend
   --     143  UseCase::extensionPoint
   --     34  Classifier::feature
   --     35  Classifier::general
   --     36  Classifier::generalization
   --     20  Namespace::importedMember
   --     144  UseCase::include
   --     37  Classifier::inheritedMember
   --     43  BehavioredClassifier::interfaceRealization
   --     21  Namespace::member
   --     44  BehavioredClassifier::ownedBehavior
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     22  Namespace::ownedMember
   --     23  Namespace::ownedRule
   --     38  Classifier::ownedUseCase
   --     24  Namespace::packageImport
   --     39  Classifier::powertypeExtent
   --     40  Classifier::redefinedClassifier
   --     4  RedefinableElement::redefinedElement
   --     5  RedefinableElement::redefinitionContext
   --     145  UseCase::subject
   --     41  Classifier::substitution
   --     25  TemplateableElement::templateBinding
   --     42  Classifier::useCase

   --  ValuePin
   --
   --     8  ActivityNode::activity
   --     9  ActivityNode::inStructuredNode
   --     84  Pin::isControl
   --     80  ObjectNode::isControlType
   --     7  RedefinableElement::isLeaf
   --     34  MultiplicityElement::isOrdered
   --     35  MultiplicityElement::isUnique
   --     36  MultiplicityElement::lower
   --     37  MultiplicityElement::lowerValue
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     81  ObjectNode::ordering
   --     1  Element::owner
   --     5  NamedElement::qualifiedName
   --     82  ObjectNode::selection
   --     62  TypedElement::type
   --     38  MultiplicityElement::upper
   --     83  ObjectNode::upperBound
   --     39  MultiplicityElement::upperValue
   --     43  ValuePin::value
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     90  ObjectNode::inState
   --     9  ActivityNode::incoming
   --     10  ActivityNode::outgoing
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
   --     42  ValueSpecificationAction::result
   --     43  ValueSpecificationAction::value
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     12  ExecutableNode::handler
   --     6  ActivityNode::inGroup
   --     7  ActivityNode::inInterruptibleRegion
   --     8  ActivityNode::inPartition
   --     9  ActivityNode::incoming
   --     13  Action::input
   --     14  Action::localPostcondition
   --     15  Action::localPrecondition
   --     10  ActivityNode::outgoing
   --     16  Action::output
   --     1  Element::ownedComment
   --     2  Element::ownedElement
   --     4  RedefinableElement::redefinedElement
   --     11  ActivityNode::redefinedNode
   --     5  RedefinableElement::redefinitionContext

   --  Variable
   --
   --     243  Variable::activityScope
   --     34  MultiplicityElement::isOrdered
   --     35  MultiplicityElement::isUnique
   --     36  MultiplicityElement::lower
   --     37  MultiplicityElement::lowerValue
   --     2  NamedElement::name
   --     3  NamedElement::nameExpression
   --     4  NamedElement::namespace
   --     1  Element::owner
   --     12  ParameterableElement::owningTemplateParameter
   --     5  NamedElement::qualifiedName
   --     244  Variable::scope
   --     13  ConnectableElement::templateParameter
   --     13  ParameterableElement::templateParameter
   --     62  TypedElement::type
   --     38  MultiplicityElement::upper
   --     39  MultiplicityElement::upperValue
   --     6  NamedElement::visibility
   --
   --     3  NamedElement::clientDependency
   --     87  ConnectableElement::end
   --     1  Element::ownedComment
   --     2  Element::ownedElement

   ----------------------
   -- Internal_Get_URI --
   ----------------------

   function Internal_Get_URI
    (Self : AMF.Internals.UML_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).String_Value;
   end Internal_Get_URI;

   ------------------------------
   -- Internal_Get_Abstraction --
   ------------------------------

   function Internal_Get_Abstraction
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (254).Link, Self, No_UML_Element);
   end Internal_Get_Abstraction;

   -------------------------
   -- Internal_Get_Action --
   -------------------------

   function Internal_Get_Action
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (95).Link, Self, No_UML_Element);
   end Internal_Get_Action;

   -------------------------
   -- Internal_Get_Action --
   -------------------------

   function Internal_Get_Action
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 177;
   end Internal_Get_Action;

   ---------------------------
   -- Internal_Get_Activity --
   ---------------------------

   function Internal_Get_Activity
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (8).Link, Self, No_UML_Element);
   end Internal_Get_Activity;

   ---------------------------------
   -- Internal_Get_Activity_Scope --
   ---------------------------------

   function Internal_Get_Activity_Scope
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (243).Link, Self, No_UML_Element);
   end Internal_Get_Activity_Scope;

   -------------------------
   -- Internal_Get_Actual --
   -------------------------

   function Internal_Get_Actual
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (65).Link, Self, No_UML_Element);
   end Internal_Get_Actual;

   ------------------------------
   -- Internal_Get_Actual_Gate --
   ------------------------------

   function Internal_Get_Actual_Gate
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 86;
   end Internal_Get_Actual_Gate;

   ---------------------------
   -- Internal_Get_Addition --
   ---------------------------

   function Internal_Get_Addition
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (226).Link, Self, No_UML_Element);
   end Internal_Get_Addition;

   ------------------------
   -- Internal_Get_After --
   ------------------------

   function Internal_Get_After
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (201).Link, Self, No_UML_Element);
   end Internal_Get_After;

   ------------------------------
   -- Internal_Get_Aggregation --
   ------------------------------

   function Internal_Get_Aggregation
    (Self : AMF.Internals.UML_Element)
       return AMF.UML.UML_Aggregation_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (165).Aggregation_Kind_Value;
   end Internal_Get_Aggregation;

   ------------------------
   -- Internal_Get_Alias --
   ------------------------

   function Internal_Get_Alias
    (Self : AMF.Internals.UML_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (252).String_Value;
   end Internal_Get_Alias;

   --------------------------------------
   -- Internal_Get_Allow_Substitutable --
   --------------------------------------

   function Internal_Get_Allow_Substitutable
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (206).Boolean_Value;
   end Internal_Get_Allow_Substitutable;

   ------------------------------------
   -- Internal_Get_Annotated_Element --
   ------------------------------------

   function Internal_Get_Annotated_Element
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 174;
   end Internal_Get_Annotated_Element;

   ----------------------------------
   -- Internal_Get_Applied_Profile --
   ----------------------------------

   function Internal_Get_Applied_Profile
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (222).Link, Self, No_UML_Element);
   end Internal_Get_Applied_Profile;

   -----------------------------------
   -- Internal_Get_Applying_Package --
   -----------------------------------

   function Internal_Get_Applying_Package
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (223).Link, Self, No_UML_Element);
   end Internal_Get_Applying_Package;

   ---------------------------
   -- Internal_Get_Argument --
   ---------------------------

   function Internal_Get_Argument
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 66;
   end Internal_Get_Argument;

   ------------------------------
   -- Internal_Get_Association --
   ------------------------------

   function Internal_Get_Association
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (166).Link, Self, No_UML_Element);
   end Internal_Get_Association;

   ----------------------------------
   -- Internal_Get_Association_End --
   ----------------------------------

   function Internal_Get_Association_End
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (167).Link, Self, No_UML_Element);
   end Internal_Get_Association_End;

   ----------------------------
   -- Internal_Get_Attribute --
   ----------------------------

   function Internal_Get_Attribute
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 32;
   end Internal_Get_Attribute;

   -------------------------
   -- Internal_Get_Before --
   -------------------------

   function Internal_Get_Before
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (202).Link, Self, No_UML_Element);
   end Internal_Get_Before;

   ---------------------------
   -- Internal_Get_Behavior --
   ---------------------------

   function Internal_Get_Behavior
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (85).Link, Self, No_UML_Element);
   end Internal_Get_Behavior;

   -----------------------
   -- Internal_Get_Body --
   -----------------------

   function Internal_Get_Body
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 137;
   end Internal_Get_Body;

   -----------------------
   -- Internal_Get_Body --
   -----------------------

   function Internal_Get_Body
    (Self : AMF.Internals.UML_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (235).String_Value;
   end Internal_Get_Body;

   -----------------------
   -- Internal_Get_Body --
   -----------------------

   function Internal_Get_Body
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_String is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (187).String_Collection_Value;   end Internal_Get_Body;

   ---------------------------------
   -- Internal_Get_Body_Condition --
   ---------------------------------

   function Internal_Get_Body_Condition
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (236).Link, Self, No_UML_Element);
   end Internal_Get_Body_Condition;

   ------------------------------
   -- Internal_Get_Body_Output --
   ------------------------------

   function Internal_Get_Body_Output
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 138;
   end Internal_Get_Body_Output;

   ----------------------------
   -- Internal_Get_Body_Part --
   ----------------------------

   function Internal_Get_Body_Part
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 165;
   end Internal_Get_Body_Part;

   --------------------------------
   -- Internal_Get_Bound_Element --
   --------------------------------

   function Internal_Get_Bound_Element
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (32).Link, Self, No_UML_Element);
   end Internal_Get_Bound_Element;

   ---------------------------------
   -- Internal_Get_Cfragment_Gate --
   ---------------------------------

   function Internal_Get_Cfragment_Gate
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 116;
   end Internal_Get_Cfragment_Gate;

   ------------------------------------
   -- Internal_Get_Change_Expression --
   ------------------------------------

   function Internal_Get_Change_Expression
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (105).Link, Self, No_UML_Element);
   end Internal_Get_Change_Expression;

   ------------------------
   -- Internal_Get_Class --
   ------------------------

   function Internal_Get_Class
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (168).Link, Self, No_UML_Element);
   end Internal_Get_Class;

   -----------------------------
   -- Internal_Get_Classifier --
   -----------------------------

   function Internal_Get_Classifier
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (135).Link, Self, No_UML_Element);
   end Internal_Get_Classifier;

   -----------------------------
   -- Internal_Get_Classifier --
   -----------------------------

   function Internal_Get_Classifier
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 84;
   end Internal_Get_Classifier;

   --------------------------------------
   -- Internal_Get_Classifier_Behavior --
   --------------------------------------

   function Internal_Get_Classifier_Behavior
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (22).Link, Self, No_UML_Element);
   end Internal_Get_Classifier_Behavior;

   -------------------------
   -- Internal_Get_Clause --
   -------------------------

   function Internal_Get_Clause
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 53;
   end Internal_Get_Clause;

   -------------------------
   -- Internal_Get_Client --
   -------------------------

   function Internal_Get_Client
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 102;
   end Internal_Get_Client;

   ------------------------------------
   -- Internal_Get_Client_Dependency --
   ------------------------------------

   function Internal_Get_Client_Dependency
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 3;
   end Internal_Get_Client_Dependency;

   -------------------------------------
   -- Internal_Get_Collaboration_Role --
   -------------------------------------

   function Internal_Get_Collaboration_Role
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 168;
   end Internal_Get_Collaboration_Role;

   ------------------------------------
   -- Internal_Get_Collaboration_Use --
   ------------------------------------

   function Internal_Get_Collaboration_Use
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 33;
   end Internal_Get_Collaboration_Use;

   -----------------------------
   -- Internal_Get_Collection --
   -----------------------------

   function Internal_Get_Collection
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (245).Link, Self, No_UML_Element);
   end Internal_Get_Collection;

   ------------------------------
   -- Internal_Get_Concurrency --
   ------------------------------

   function Internal_Get_Concurrency
    (Self : AMF.Internals.UML_Element)
       return AMF.UML.UML_Call_Concurrency_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (213).Call_Concurrency_Kind_Value;
   end Internal_Get_Concurrency;

   ----------------------------
   -- Internal_Get_Condition --
   ----------------------------

   function Internal_Get_Condition
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (123).Link, Self, No_UML_Element);
   end Internal_Get_Condition;

   ----------------------------
   -- Internal_Get_Condition --
   ----------------------------

   function Internal_Get_Condition
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 129;
   end Internal_Get_Condition;

   --------------------------------
   -- Internal_Get_Configuration --
   --------------------------------

   function Internal_Get_Configuration
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 146;
   end Internal_Get_Configuration;

   ------------------------------
   -- Internal_Get_Conformance --
   ------------------------------

   function Internal_Get_Conformance
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 81;
   end Internal_Get_Conformance;

   -----------------------------
   -- Internal_Get_Connection --
   -----------------------------

   function Internal_Get_Connection
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 124;
   end Internal_Get_Connection;

   -----------------------------------
   -- Internal_Get_Connection_Point --
   -----------------------------------

   function Internal_Get_Connection_Point
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 78;
   end Internal_Get_Connection_Point;

   ----------------------------
   -- Internal_Get_Connector --
   ----------------------------

   function Internal_Get_Connector
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (238).Link, Self, No_UML_Element);
   end Internal_Get_Connector;

   --------------------------------------
   -- Internal_Get_Constrained_Element --
   --------------------------------------

   function Internal_Get_Constrained_Element
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 110;
   end Internal_Get_Constrained_Element;

   ------------------------------------------
   -- Internal_Get_Constraining_Classifier --
   ------------------------------------------

   function Internal_Get_Constraining_Classifier
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 136;
   end Internal_Get_Constraining_Classifier;

   ---------------------------------
   -- Internal_Get_Contained_Edge --
   ---------------------------------

   function Internal_Get_Contained_Edge
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 45;
   end Internal_Get_Contained_Edge;

   ---------------------------------
   -- Internal_Get_Contained_Node --
   ---------------------------------

   function Internal_Get_Contained_Node
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 46;
   end Internal_Get_Contained_Node;

   ----------------------------
   -- Internal_Get_Container --
   ----------------------------

   function Internal_Get_Container
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (72).Link, Self, No_UML_Element);
   end Internal_Get_Container;

   --------------------------
   -- Internal_Get_Content --
   --------------------------

   function Internal_Get_Content
    (Self : AMF.Internals.UML_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (219).String_Value;
   end Internal_Get_Content;

   --------------------------
   -- Internal_Get_Context --
   --------------------------

   function Internal_Get_Context
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (10).Link, Self, No_UML_Element);
   end Internal_Get_Context;

   ---------------------------
   -- Internal_Get_Contract --
   ---------------------------

   function Internal_Get_Contract
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 97;
   end Internal_Get_Contract;

   ---------------------------
   -- Internal_Get_Contract --
   ---------------------------

   function Internal_Get_Contract
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (103).Link, Self, No_UML_Element);
   end Internal_Get_Contract;

   ---------------------------
   -- Internal_Get_Conveyed --
   ---------------------------

   function Internal_Get_Conveyed
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 158;
   end Internal_Get_Conveyed;

   --------------------------
   -- Internal_Get_Covered --
   --------------------------

   function Internal_Get_Covered
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 54;
   end Internal_Get_Covered;

   -----------------------------
   -- Internal_Get_Covered_By --
   -----------------------------

   function Internal_Get_Covered_By
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 122;
   end Internal_Get_Covered_By;

   ---------------------------
   -- Internal_Get_Datatype --
   ---------------------------

   function Internal_Get_Datatype
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (169).Link, Self, No_UML_Element);
   end Internal_Get_Datatype;

   --------------------------
   -- Internal_Get_Decider --
   --------------------------

   function Internal_Get_Decider
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (207).Link, Self, No_UML_Element);
   end Internal_Get_Decider;

   ---------------------------------
   -- Internal_Get_Decision_Input --
   ---------------------------------

   function Internal_Get_Decision_Input
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (192).Link, Self, No_UML_Element);
   end Internal_Get_Decision_Input;

   --------------------------------------
   -- Internal_Get_Decision_Input_Flow --
   --------------------------------------

   function Internal_Get_Decision_Input_Flow
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (193).Link, Self, No_UML_Element);
   end Internal_Get_Decision_Input_Flow;

   --------------------------------
   -- Internal_Get_Decomposed_As --
   --------------------------------

   function Internal_Get_Decomposed_As
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (144).Link, Self, No_UML_Element);
   end Internal_Get_Decomposed_As;

   --------------------------
   -- Internal_Get_Default --
   --------------------------

   function Internal_Get_Default
    (Self : AMF.Internals.UML_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (149).String_Value;
   end Internal_Get_Default;

   --------------------------
   -- Internal_Get_Default --
   --------------------------

   function Internal_Get_Default
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (52).Link, Self, No_UML_Element);
   end Internal_Get_Default;

   --------------------------------
   -- Internal_Get_Default_Value --
   --------------------------------

   function Internal_Get_Default_Value
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (150).Link, Self, No_UML_Element);
   end Internal_Get_Default_Value;

   -------------------------------------
   -- Internal_Get_Deferrable_Trigger --
   -------------------------------------

   function Internal_Get_Deferrable_Trigger
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 125;
   end Internal_Get_Deferrable_Trigger;

   -------------------------------
   -- Internal_Get_Defining_End --
   -------------------------------

   function Internal_Get_Defining_End
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (114).Link, Self, No_UML_Element);
   end Internal_Get_Defining_End;

   -----------------------------------
   -- Internal_Get_Defining_Feature --
   -----------------------------------

   function Internal_Get_Defining_Feature
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (118).Link, Self, No_UML_Element);
   end Internal_Get_Defining_Feature;

   ------------------------------------
   -- Internal_Get_Deployed_Artifact --
   ------------------------------------

   function Internal_Get_Deployed_Artifact
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 147;
   end Internal_Get_Deployed_Artifact;

   -----------------------------------
   -- Internal_Get_Deployed_Element --
   -----------------------------------

   function Internal_Get_Deployed_Element
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 82;
   end Internal_Get_Deployed_Element;

   -----------------------------
   -- Internal_Get_Deployment --
   -----------------------------

   function Internal_Get_Deployment
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (215).Link, Self, No_UML_Element);
   end Internal_Get_Deployment;

   -----------------------------
   -- Internal_Get_Deployment --
   -----------------------------

   function Internal_Get_Deployment
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 83;
   end Internal_Get_Deployment;

   --------------------------------------
   -- Internal_Get_Deployment_Location --
   --------------------------------------

   function Internal_Get_Deployment_Location
    (Self : AMF.Internals.UML_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (216).String_Value;
   end Internal_Get_Deployment_Location;

   -----------------------------
   -- Internal_Get_Destroy_At --
   -----------------------------

   function Internal_Get_Destroy_At
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (181).Link, Self, No_UML_Element);
   end Internal_Get_Destroy_At;

   ----------------------------
   -- Internal_Get_Direction --
   ----------------------------

   function Internal_Get_Direction
    (Self : AMF.Internals.UML_Element)
       return AMF.UML.UML_Parameter_Direction_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (151).Parameter_Direction_Kind_Value;
   end Internal_Get_Direction;

   ------------------------------
   -- Internal_Get_Do_Activity --
   ------------------------------

   function Internal_Get_Do_Activity
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (155).Link, Self, No_UML_Element);
   end Internal_Get_Do_Activity;

   -----------------------
   -- Internal_Get_Edge --
   -----------------------

   function Internal_Get_Edge
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 48;
   end Internal_Get_Edge;

   -------------------------
   -- Internal_Get_Effect --
   -------------------------

   function Internal_Get_Effect
    (Self : AMF.Internals.UML_Element)
       return AMF.UML.Optional_UML_Parameter_Effect_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (152).Parameter_Effect_Kind_Holder;
   end Internal_Get_Effect;

   -------------------------
   -- Internal_Get_Effect --
   -------------------------

   function Internal_Get_Effect
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (73).Link, Self, No_UML_Element);
   end Internal_Get_Effect;

   ---------------------------------
   -- Internal_Get_Element_Import --
   ---------------------------------

   function Internal_Get_Element_Import
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 19;
   end Internal_Get_Element_Import;

   ----------------------------------------
   -- Internal_Get_Enclosing_Interaction --
   ----------------------------------------

   function Internal_Get_Enclosing_Interaction
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (28).Link, Self, No_UML_Element);
   end Internal_Get_Enclosing_Interaction;

   ------------------------------------
   -- Internal_Get_Enclosing_Operand --
   ------------------------------------

   function Internal_Get_Enclosing_Operand
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (29).Link, Self, No_UML_Element);
   end Internal_Get_Enclosing_Operand;

   ----------------------
   -- Internal_Get_End --
   ----------------------

   function Internal_Get_End
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 87;
   end Internal_Get_End;

   ----------------------
   -- Internal_Get_End --
   ----------------------

   function Internal_Get_End
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (176).Link, Self, No_UML_Element);
   end Internal_Get_End;

   ---------------------------
   -- Internal_Get_End_Data --
   ---------------------------

   function Internal_Get_End_Data
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 17;
   end Internal_Get_End_Data;

   ---------------------------
   -- Internal_Get_End_Type --
   ---------------------------

   function Internal_Get_End_Type
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 118;
   end Internal_Get_End_Type;

   ------------------------
   -- Internal_Get_Entry --
   ------------------------

   function Internal_Get_Entry
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 92;
   end Internal_Get_Entry;

   ------------------------
   -- Internal_Get_Entry --
   ------------------------

   function Internal_Get_Entry
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (156).Link, Self, No_UML_Element);
   end Internal_Get_Entry;

   ------------------------------
   -- Internal_Get_Enumeration --
   ------------------------------

   function Internal_Get_Enumeration
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (56).Link, Self, No_UML_Element);
   end Internal_Get_Enumeration;

   ------------------------
   -- Internal_Get_Event --
   ------------------------

   function Internal_Get_Event
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 176;
   end Internal_Get_Event;

   ------------------------
   -- Internal_Get_Event --
   ------------------------

   function Internal_Get_Event
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (142).Link, Self, No_UML_Element);
   end Internal_Get_Event;

   ----------------------------
   -- Internal_Get_Exception --
   ----------------------------

   function Internal_Get_Exception
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (126).Link, Self, No_UML_Element);
   end Internal_Get_Exception;

   ----------------------------------
   -- Internal_Get_Exception_Input --
   ----------------------------------

   function Internal_Get_Exception_Input
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (69).Link, Self, No_UML_Element);
   end Internal_Get_Exception_Input;

   ---------------------------------
   -- Internal_Get_Exception_Type --
   ---------------------------------

   function Internal_Get_Exception_Type
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 88;
   end Internal_Get_Exception_Type;

   ----------------------------------
   -- Internal_Get_Executable_Node --
   ----------------------------------

   function Internal_Get_Executable_Node
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 49;
   end Internal_Get_Executable_Node;

   ----------------------------
   -- Internal_Get_Execution --
   ----------------------------

   function Internal_Get_Execution
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (98).Link, Self, No_UML_Element);
   end Internal_Get_Execution;

   -------------------------------------
   -- Internal_Get_Execution_Location --
   -------------------------------------

   function Internal_Get_Execution_Location
    (Self : AMF.Internals.UML_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (217).String_Value;
   end Internal_Get_Execution_Location;

   -----------------------
   -- Internal_Get_Exit --
   -----------------------

   function Internal_Get_Exit
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 93;
   end Internal_Get_Exit;

   -----------------------
   -- Internal_Get_Exit --
   -----------------------

   function Internal_Get_Exit
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (157).Link, Self, No_UML_Element);
   end Internal_Get_Exit;

   -----------------------
   -- Internal_Get_Expr --
   -----------------------

   function Internal_Get_Expr
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (130).Link, Self, No_UML_Element);
   end Internal_Get_Expr;

   -------------------------
   -- Internal_Get_Extend --
   -------------------------

   function Internal_Get_Extend
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 142;
   end Internal_Get_Extend;

   --------------------------------
   -- Internal_Get_Extended_Case --
   --------------------------------

   function Internal_Get_Extended_Case
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (124).Link, Self, No_UML_Element);
   end Internal_Get_Extended_Case;

   ----------------------------------
   -- Internal_Get_Extended_Region --
   ----------------------------------

   function Internal_Get_Extended_Region
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (249).Link, Self, No_UML_Element);
   end Internal_Get_Extended_Region;

   -------------------------------------
   -- Internal_Get_Extended_Signature --
   -------------------------------------

   function Internal_Get_Extended_Signature
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 172;
   end Internal_Get_Extended_Signature;

   -----------------------------------------
   -- Internal_Get_Extended_State_Machine --
   -----------------------------------------

   function Internal_Get_Extended_State_Machine
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 77;
   end Internal_Get_Extended_State_Machine;

   ----------------------------
   -- Internal_Get_Extension --
   ----------------------------

   function Internal_Get_Extension
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 70;
   end Internal_Get_Extension;

   ----------------------------
   -- Internal_Get_Extension --
   ----------------------------

   function Internal_Get_Extension
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (125).Link, Self, No_UML_Element);
   end Internal_Get_Extension;

   -------------------------------------
   -- Internal_Get_Extension_Location --
   -------------------------------------

   function Internal_Get_Extension_Location
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 113;
   end Internal_Get_Extension_Location;

   ----------------------------------
   -- Internal_Get_Extension_Point --
   ----------------------------------

   function Internal_Get_Extension_Point
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 143;
   end Internal_Get_Extension_Point;

   --------------------------
   -- Internal_Get_Feature --
   --------------------------

   function Internal_Get_Feature
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 34;
   end Internal_Get_Feature;

   ---------------------------------------
   -- Internal_Get_Featuring_Classifier --
   ---------------------------------------

   function Internal_Get_Featuring_Classifier
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 96;
   end Internal_Get_Featuring_Classifier;

   ----------------------------
   -- Internal_Get_File_Name --
   ----------------------------

   function Internal_Get_File_Name
    (Self : AMF.Internals.UML_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (214).String_Value;
   end Internal_Get_File_Name;

   -------------------------
   -- Internal_Get_Finish --
   -------------------------

   function Internal_Get_Finish
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (93).Link, Self, No_UML_Element);
   end Internal_Get_Finish;

   ------------------------
   -- Internal_Get_First --
   ------------------------

   function Internal_Get_First
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (100).Link, Self, No_UML_Element);
   end Internal_Get_First;

   ------------------------------
   -- Internal_Get_First_Event --
   ------------------------------

   function Internal_Get_First_Event
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (234).Boolean_Collection;
   end Internal_Get_First_Event;

   ------------------------------
   -- Internal_Get_First_Event --
   ------------------------------

   function Internal_Get_First_Event
    (Self : AMF.Internals.UML_Element)
       return AMF.Optional_Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (113).Boolean_Holder;
   end Internal_Get_First_Event;

   ------------------------------
   -- Internal_Get_First_Event --
   ------------------------------

   function Internal_Get_First_Event
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (143).Boolean_Value;
   end Internal_Get_First_Event;

   -------------------------
   -- Internal_Get_Formal --
   -------------------------

   function Internal_Get_Formal
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (66).Link, Self, No_UML_Element);
   end Internal_Get_Formal;

   ------------------------------
   -- Internal_Get_Formal_Gate --
   ------------------------------

   function Internal_Get_Formal_Gate
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 178;
   end Internal_Get_Formal_Gate;

   -------------------------
   -- Internal_Get_Format --
   -------------------------

   function Internal_Get_Format
    (Self : AMF.Internals.UML_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (220).String_Value;
   end Internal_Get_Format;

   ---------------------------
   -- Internal_Get_Fragment --
   ---------------------------

   function Internal_Get_Fragment
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 67;
   end Internal_Get_Fragment;

   ------------------------------
   -- Internal_Get_From_Action --
   ------------------------------

   function Internal_Get_From_Action
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (99).Link, Self, No_UML_Element);
   end Internal_Get_From_Action;

   --------------------------
   -- Internal_Get_General --
   --------------------------

   function Internal_Get_General
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 35;
   end Internal_Get_General;

   --------------------------
   -- Internal_Get_General --
   --------------------------

   function Internal_Get_General
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (203).Link, Self, No_UML_Element);
   end Internal_Get_General;

   ----------------------------------
   -- Internal_Get_General_Machine --
   ----------------------------------

   function Internal_Get_General_Machine
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (44).Link, Self, No_UML_Element);
   end Internal_Get_General_Machine;

   -----------------------------------
   -- Internal_Get_General_Ordering --
   -----------------------------------

   function Internal_Get_General_Ordering
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 55;
   end Internal_Get_General_Ordering;

   ---------------------------------
   -- Internal_Get_Generalization --
   ---------------------------------

   function Internal_Get_Generalization
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 36;
   end Internal_Get_Generalization;

   -------------------------------------
   -- Internal_Get_Generalization_Set --
   -------------------------------------

   function Internal_Get_Generalization_Set
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 135;
   end Internal_Get_Generalization_Set;

   ------------------------
   -- Internal_Get_Group --
   ------------------------

   function Internal_Get_Group
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 104;
   end Internal_Get_Group;

   ------------------------
   -- Internal_Get_Guard --
   ------------------------

   function Internal_Get_Guard
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (48).Link, Self, No_UML_Element);
   end Internal_Get_Guard;

   --------------------------
   -- Internal_Get_Handler --
   --------------------------

   function Internal_Get_Handler
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 12;
   end Internal_Get_Handler;

   -------------------------------
   -- Internal_Get_Handler_Body --
   -------------------------------

   function Internal_Get_Handler_Body
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (70).Link, Self, No_UML_Element);
   end Internal_Get_Handler_Body;

   -----------------------
   -- Internal_Get_Icon --
   -----------------------

   function Internal_Get_Icon
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 157;
   end Internal_Get_Icon;

   ------------------------------------------
   -- Internal_Get_Implementing_Classifier --
   ------------------------------------------

   function Internal_Get_Implementing_Classifier
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (104).Link, Self, No_UML_Element);
   end Internal_Get_Implementing_Classifier;

   -----------------------------------
   -- Internal_Get_Imported_Element --
   -----------------------------------

   function Internal_Get_Imported_Element
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (253).Link, Self, No_UML_Element);
   end Internal_Get_Imported_Element;

   ----------------------------------
   -- Internal_Get_Imported_Member --
   ----------------------------------

   function Internal_Get_Imported_Member
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 20;
   end Internal_Get_Imported_Member;

   -----------------------------------
   -- Internal_Get_Imported_Package --
   -----------------------------------

   function Internal_Get_Imported_Package
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (127).Link, Self, No_UML_Element);
   end Internal_Get_Imported_Package;

   --------------------------------------
   -- Internal_Get_Importing_Namespace --
   --------------------------------------

   function Internal_Get_Importing_Namespace
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (128).Link, Self, No_UML_Element);
   end Internal_Get_Importing_Namespace;

   ------------------------------
   -- Internal_Get_In_Activity --
   ------------------------------

   function Internal_Get_In_Activity
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (23).Link, Self, No_UML_Element);
   end Internal_Get_In_Activity;

   ---------------------------
   -- Internal_Get_In_Group --
   ---------------------------

   function Internal_Get_In_Group
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 6;
   end Internal_Get_In_Group;

   ------------------------------------------
   -- Internal_Get_In_Interruptible_Region --
   ------------------------------------------

   function Internal_Get_In_Interruptible_Region
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 7;
   end Internal_Get_In_Interruptible_Region;

   -------------------------------
   -- Internal_Get_In_Partition --
   -------------------------------

   function Internal_Get_In_Partition
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 8;
   end Internal_Get_In_Partition;

   ---------------------------
   -- Internal_Get_In_State --
   ---------------------------

   function Internal_Get_In_State
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 90;
   end Internal_Get_In_State;

   -------------------------------------
   -- Internal_Get_In_Structured_Node --
   -------------------------------------

   function Internal_Get_In_Structured_Node
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (9).Link, Self, No_UML_Element);
   end Internal_Get_In_Structured_Node;

   --------------------------
   -- Internal_Get_Include --
   --------------------------

   function Internal_Get_Include
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 144;
   end Internal_Get_Include;

   ---------------------------------
   -- Internal_Get_Including_Case --
   ---------------------------------

   function Internal_Get_Including_Case
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (227).Link, Self, No_UML_Element);
   end Internal_Get_Including_Case;

   ---------------------------
   -- Internal_Get_Incoming --
   ---------------------------

   function Internal_Get_Incoming
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 9;
   end Internal_Get_Incoming;

   -------------------------------------
   -- Internal_Get_Information_Source --
   -------------------------------------

   function Internal_Get_Information_Source
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 159;
   end Internal_Get_Information_Source;

   -------------------------------------
   -- Internal_Get_Information_Target --
   -------------------------------------

   function Internal_Get_Information_Target
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 160;
   end Internal_Get_Information_Target;

   -----------------------------------
   -- Internal_Get_Inherited_Member --
   -----------------------------------

   function Internal_Get_Inherited_Member
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 37;
   end Internal_Get_Inherited_Member;

   --------------------------------------
   -- Internal_Get_Inherited_Parameter --
   --------------------------------------

   function Internal_Get_Inherited_Parameter
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 173;
   end Internal_Get_Inherited_Parameter;

   ------------------------
   -- Internal_Get_Input --
   ------------------------

   function Internal_Get_Input
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 13;
   end Internal_Get_Input;

   --------------------------------
   -- Internal_Get_Input_Element --
   --------------------------------

   function Internal_Get_Input_Element
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 108;
   end Internal_Get_Input_Element;

   ------------------------------
   -- Internal_Get_Input_Value --
   ------------------------------

   function Internal_Get_Input_Value
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 18;
   end Internal_Get_Input_Value;

   ----------------------------
   -- Internal_Get_Insert_At --
   ----------------------------

   function Internal_Get_Insert_At
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (177).Link, Self, No_UML_Element);
   end Internal_Get_Insert_At;

   ---------------------------
   -- Internal_Get_Instance --
   ---------------------------

   function Internal_Get_Instance
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (248).Link, Self, No_UML_Element);
   end Internal_Get_Instance;

   ------------------------------
   -- Internal_Get_Interaction --
   ------------------------------

   function Internal_Get_Interaction
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (145).Link, Self, No_UML_Element);
   end Internal_Get_Interaction;

   ---------------------------------------
   -- Internal_Get_Interaction_Operator --
   ---------------------------------------

   function Internal_Get_Interaction_Operator
    (Self : AMF.Internals.UML_Element)
       return AMF.UML.UML_Interaction_Operator_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (136).Interaction_Operator_Kind_Value;
   end Internal_Get_Interaction_Operator;

   ----------------------------
   -- Internal_Get_Interface --
   ----------------------------

   function Internal_Get_Interface
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (170).Link, Self, No_UML_Element);
   end Internal_Get_Interface;

   ----------------------------------------
   -- Internal_Get_Interface_Realization --
   ----------------------------------------

   function Internal_Get_Interface_Realization
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 43;
   end Internal_Get_Interface_Realization;

   ------------------------------------
   -- Internal_Get_Interrupting_Edge --
   ------------------------------------

   function Internal_Get_Interrupting_Edge
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 107;
   end Internal_Get_Interrupting_Edge;

   -----------------------------
   -- Internal_Get_Interrupts --
   -----------------------------

   function Internal_Get_Interrupts
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (133).Link, Self, No_UML_Element);
   end Internal_Get_Interrupts;

   ----------------------------
   -- Internal_Get_Invariant --
   ----------------------------

   function Internal_Get_Invariant
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (196).Link, Self, No_UML_Element);
   end Internal_Get_Invariant;

   ------------------------------
   -- Internal_Get_Is_Abstract --
   ------------------------------

   function Internal_Get_Is_Abstract
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (19).Boolean_Value;
   end Internal_Get_Is_Abstract;

   ----------------------------
   -- Internal_Get_Is_Active --
   ----------------------------

   function Internal_Get_Is_Active
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (49).Boolean_Value;
   end Internal_Get_Is_Active;

   -----------------------------
   -- Internal_Get_Is_Assured --
   -----------------------------

   function Internal_Get_Is_Assured
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (26).Boolean_Value;
   end Internal_Get_Is_Assured;

   ------------------------------
   -- Internal_Get_Is_Behavior --
   ------------------------------

   function Internal_Get_Is_Behavior
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (197).Boolean_Value;
   end Internal_Get_Is_Behavior;

   ---------------------------------------
   -- Internal_Get_Is_Combine_Duplicate --
   ---------------------------------------

   function Internal_Get_Is_Combine_Duplicate
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (131).Boolean_Value;
   end Internal_Get_Is_Combine_Duplicate;

   -------------------------------
   -- Internal_Get_Is_Composite --
   -------------------------------

   function Internal_Get_Is_Composite
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (158).Boolean_Value;
   end Internal_Get_Is_Composite;

   --------------------------------
   -- Internal_Get_Is_Conjugated --
   --------------------------------

   function Internal_Get_Is_Conjugated
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (198).Boolean_Value;
   end Internal_Get_Is_Conjugated;

   -----------------------------
   -- Internal_Get_Is_Control --
   -----------------------------

   function Internal_Get_Is_Control
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (84).Boolean_Value;
   end Internal_Get_Is_Control;

   ----------------------------------
   -- Internal_Get_Is_Control_Type --
   ----------------------------------

   function Internal_Get_Is_Control_Type
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (80).Boolean_Value;
   end Internal_Get_Is_Control_Type;

   ------------------------------
   -- Internal_Get_Is_Covering --
   ------------------------------

   function Internal_Get_Is_Covering
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (209).Boolean_Value;
   end Internal_Get_Is_Covering;

   -----------------------------
   -- Internal_Get_Is_Derived --
   -----------------------------

   function Internal_Get_Is_Derived
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (137).Boolean_Value;
   end Internal_Get_Is_Derived;

   -----------------------------------
   -- Internal_Get_Is_Derived_Union --
   -----------------------------------

   function Internal_Get_Is_Derived_Union
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (171).Boolean_Value;
   end Internal_Get_Is_Derived_Union;

   ----------------------------------------
   -- Internal_Get_Is_Destroy_Duplicates --
   ----------------------------------------

   function Internal_Get_Is_Destroy_Duplicates
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (182).Boolean_Value;
   end Internal_Get_Is_Destroy_Duplicates;

   -----------------------------------
   -- Internal_Get_Is_Destroy_Links --
   -----------------------------------

   function Internal_Get_Is_Destroy_Links
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (230).Boolean_Value;
   end Internal_Get_Is_Destroy_Links;

   -------------------------------------------
   -- Internal_Get_Is_Destroy_Owned_Objects --
   -------------------------------------------

   function Internal_Get_Is_Destroy_Owned_Objects
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (231).Boolean_Value;
   end Internal_Get_Is_Destroy_Owned_Objects;

   ---------------------------------
   -- Internal_Get_Is_Determinate --
   ---------------------------------

   function Internal_Get_Is_Determinate
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (27).Boolean_Value;
   end Internal_Get_Is_Determinate;

   -------------------------------
   -- Internal_Get_Is_Dimension --
   -------------------------------

   function Internal_Get_Is_Dimension
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (189).Boolean_Value;
   end Internal_Get_Is_Dimension;

   ----------------------------
   -- Internal_Get_Is_Direct --
   ----------------------------

   function Internal_Get_Is_Direct
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (148).Boolean_Value;
   end Internal_Get_Is_Direct;

   ------------------------------
   -- Internal_Get_Is_Disjoint --
   ------------------------------

   function Internal_Get_Is_Disjoint
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (210).Boolean_Value;
   end Internal_Get_Is_Disjoint;

   -------------------------------
   -- Internal_Get_Is_Exception --
   -------------------------------

   function Internal_Get_Is_Exception
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (153).Boolean_Value;
   end Internal_Get_Is_Exception;

   ------------------------------
   -- Internal_Get_Is_External --
   ------------------------------

   function Internal_Get_Is_External
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (190).Boolean_Value;
   end Internal_Get_Is_External;

   ------------------------------------------
   -- Internal_Get_Is_Final_Specialization --
   ------------------------------------------

   function Internal_Get_Is_Final_Specialization
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (20).Boolean_Value;
   end Internal_Get_Is_Final_Specialization;

   ------------------------
   -- Internal_Get_Is_ID --
   ------------------------

   function Internal_Get_Is_ID
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (172).Boolean_Value;
   end Internal_Get_Is_ID;

   ---------------------------------------------
   -- Internal_Get_Is_Indirectly_Instantiated --
   ---------------------------------------------

   function Internal_Get_Is_Indirectly_Instantiated
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (247).Boolean_Value;
   end Internal_Get_Is_Indirectly_Instantiated;

   --------------------------
   -- Internal_Get_Is_Leaf --
   --------------------------

   function Internal_Get_Is_Leaf
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (7).Boolean_Value;
   end Internal_Get_Is_Leaf;

   ---------------------------------------
   -- Internal_Get_Is_Locally_Reentrant --
   ---------------------------------------

   function Internal_Get_Is_Locally_Reentrant
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (11).Boolean_Value;
   end Internal_Get_Is_Locally_Reentrant;

   -------------------------------
   -- Internal_Get_Is_Multicast --
   -------------------------------

   function Internal_Get_Is_Multicast
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (183).Boolean_Value;
   end Internal_Get_Is_Multicast;

   ----------------------------------
   -- Internal_Get_Is_Multireceive --
   ----------------------------------

   function Internal_Get_Is_Multireceive
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (184).Boolean_Value;
   end Internal_Get_Is_Multireceive;

   -----------------------------
   -- Internal_Get_Is_Ordered --
   -----------------------------

   function Internal_Get_Is_Ordered
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (34).Boolean_Value;
   end Internal_Get_Is_Ordered;

   --------------------------------
   -- Internal_Get_Is_Orthogonal --
   --------------------------------

   function Internal_Get_Is_Orthogonal
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (159).Boolean_Value;
   end Internal_Get_Is_Orthogonal;

   ---------------------------
   -- Internal_Get_Is_Query --
   ---------------------------

   function Internal_Get_Is_Query
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (237).Boolean_Value;
   end Internal_Get_Is_Query;

   -------------------------------
   -- Internal_Get_Is_Read_Only --
   -------------------------------

   function Internal_Get_Is_Read_Only
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (108).Boolean_Value;
   end Internal_Get_Is_Read_Only;

   -------------------------------
   -- Internal_Get_Is_Reentrant --
   -------------------------------

   function Internal_Get_Is_Reentrant
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (50).Boolean_Value;
   end Internal_Get_Is_Reentrant;

   ------------------------------
   -- Internal_Get_Is_Relative --
   ------------------------------

   function Internal_Get_Is_Relative
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (120).Boolean_Value;
   end Internal_Get_Is_Relative;

   ---------------------------------------
   -- Internal_Get_Is_Remove_Duplicates --
   ---------------------------------------

   function Internal_Get_Is_Remove_Duplicates
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (63).Boolean_Value;
   end Internal_Get_Is_Remove_Duplicates;

   ---------------------------------
   -- Internal_Get_Is_Replace_All --
   ---------------------------------

   function Internal_Get_Is_Replace_All
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (178).Boolean_Value;
   end Internal_Get_Is_Replace_All;

   ------------------------------
   -- Internal_Get_Is_Required --
   ------------------------------

   function Internal_Get_Is_Required
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (138).Boolean_Value;
   end Internal_Get_Is_Required;

   -----------------------------
   -- Internal_Get_Is_Service --
   -----------------------------

   function Internal_Get_Is_Service
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (199).Boolean_Value;
   end Internal_Get_Is_Service;

   ----------------------------
   -- Internal_Get_Is_Simple --
   ----------------------------

   function Internal_Get_Is_Simple
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (160).Boolean_Value;
   end Internal_Get_Is_Simple;

   --------------------------------------
   -- Internal_Get_Is_Single_Execution --
   --------------------------------------

   function Internal_Get_Is_Single_Execution
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (109).Boolean_Value;
   end Internal_Get_Is_Single_Execution;

   ----------------------------
   -- Internal_Get_Is_Static --
   ----------------------------

   function Internal_Get_Is_Static
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (96).Boolean_Value;
   end Internal_Get_Is_Static;

   ----------------------------
   -- Internal_Get_Is_Stream --
   ----------------------------

   function Internal_Get_Is_Stream
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (154).Boolean_Value;
   end Internal_Get_Is_Stream;

   ----------------------------
   -- Internal_Get_Is_Strict --
   ----------------------------

   function Internal_Get_Is_Strict
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (224).Boolean_Value;
   end Internal_Get_Is_Strict;

   --------------------------------------
   -- Internal_Get_Is_Submachine_State --
   --------------------------------------

   function Internal_Get_Is_Submachine_State
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (161).Boolean_Value;
   end Internal_Get_Is_Submachine_State;

   -----------------------------------
   -- Internal_Get_Is_Substitutable --
   -----------------------------------

   function Internal_Get_Is_Substitutable
    (Self : AMF.Internals.UML_Element)
       return AMF.Optional_Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (204).Boolean_Holder;
   end Internal_Get_Is_Substitutable;

   ---------------------------------
   -- Internal_Get_Is_Synchronous --
   ---------------------------------

   function Internal_Get_Is_Synchronous
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (57).Boolean_Value;
   end Internal_Get_Is_Synchronous;

   ----------------------------------
   -- Internal_Get_Is_Tested_First --
   ----------------------------------

   function Internal_Get_Is_Tested_First
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (229).Boolean_Value;
   end Internal_Get_Is_Tested_First;

   ----------------------------
   -- Internal_Get_Is_Unique --
   ----------------------------

   function Internal_Get_Is_Unique
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (35).Boolean_Value;
   end Internal_Get_Is_Unique;

   --------------------------------
   -- Internal_Get_Is_Unmarshall --
   --------------------------------

   function Internal_Get_Is_Unmarshall
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (30).Boolean_Value;
   end Internal_Get_Is_Unmarshall;

   ----------------------------
   -- Internal_Get_Join_Spec --
   ----------------------------

   function Internal_Get_Join_Spec
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (132).Link, Self, No_UML_Element);
   end Internal_Get_Join_Spec;

   -----------------------
   -- Internal_Get_Kind --
   -----------------------

   function Internal_Get_Kind
    (Self : AMF.Internals.UML_Element)
       return AMF.UML.UML_Connector_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (97).Connector_Kind_Value;
   end Internal_Get_Kind;

   -----------------------
   -- Internal_Get_Kind --
   -----------------------

   function Internal_Get_Kind
    (Self : AMF.Internals.UML_Element)
       return AMF.UML.UML_Pseudostate_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (91).Pseudostate_Kind_Value;
   end Internal_Get_Kind;

   -----------------------
   -- Internal_Get_Kind --
   -----------------------

   function Internal_Get_Kind
    (Self : AMF.Internals.UML_Element)
       return AMF.UML.UML_Transition_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (74).Transition_Kind_Value;
   end Internal_Get_Kind;

   ---------------------------
   -- Internal_Get_Language --
   ---------------------------

   function Internal_Get_Language
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_String is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (188).String_Collection_Value;   end Internal_Get_Language;

   ---------------------------
   -- Internal_Get_Lifeline --
   ---------------------------

   function Internal_Get_Lifeline
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 179;
   end Internal_Get_Lifeline;

   --------------------------------------
   -- Internal_Get_Local_Postcondition --
   --------------------------------------

   function Internal_Get_Local_Postcondition
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 14;
   end Internal_Get_Local_Postcondition;

   -------------------------------------
   -- Internal_Get_Local_Precondition --
   -------------------------------------

   function Internal_Get_Local_Precondition
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 15;
   end Internal_Get_Local_Precondition;

   ---------------------------
   -- Internal_Get_Location --
   ---------------------------

   function Internal_Get_Location
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (212).Link, Self, No_UML_Element);
   end Internal_Get_Location;

   ---------------------------
   -- Internal_Get_Location --
   ---------------------------

   function Internal_Get_Location
    (Self : AMF.Internals.UML_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (221).String_Value;
   end Internal_Get_Location;

   --------------------------------
   -- Internal_Get_Loop_Variable --
   --------------------------------

   function Internal_Get_Loop_Variable
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 166;
   end Internal_Get_Loop_Variable;

   --------------------------------------
   -- Internal_Get_Loop_Variable_Input --
   --------------------------------------

   function Internal_Get_Loop_Variable_Input
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 50;
   end Internal_Get_Loop_Variable_Input;

   ------------------------
   -- Internal_Get_Lower --
   ------------------------

   function Internal_Get_Lower
    (Self : AMF.Internals.UML_Element)
       return AMF.Optional_Integer is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (36).Integer_Holder;
   end Internal_Get_Lower;

   ------------------------------
   -- Internal_Get_Lower_Value --
   ------------------------------

   function Internal_Get_Lower_Value
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (37).Link, Self, No_UML_Element);
   end Internal_Get_Lower_Value;

   --------------------------------
   -- Internal_Get_Manifestation --
   --------------------------------

   function Internal_Get_Manifestation
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 152;
   end Internal_Get_Manifestation;

   --------------------------
   -- Internal_Get_Mapping --
   --------------------------

   function Internal_Get_Mapping
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (102).Link, Self, No_UML_Element);
   end Internal_Get_Mapping;

   ----------------------
   -- Internal_Get_Max --
   ----------------------

   function Internal_Get_Max
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (111).Link, Self, No_UML_Element);
   end Internal_Get_Max;

   -------------------------
   -- Internal_Get_Maxint --
   -------------------------

   function Internal_Get_Maxint
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (250).Link, Self, No_UML_Element);
   end Internal_Get_Maxint;

   -------------------------
   -- Internal_Get_Member --
   -------------------------

   function Internal_Get_Member
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 21;
   end Internal_Get_Member;

   -----------------------------
   -- Internal_Get_Member_End --
   -----------------------------

   function Internal_Get_Member_End
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 119;
   end Internal_Get_Member_End;

   ---------------------------------
   -- Internal_Get_Merged_Package --
   ---------------------------------

   function Internal_Get_Merged_Package
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (140).Link, Self, No_UML_Element);
   end Internal_Get_Merged_Package;

   --------------------------
   -- Internal_Get_Message --
   --------------------------

   function Internal_Get_Message
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 117;
   end Internal_Get_Message;

   --------------------------
   -- Internal_Get_Message --
   --------------------------

   function Internal_Get_Message
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (195).Link, Self, No_UML_Element);
   end Internal_Get_Message;

   -------------------------------
   -- Internal_Get_Message_Kind --
   -------------------------------

   function Internal_Get_Message_Kind
    (Self : AMF.Internals.UML_Element)
       return AMF.UML.UML_Message_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (239).Message_Kind_Value;
   end Internal_Get_Message_Kind;

   -------------------------------
   -- Internal_Get_Message_Sort --
   -------------------------------

   function Internal_Get_Message_Sort
    (Self : AMF.Internals.UML_Element)
       return AMF.UML.UML_Message_Sort is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (240).Message_Sort_Value;
   end Internal_Get_Message_Sort;

   ----------------------------
   -- Internal_Get_Metaclass --
   ----------------------------

   function Internal_Get_Metaclass
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (139).Link, Self, No_UML_Element);
   end Internal_Get_Metaclass;

   --------------------------------------
   -- Internal_Get_Metaclass_Reference --
   --------------------------------------

   function Internal_Get_Metaclass_Reference
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 148;
   end Internal_Get_Metaclass_Reference;

   --------------------------------------
   -- Internal_Get_Metamodel_Reference --
   --------------------------------------

   function Internal_Get_Metamodel_Reference
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 149;
   end Internal_Get_Metamodel_Reference;

   -------------------------
   -- Internal_Get_Method --
   -------------------------

   function Internal_Get_Method
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 150;
   end Internal_Get_Method;

   ----------------------
   -- Internal_Get_Min --
   ----------------------

   function Internal_Get_Min
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (112).Link, Self, No_UML_Element);
   end Internal_Get_Min;

   -------------------------
   -- Internal_Get_Minint --
   -------------------------

   function Internal_Get_Minint
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (251).Link, Self, No_UML_Element);
   end Internal_Get_Minint;

   -----------------------
   -- Internal_Get_Mode --
   -----------------------

   function Internal_Get_Mode
    (Self : AMF.Internals.UML_Element)
       return AMF.UML.UML_Expansion_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (110).Expansion_Kind_Value;
   end Internal_Get_Mode;

   -------------------------------
   -- Internal_Get_Must_Isolate --
   -------------------------------

   function Internal_Get_Must_Isolate
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (25).Boolean_Value;
   end Internal_Get_Must_Isolate;

   -----------------------
   -- Internal_Get_Name --
   -----------------------

   function Internal_Get_Name
    (Self : AMF.Internals.UML_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (2).String_Value;
   end Internal_Get_Name;

   ----------------------------------
   -- Internal_Get_Name_Expression --
   ----------------------------------

   function Internal_Get_Name_Expression
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (3).Link, Self, No_UML_Element);
   end Internal_Get_Name_Expression;

   ----------------------------
   -- Internal_Get_Namespace --
   ----------------------------

   function Internal_Get_Namespace
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (4).Link, Self, No_UML_Element);
   end Internal_Get_Namespace;

   --------------------------------------
   -- Internal_Get_Navigable_Owned_End --
   --------------------------------------

   function Internal_Get_Navigable_Owned_End
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 120;
   end Internal_Get_Navigable_Owned_End;

   ----------------------------------
   -- Internal_Get_Nested_Artifact --
   ----------------------------------

   function Internal_Get_Nested_Artifact
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 153;
   end Internal_Get_Nested_Artifact;

   ------------------------------------
   -- Internal_Get_Nested_Classifier --
   ------------------------------------

   function Internal_Get_Nested_Classifier
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 71;
   end Internal_Get_Nested_Classifier;

   ------------------------------
   -- Internal_Get_Nested_Node --
   ------------------------------

   function Internal_Get_Nested_Node
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 99;
   end Internal_Get_Nested_Node;

   ---------------------------------
   -- Internal_Get_Nested_Package --
   ---------------------------------

   function Internal_Get_Nested_Package
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 26;
   end Internal_Get_Nested_Package;

   ----------------------------------
   -- Internal_Get_Nesting_Package --
   ----------------------------------

   function Internal_Get_Nesting_Package
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (16).Link, Self, No_UML_Element);
   end Internal_Get_Nesting_Package;

   ---------------------------------
   -- Internal_Get_New_Classifier --
   ---------------------------------

   function Internal_Get_New_Classifier
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 155;
   end Internal_Get_New_Classifier;

   -----------------------
   -- Internal_Get_Node --
   -----------------------

   function Internal_Get_Node
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 49;
   end Internal_Get_Node;

   -------------------------
   -- Internal_Get_Object --
   -------------------------

   function Internal_Get_Object
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (40).Link, Self, No_UML_Element);
   end Internal_Get_Object;

   ------------------------------
   -- Internal_Get_Observation --
   ------------------------------

   function Internal_Get_Observation
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 114;
   end Internal_Get_Observation;

   ---------------------------------
   -- Internal_Get_Old_Classifier --
   ---------------------------------

   function Internal_Get_Old_Classifier
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 156;
   end Internal_Get_Old_Classifier;

   --------------------------
   -- Internal_Get_On_Port --
   --------------------------

   function Internal_Get_On_Port
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (46).Link, Self, No_UML_Element);
   end Internal_Get_On_Port;

   --------------------------
   -- Internal_Get_Operand --
   --------------------------

   function Internal_Get_Operand
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 112;
   end Internal_Get_Operand;

   ----------------------------
   -- Internal_Get_Operation --
   ----------------------------

   function Internal_Get_Operation
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (89).Link, Self, No_UML_Element);
   end Internal_Get_Operation;

   ---------------------------
   -- Internal_Get_Opposite --
   ---------------------------

   function Internal_Get_Opposite
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (173).Link, Self, No_UML_Element);
   end Internal_Get_Opposite;

   ---------------------------
   -- Internal_Get_Ordering --
   ---------------------------

   function Internal_Get_Ordering
    (Self : AMF.Internals.UML_Element)
       return AMF.UML.UML_Object_Node_Ordering_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (81).Object_Node_Ordering_Kind_Value;
   end Internal_Get_Ordering;

   ---------------------------
   -- Internal_Get_Outgoing --
   ---------------------------

   function Internal_Get_Outgoing
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 10;
   end Internal_Get_Outgoing;

   -------------------------
   -- Internal_Get_Output --
   -------------------------

   function Internal_Get_Output
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 16;
   end Internal_Get_Output;

   ---------------------------------
   -- Internal_Get_Output_Element --
   ---------------------------------

   function Internal_Get_Output_Element
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 109;
   end Internal_Get_Output_Element;

   -------------------------------
   -- Internal_Get_Output_Value --
   -------------------------------

   function Internal_Get_Output_Value
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 154;
   end Internal_Get_Output_Value;

   -------------------------------
   -- Internal_Get_Owned_Actual --
   -------------------------------

   function Internal_Get_Owned_Actual
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (67).Link, Self, No_UML_Element);
   end Internal_Get_Owned_Actual;

   ----------------------------------
   -- Internal_Get_Owned_Attribute --
   ----------------------------------

   function Internal_Get_Owned_Attribute
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 61;
   end Internal_Get_Owned_Attribute;

   ---------------------------------
   -- Internal_Get_Owned_Behavior --
   ---------------------------------

   function Internal_Get_Owned_Behavior
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 44;
   end Internal_Get_Owned_Behavior;

   --------------------------------
   -- Internal_Get_Owned_Comment --
   --------------------------------

   function Internal_Get_Owned_Comment
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 1;
   end Internal_Get_Owned_Comment;

   ----------------------------------
   -- Internal_Get_Owned_Connector --
   ----------------------------------

   function Internal_Get_Owned_Connector
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 62;
   end Internal_Get_Owned_Connector;

   --------------------------------
   -- Internal_Get_Owned_Default --
   --------------------------------

   function Internal_Get_Owned_Default
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (53).Link, Self, No_UML_Element);
   end Internal_Get_Owned_Default;

   --------------------------------
   -- Internal_Get_Owned_Element --
   --------------------------------

   function Internal_Get_Owned_Element
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 2;
   end Internal_Get_Owned_Element;

   ----------------------------
   -- Internal_Get_Owned_End --
   ----------------------------

   function Internal_Get_Owned_End
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 121;
   end Internal_Get_Owned_End;

   --------------------------------
   -- Internal_Get_Owned_Literal --
   --------------------------------

   function Internal_Get_Owned_Literal
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 69;
   end Internal_Get_Owned_Literal;

   -------------------------------
   -- Internal_Get_Owned_Member --
   -------------------------------

   function Internal_Get_Owned_Member
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 22;
   end Internal_Get_Owned_Member;

   ----------------------------------
   -- Internal_Get_Owned_Operation --
   ----------------------------------

   function Internal_Get_Owned_Operation
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 68;
   end Internal_Get_Owned_Operation;

   ----------------------------------
   -- Internal_Get_Owned_Parameter --
   ----------------------------------

   function Internal_Get_Owned_Parameter
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 73;
   end Internal_Get_Owned_Parameter;

   --------------------------------------
   -- Internal_Get_Owned_Parameter_Set --
   --------------------------------------

   function Internal_Get_Owned_Parameter_Set
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 74;
   end Internal_Get_Owned_Parameter_Set;

   --------------------------------------------
   -- Internal_Get_Owned_Parametered_Element --
   --------------------------------------------

   function Internal_Get_Owned_Parametered_Element
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (54).Link, Self, No_UML_Element);
   end Internal_Get_Owned_Parametered_Element;

   -----------------------------
   -- Internal_Get_Owned_Port --
   -----------------------------

   function Internal_Get_Owned_Port
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 65;
   end Internal_Get_Owned_Port;

   ----------------------------------
   -- Internal_Get_Owned_Reception --
   ----------------------------------

   function Internal_Get_Owned_Reception
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 72;
   end Internal_Get_Owned_Reception;

   -----------------------------
   -- Internal_Get_Owned_Rule --
   -----------------------------

   function Internal_Get_Owned_Rule
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 23;
   end Internal_Get_Owned_Rule;

   -----------------------------------
   -- Internal_Get_Owned_Stereotype --
   -----------------------------------

   function Internal_Get_Owned_Stereotype
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 27;
   end Internal_Get_Owned_Stereotype;

   -------------------------------------------
   -- Internal_Get_Owned_Template_Signature --
   -------------------------------------------

   function Internal_Get_Owned_Template_Signature
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (14).Link, Self, No_UML_Element);
   end Internal_Get_Owned_Template_Signature;

   -----------------------------
   -- Internal_Get_Owned_Type --
   -----------------------------

   function Internal_Get_Owned_Type
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 28;
   end Internal_Get_Owned_Type;

   ---------------------------------
   -- Internal_Get_Owned_Use_Case --
   ---------------------------------

   function Internal_Get_Owned_Use_Case
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 38;
   end Internal_Get_Owned_Use_Case;

   ------------------------
   -- Internal_Get_Owner --
   ------------------------

   function Internal_Get_Owner
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (1).Link, Self, No_UML_Element);
   end Internal_Get_Owner;

   -------------------------------------
   -- Internal_Get_Owning_Association --
   -------------------------------------

   function Internal_Get_Owning_Association
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (174).Link, Self, No_UML_Element);
   end Internal_Get_Owning_Association;

   ------------------------------------
   -- Internal_Get_Owning_Expression --
   ------------------------------------

   function Internal_Get_Owning_Expression
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (232).Link, Self, No_UML_Element);
   end Internal_Get_Owning_Expression;

   ----------------------------------
   -- Internal_Get_Owning_Instance --
   ----------------------------------

   function Internal_Get_Owning_Instance
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (119).Link, Self, No_UML_Element);
   end Internal_Get_Owning_Instance;

   --------------------------------------------
   -- Internal_Get_Owning_Template_Parameter --
   --------------------------------------------

   function Internal_Get_Owning_Template_Parameter
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (12).Link, Self, No_UML_Element);
   end Internal_Get_Owning_Template_Parameter;

   --------------------------
   -- Internal_Get_Package --
   --------------------------

   function Internal_Get_Package
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (18).Link, Self, No_UML_Element);
   end Internal_Get_Package;

   ---------------------------------
   -- Internal_Get_Package_Import --
   ---------------------------------

   function Internal_Get_Package_Import
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 24;
   end Internal_Get_Package_Import;

   --------------------------------
   -- Internal_Get_Package_Merge --
   --------------------------------

   function Internal_Get_Package_Merge
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 29;
   end Internal_Get_Package_Merge;

   -----------------------------------
   -- Internal_Get_Packaged_Element --
   -----------------------------------

   function Internal_Get_Packaged_Element
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 30;
   end Internal_Get_Packaged_Element;

   ----------------------------
   -- Internal_Get_Parameter --
   ----------------------------

   function Internal_Get_Parameter
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (180).Link, Self, No_UML_Element);
   end Internal_Get_Parameter;

   ----------------------------
   -- Internal_Get_Parameter --
   ----------------------------

   function Internal_Get_Parameter
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 91;
   end Internal_Get_Parameter;

   --------------------------------
   -- Internal_Get_Parameter_Set --
   --------------------------------

   function Internal_Get_Parameter_Set
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 123;
   end Internal_Get_Parameter_Set;

   -----------------------------------------
   -- Internal_Get_Parameter_Substitution --
   -----------------------------------------

   function Internal_Get_Parameter_Substitution
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 60;
   end Internal_Get_Parameter_Substitution;

   --------------------------------------
   -- Internal_Get_Parametered_Element --
   --------------------------------------

   function Internal_Get_Parametered_Element
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (55).Link, Self, No_UML_Element);
   end Internal_Get_Parametered_Element;

   -----------------------
   -- Internal_Get_Part --
   -----------------------

   function Internal_Get_Part
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 63;
   end Internal_Get_Part;

   ---------------------------------
   -- Internal_Get_Part_With_Port --
   ---------------------------------

   function Internal_Get_Part_With_Port
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (115).Link, Self, No_UML_Element);
   end Internal_Get_Part_With_Port;

   ----------------------------
   -- Internal_Get_Partition --
   ----------------------------

   function Internal_Get_Partition
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 105;
   end Internal_Get_Partition;

   -----------------------
   -- Internal_Get_Port --
   -----------------------

   function Internal_Get_Port
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 130;
   end Internal_Get_Port;

   ---------------------------------
   -- Internal_Get_Post_Condition --
   ---------------------------------

   function Internal_Get_Post_Condition
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (78).Link, Self, No_UML_Element);
   end Internal_Get_Post_Condition;

   --------------------------------
   -- Internal_Get_Postcondition --
   --------------------------------

   function Internal_Get_Postcondition
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 75;
   end Internal_Get_Postcondition;

   ----------------------------
   -- Internal_Get_Powertype --
   ----------------------------

   function Internal_Get_Powertype
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (211).Link, Self, No_UML_Element);
   end Internal_Get_Powertype;

   -----------------------------------
   -- Internal_Get_Powertype_Extent --
   -----------------------------------

   function Internal_Get_Powertype_Extent
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 39;
   end Internal_Get_Powertype_Extent;

   --------------------------------
   -- Internal_Get_Pre_Condition --
   --------------------------------

   function Internal_Get_Pre_Condition
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (79).Link, Self, No_UML_Element);
   end Internal_Get_Pre_Condition;

   -------------------------------
   -- Internal_Get_Precondition --
   -------------------------------

   function Internal_Get_Precondition
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 76;
   end Internal_Get_Precondition;

   -------------------------------------
   -- Internal_Get_Predecessor_Clause --
   -------------------------------------

   function Internal_Get_Predecessor_Clause
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 139;
   end Internal_Get_Predecessor_Clause;

   --------------------------
   -- Internal_Get_Profile --
   --------------------------

   function Internal_Get_Profile
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (225).Link, Self, No_UML_Element);
   end Internal_Get_Profile;

   --------------------------------------
   -- Internal_Get_Profile_Application --
   --------------------------------------

   function Internal_Get_Profile_Application
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 31;
   end Internal_Get_Profile_Application;

   ---------------------------------
   -- Internal_Get_Protected_Node --
   ---------------------------------

   function Internal_Get_Protected_Node
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (71).Link, Self, No_UML_Element);
   end Internal_Get_Protected_Node;

   ---------------------------
   -- Internal_Get_Protocol --
   ---------------------------

   function Internal_Get_Protocol
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (90).Link, Self, No_UML_Element);
   end Internal_Get_Protocol;

   ---------------------------
   -- Internal_Get_Provided --
   ---------------------------

   function Internal_Get_Provided
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 132;
   end Internal_Get_Provided;

   ---------------------------------
   -- Internal_Get_Qualified_Name --
   ---------------------------------

   function Internal_Get_Qualified_Name
    (Self : AMF.Internals.UML_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (5).String_Value;
   end Internal_Get_Qualified_Name;

   ----------------------------
   -- Internal_Get_Qualifier --
   ----------------------------

   function Internal_Get_Qualifier
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 126;
   end Internal_Get_Qualifier;

   ----------------------------
   -- Internal_Get_Qualifier --
   ----------------------------

   function Internal_Get_Qualifier
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (117).Link, Self, No_UML_Element);
   end Internal_Get_Qualifier;

   -----------------------------------
   -- Internal_Get_Raised_Exception --
   -----------------------------------

   function Internal_Get_Raised_Exception
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 151;
   end Internal_Get_Raised_Exception;

   ------------------------------
   -- Internal_Get_Realization --
   ------------------------------

   function Internal_Get_Realization
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 161;
   end Internal_Get_Realization;

   ------------------------------------------
   -- Internal_Get_Realizing_Activity_Edge --
   ------------------------------------------

   function Internal_Get_Realizing_Activity_Edge
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 162;
   end Internal_Get_Realizing_Activity_Edge;

   ---------------------------------------
   -- Internal_Get_Realizing_Classifier --
   ---------------------------------------

   function Internal_Get_Realizing_Classifier
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 182;
   end Internal_Get_Realizing_Classifier;

   --------------------------------------
   -- Internal_Get_Realizing_Connector --
   --------------------------------------

   function Internal_Get_Realizing_Connector
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 163;
   end Internal_Get_Realizing_Connector;

   ------------------------------------
   -- Internal_Get_Realizing_Message --
   ------------------------------------

   function Internal_Get_Realizing_Message
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 164;
   end Internal_Get_Realizing_Message;

   --------------------------------
   -- Internal_Get_Receive_Event --
   --------------------------------

   function Internal_Get_Receive_Event
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (241).Link, Self, No_UML_Element);
   end Internal_Get_Receive_Event;

   ------------------------------------
   -- Internal_Get_Receiving_Package --
   ------------------------------------

   function Internal_Get_Receiving_Package
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (141).Link, Self, No_UML_Element);
   end Internal_Get_Receiving_Package;

   -------------------------------------
   -- Internal_Get_Redefined_Behavior --
   -------------------------------------

   function Internal_Get_Redefined_Behavior
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 77;
   end Internal_Get_Redefined_Behavior;

   ---------------------------------------
   -- Internal_Get_Redefined_Classifier --
   ---------------------------------------

   function Internal_Get_Redefined_Classifier
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 40;
   end Internal_Get_Redefined_Classifier;

   --------------------------------------
   -- Internal_Get_Redefined_Connector --
   --------------------------------------

   function Internal_Get_Redefined_Connector
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 98;
   end Internal_Get_Redefined_Connector;

   ---------------------------------
   -- Internal_Get_Redefined_Edge --
   ---------------------------------

   function Internal_Get_Redefined_Edge
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 115;
   end Internal_Get_Redefined_Edge;

   ------------------------------------
   -- Internal_Get_Redefined_Element --
   ------------------------------------

   function Internal_Get_Redefined_Element
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 4;
   end Internal_Get_Redefined_Element;

   --------------------------------------
   -- Internal_Get_Redefined_Interface --
   --------------------------------------

   function Internal_Get_Redefined_Interface
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 95;
   end Internal_Get_Redefined_Interface;

   ---------------------------------
   -- Internal_Get_Redefined_Node --
   ---------------------------------

   function Internal_Get_Redefined_Node
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 11;
   end Internal_Get_Redefined_Node;

   --------------------------------------
   -- Internal_Get_Redefined_Operation --
   --------------------------------------

   function Internal_Get_Redefined_Operation
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 175;
   end Internal_Get_Redefined_Operation;

   ---------------------------------
   -- Internal_Get_Redefined_Port --
   ---------------------------------

   function Internal_Get_Redefined_Port
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 133;
   end Internal_Get_Redefined_Port;

   -------------------------------------
   -- Internal_Get_Redefined_Property --
   -------------------------------------

   function Internal_Get_Redefined_Property
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 127;
   end Internal_Get_Redefined_Property;

   ----------------------------------
   -- Internal_Get_Redefined_State --
   ----------------------------------

   function Internal_Get_Redefined_State
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (162).Link, Self, No_UML_Element);
   end Internal_Get_Redefined_State;

   ---------------------------------------
   -- Internal_Get_Redefined_Transition --
   ---------------------------------------

   function Internal_Get_Redefined_Transition
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (75).Link, Self, No_UML_Element);
   end Internal_Get_Redefined_Transition;

   ---------------------------------------
   -- Internal_Get_Redefinition_Context --
   ---------------------------------------

   function Internal_Get_Redefinition_Context
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 5;
   end Internal_Get_Redefinition_Context;

   --------------------------
   -- Internal_Get_Reducer --
   --------------------------

   function Internal_Get_Reducer
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (246).Link, Self, No_UML_Element);
   end Internal_Get_Reducer;

   ---------------------------
   -- Internal_Get_Referred --
   ---------------------------

   function Internal_Get_Referred
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 89;
   end Internal_Get_Referred;

   ----------------------------
   -- Internal_Get_Refers_To --
   ----------------------------

   function Internal_Get_Refers_To
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (59).Link, Self, No_UML_Element);
   end Internal_Get_Refers_To;

   -------------------------
   -- Internal_Get_Region --
   -------------------------

   function Internal_Get_Region
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 79;
   end Internal_Get_Region;

   ----------------------------------
   -- Internal_Get_Region_As_Input --
   ----------------------------------

   function Internal_Get_Region_As_Input
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (106).Link, Self, No_UML_Element);
   end Internal_Get_Region_As_Input;

   -----------------------------------
   -- Internal_Get_Region_As_Output --
   -----------------------------------

   function Internal_Get_Region_As_Output
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (107).Link, Self, No_UML_Element);
   end Internal_Get_Region_As_Output;

   ----------------------------------
   -- Internal_Get_Related_Element --
   ----------------------------------

   function Internal_Get_Related_Element
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 57;
   end Internal_Get_Related_Element;

   ----------------------------
   -- Internal_Get_Remove_At --
   ----------------------------

   function Internal_Get_Remove_At
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (64).Link, Self, No_UML_Element);
   end Internal_Get_Remove_At;

   --------------------------------
   -- Internal_Get_Reply_To_Call --
   --------------------------------

   function Internal_Get_Reply_To_Call
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (88).Link, Self, No_UML_Element);
   end Internal_Get_Reply_To_Call;

   ------------------------------
   -- Internal_Get_Reply_Value --
   ------------------------------

   function Internal_Get_Reply_Value
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 94;
   end Internal_Get_Reply_Value;

   ---------------------------------
   -- Internal_Get_Representation --
   ---------------------------------

   function Internal_Get_Representation
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (21).Link, Self, No_UML_Element);
   end Internal_Get_Representation;

   ------------------------------
   -- Internal_Get_Represented --
   ------------------------------

   function Internal_Get_Represented
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 171;
   end Internal_Get_Represented;

   -----------------------------
   -- Internal_Get_Represents --
   -----------------------------

   function Internal_Get_Represents
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (146).Link, Self, No_UML_Element);
   end Internal_Get_Represents;

   --------------------------
   -- Internal_Get_Request --
   --------------------------

   function Internal_Get_Request
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 66;
   end Internal_Get_Request;

   ---------------------------
   -- Internal_Get_Required --
   ---------------------------

   function Internal_Get_Required
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 134;
   end Internal_Get_Required;

   -------------------------
   -- Internal_Get_Result --
   -------------------------

   function Internal_Get_Result
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 51;
   end Internal_Get_Result;

   -------------------------
   -- Internal_Get_Result --
   -------------------------

   function Internal_Get_Result
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (42).Link, Self, No_UML_Element);
   end Internal_Get_Result;

   -------------------------------------
   -- Internal_Get_Return_Information --
   -------------------------------------

   function Internal_Get_Return_Information
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (31).Link, Self, No_UML_Element);
   end Internal_Get_Return_Information;

   -------------------------------
   -- Internal_Get_Return_Value --
   -------------------------------

   function Internal_Get_Return_Value
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (60).Link, Self, No_UML_Element);
   end Internal_Get_Return_Value;

   -----------------------------------------
   -- Internal_Get_Return_Value_Recipient --
   -----------------------------------------

   function Internal_Get_Return_Value_Recipient
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (61).Link, Self, No_UML_Element);
   end Internal_Get_Return_Value_Recipient;

   -----------------------
   -- Internal_Get_Role --
   -----------------------

   function Internal_Get_Role
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (116).Link, Self, No_UML_Element);
   end Internal_Get_Role;

   -----------------------
   -- Internal_Get_Role --
   -----------------------

   function Internal_Get_Role
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 64;
   end Internal_Get_Role;

   -------------------------------
   -- Internal_Get_Role_Binding --
   -------------------------------

   function Internal_Get_Role_Binding
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 169;
   end Internal_Get_Role_Binding;

   ------------------------
   -- Internal_Get_Scope --
   ------------------------

   function Internal_Get_Scope
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (244).Link, Self, No_UML_Element);
   end Internal_Get_Scope;

   -------------------------
   -- Internal_Get_Second --
   -------------------------

   function Internal_Get_Second
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (101).Link, Self, No_UML_Element);
   end Internal_Get_Second;

   ----------------------------
   -- Internal_Get_Selection --
   ----------------------------

   function Internal_Get_Selection
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (82).Link, Self, No_UML_Element);
   end Internal_Get_Selection;

   ---------------------------
   -- Internal_Get_Selector --
   ---------------------------

   function Internal_Get_Selector
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (147).Link, Self, No_UML_Element);
   end Internal_Get_Selector;

   -----------------------------
   -- Internal_Get_Send_Event --
   -----------------------------

   function Internal_Get_Send_Event
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (242).Link, Self, No_UML_Element);
   end Internal_Get_Send_Event;

   --------------------------
   -- Internal_Get_Setting --
   --------------------------

   function Internal_Get_Setting
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (175).Boolean_Value;
   end Internal_Get_Setting;

   -----------------------------
   -- Internal_Get_Setup_Part --
   -----------------------------

   function Internal_Get_Setup_Part
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 167;
   end Internal_Get_Setup_Part;

   -------------------------
   -- Internal_Get_Signal --
   -------------------------

   function Internal_Get_Signal
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (47).Link, Self, No_UML_Element);
   end Internal_Get_Signal;

   ----------------------------
   -- Internal_Get_Signature --
   ----------------------------

   function Internal_Get_Signature
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (33).Link, Self, No_UML_Element);
   end Internal_Get_Signature;

   -----------------------
   -- Internal_Get_Slot --
   -----------------------

   function Internal_Get_Slot
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 85;
   end Internal_Get_Slot;

   -------------------------
   -- Internal_Get_Source --
   -------------------------

   function Internal_Get_Source
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (76).Link, Self, No_UML_Element);
   end Internal_Get_Source;

   -------------------------
   -- Internal_Get_Source --
   -------------------------

   function Internal_Get_Source
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 58;
   end Internal_Get_Source;

   ---------------------------
   -- Internal_Get_Specific --
   ---------------------------

   function Internal_Get_Specific
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (205).Link, Self, No_UML_Element);
   end Internal_Get_Specific;

   -----------------------------------
   -- Internal_Get_Specific_Machine --
   -----------------------------------

   function Internal_Get_Specific_Machine
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (45).Link, Self, No_UML_Element);
   end Internal_Get_Specific_Machine;

   --------------------------------
   -- Internal_Get_Specification --
   --------------------------------

   function Internal_Get_Specification
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (51).Link, Self, No_UML_Element);
   end Internal_Get_Specification;

   ------------------------
   -- Internal_Get_Start --
   ------------------------

   function Internal_Get_Start
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (94).Link, Self, No_UML_Element);
   end Internal_Get_Start;

   ------------------------
   -- Internal_Get_State --
   ------------------------

   function Internal_Get_State
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (87).Link, Self, No_UML_Element);
   end Internal_Get_State;

   ----------------------------------
   -- Internal_Get_State_Invariant --
   ----------------------------------

   function Internal_Get_State_Invariant
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (163).Link, Self, No_UML_Element);
   end Internal_Get_State_Invariant;

   --------------------------------
   -- Internal_Get_State_Machine --
   --------------------------------

   function Internal_Get_State_Machine
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (92).Link, Self, No_UML_Element);
   end Internal_Get_State_Machine;

   -------------------------------------
   -- Internal_Get_Structural_Feature --
   -------------------------------------

   function Internal_Get_Structural_Feature
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (41).Link, Self, No_UML_Element);
   end Internal_Get_Structural_Feature;

   ----------------------------------
   -- Internal_Get_Structured_Node --
   ----------------------------------

   function Internal_Get_Structured_Node
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 106;
   end Internal_Get_Structured_Node;

   ----------------------------------------
   -- Internal_Get_Structured_Node_Input --
   ----------------------------------------

   function Internal_Get_Structured_Node_Input
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 50;
   end Internal_Get_Structured_Node_Input;

   -----------------------------------------
   -- Internal_Get_Structured_Node_Output --
   -----------------------------------------

   function Internal_Get_Structured_Node_Output
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 51;
   end Internal_Get_Structured_Node_Output;

   ---------------------------------
   -- Internal_Get_Sub_Expression --
   ---------------------------------

   function Internal_Get_Sub_Expression
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 170;
   end Internal_Get_Sub_Expression;

   ---------------------------
   -- Internal_Get_Subgroup --
   ---------------------------

   function Internal_Get_Subgroup
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 47;
   end Internal_Get_Subgroup;

   --------------------------
   -- Internal_Get_Subject --
   --------------------------

   function Internal_Get_Subject
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 145;
   end Internal_Get_Subject;

   -----------------------------
   -- Internal_Get_Submachine --
   -----------------------------

   function Internal_Get_Submachine
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (164).Link, Self, No_UML_Element);
   end Internal_Get_Submachine;

   -----------------------------------
   -- Internal_Get_Submachine_State --
   -----------------------------------

   function Internal_Get_Submachine_State
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 80;
   end Internal_Get_Submachine_State;

   -------------------------------
   -- Internal_Get_Subpartition --
   -------------------------------

   function Internal_Get_Subpartition
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 131;
   end Internal_Get_Subpartition;

   -------------------------------------
   -- Internal_Get_Subsetted_Property --
   -------------------------------------

   function Internal_Get_Subsetted_Property
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 128;
   end Internal_Get_Subsetted_Property;

   ------------------------------------------
   -- Internal_Get_Substituting_Classifier --
   ------------------------------------------

   function Internal_Get_Substituting_Classifier
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (255).Link, Self, No_UML_Element);
   end Internal_Get_Substituting_Classifier;

   -------------------------------
   -- Internal_Get_Substitution --
   -------------------------------

   function Internal_Get_Substitution
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 41;
   end Internal_Get_Substitution;

   ----------------------------
   -- Internal_Get_Subvertex --
   ----------------------------

   function Internal_Get_Subvertex
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 180;
   end Internal_Get_Subvertex;

   -----------------------------------
   -- Internal_Get_Successor_Clause --
   -----------------------------------

   function Internal_Get_Successor_Clause
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 140;
   end Internal_Get_Successor_Clause;

   ------------------------------
   -- Internal_Get_Super_Class --
   ------------------------------

   function Internal_Get_Super_Class
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 35;
   end Internal_Get_Super_Class;

   ------------------------------
   -- Internal_Get_Super_Group --
   ------------------------------

   function Internal_Get_Super_Group
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (24).Link, Self, No_UML_Element);
   end Internal_Get_Super_Group;

   ----------------------------------
   -- Internal_Get_Super_Partition --
   ----------------------------------

   function Internal_Get_Super_Partition
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (191).Link, Self, No_UML_Element);
   end Internal_Get_Super_Partition;

   ---------------------------
   -- Internal_Get_Supplier --
   ---------------------------

   function Internal_Get_Supplier
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 103;
   end Internal_Get_Supplier;

   -------------------------
   -- Internal_Get_Symbol --
   -------------------------

   function Internal_Get_Symbol
    (Self : AMF.Internals.UML_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (122).String_Value;
   end Internal_Get_Symbol;

   -------------------------
   -- Internal_Get_Target --
   -------------------------

   function Internal_Get_Target
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (77).Link, Self, No_UML_Element);
   end Internal_Get_Target;

   -------------------------
   -- Internal_Get_Target --
   -------------------------

   function Internal_Get_Target
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 59;
   end Internal_Get_Target;

   ---------------------------
   -- Internal_Get_Template --
   ---------------------------

   function Internal_Get_Template
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (86).Link, Self, No_UML_Element);
   end Internal_Get_Template;

   -----------------------------------
   -- Internal_Get_Template_Binding --
   -----------------------------------

   function Internal_Get_Template_Binding
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (68).Link, Self, No_UML_Element);
   end Internal_Get_Template_Binding;

   -----------------------------------
   -- Internal_Get_Template_Binding --
   -----------------------------------

   function Internal_Get_Template_Binding
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 25;
   end Internal_Get_Template_Binding;

   -------------------------------------
   -- Internal_Get_Template_Parameter --
   -------------------------------------

   function Internal_Get_Template_Parameter
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (13).Link, Self, No_UML_Element);
   end Internal_Get_Template_Parameter;

   -----------------------
   -- Internal_Get_Test --
   -----------------------

   function Internal_Get_Test
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 141;
   end Internal_Get_Test;

   ---------------------------
   -- Internal_Get_To_After --
   ---------------------------

   function Internal_Get_To_After
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 100;
   end Internal_Get_To_After;

   ----------------------------
   -- Internal_Get_To_Before --
   ----------------------------

   function Internal_Get_To_Before
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 101;
   end Internal_Get_To_Before;

   ---------------------------------
   -- Internal_Get_Transformation --
   ---------------------------------

   function Internal_Get_Transformation
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (185).Link, Self, No_UML_Element);
   end Internal_Get_Transformation;

   -----------------------------
   -- Internal_Get_Transition --
   -----------------------------

   function Internal_Get_Transition
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 181;
   end Internal_Get_Transition;

   --------------------------
   -- Internal_Get_Trigger --
   --------------------------

   function Internal_Get_Trigger
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 56;
   end Internal_Get_Trigger;

   -----------------------
   -- Internal_Get_Type --
   -----------------------

   function Internal_Get_Type
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (62).Link, Self, No_UML_Element);
   end Internal_Get_Type;

   ----------------------------------
   -- Internal_Get_Unmarshall_Type --
   ----------------------------------

   function Internal_Get_Unmarshall_Type
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (194).Link, Self, No_UML_Element);
   end Internal_Get_Unmarshall_Type;

   ------------------------
   -- Internal_Get_Upper --
   ------------------------

   function Internal_Get_Upper
    (Self : AMF.Internals.UML_Element)
       return AMF.Optional_Unlimited_Natural is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (38).Unlimited_Natural_Holder;
   end Internal_Get_Upper;

   ------------------------------
   -- Internal_Get_Upper_Bound --
   ------------------------------

   function Internal_Get_Upper_Bound
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (83).Link, Self, No_UML_Element);
   end Internal_Get_Upper_Bound;

   ------------------------------
   -- Internal_Get_Upper_Value --
   ------------------------------

   function Internal_Get_Upper_Value
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (39).Link, Self, No_UML_Element);
   end Internal_Get_Upper_Value;

   ---------------------------
   -- Internal_Get_Use_Case --
   ---------------------------

   function Internal_Get_Use_Case
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 42;
   end Internal_Get_Use_Case;

   ---------------------------
   -- Internal_Get_Use_Case --
   ---------------------------

   function Internal_Get_Use_Case
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (179).Link, Self, No_UML_Element);
   end Internal_Get_Use_Case;

   -----------------------------------
   -- Internal_Get_Utilized_Element --
   -----------------------------------

   function Internal_Get_Utilized_Element
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (233).Link, Self, No_UML_Element);
   end Internal_Get_Utilized_Element;

   ------------------------
   -- Internal_Get_Value --
   ------------------------

   function Internal_Get_Value
    (Self : AMF.Internals.UML_Element)
       return Boolean is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (186).Boolean_Value;
   end Internal_Get_Value;

   ------------------------
   -- Internal_Get_Value --
   ------------------------

   function Internal_Get_Value
    (Self : AMF.Internals.UML_Element)
       return Integer is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (200).Integer_Value;
   end Internal_Get_Value;

   ------------------------
   -- Internal_Get_Value --
   ------------------------

   function Internal_Get_Value
    (Self : AMF.Internals.UML_Element)
       return AMF.Real is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (208).Real_Value;
   end Internal_Get_Value;

   ------------------------
   -- Internal_Get_Value --
   ------------------------

   function Internal_Get_Value
    (Self : AMF.Internals.UML_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (218).String_Value;
   end Internal_Get_Value;

   ------------------------
   -- Internal_Get_Value --
   ------------------------

   function Internal_Get_Value
    (Self : AMF.Internals.UML_Element)
       return AMF.Unlimited_Natural is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (228).Unlimited_Natural_Value;
   end Internal_Get_Value;

   ------------------------
   -- Internal_Get_Value --
   ------------------------

   function Internal_Get_Value
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 111;
   end Internal_Get_Value;

   ------------------------
   -- Internal_Get_Value --
   ------------------------

   function Internal_Get_Value
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (43).Link, Self, No_UML_Element);
   end Internal_Get_Value;

   ---------------------------
   -- Internal_Get_Variable --
   ---------------------------

   function Internal_Get_Variable
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (0).Collection + 52;
   end Internal_Get_Variable;

   ---------------------------
   -- Internal_Get_Variable --
   ---------------------------

   function Internal_Get_Variable
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (58).Link, Self, No_UML_Element);
   end Internal_Get_Variable;

   ----------------------------
   -- Internal_Get_Viewpoint --
   ----------------------------

   function Internal_Get_Viewpoint
    (Self : AMF.Internals.UML_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (17).String_Value;
   end Internal_Get_Viewpoint;

   -----------------------------
   -- Internal_Get_Visibility --
   -----------------------------

   function Internal_Get_Visibility
    (Self : AMF.Internals.UML_Element)
       return AMF.UML.UML_Visibility_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (129).Visibility_Kind_Value;
   end Internal_Get_Visibility;

   -----------------------------
   -- Internal_Get_Visibility --
   -----------------------------

   function Internal_Get_Visibility
    (Self : AMF.Internals.UML_Element)
       return AMF.UML.Optional_UML_Visibility_Kind is
   begin
      return AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (6).Visibility_Kind_Holder;
   end Internal_Get_Visibility;

   -------------------------
   -- Internal_Get_Weight --
   -------------------------

   function Internal_Get_Weight
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (134).Link, Self, No_UML_Element);
   end Internal_Get_Weight;

   -----------------------
   -- Internal_Get_When --
   -----------------------

   function Internal_Get_When
    (Self : AMF.Internals.UML_Element)
       return AMF.Internals.UML_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (121).Link, Self, No_UML_Element);
   end Internal_Get_When;

   ----------------------
   -- Internal_Set_URI --
   ----------------------

   procedure Internal_Set_URI
    (Self : AMF.Internals.UML_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (15).String_Value;

      UML_Element_Table.Table (Self).Member (15).String_Value := To;

      if UML_Element_Table.Table (Self).Member (15).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (15).String_Value);
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
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Component_Realization_Realization_Abstraction,
        To,
        Self);
   end Internal_Set_Abstraction;

   -------------------------
   -- Internal_Set_Action --
   -------------------------

   procedure Internal_Set_Action
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Action_Action_Action_Execution_Specification,
        Self,
        To);
   end Internal_Set_Action;

   ---------------------------
   -- Internal_Set_Activity --
   ---------------------------

   procedure Internal_Set_Activity
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Node_Activity,
        To,
        Self);
   end Internal_Set_Activity;

   ---------------------------------
   -- Internal_Set_Activity_Scope --
   ---------------------------------

   procedure Internal_Set_Activity_Scope
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Variable_Variable_Activity_Scope,
        To,
        Self);
   end Internal_Set_Activity_Scope;

   -------------------------
   -- Internal_Set_Actual --
   -------------------------

   procedure Internal_Set_Actual
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Actual_Template_Parameter_Substitution,
        Self,
        To);
   end Internal_Set_Actual;

   ---------------------------
   -- Internal_Set_Addition --
   ---------------------------

   procedure Internal_Set_Addition
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Use_Case_Addition_Include,
        Self,
        To);
   end Internal_Set_Addition;

   ------------------------
   -- Internal_Set_After --
   ------------------------

   procedure Internal_Set_After
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_General_Ordering_To_Before_After,
        To,
        Self);
   end Internal_Set_After;

   ------------------------------
   -- Internal_Set_Aggregation --
   ------------------------------

   procedure Internal_Set_Aggregation
    (Self : AMF.Internals.UML_Element;
     To   : AMF.UML.UML_Aggregation_Kind)
   is
      Old : AMF.UML.UML_Aggregation_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (165).Aggregation_Kind_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (165).Aggregation_Kind_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Aggregation, Old, To);
   end Internal_Set_Aggregation;

   ------------------------
   -- Internal_Set_Alias --
   ------------------------

   procedure Internal_Set_Alias
    (Self : AMF.Internals.UML_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (252).String_Value;

      UML_Element_Table.Table (Self).Member (252).String_Value := To;

      if UML_Element_Table.Table (Self).Member (252).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (252).String_Value);
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
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (206).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (206).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Template_Parameter_Allow_Substitutable, Old, To);
   end Internal_Set_Allow_Substitutable;

   ----------------------------------
   -- Internal_Set_Applied_Profile --
   ----------------------------------

   procedure Internal_Set_Applied_Profile
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Profile_Applied_Profile_Profile_Application,
        Self,
        To);
   end Internal_Set_Applied_Profile;

   -----------------------------------
   -- Internal_Set_Applying_Package --
   -----------------------------------

   procedure Internal_Set_Applying_Package
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Profile_Application_Profile_Application_Applying_Package,
        To,
        Self);
   end Internal_Set_Applying_Package;

   ------------------------------
   -- Internal_Set_Association --
   ------------------------------

   procedure Internal_Set_Association
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Association_Association_Clear_Association_Action,
        Self,
        To);
   end Internal_Set_Association;

   ----------------------------------
   -- Internal_Set_Association_End --
   ----------------------------------

   procedure Internal_Set_Association_End
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Qualifier_Association_End,
        To,
        Self);
   end Internal_Set_Association_End;

   -------------------------
   -- Internal_Set_Before --
   -------------------------

   procedure Internal_Set_Before
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Occurrence_Specification_Before_To_After,
        Self,
        To);
   end Internal_Set_Before;

   ---------------------------
   -- Internal_Set_Behavior --
   ---------------------------

   procedure Internal_Set_Behavior
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behavior_Behavior_Behavior_Execution_Specification,
        Self,
        To);
   end Internal_Set_Behavior;

   -----------------------
   -- Internal_Set_Body --
   -----------------------

   procedure Internal_Set_Body
    (Self : AMF.Internals.UML_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (235).String_Value;

      UML_Element_Table.Table (Self).Member (235).String_Value := To;

      if UML_Element_Table.Table (Self).Member (235).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (235).String_Value);
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
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Constraint_Body_Condition_Body_Context,
        Self,
        To);
   end Internal_Set_Body_Condition;

   --------------------------------
   -- Internal_Set_Bound_Element --
   --------------------------------

   procedure Internal_Set_Bound_Element
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Binding_Template_Binding_Bound_Element,
        To,
        Self);
   end Internal_Set_Bound_Element;

   ------------------------------------
   -- Internal_Set_Change_Expression --
   ------------------------------------

   procedure Internal_Set_Change_Expression
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Value_Specification_Change_Expression_Change_Event,
        Self,
        To);
   end Internal_Set_Change_Expression;

   ------------------------
   -- Internal_Set_Class --
   ------------------------

   procedure Internal_Set_Class
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Owned_Attribute_Class,
        To,
        Self);
   end Internal_Set_Class;

   -----------------------------
   -- Internal_Set_Classifier --
   -----------------------------

   procedure Internal_Set_Classifier
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Classifier_Create_Object_Action,
        Self,
        To);
   end Internal_Set_Classifier;

   --------------------------------------
   -- Internal_Set_Classifier_Behavior --
   --------------------------------------

   procedure Internal_Set_Classifier_Behavior
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behavior_Classifier_Behavior_Behaviored_Classifier,
        Self,
        To);
   end Internal_Set_Classifier_Behavior;

   -----------------------------
   -- Internal_Set_Collection --
   -----------------------------

   procedure Internal_Set_Collection
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Collection_Reduce_Action,
        Self,
        To);
   end Internal_Set_Collection;

   ------------------------------
   -- Internal_Set_Concurrency --
   ------------------------------

   procedure Internal_Set_Concurrency
    (Self : AMF.Internals.UML_Element;
     To   : AMF.UML.UML_Call_Concurrency_Kind)
   is
      Old : AMF.UML.UML_Call_Concurrency_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (213).Call_Concurrency_Kind_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (213).Call_Concurrency_Kind_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavioral_Feature_Concurrency, Old, To);
   end Internal_Set_Concurrency;

   ----------------------------
   -- Internal_Set_Condition --
   ----------------------------

   procedure Internal_Set_Condition
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Constraint_Condition_Extend,
        Self,
        To);
   end Internal_Set_Condition;

   ----------------------------
   -- Internal_Set_Connector --
   ----------------------------

   procedure Internal_Set_Connector
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connector_Connector_Message,
        Self,
        To);
   end Internal_Set_Connector;

   ----------------------------
   -- Internal_Set_Container --
   ----------------------------

   procedure Internal_Set_Container
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Vertex_Subvertex_Container,
        To,
        Self);
   end Internal_Set_Container;

   --------------------------
   -- Internal_Set_Content --
   --------------------------

   procedure Internal_Set_Content
    (Self : AMF.Internals.UML_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (219).String_Value;

      UML_Element_Table.Table (Self).Member (219).String_Value := To;

      if UML_Element_Table.Table (Self).Member (219).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (219).String_Value);
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
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interface_Contract_Interface_Realization,
        Self,
        To);
   end Internal_Set_Contract;

   ---------------------------
   -- Internal_Set_Datatype --
   ---------------------------

   procedure Internal_Set_Datatype
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Owned_Attribute_Datatype,
        To,
        Self);
   end Internal_Set_Datatype;

   --------------------------
   -- Internal_Set_Decider --
   --------------------------

   procedure Internal_Set_Decider
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Decider_Clause,
        Self,
        To);
   end Internal_Set_Decider;

   ---------------------------------
   -- Internal_Set_Decision_Input --
   ---------------------------------

   procedure Internal_Set_Decision_Input
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behavior_Decision_Input_Decision_Node,
        Self,
        To);
   end Internal_Set_Decision_Input;

   --------------------------------------
   -- Internal_Set_Decision_Input_Flow --
   --------------------------------------

   procedure Internal_Set_Decision_Input_Flow
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Flow_Decision_Input_Flow_Decision_Node,
        Self,
        To);
   end Internal_Set_Decision_Input_Flow;

   --------------------------------
   -- Internal_Set_Decomposed_As --
   --------------------------------

   procedure Internal_Set_Decomposed_As
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Part_Decomposition_Decomposed_As_Lifeline,
        Self,
        To);
   end Internal_Set_Decomposed_As;

   --------------------------
   -- Internal_Set_Default --
   --------------------------

   procedure Internal_Set_Default
    (Self : AMF.Internals.UML_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (149).String_Value;

      UML_Element_Table.Table (Self).Member (149).String_Value := To;

      if UML_Element_Table.Table (Self).Member (149).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (149).String_Value);
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
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Default_Template_Parameter,
        Self,
        To);
   end Internal_Set_Default;

   --------------------------------
   -- Internal_Set_Default_Value --
   --------------------------------

   procedure Internal_Set_Default_Value
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Value_Specification_Default_Value_Owning_Property,
        Self,
        To);
   end Internal_Set_Default_Value;

   -----------------------------------
   -- Internal_Set_Defining_Feature --
   -----------------------------------

   procedure Internal_Set_Defining_Feature
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structural_Feature_Defining_Feature_Slot,
        Self,
        To);
   end Internal_Set_Defining_Feature;

   -----------------------------
   -- Internal_Set_Deployment --
   -----------------------------

   procedure Internal_Set_Deployment
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Deployment_Specification_Configuration_Deployment,
        To,
        Self);
   end Internal_Set_Deployment;

   --------------------------------------
   -- Internal_Set_Deployment_Location --
   --------------------------------------

   procedure Internal_Set_Deployment_Location
    (Self : AMF.Internals.UML_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (216).String_Value;

      UML_Element_Table.Table (Self).Member (216).String_Value := To;

      if UML_Element_Table.Table (Self).Member (216).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (216).String_Value);
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
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Destroy_At_Link_End_Destruction_Data,
        Self,
        To);
   end Internal_Set_Destroy_At;

   ----------------------------
   -- Internal_Set_Direction --
   ----------------------------

   procedure Internal_Set_Direction
    (Self : AMF.Internals.UML_Element;
     To   : AMF.UML.UML_Parameter_Direction_Kind)
   is
      Old : AMF.UML.UML_Parameter_Direction_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (151).Parameter_Direction_Kind_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (151).Parameter_Direction_Kind_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameter_Direction, Old, To);
   end Internal_Set_Direction;

   ------------------------------
   -- Internal_Set_Do_Activity --
   ------------------------------

   procedure Internal_Set_Do_Activity
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behavior_Do_Activity_State,
        Self,
        To);
   end Internal_Set_Do_Activity;

   -------------------------
   -- Internal_Set_Effect --
   -------------------------

   procedure Internal_Set_Effect
    (Self : AMF.Internals.UML_Element;
     To   : AMF.UML.Optional_UML_Parameter_Effect_Kind)
   is
      Old : AMF.UML.Optional_UML_Parameter_Effect_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (152).Parameter_Effect_Kind_Holder;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (152).Parameter_Effect_Kind_Holder := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameter_Effect, Old, To);
   end Internal_Set_Effect;

   -------------------------
   -- Internal_Set_Effect --
   -------------------------

   procedure Internal_Set_Effect
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behavior_Effect_Transition,
        Self,
        To);
   end Internal_Set_Effect;

   ----------------------------------------
   -- Internal_Set_Enclosing_Interaction --
   ----------------------------------------

   procedure Internal_Set_Enclosing_Interaction
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Fragment_Fragment_Enclosing_Interaction,
        To,
        Self);
   end Internal_Set_Enclosing_Interaction;

   ------------------------------------
   -- Internal_Set_Enclosing_Operand --
   ------------------------------------

   procedure Internal_Set_Enclosing_Operand
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Fragment_Fragment_Enclosing_Operand,
        To,
        Self);
   end Internal_Set_Enclosing_Operand;

   ----------------------
   -- Internal_Set_End --
   ----------------------

   procedure Internal_Set_End
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_End_Link_End_Data,
        Self,
        To);
   end Internal_Set_End;

   ------------------------
   -- Internal_Set_Entry --
   ------------------------

   procedure Internal_Set_Entry
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behavior_Entry_State,
        Self,
        To);
   end Internal_Set_Entry;

   ------------------------------
   -- Internal_Set_Enumeration --
   ------------------------------

   procedure Internal_Set_Enumeration
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Enumeration_Literal_Owned_Literal_Enumeration,
        To,
        Self);
   end Internal_Set_Enumeration;

   ------------------------
   -- Internal_Set_Event --
   ------------------------

   procedure Internal_Set_Event
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Named_Element_Event_Time_Observation,
        Self,
        To);
   end Internal_Set_Event;

   ----------------------------
   -- Internal_Set_Exception --
   ----------------------------

   procedure Internal_Set_Exception
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Exception_Raise_Exception_Action,
        Self,
        To);
   end Internal_Set_Exception;

   ----------------------------------
   -- Internal_Set_Exception_Input --
   ----------------------------------

   procedure Internal_Set_Exception_Input
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Object_Node_Exception_Input_Exception_Handler,
        Self,
        To);
   end Internal_Set_Exception_Input;

   ----------------------------
   -- Internal_Set_Execution --
   ----------------------------

   procedure Internal_Set_Execution
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Execution_Specification_Execution_Execution_Occurrence_Specification,
        Self,
        To);
   end Internal_Set_Execution;

   -------------------------------------
   -- Internal_Set_Execution_Location --
   -------------------------------------

   procedure Internal_Set_Execution_Location
    (Self : AMF.Internals.UML_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (217).String_Value;

      UML_Element_Table.Table (Self).Member (217).String_Value := To;

      if UML_Element_Table.Table (Self).Member (217).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (217).String_Value);
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
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behavior_Exit_State,
        Self,
        To);
   end Internal_Set_Exit;

   -----------------------
   -- Internal_Set_Expr --
   -----------------------

   procedure Internal_Set_Expr
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Value_Specification_Expr_Duration,
        Self,
        To);
   end Internal_Set_Expr;

   --------------------------------
   -- Internal_Set_Extended_Case --
   --------------------------------

   procedure Internal_Set_Extended_Case
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Use_Case_Extended_Case_Extend,
        Self,
        To);
   end Internal_Set_Extended_Case;

   ----------------------------------
   -- Internal_Set_Extended_Region --
   ----------------------------------

   procedure Internal_Set_Extended_Region
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Region_Extended_Region_Region,
        Self,
        To);
   end Internal_Set_Extended_Region;

   ----------------------------
   -- Internal_Set_Extension --
   ----------------------------

   procedure Internal_Set_Extension
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Extend_Extend_Extension,
        To,
        Self);
   end Internal_Set_Extension;

   ----------------------------
   -- Internal_Set_File_Name --
   ----------------------------

   procedure Internal_Set_File_Name
    (Self : AMF.Internals.UML_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (214).String_Value;

      UML_Element_Table.Table (Self).Member (214).String_Value := To;

      if UML_Element_Table.Table (Self).Member (214).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (214).String_Value);
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
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Occurrence_Specification_Finish_Execution_Specification,
        Self,
        To);
   end Internal_Set_Finish;

   ------------------------
   -- Internal_Set_First --
   ------------------------

   procedure Internal_Set_First
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_First_Test_Identity_Action,
        Self,
        To);
   end Internal_Set_First;

   ------------------------------
   -- Internal_Set_First_Event --
   ------------------------------

   procedure Internal_Set_First_Event
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Optional_Boolean)
   is
      Old : AMF.Optional_Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (113).Boolean_Holder;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (113).Boolean_Holder := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Time_Constraint_First_Event, Old, To);
   end Internal_Set_First_Event;

   ------------------------------
   -- Internal_Set_First_Event --
   ------------------------------

   procedure Internal_Set_First_Event
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (143).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (143).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Time_Observation_First_Event, Old, To);
   end Internal_Set_First_Event;

   -------------------------
   -- Internal_Set_Formal --
   -------------------------

   procedure Internal_Set_Formal
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Formal_Template_Parameter_Substitution,
        Self,
        To);
   end Internal_Set_Formal;

   -------------------------
   -- Internal_Set_Format --
   -------------------------

   procedure Internal_Set_Format
    (Self : AMF.Internals.UML_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (220).String_Value;

      UML_Element_Table.Table (Self).Member (220).String_Value := To;

      if UML_Element_Table.Table (Self).Member (220).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (220).String_Value);
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
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Action_From_Action_Action_Input_Pin,
        Self,
        To);
   end Internal_Set_From_Action;

   --------------------------
   -- Internal_Set_General --
   --------------------------

   procedure Internal_Set_General
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_General_Generalization,
        Self,
        To);
   end Internal_Set_General;

   ----------------------------------
   -- Internal_Set_General_Machine --
   ----------------------------------

   procedure Internal_Set_General_Machine
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Protocol_State_Machine_General_Machine_Protocol_Conformance,
        Self,
        To);
   end Internal_Set_General_Machine;

   ------------------------
   -- Internal_Set_Guard --
   ------------------------

   procedure Internal_Set_Guard
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Value_Specification_Guard_Activity_Edge,
        Self,
        To);
   end Internal_Set_Guard;

   -------------------------------
   -- Internal_Set_Handler_Body --
   -------------------------------

   procedure Internal_Set_Handler_Body
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Executable_Node_Handler_Body_Exception_Handler,
        Self,
        To);
   end Internal_Set_Handler_Body;

   ------------------------------------------
   -- Internal_Set_Implementing_Classifier --
   ------------------------------------------

   procedure Internal_Set_Implementing_Classifier
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interface_Realization_Interface_Realization_Implementing_Classifier,
        To,
        Self);
   end Internal_Set_Implementing_Classifier;

   -----------------------------------
   -- Internal_Set_Imported_Element --
   -----------------------------------

   procedure Internal_Set_Imported_Element
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Packageable_Element_Imported_Element_Element_Import,
        Self,
        To);
   end Internal_Set_Imported_Element;

   -----------------------------------
   -- Internal_Set_Imported_Package --
   -----------------------------------

   procedure Internal_Set_Imported_Package
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Imported_Package_Package_Import,
        Self,
        To);
   end Internal_Set_Imported_Package;

   --------------------------------------
   -- Internal_Set_Importing_Namespace --
   --------------------------------------

   procedure Internal_Set_Importing_Namespace
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Import_Element_Import_Importing_Namespace,
        To,
        Self);
   end Internal_Set_Importing_Namespace;

   ------------------------------
   -- Internal_Set_In_Activity --
   ------------------------------

   procedure Internal_Set_In_Activity
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Group_Group_In_Activity,
        To,
        Self);
   end Internal_Set_In_Activity;

   -------------------------------------
   -- Internal_Set_In_Structured_Node --
   -------------------------------------

   procedure Internal_Set_In_Structured_Node
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Node_Node_In_Structured_Node,
        To,
        Self);
   end Internal_Set_In_Structured_Node;

   ---------------------------------
   -- Internal_Set_Including_Case --
   ---------------------------------

   procedure Internal_Set_Including_Case
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Include_Include_Including_Case,
        To,
        Self);
   end Internal_Set_Including_Case;

   ----------------------------
   -- Internal_Set_Insert_At --
   ----------------------------

   procedure Internal_Set_Insert_At
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Insert_At_Add_Structural_Feature_Value_Action,
        Self,
        To);
   end Internal_Set_Insert_At;

   ---------------------------
   -- Internal_Set_Instance --
   ---------------------------

   procedure Internal_Set_Instance
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Instance_Specification_Instance_Instance_Value,
        Self,
        To);
   end Internal_Set_Instance;

   ------------------------------
   -- Internal_Set_Interaction --
   ------------------------------

   procedure Internal_Set_Interaction
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Lifeline_Lifeline_Interaction,
        To,
        Self);
   end Internal_Set_Interaction;

   ---------------------------------------
   -- Internal_Set_Interaction_Operator --
   ---------------------------------------

   procedure Internal_Set_Interaction_Operator
    (Self : AMF.Internals.UML_Element;
     To   : AMF.UML.UML_Interaction_Operator_Kind)
   is
      Old : AMF.UML.UML_Interaction_Operator_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (136).Interaction_Operator_Kind_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (136).Interaction_Operator_Kind_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Combined_Fragment_Interaction_Operator, Old, To);
   end Internal_Set_Interaction_Operator;

   ----------------------------
   -- Internal_Set_Interface --
   ----------------------------

   procedure Internal_Set_Interface
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Owned_Attribute_Interface,
        To,
        Self);
   end Internal_Set_Interface;

   -----------------------------
   -- Internal_Set_Interrupts --
   -----------------------------

   procedure Internal_Set_Interrupts
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Edge_Interrupting_Edge_Interrupts,
        To,
        Self);
   end Internal_Set_Interrupts;

   ----------------------------
   -- Internal_Set_Invariant --
   ----------------------------

   procedure Internal_Set_Invariant
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Constraint_Invariant_State_Invariant,
        Self,
        To);
   end Internal_Set_Invariant;

   ------------------------------
   -- Internal_Set_Is_Abstract --
   ------------------------------

   procedure Internal_Set_Is_Abstract
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (19).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (19).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Is_Abstract, Old, To);
   end Internal_Set_Is_Abstract;

   ----------------------------
   -- Internal_Set_Is_Active --
   ----------------------------

   procedure Internal_Set_Is_Active
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (49).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (49).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Class_Is_Active, Old, To);
   end Internal_Set_Is_Active;

   -----------------------------
   -- Internal_Set_Is_Assured --
   -----------------------------

   procedure Internal_Set_Is_Assured
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (26).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (26).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Conditional_Node_Is_Assured, Old, To);
   end Internal_Set_Is_Assured;

   ------------------------------
   -- Internal_Set_Is_Behavior --
   ------------------------------

   procedure Internal_Set_Is_Behavior
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (197).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (197).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Port_Is_Behavior, Old, To);
   end Internal_Set_Is_Behavior;

   ---------------------------------------
   -- Internal_Set_Is_Combine_Duplicate --
   ---------------------------------------

   procedure Internal_Set_Is_Combine_Duplicate
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (131).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (131).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Join_Node_Is_Combine_Duplicate, Old, To);
   end Internal_Set_Is_Combine_Duplicate;

   -------------------------------
   -- Internal_Set_Is_Composite --
   -------------------------------

   procedure Internal_Set_Is_Composite
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (158).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (158).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Is_Composite, Old, To);
   end Internal_Set_Is_Composite;

   --------------------------------
   -- Internal_Set_Is_Conjugated --
   --------------------------------

   procedure Internal_Set_Is_Conjugated
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (198).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (198).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Port_Is_Conjugated, Old, To);
   end Internal_Set_Is_Conjugated;

   -----------------------------
   -- Internal_Set_Is_Control --
   -----------------------------

   procedure Internal_Set_Is_Control
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (84).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (84).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Pin_Is_Control, Old, To);
   end Internal_Set_Is_Control;

   ----------------------------------
   -- Internal_Set_Is_Control_Type --
   ----------------------------------

   procedure Internal_Set_Is_Control_Type
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (80).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (80).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Object_Node_Is_Control_Type, Old, To);
   end Internal_Set_Is_Control_Type;

   ------------------------------
   -- Internal_Set_Is_Covering --
   ------------------------------

   procedure Internal_Set_Is_Covering
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (209).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (209).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Generalization_Set_Is_Covering, Old, To);
   end Internal_Set_Is_Covering;

   -----------------------------
   -- Internal_Set_Is_Derived --
   -----------------------------

   procedure Internal_Set_Is_Derived
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (137).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (137).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Association_Is_Derived, Old, To);
   end Internal_Set_Is_Derived;

   -----------------------------------
   -- Internal_Set_Is_Derived_Union --
   -----------------------------------

   procedure Internal_Set_Is_Derived_Union
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (171).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (171).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Is_Derived_Union, Old, To);
   end Internal_Set_Is_Derived_Union;

   ----------------------------------------
   -- Internal_Set_Is_Destroy_Duplicates --
   ----------------------------------------

   procedure Internal_Set_Is_Destroy_Duplicates
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (182).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (182).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Link_End_Destruction_Data_Is_Destroy_Duplicates, Old, To);
   end Internal_Set_Is_Destroy_Duplicates;

   -----------------------------------
   -- Internal_Set_Is_Destroy_Links --
   -----------------------------------

   procedure Internal_Set_Is_Destroy_Links
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (230).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (230).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Destroy_Object_Action_Is_Destroy_Links, Old, To);
   end Internal_Set_Is_Destroy_Links;

   -------------------------------------------
   -- Internal_Set_Is_Destroy_Owned_Objects --
   -------------------------------------------

   procedure Internal_Set_Is_Destroy_Owned_Objects
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (231).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (231).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Destroy_Object_Action_Is_Destroy_Owned_Objects, Old, To);
   end Internal_Set_Is_Destroy_Owned_Objects;

   ---------------------------------
   -- Internal_Set_Is_Determinate --
   ---------------------------------

   procedure Internal_Set_Is_Determinate
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (27).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (27).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Conditional_Node_Is_Determinate, Old, To);
   end Internal_Set_Is_Determinate;

   -------------------------------
   -- Internal_Set_Is_Dimension --
   -------------------------------

   procedure Internal_Set_Is_Dimension
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (189).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (189).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Partition_Is_Dimension, Old, To);
   end Internal_Set_Is_Dimension;

   ----------------------------
   -- Internal_Set_Is_Direct --
   ----------------------------

   procedure Internal_Set_Is_Direct
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (148).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (148).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Read_Is_Classified_Object_Action_Is_Direct, Old, To);
   end Internal_Set_Is_Direct;

   ------------------------------
   -- Internal_Set_Is_Disjoint --
   ------------------------------

   procedure Internal_Set_Is_Disjoint
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (210).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (210).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Generalization_Set_Is_Disjoint, Old, To);
   end Internal_Set_Is_Disjoint;

   -------------------------------
   -- Internal_Set_Is_Exception --
   -------------------------------

   procedure Internal_Set_Is_Exception
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (153).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (153).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameter_Is_Exception, Old, To);
   end Internal_Set_Is_Exception;

   ------------------------------
   -- Internal_Set_Is_External --
   ------------------------------

   procedure Internal_Set_Is_External
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (190).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (190).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Partition_Is_External, Old, To);
   end Internal_Set_Is_External;

   ------------------------------------------
   -- Internal_Set_Is_Final_Specialization --
   ------------------------------------------

   procedure Internal_Set_Is_Final_Specialization
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (20).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (20).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Classifier_Is_Final_Specialization, Old, To);
   end Internal_Set_Is_Final_Specialization;

   ------------------------
   -- Internal_Set_Is_ID --
   ------------------------

   procedure Internal_Set_Is_ID
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (172).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (172).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Property_Is_ID, Old, To);
   end Internal_Set_Is_ID;

   ---------------------------------------------
   -- Internal_Set_Is_Indirectly_Instantiated --
   ---------------------------------------------

   procedure Internal_Set_Is_Indirectly_Instantiated
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (247).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (247).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Component_Is_Indirectly_Instantiated, Old, To);
   end Internal_Set_Is_Indirectly_Instantiated;

   --------------------------
   -- Internal_Set_Is_Leaf --
   --------------------------

   procedure Internal_Set_Is_Leaf
    (Self : AMF.Internals.UML_Element;
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
    (Self : AMF.Internals.UML_Element;
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
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (183).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (183).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Object_Flow_Is_Multicast, Old, To);
   end Internal_Set_Is_Multicast;

   ----------------------------------
   -- Internal_Set_Is_Multireceive --
   ----------------------------------

   procedure Internal_Set_Is_Multireceive
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (184).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (184).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Object_Flow_Is_Multireceive, Old, To);
   end Internal_Set_Is_Multireceive;

   -----------------------------
   -- Internal_Set_Is_Ordered --
   -----------------------------

   procedure Internal_Set_Is_Ordered
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (34).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (34).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Is_Ordered, Old, To);
   end Internal_Set_Is_Ordered;

   ---------------------------
   -- Internal_Set_Is_Query --
   ---------------------------

   procedure Internal_Set_Is_Query
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (237).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (237).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Operation_Is_Query, Old, To);
   end Internal_Set_Is_Query;

   -------------------------------
   -- Internal_Set_Is_Read_Only --
   -------------------------------

   procedure Internal_Set_Is_Read_Only
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (108).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (108).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Is_Read_Only, Old, To);
   end Internal_Set_Is_Read_Only;

   -------------------------------
   -- Internal_Set_Is_Reentrant --
   -------------------------------

   procedure Internal_Set_Is_Reentrant
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (50).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (50).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Behavior_Is_Reentrant, Old, To);
   end Internal_Set_Is_Reentrant;

   ------------------------------
   -- Internal_Set_Is_Relative --
   ------------------------------

   procedure Internal_Set_Is_Relative
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (120).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (120).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Time_Event_Is_Relative, Old, To);
   end Internal_Set_Is_Relative;

   ---------------------------------------
   -- Internal_Set_Is_Remove_Duplicates --
   ---------------------------------------

   procedure Internal_Set_Is_Remove_Duplicates
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (63).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (63).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Remove_Structural_Feature_Value_Action_Is_Remove_Duplicates, Old, To);
   end Internal_Set_Is_Remove_Duplicates;

   ---------------------------------
   -- Internal_Set_Is_Replace_All --
   ---------------------------------

   procedure Internal_Set_Is_Replace_All
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (178).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (178).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Add_Structural_Feature_Value_Action_Is_Replace_All, Old, To);
   end Internal_Set_Is_Replace_All;

   -----------------------------
   -- Internal_Set_Is_Service --
   -----------------------------

   procedure Internal_Set_Is_Service
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (199).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (199).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Port_Is_Service, Old, To);
   end Internal_Set_Is_Service;

   --------------------------------------
   -- Internal_Set_Is_Single_Execution --
   --------------------------------------

   procedure Internal_Set_Is_Single_Execution
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (109).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (109).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Activity_Is_Single_Execution, Old, To);
   end Internal_Set_Is_Single_Execution;

   ----------------------------
   -- Internal_Set_Is_Static --
   ----------------------------

   procedure Internal_Set_Is_Static
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (96).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (96).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Feature_Is_Static, Old, To);
   end Internal_Set_Is_Static;

   ----------------------------
   -- Internal_Set_Is_Stream --
   ----------------------------

   procedure Internal_Set_Is_Stream
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (154).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (154).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Parameter_Is_Stream, Old, To);
   end Internal_Set_Is_Stream;

   ----------------------------
   -- Internal_Set_Is_Strict --
   ----------------------------

   procedure Internal_Set_Is_Strict
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (224).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (224).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Profile_Application_Is_Strict, Old, To);
   end Internal_Set_Is_Strict;

   -----------------------------------
   -- Internal_Set_Is_Substitutable --
   -----------------------------------

   procedure Internal_Set_Is_Substitutable
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Optional_Boolean)
   is
      Old : AMF.Optional_Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (204).Boolean_Holder;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (204).Boolean_Holder := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Generalization_Is_Substitutable, Old, To);
   end Internal_Set_Is_Substitutable;

   ---------------------------------
   -- Internal_Set_Is_Synchronous --
   ---------------------------------

   procedure Internal_Set_Is_Synchronous
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (57).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (57).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Call_Action_Is_Synchronous, Old, To);
   end Internal_Set_Is_Synchronous;

   ----------------------------------
   -- Internal_Set_Is_Tested_First --
   ----------------------------------

   procedure Internal_Set_Is_Tested_First
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (229).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (229).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Loop_Node_Is_Tested_First, Old, To);
   end Internal_Set_Is_Tested_First;

   ----------------------------
   -- Internal_Set_Is_Unique --
   ----------------------------

   procedure Internal_Set_Is_Unique
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (35).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (35).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Is_Unique, Old, To);
   end Internal_Set_Is_Unique;

   --------------------------------
   -- Internal_Set_Is_Unmarshall --
   --------------------------------

   procedure Internal_Set_Is_Unmarshall
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (30).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (30).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Accept_Event_Action_Is_Unmarshall, Old, To);
   end Internal_Set_Is_Unmarshall;

   ----------------------------
   -- Internal_Set_Join_Spec --
   ----------------------------

   procedure Internal_Set_Join_Spec
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Value_Specification_Join_Spec_Join_Node,
        Self,
        To);
   end Internal_Set_Join_Spec;

   -----------------------
   -- Internal_Set_Kind --
   -----------------------

   procedure Internal_Set_Kind
    (Self : AMF.Internals.UML_Element;
     To   : AMF.UML.UML_Pseudostate_Kind)
   is
      Old : AMF.UML.UML_Pseudostate_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (91).Pseudostate_Kind_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (91).Pseudostate_Kind_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Pseudostate_Kind, Old, To);
   end Internal_Set_Kind;

   -----------------------
   -- Internal_Set_Kind --
   -----------------------

   procedure Internal_Set_Kind
    (Self : AMF.Internals.UML_Element;
     To   : AMF.UML.UML_Transition_Kind)
   is
      Old : AMF.UML.UML_Transition_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (74).Transition_Kind_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (74).Transition_Kind_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Transition_Kind, Old, To);
   end Internal_Set_Kind;

   ---------------------------
   -- Internal_Set_Location --
   ---------------------------

   procedure Internal_Set_Location
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Deployment_Deployment_Location,
        To,
        Self);
   end Internal_Set_Location;

   ---------------------------
   -- Internal_Set_Location --
   ---------------------------

   procedure Internal_Set_Location
    (Self : AMF.Internals.UML_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (221).String_Value;

      UML_Element_Table.Table (Self).Member (221).String_Value := To;

      if UML_Element_Table.Table (Self).Member (221).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (221).String_Value);
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
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Optional_Integer)
   is
      Old : AMF.Optional_Integer;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (36).Integer_Holder;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (36).Integer_Holder := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Lower, Old, To);
   end Internal_Set_Lower;

   ------------------------------
   -- Internal_Set_Lower_Value --
   ------------------------------

   procedure Internal_Set_Lower_Value
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Value_Specification_Lower_Value_Owning_Lower,
        Self,
        To);
   end Internal_Set_Lower_Value;

   --------------------------
   -- Internal_Set_Mapping --
   --------------------------

   procedure Internal_Set_Mapping
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Opaque_Expression_Mapping_Abstraction,
        Self,
        To);
   end Internal_Set_Mapping;

   ----------------------
   -- Internal_Set_Max --
   ----------------------

   procedure Internal_Set_Max
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Duration_Max_Duration_Interval,
        Self,
        To);
   end Internal_Set_Max;

   -------------------------
   -- Internal_Set_Maxint --
   -------------------------

   procedure Internal_Set_Maxint
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Value_Specification_Maxint_Interaction_Constraint,
        Self,
        To);
   end Internal_Set_Maxint;

   ---------------------------------
   -- Internal_Set_Merged_Package --
   ---------------------------------

   procedure Internal_Set_Merged_Package
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Merged_Package_Package_Merge,
        Self,
        To);
   end Internal_Set_Merged_Package;

   --------------------------
   -- Internal_Set_Message --
   --------------------------

   procedure Internal_Set_Message
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Message_Message_Message_End,
        Self,
        To);
   end Internal_Set_Message;

   -------------------------------
   -- Internal_Set_Message_Sort --
   -------------------------------

   procedure Internal_Set_Message_Sort
    (Self : AMF.Internals.UML_Element;
     To   : AMF.UML.UML_Message_Sort)
   is
      Old : AMF.UML.UML_Message_Sort;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (240).Message_Sort_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (240).Message_Sort_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Message_Message_Sort, Old, To);
   end Internal_Set_Message_Sort;

   ----------------------
   -- Internal_Set_Min --
   ----------------------

   procedure Internal_Set_Min
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Duration_Min_Duration_Interval,
        Self,
        To);
   end Internal_Set_Min;

   -------------------------
   -- Internal_Set_Minint --
   -------------------------

   procedure Internal_Set_Minint
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Value_Specification_Minint_Interaction_Constraint,
        Self,
        To);
   end Internal_Set_Minint;

   -----------------------
   -- Internal_Set_Mode --
   -----------------------

   procedure Internal_Set_Mode
    (Self : AMF.Internals.UML_Element;
     To   : AMF.UML.UML_Expansion_Kind)
   is
      Old : AMF.UML.UML_Expansion_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (110).Expansion_Kind_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (110).Expansion_Kind_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Expansion_Region_Mode, Old, To);
   end Internal_Set_Mode;

   -------------------------------
   -- Internal_Set_Must_Isolate --
   -------------------------------

   procedure Internal_Set_Must_Isolate
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (25).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (25).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Structured_Activity_Node_Must_Isolate, Old, To);
   end Internal_Set_Must_Isolate;

   -----------------------
   -- Internal_Set_Name --
   -----------------------

   procedure Internal_Set_Name
    (Self : AMF.Internals.UML_Element;
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
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Name_Expression_Named_Element,
        Self,
        To);
   end Internal_Set_Name_Expression;

   ----------------------------------
   -- Internal_Set_Nesting_Package --
   ----------------------------------

   procedure Internal_Set_Nesting_Package
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Nested_Package_Nesting_Package,
        To,
        Self);
   end Internal_Set_Nesting_Package;

   -------------------------
   -- Internal_Set_Object --
   -------------------------

   procedure Internal_Set_Object
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Object_Structural_Feature_Action,
        Self,
        To);
   end Internal_Set_Object;

   --------------------------
   -- Internal_Set_On_Port --
   --------------------------

   procedure Internal_Set_On_Port
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Port_On_Port_Invocation_Action,
        Self,
        To);
   end Internal_Set_On_Port;

   ----------------------------
   -- Internal_Set_Operation --
   ----------------------------

   procedure Internal_Set_Operation
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Operation_Operation_Call_Event,
        Self,
        To);
   end Internal_Set_Operation;

   ---------------------------
   -- Internal_Set_Opposite --
   ---------------------------

   procedure Internal_Set_Opposite
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Opposite_Property,
        Self,
        To);
   end Internal_Set_Opposite;

   ---------------------------
   -- Internal_Set_Ordering --
   ---------------------------

   procedure Internal_Set_Ordering
    (Self : AMF.Internals.UML_Element;
     To   : AMF.UML.UML_Object_Node_Ordering_Kind)
   is
      Old : AMF.UML.UML_Object_Node_Ordering_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (81).Object_Node_Ordering_Kind_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (81).Object_Node_Ordering_Kind_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Object_Node_Ordering, Old, To);
   end Internal_Set_Ordering;

   -------------------------------
   -- Internal_Set_Owned_Actual --
   -------------------------------

   procedure Internal_Set_Owned_Actual
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Owned_Actual_Template_Parameter_Substitution,
        Self,
        To);
   end Internal_Set_Owned_Actual;

   --------------------------------
   -- Internal_Set_Owned_Default --
   --------------------------------

   procedure Internal_Set_Owned_Default
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Owned_Default_Template_Parameter,
        Self,
        To);
   end Internal_Set_Owned_Default;

   --------------------------------------------
   -- Internal_Set_Owned_Parametered_Element --
   --------------------------------------------

   procedure Internal_Set_Owned_Parametered_Element
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Owned_Parametered_Element_Owning_Template_Parameter,
        Self,
        To);
   end Internal_Set_Owned_Parametered_Element;

   -------------------------------------------
   -- Internal_Set_Owned_Template_Signature --
   -------------------------------------------

   procedure Internal_Set_Owned_Template_Signature
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Redefinable_Template_Signature_Owned_Template_Signature_Classifier,
        Self,
        To);
   end Internal_Set_Owned_Template_Signature;

   -------------------------------------
   -- Internal_Set_Owning_Association --
   -------------------------------------

   procedure Internal_Set_Owning_Association
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Owned_End_Owning_Association,
        To,
        Self);
   end Internal_Set_Owning_Association;

   ------------------------------------
   -- Internal_Set_Owning_Expression --
   ------------------------------------

   procedure Internal_Set_Owning_Expression
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_String_Expression_Sub_Expression_Owning_Expression,
        To,
        Self);
   end Internal_Set_Owning_Expression;

   ----------------------------------
   -- Internal_Set_Owning_Instance --
   ----------------------------------

   procedure Internal_Set_Owning_Instance
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Slot_Slot_Owning_Instance,
        To,
        Self);
   end Internal_Set_Owning_Instance;

   --------------------------------------------
   -- Internal_Set_Owning_Template_Parameter --
   --------------------------------------------

   procedure Internal_Set_Owning_Template_Parameter
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Owned_Parametered_Element_Owning_Template_Parameter,
        To,
        Self);
   end Internal_Set_Owning_Template_Parameter;

   --------------------------
   -- Internal_Set_Package --
   --------------------------

   procedure Internal_Set_Package
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Owned_Type_Package,
        To,
        Self);
   end Internal_Set_Package;

   ----------------------------
   -- Internal_Set_Parameter --
   ----------------------------

   procedure Internal_Set_Parameter
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameter_Parameter_Activity_Parameter_Node,
        Self,
        To);
   end Internal_Set_Parameter;

   --------------------------------------
   -- Internal_Set_Parametered_Element --
   --------------------------------------

   procedure Internal_Set_Parametered_Element
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Template_Parameter_Template_Parameter_Parametered_Element,
        To,
        Self);
   end Internal_Set_Parametered_Element;

   ---------------------------------
   -- Internal_Set_Part_With_Port --
   ---------------------------------

   procedure Internal_Set_Part_With_Port
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Part_With_Port_Connector_End,
        Self,
        To);
   end Internal_Set_Part_With_Port;

   ---------------------------------
   -- Internal_Set_Post_Condition --
   ---------------------------------

   procedure Internal_Set_Post_Condition
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Constraint_Post_Condition_Owning_Transition,
        Self,
        To);
   end Internal_Set_Post_Condition;

   ----------------------------
   -- Internal_Set_Powertype --
   ----------------------------

   procedure Internal_Set_Powertype
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Generalization_Set_Powertype_Extent_Powertype,
        To,
        Self);
   end Internal_Set_Powertype;

   --------------------------------
   -- Internal_Set_Pre_Condition --
   --------------------------------

   procedure Internal_Set_Pre_Condition
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Constraint_Pre_Condition_Protocol_Transition,
        Self,
        To);
   end Internal_Set_Pre_Condition;

   ---------------------------------
   -- Internal_Set_Protected_Node --
   ---------------------------------

   procedure Internal_Set_Protected_Node
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Exception_Handler_Handler_Protected_Node,
        To,
        Self);
   end Internal_Set_Protected_Node;

   ---------------------------
   -- Internal_Set_Protocol --
   ---------------------------

   procedure Internal_Set_Protocol
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Protocol_State_Machine_Protocol_Interface,
        Self,
        To);
   end Internal_Set_Protocol;

   ----------------------------
   -- Internal_Set_Qualifier --
   ----------------------------

   procedure Internal_Set_Qualifier
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Qualifier_Qualifier_Value,
        Self,
        To);
   end Internal_Set_Qualifier;

   --------------------------------
   -- Internal_Set_Receive_Event --
   --------------------------------

   procedure Internal_Set_Receive_Event
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Message_End_Receive_Event_End_Message,
        Self,
        To);
   end Internal_Set_Receive_Event;

   ------------------------------------
   -- Internal_Set_Receiving_Package --
   ------------------------------------

   procedure Internal_Set_Receiving_Package
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Package_Merge_Package_Merge_Receiving_Package,
        To,
        Self);
   end Internal_Set_Receiving_Package;

   ----------------------------------
   -- Internal_Set_Redefined_State --
   ----------------------------------

   procedure Internal_Set_Redefined_State
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_Redefined_State_State,
        Self,
        To);
   end Internal_Set_Redefined_State;

   ---------------------------------------
   -- Internal_Set_Redefined_Transition --
   ---------------------------------------

   procedure Internal_Set_Redefined_Transition
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Transition_Redefined_Transition_Transition,
        Self,
        To);
   end Internal_Set_Redefined_Transition;

   --------------------------
   -- Internal_Set_Reducer --
   --------------------------

   procedure Internal_Set_Reducer
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behavior_Reducer_Reduce_Action,
        Self,
        To);
   end Internal_Set_Reducer;

   ----------------------------
   -- Internal_Set_Refers_To --
   ----------------------------

   procedure Internal_Set_Refers_To
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Interaction_Refers_To_Interaction_Use,
        Self,
        To);
   end Internal_Set_Refers_To;

   ----------------------------------
   -- Internal_Set_Region_As_Input --
   ----------------------------------

   procedure Internal_Set_Region_As_Input
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Expansion_Node_Input_Element_Region_As_Input,
        To,
        Self);
   end Internal_Set_Region_As_Input;

   -----------------------------------
   -- Internal_Set_Region_As_Output --
   -----------------------------------

   procedure Internal_Set_Region_As_Output
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Expansion_Node_Output_Element_Region_As_Output,
        To,
        Self);
   end Internal_Set_Region_As_Output;

   ----------------------------
   -- Internal_Set_Remove_At --
   ----------------------------

   procedure Internal_Set_Remove_At
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Remove_At_Remove_Structural_Feature_Value_Action,
        Self,
        To);
   end Internal_Set_Remove_At;

   --------------------------------
   -- Internal_Set_Reply_To_Call --
   --------------------------------

   procedure Internal_Set_Reply_To_Call
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Trigger_Reply_To_Call_Reply_Action,
        Self,
        To);
   end Internal_Set_Reply_To_Call;

   ---------------------------------
   -- Internal_Set_Representation --
   ---------------------------------

   procedure Internal_Set_Representation
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Collaboration_Use_Representation_Classifier,
        Self,
        To);
   end Internal_Set_Representation;

   -----------------------------
   -- Internal_Set_Represents --
   -----------------------------

   procedure Internal_Set_Represents
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Element_Represents_Activity_Partition,
        Self,
        To);
   end Internal_Set_Represents;

   -------------------------
   -- Internal_Set_Result --
   -------------------------

   procedure Internal_Set_Result
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Result_Write_Structural_Feature_Action,
        Self,
        To);
   end Internal_Set_Result;

   -------------------------------------
   -- Internal_Set_Return_Information --
   -------------------------------------

   procedure Internal_Set_Return_Information
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Output_Pin_Return_Information_Accept_Call_Action,
        Self,
        To);
   end Internal_Set_Return_Information;

   -------------------------------
   -- Internal_Set_Return_Value --
   -------------------------------

   procedure Internal_Set_Return_Value
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Value_Specification_Return_Value_Interaction_Use,
        Self,
        To);
   end Internal_Set_Return_Value;

   -----------------------------------------
   -- Internal_Set_Return_Value_Recipient --
   -----------------------------------------

   procedure Internal_Set_Return_Value_Recipient
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Property_Return_Value_Recipient_Interaction_Use,
        Self,
        To);
   end Internal_Set_Return_Value_Recipient;

   -----------------------
   -- Internal_Set_Role --
   -----------------------

   procedure Internal_Set_Role
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connector_End_End_Role,
        To,
        Self);
   end Internal_Set_Role;

   ------------------------
   -- Internal_Set_Scope --
   ------------------------

   procedure Internal_Set_Scope
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Variable_Variable_Scope,
        To,
        Self);
   end Internal_Set_Scope;

   -------------------------
   -- Internal_Set_Second --
   -------------------------

   procedure Internal_Set_Second
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Second_Test_Identity_Action,
        Self,
        To);
   end Internal_Set_Second;

   ----------------------------
   -- Internal_Set_Selection --
   ----------------------------

   procedure Internal_Set_Selection
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behavior_Selection_Object_Node,
        Self,
        To);
   end Internal_Set_Selection;

   ---------------------------
   -- Internal_Set_Selector --
   ---------------------------

   procedure Internal_Set_Selector
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Value_Specification_Selector_Lifeline,
        Self,
        To);
   end Internal_Set_Selector;

   -----------------------------
   -- Internal_Set_Send_Event --
   -----------------------------

   procedure Internal_Set_Send_Event
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Message_End_Send_Event_End_Message,
        Self,
        To);
   end Internal_Set_Send_Event;

   --------------------------
   -- Internal_Set_Setting --
   --------------------------

   procedure Internal_Set_Setting
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (175).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (175).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Continuation_Setting, Old, To);
   end Internal_Set_Setting;

   -------------------------
   -- Internal_Set_Signal --
   -------------------------

   procedure Internal_Set_Signal
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Signal_Signal_Broadcast_Signal_Action,
        Self,
        To);
   end Internal_Set_Signal;

   ----------------------------
   -- Internal_Set_Signature --
   ----------------------------

   procedure Internal_Set_Signature
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Owned_Parameter_Signature,
        To,
        Self);
   end Internal_Set_Signature;

   -------------------------
   -- Internal_Set_Source --
   -------------------------

   procedure Internal_Set_Source
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Edge_Outgoing_Source,
        To,
        Self);
   end Internal_Set_Source;

   ---------------------------
   -- Internal_Set_Specific --
   ---------------------------

   procedure Internal_Set_Specific
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Generalization_Generalization_Specific,
        To,
        Self);
   end Internal_Set_Specific;

   -----------------------------------
   -- Internal_Set_Specific_Machine --
   -----------------------------------

   procedure Internal_Set_Specific_Machine
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Protocol_Conformance_Conformance_Specific_Machine,
        To,
        Self);
   end Internal_Set_Specific_Machine;

   --------------------------------
   -- Internal_Set_Specification --
   --------------------------------

   procedure Internal_Set_Specification
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behavior_Method_Specification,
        To,
        Self);
   end Internal_Set_Specification;

   ------------------------
   -- Internal_Set_Start --
   ------------------------

   procedure Internal_Set_Start
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Occurrence_Specification_Start_Execution_Specification,
        Self,
        To);
   end Internal_Set_Start;

   ------------------------
   -- Internal_Set_State --
   ------------------------

   procedure Internal_Set_State
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Connection_Point_Reference_Connection_State,
        To,
        Self);
   end Internal_Set_State;

   ----------------------------------
   -- Internal_Set_State_Invariant --
   ----------------------------------

   procedure Internal_Set_State_Invariant
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Constraint_State_Invariant_Owning_State,
        Self,
        To);
   end Internal_Set_State_Invariant;

   --------------------------------
   -- Internal_Set_State_Machine --
   --------------------------------

   procedure Internal_Set_State_Machine
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Pseudostate_Connection_Point_State_Machine,
        To,
        Self);
   end Internal_Set_State_Machine;

   -------------------------------------
   -- Internal_Set_Structural_Feature --
   -------------------------------------

   procedure Internal_Set_Structural_Feature
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Structural_Feature_Structural_Feature_Structural_Feature_Action,
        Self,
        To);
   end Internal_Set_Structural_Feature;

   -----------------------------
   -- Internal_Set_Submachine --
   -----------------------------

   procedure Internal_Set_Submachine
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_State_Submachine_State_Submachine,
        To,
        Self);
   end Internal_Set_Submachine;

   ------------------------------------------
   -- Internal_Set_Substituting_Classifier --
   ------------------------------------------

   procedure Internal_Set_Substituting_Classifier
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Substitution_Substitution_Substituting_Classifier,
        To,
        Self);
   end Internal_Set_Substituting_Classifier;

   ----------------------------------
   -- Internal_Set_Super_Partition --
   ----------------------------------

   procedure Internal_Set_Super_Partition
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Activity_Partition_Subpartition_Super_Partition,
        To,
        Self);
   end Internal_Set_Super_Partition;

   -------------------------
   -- Internal_Set_Symbol --
   -------------------------

   procedure Internal_Set_Symbol
    (Self : AMF.Internals.UML_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (122).String_Value;

      UML_Element_Table.Table (Self).Member (122).String_Value := To;

      if UML_Element_Table.Table (Self).Member (122).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (122).String_Value);
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
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Target_Call_Operation_Action,
        Self,
        To);
   end Internal_Set_Target;

   ---------------------------
   -- Internal_Set_Template --
   ---------------------------

   procedure Internal_Set_Template
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Signature_Owned_Template_Signature_Template,
        To,
        Self);
   end Internal_Set_Template;

   -----------------------------------
   -- Internal_Set_Template_Binding --
   -----------------------------------

   procedure Internal_Set_Template_Binding
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Template_Parameter_Substitution_Parameter_Substitution_Template_Binding,
        To,
        Self);
   end Internal_Set_Template_Binding;

   -------------------------------------
   -- Internal_Set_Template_Parameter --
   -------------------------------------

   procedure Internal_Set_Template_Parameter
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Parameterable_Element_Parametered_Element_Template_Parameter,
        To,
        Self);
   end Internal_Set_Template_Parameter;

   ---------------------------------
   -- Internal_Set_Transformation --
   ---------------------------------

   procedure Internal_Set_Transformation
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Behavior_Transformation_Object_Flow,
        Self,
        To);
   end Internal_Set_Transformation;

   -----------------------
   -- Internal_Set_Type --
   -----------------------

   procedure Internal_Set_Type
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Type_Type_Typed_Element,
        Self,
        To);
   end Internal_Set_Type;

   ----------------------------------
   -- Internal_Set_Unmarshall_Type --
   ----------------------------------

   procedure Internal_Set_Unmarshall_Type
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Classifier_Unmarshall_Type_Unmarshall_Action,
        Self,
        To);
   end Internal_Set_Unmarshall_Type;

   ------------------------
   -- Internal_Set_Upper --
   ------------------------

   procedure Internal_Set_Upper
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Optional_Unlimited_Natural)
   is
      Old : AMF.Optional_Unlimited_Natural;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (38).Unlimited_Natural_Holder;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (38).Unlimited_Natural_Holder := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Multiplicity_Element_Upper, Old, To);
   end Internal_Set_Upper;

   ------------------------------
   -- Internal_Set_Upper_Bound --
   ------------------------------

   procedure Internal_Set_Upper_Bound
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Value_Specification_Upper_Bound_Object_Node,
        Self,
        To);
   end Internal_Set_Upper_Bound;

   ------------------------------
   -- Internal_Set_Upper_Value --
   ------------------------------

   procedure Internal_Set_Upper_Value
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Value_Specification_Upper_Value_Owning_Upper,
        Self,
        To);
   end Internal_Set_Upper_Value;

   ---------------------------
   -- Internal_Set_Use_Case --
   ---------------------------

   procedure Internal_Set_Use_Case
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Extension_Point_Extension_Point_Use_Case,
        To,
        Self);
   end Internal_Set_Use_Case;

   -----------------------------------
   -- Internal_Set_Utilized_Element --
   -----------------------------------

   procedure Internal_Set_Utilized_Element
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Packageable_Element_Utilized_Element_Manifestation,
        Self,
        To);
   end Internal_Set_Utilized_Element;

   ------------------------
   -- Internal_Set_Value --
   ------------------------

   procedure Internal_Set_Value
    (Self : AMF.Internals.UML_Element;
     To   : Boolean)
   is
      Old : Boolean;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (186).Boolean_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (186).Boolean_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Literal_Boolean_Value, Old, To);
   end Internal_Set_Value;

   ------------------------
   -- Internal_Set_Value --
   ------------------------

   procedure Internal_Set_Value
    (Self : AMF.Internals.UML_Element;
     To   : Integer)
   is
      Old : Integer;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (200).Integer_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (200).Integer_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Literal_Integer_Value, Old, To);
   end Internal_Set_Value;

   ------------------------
   -- Internal_Set_Value --
   ------------------------

   procedure Internal_Set_Value
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Real)
   is
      Old : AMF.Real;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (208).Real_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (208).Real_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Literal_Real_Value, Old, To);
   end Internal_Set_Value;

   ------------------------
   -- Internal_Set_Value --
   ------------------------

   procedure Internal_Set_Value
    (Self : AMF.Internals.UML_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (218).String_Value;

      UML_Element_Table.Table (Self).Member (218).String_Value := To;

      if UML_Element_Table.Table (Self).Member (218).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UML_Element_Table.Table (Self).Member (218).String_Value);
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
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Unlimited_Natural)
   is
      Old : AMF.Unlimited_Natural;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (228).Unlimited_Natural_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (228).Unlimited_Natural_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Literal_Unlimited_Natural_Value, Old, To);
   end Internal_Set_Value;

   ------------------------
   -- Internal_Set_Value --
   ------------------------

   procedure Internal_Set_Value
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Input_Pin_Value_Write_Structural_Feature_Action,
        Self,
        To);
   end Internal_Set_Value;

   ---------------------------
   -- Internal_Set_Variable --
   ---------------------------

   procedure Internal_Set_Variable
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Variable_Variable_Variable_Action,
        Self,
        To);
   end Internal_Set_Variable;

   ----------------------------
   -- Internal_Set_Viewpoint --
   ----------------------------

   procedure Internal_Set_Viewpoint
    (Self : AMF.Internals.UML_Element;
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
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Model_Viewpoint, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Viewpoint;

   -----------------------------
   -- Internal_Set_Visibility --
   -----------------------------

   procedure Internal_Set_Visibility
    (Self : AMF.Internals.UML_Element;
     To   : AMF.UML.UML_Visibility_Kind)
   is
      Old : AMF.UML.UML_Visibility_Kind;

   begin
      Old := AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (129).Visibility_Kind_Value;
      AMF.Internals.Tables.UML_Element_Table.Table (Self).Member (129).Visibility_Kind_Value := To;

      AMF.Internals.Tables.UML_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.UML_Metamodel.MP_UML_Element_Import_Visibility, Old, To);
   end Internal_Set_Visibility;

   -----------------------------
   -- Internal_Set_Visibility --
   -----------------------------

   procedure Internal_Set_Visibility
    (Self : AMF.Internals.UML_Element;
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
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Value_Specification_Weight_Activity_Edge,
        Self,
        To);
   end Internal_Set_Weight;

   -----------------------
   -- Internal_Set_When --
   -----------------------

   procedure Internal_Set_When
    (Self : AMF.Internals.UML_Element;
     To   : AMF.Internals.UML_Element)
   is
      Old : AMF.Internals.UML_Element;

   begin
      AMF.Internals.Links.Create_Link
       (AMF.Internals.Tables.UML_Metamodel.MA_UML_Time_Expression_When_Time_Event,
        Self,
        To);
   end Internal_Set_When;

end AMF.Internals.Tables.UML_Attributes;
