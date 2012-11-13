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
with AMF.DC;
with AMF.UML;
with AMF.UMLDI;
with Matreshka.Internals.Strings;

package AMF.Internals.Tables.UML_Attributes is

   function Internal_Get_URI
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_URI
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  Model => Package::URI
   --  Package => Package::URI
   --  Profile => Package::URI

   function Internal_Get_Abstraction
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Abstraction
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ComponentRealization => ComponentRealization::abstraction

   function Internal_Get_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Action
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ActionExecutionSpecification => ActionExecutionSpecification::action

   function Internal_Get_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Interaction => Interaction::action

   function Internal_Get_Activity
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Activity
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  AcceptCallAction => ActivityNode::activity
   --  AcceptEventAction => ActivityNode::activity
   --  ActionInputPin => ActivityNode::activity
   --  ActivityFinalNode => ActivityNode::activity
   --  ActivityParameterNode => ActivityNode::activity
   --  AddStructuralFeatureValueAction => ActivityNode::activity
   --  AddVariableValueAction => ActivityNode::activity
   --  BroadcastSignalAction => ActivityNode::activity
   --  CallBehaviorAction => ActivityNode::activity
   --  CallOperationAction => ActivityNode::activity
   --  CentralBufferNode => ActivityNode::activity
   --  ClearAssociationAction => ActivityNode::activity
   --  ClearStructuralFeatureAction => ActivityNode::activity
   --  ClearVariableAction => ActivityNode::activity
   --  ConditionalNode => ActivityNode::activity
   --  ControlFlow => ActivityEdge::activity
   --  CreateLinkAction => ActivityNode::activity
   --  CreateLinkObjectAction => ActivityNode::activity
   --  CreateObjectAction => ActivityNode::activity
   --  DataStoreNode => ActivityNode::activity
   --  DecisionNode => ActivityNode::activity
   --  DestroyLinkAction => ActivityNode::activity
   --  DestroyObjectAction => ActivityNode::activity
   --  ExpansionNode => ActivityNode::activity
   --  ExpansionRegion => ActivityNode::activity
   --  FlowFinalNode => ActivityNode::activity
   --  ForkNode => ActivityNode::activity
   --  InitialNode => ActivityNode::activity
   --  InputPin => ActivityNode::activity
   --  JoinNode => ActivityNode::activity
   --  LoopNode => ActivityNode::activity
   --  MergeNode => ActivityNode::activity
   --  ObjectFlow => ActivityEdge::activity
   --  OpaqueAction => ActivityNode::activity
   --  OutputPin => ActivityNode::activity
   --  RaiseExceptionAction => ActivityNode::activity
   --  ReadExtentAction => ActivityNode::activity
   --  ReadIsClassifiedObjectAction => ActivityNode::activity
   --  ReadLinkAction => ActivityNode::activity
   --  ReadLinkObjectEndAction => ActivityNode::activity
   --  ReadLinkObjectEndQualifierAction => ActivityNode::activity
   --  ReadSelfAction => ActivityNode::activity
   --  ReadStructuralFeatureAction => ActivityNode::activity
   --  ReadVariableAction => ActivityNode::activity
   --  ReclassifyObjectAction => ActivityNode::activity
   --  ReduceAction => ActivityNode::activity
   --  RemoveStructuralFeatureValueAction => ActivityNode::activity
   --  RemoveVariableValueAction => ActivityNode::activity
   --  ReplyAction => ActivityNode::activity
   --  SendObjectAction => ActivityNode::activity
   --  SendSignalAction => ActivityNode::activity
   --  SequenceNode => ActivityNode::activity
   --  StartClassifierBehaviorAction => ActivityNode::activity
   --  StartObjectBehaviorAction => ActivityNode::activity
   --  StructuredActivityNode => ActivityNode::activity
   --  TestIdentityAction => ActivityNode::activity
   --  UnmarshallAction => ActivityNode::activity
   --  ValuePin => ActivityNode::activity
   --  ValueSpecificationAction => ActivityNode::activity

   function Internal_Get_Activity_Scope
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Activity_Scope
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Variable => Variable::activityScope

   function Internal_Get_Actual
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Actual
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  TemplateParameterSubstitution => TemplateParameterSubstitution::actual

   function Internal_Get_Actual_Gate
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  InteractionUse => InteractionUse::actualGate
   --  PartDecomposition => InteractionUse::actualGate

   function Internal_Get_Addition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Addition
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Include => Include::addition

   function Internal_Get_After
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_After
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  GeneralOrdering => GeneralOrdering::after

   function Internal_Get_Aggregation
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Aggregation_Kind;
   procedure Internal_Set_Aggregation
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Aggregation_Kind);
   --  ExtensionEnd => Property::aggregation
   --  Port => Property::aggregation
   --  Property => Property::aggregation

   function Internal_Get_Alias
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Alias
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  ElementImport => ElementImport::alias

   function Internal_Get_Allow_Substitutable
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Allow_Substitutable
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  ClassifierTemplateParameter => ClassifierTemplateParameter::allowSubstitutable

   function Internal_Get_Annotated_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Comment => Comment::annotatedElement

   function Internal_Get_Applied_Profile
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Applied_Profile
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ProfileApplication => ProfileApplication::appliedProfile

   function Internal_Get_Applying_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Applying_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ProfileApplication => ProfileApplication::applyingPackage

   function Internal_Get_Argument
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  BroadcastSignalAction => InvocationAction::argument
   --  CallBehaviorAction => InvocationAction::argument
   --  CallOperationAction => InvocationAction::argument
   --  InteractionUse => InteractionUse::argument
   --  Message => Message::argument
   --  PartDecomposition => InteractionUse::argument
   --  SendObjectAction => InvocationAction::argument
   --  SendSignalAction => InvocationAction::argument
   --  StartObjectBehaviorAction => InvocationAction::argument

   function Internal_Get_Association
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Association
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ClearAssociationAction => ClearAssociationAction::association
   --  ExtensionEnd => Property::association
   --  Port => Property::association
   --  Property => Property::association

   function Internal_Get_Association_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Association_End
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ExtensionEnd => Property::associationEnd
   --  Port => Property::associationEnd
   --  Property => Property::associationEnd

   function Internal_Get_Attribute
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Classifier::attribute
   --  Actor => Classifier::attribute
   --  Artifact => Classifier::attribute
   --  Association => Classifier::attribute
   --  AssociationClass => Classifier::attribute
   --  Class => Classifier::attribute
   --  Collaboration => Classifier::attribute
   --  CommunicationPath => Classifier::attribute
   --  Component => Classifier::attribute
   --  DataType => Classifier::attribute
   --  DeploymentSpecification => Classifier::attribute
   --  Device => Classifier::attribute
   --  Enumeration => Classifier::attribute
   --  ExecutionEnvironment => Classifier::attribute
   --  Extension => Classifier::attribute
   --  FunctionBehavior => Classifier::attribute
   --  InformationItem => Classifier::attribute
   --  Interaction => Classifier::attribute
   --  Interface => Classifier::attribute
   --  Node => Classifier::attribute
   --  OpaqueBehavior => Classifier::attribute
   --  PrimitiveType => Classifier::attribute
   --  ProtocolStateMachine => Classifier::attribute
   --  Signal => Classifier::attribute
   --  StateMachine => Classifier::attribute
   --  Stereotype => Classifier::attribute
   --  UseCase => Classifier::attribute

   function Internal_Get_Base_Abstraction
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Abstraction
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Derive => Derive::base_Abstraction
   --  Refine => Refine::base_Abstraction
   --  Trace => Trace::base_Abstraction

   function Internal_Get_Base_Artifact
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Artifact
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Document => Document::base_Artifact
   --  Executable => Executable::base_Artifact
   --  Library => File::base_Artifact
   --  Script => File::base_Artifact
   --  Source => File::base_Artifact

   function Internal_Get_Base_Behavioral_Feature
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Behavioral_Feature
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Create => Create::base_BehavioralFeature
   --  Destroy => Destroy::base_BehavioralFeature

   function Internal_Get_Base_Class
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Class
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Auxiliary => Auxiliary::base_Class
   --  Focus => Focus::base_Class
   --  ImplementationClass => ImplementationClass::base_Class
   --  Metaclass => Metaclass::base_Class
   --  Type => Type::base_Class
   --  Utility => Utility::base_Class

   function Internal_Get_Base_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Classifier
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Realization => Realization::base_Classifier
   --  Specification => Specification::base_Classifier

   function Internal_Get_Base_Component
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Component
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Entity => Entity::base_Component
   --  Implement => Implement::base_Component
   --  Process => Process::base_Component
   --  Service => Service::base_Component
   --  Subsystem => Subsystem::base_Component
   --  BuildComponent => BuildComponent::base_Component

   function Internal_Get_Base_Model
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Model
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Metamodel => Metamodel::base_Model
   --  SystemModel => SystemModel::base_Model

   function Internal_Get_Base_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Framework => Framework::base_Package
   --  ModelLibrary => ModelLibrary::base_Package

   function Internal_Get_Base_Usage
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Usage
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Call => Call::base_Usage
   --  Create => Create::base_Usage
   --  Instantiate => Instantiate::base_Usage
   --  Responsibility => Responsibility::base_Usage
   --  Send => Send::base_Usage

   function Internal_Get_Before
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Before
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  GeneralOrdering => GeneralOrdering::before

   function Internal_Get_Behavior
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Behavior
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  BehaviorExecutionSpecification => BehaviorExecutionSpecification::behavior
   --  CallBehaviorAction => CallBehaviorAction::behavior
   --  OpaqueExpression => OpaqueExpression::behavior

   function Internal_Get_Body
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Clause => Clause::body

   function Internal_Get_Body
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Body
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  Comment => Comment::body

   function Internal_Get_Body
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_String;
   --  FunctionBehavior => OpaqueBehavior::body
   --  OpaqueAction => OpaqueAction::body
   --  OpaqueBehavior => OpaqueBehavior::body
   --  OpaqueExpression => OpaqueExpression::body

   function Internal_Get_Body_Condition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Body_Condition
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Operation => Operation::bodyCondition

   function Internal_Get_Body_Output
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Clause => Clause::bodyOutput
   --  LoopNode => LoopNode::bodyOutput

   function Internal_Get_Body_Part
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  LoopNode => LoopNode::bodyPart

   function Internal_Get_Bound_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Bound_Element
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  TemplateBinding => TemplateBinding::boundElement

   function Internal_Get_Bounds
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.Optional_DC_Bounds;
   procedure Internal_Set_Bounds
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.DC.Optional_DC_Bounds);
   --  UMLActivityDiagram => Shape::bounds
   --  UMLAssociationEndLabel => Shape::bounds
   --  UMLAssociationOrConnectorOrLinkShape => Shape::bounds
   --  UMLClassDiagram => Shape::bounds
   --  UMLClassifierShape => Shape::bounds
   --  UMLCompartmentableShape => Shape::bounds
   --  UMLComponentDiagram => Shape::bounds
   --  UMLCompositeStructureDiagram => Shape::bounds
   --  UMLDeploymentDiagram => Shape::bounds
   --  UMLInteractionDiagram => Shape::bounds
   --  UMLInteractionTableLabel => Shape::bounds
   --  UMLKeywordLabel => Shape::bounds
   --  UMLLabel => Shape::bounds
   --  UMLMultiplicityLabel => Shape::bounds
   --  UMLNameLabel => Shape::bounds
   --  UMLObjectDiagram => Shape::bounds
   --  UMLPackageDiagram => Shape::bounds
   --  UMLProfileDiagram => Shape::bounds
   --  UMLRedefinesLabel => Shape::bounds
   --  UMLShape => Shape::bounds
   --  UMLStateMachineDiagram => Shape::bounds
   --  UMLStateShape => Shape::bounds
   --  UMLStereotypePropertyValueLabel => Shape::bounds
   --  UMLTypedElementLabel => Shape::bounds
   --  UMLUseCaseDiagram => Shape::bounds

   function Internal_Get_Cfragment_Gate
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  CombinedFragment => CombinedFragment::cfragmentGate
   --  ConsiderIgnoreFragment => CombinedFragment::cfragmentGate

   function Internal_Get_Change_Expression
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Change_Expression
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ChangeEvent => ChangeEvent::changeExpression

   function Internal_Get_Class
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Class
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ExtensionEnd => Property::class
   --  Operation => Operation::class
   --  Port => Property::class
   --  Property => Property::class

   function Internal_Get_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Classifier
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  CreateObjectAction => CreateObjectAction::classifier
   --  ReadExtentAction => ReadExtentAction::classifier
   --  ReadIsClassifiedObjectAction => ReadIsClassifiedObjectAction::classifier
   --  RedefinableTemplateSignature => RedefinableTemplateSignature::classifier

   function Internal_Get_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  EnumerationLiteral => EnumerationLiteral::classifier
   --  InstanceSpecification => InstanceSpecification::classifier

   function Internal_Get_Classifier_Behavior
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Classifier_Behavior
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Activity => BehavioredClassifier::classifierBehavior
   --  Actor => BehavioredClassifier::classifierBehavior
   --  AssociationClass => BehavioredClassifier::classifierBehavior
   --  Class => BehavioredClassifier::classifierBehavior
   --  Collaboration => BehavioredClassifier::classifierBehavior
   --  Component => BehavioredClassifier::classifierBehavior
   --  Device => BehavioredClassifier::classifierBehavior
   --  ExecutionEnvironment => BehavioredClassifier::classifierBehavior
   --  FunctionBehavior => BehavioredClassifier::classifierBehavior
   --  Interaction => BehavioredClassifier::classifierBehavior
   --  Node => BehavioredClassifier::classifierBehavior
   --  OpaqueBehavior => BehavioredClassifier::classifierBehavior
   --  ProtocolStateMachine => BehavioredClassifier::classifierBehavior
   --  StateMachine => BehavioredClassifier::classifierBehavior
   --  Stereotype => BehavioredClassifier::classifierBehavior
   --  UseCase => BehavioredClassifier::classifierBehavior

   function Internal_Get_Clause
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ConditionalNode => ConditionalNode::clause

   function Internal_Get_Client
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Abstraction => Dependency::client
   --  ComponentRealization => Dependency::client
   --  Dependency => Dependency::client
   --  Deployment => Dependency::client
   --  InterfaceRealization => Dependency::client
   --  Manifestation => Dependency::client
   --  Realization => Dependency::client
   --  Substitution => Dependency::client
   --  Usage => Dependency::client

   function Internal_Get_Client_Dependency
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Abstraction => NamedElement::clientDependency
   --  AcceptCallAction => NamedElement::clientDependency
   --  AcceptEventAction => NamedElement::clientDependency
   --  ActionExecutionSpecification => NamedElement::clientDependency
   --  ActionInputPin => NamedElement::clientDependency
   --  Activity => NamedElement::clientDependency
   --  ActivityFinalNode => NamedElement::clientDependency
   --  ActivityParameterNode => NamedElement::clientDependency
   --  ActivityPartition => NamedElement::clientDependency
   --  Actor => NamedElement::clientDependency
   --  AddStructuralFeatureValueAction => NamedElement::clientDependency
   --  AddVariableValueAction => NamedElement::clientDependency
   --  AnyReceiveEvent => NamedElement::clientDependency
   --  Artifact => NamedElement::clientDependency
   --  Association => NamedElement::clientDependency
   --  AssociationClass => NamedElement::clientDependency
   --  BehaviorExecutionSpecification => NamedElement::clientDependency
   --  BroadcastSignalAction => NamedElement::clientDependency
   --  CallBehaviorAction => NamedElement::clientDependency
   --  CallEvent => NamedElement::clientDependency
   --  CallOperationAction => NamedElement::clientDependency
   --  CentralBufferNode => NamedElement::clientDependency
   --  ChangeEvent => NamedElement::clientDependency
   --  Class => NamedElement::clientDependency
   --  ClearAssociationAction => NamedElement::clientDependency
   --  ClearStructuralFeatureAction => NamedElement::clientDependency
   --  ClearVariableAction => NamedElement::clientDependency
   --  Collaboration => NamedElement::clientDependency
   --  CollaborationUse => NamedElement::clientDependency
   --  CombinedFragment => NamedElement::clientDependency
   --  CommunicationPath => NamedElement::clientDependency
   --  Component => NamedElement::clientDependency
   --  ComponentRealization => NamedElement::clientDependency
   --  ConditionalNode => NamedElement::clientDependency
   --  ConnectionPointReference => NamedElement::clientDependency
   --  Connector => NamedElement::clientDependency
   --  ConsiderIgnoreFragment => NamedElement::clientDependency
   --  Constraint => NamedElement::clientDependency
   --  Continuation => NamedElement::clientDependency
   --  ControlFlow => NamedElement::clientDependency
   --  CreateLinkAction => NamedElement::clientDependency
   --  CreateLinkObjectAction => NamedElement::clientDependency
   --  CreateObjectAction => NamedElement::clientDependency
   --  UMLActivityDiagram => NamedElement::clientDependency
   --  UMLClassDiagram => NamedElement::clientDependency
   --  UMLComponentDiagram => NamedElement::clientDependency
   --  UMLCompositeStructureDiagram => NamedElement::clientDependency
   --  UMLDeploymentDiagram => NamedElement::clientDependency
   --  UMLInteractionDiagram => NamedElement::clientDependency
   --  UMLObjectDiagram => NamedElement::clientDependency
   --  UMLPackageDiagram => NamedElement::clientDependency
   --  UMLProfileDiagram => NamedElement::clientDependency
   --  UMLStateMachineDiagram => NamedElement::clientDependency
   --  UMLStyle => NamedElement::clientDependency
   --  UMLUseCaseDiagram => NamedElement::clientDependency
   --  DataStoreNode => NamedElement::clientDependency
   --  DataType => NamedElement::clientDependency
   --  DecisionNode => NamedElement::clientDependency
   --  Dependency => NamedElement::clientDependency
   --  Deployment => NamedElement::clientDependency
   --  DeploymentSpecification => NamedElement::clientDependency
   --  DestroyLinkAction => NamedElement::clientDependency
   --  DestroyObjectAction => NamedElement::clientDependency
   --  DestructionOccurrenceSpecification => NamedElement::clientDependency
   --  Device => NamedElement::clientDependency
   --  Duration => NamedElement::clientDependency
   --  DurationConstraint => NamedElement::clientDependency
   --  DurationInterval => NamedElement::clientDependency
   --  DurationObservation => NamedElement::clientDependency
   --  Enumeration => NamedElement::clientDependency
   --  EnumerationLiteral => NamedElement::clientDependency
   --  ExecutionEnvironment => NamedElement::clientDependency
   --  ExecutionOccurrenceSpecification => NamedElement::clientDependency
   --  ExpansionNode => NamedElement::clientDependency
   --  ExpansionRegion => NamedElement::clientDependency
   --  Expression => NamedElement::clientDependency
   --  Extend => NamedElement::clientDependency
   --  Extension => NamedElement::clientDependency
   --  ExtensionEnd => NamedElement::clientDependency
   --  ExtensionPoint => NamedElement::clientDependency
   --  FinalState => NamedElement::clientDependency
   --  FlowFinalNode => NamedElement::clientDependency
   --  ForkNode => NamedElement::clientDependency
   --  FunctionBehavior => NamedElement::clientDependency
   --  Gate => NamedElement::clientDependency
   --  GeneralOrdering => NamedElement::clientDependency
   --  GeneralizationSet => NamedElement::clientDependency
   --  Include => NamedElement::clientDependency
   --  InformationFlow => NamedElement::clientDependency
   --  InformationItem => NamedElement::clientDependency
   --  InitialNode => NamedElement::clientDependency
   --  InputPin => NamedElement::clientDependency
   --  InstanceSpecification => NamedElement::clientDependency
   --  InstanceValue => NamedElement::clientDependency
   --  Interaction => NamedElement::clientDependency
   --  InteractionConstraint => NamedElement::clientDependency
   --  InteractionOperand => NamedElement::clientDependency
   --  InteractionUse => NamedElement::clientDependency
   --  Interface => NamedElement::clientDependency
   --  InterfaceRealization => NamedElement::clientDependency
   --  InterruptibleActivityRegion => NamedElement::clientDependency
   --  Interval => NamedElement::clientDependency
   --  IntervalConstraint => NamedElement::clientDependency
   --  JoinNode => NamedElement::clientDependency
   --  Lifeline => NamedElement::clientDependency
   --  LiteralBoolean => NamedElement::clientDependency
   --  LiteralInteger => NamedElement::clientDependency
   --  LiteralNull => NamedElement::clientDependency
   --  LiteralReal => NamedElement::clientDependency
   --  LiteralString => NamedElement::clientDependency
   --  LiteralUnlimitedNatural => NamedElement::clientDependency
   --  LoopNode => NamedElement::clientDependency
   --  Manifestation => NamedElement::clientDependency
   --  MergeNode => NamedElement::clientDependency
   --  Message => NamedElement::clientDependency
   --  MessageOccurrenceSpecification => NamedElement::clientDependency
   --  Model => NamedElement::clientDependency
   --  Node => NamedElement::clientDependency
   --  ObjectFlow => NamedElement::clientDependency
   --  OccurrenceSpecification => NamedElement::clientDependency
   --  OpaqueAction => NamedElement::clientDependency
   --  OpaqueBehavior => NamedElement::clientDependency
   --  OpaqueExpression => NamedElement::clientDependency
   --  Operation => NamedElement::clientDependency
   --  OutputPin => NamedElement::clientDependency
   --  Package => NamedElement::clientDependency
   --  Parameter => NamedElement::clientDependency
   --  ParameterSet => NamedElement::clientDependency
   --  PartDecomposition => NamedElement::clientDependency
   --  Port => NamedElement::clientDependency
   --  PrimitiveType => NamedElement::clientDependency
   --  Profile => NamedElement::clientDependency
   --  Property => NamedElement::clientDependency
   --  ProtocolStateMachine => NamedElement::clientDependency
   --  ProtocolTransition => NamedElement::clientDependency
   --  Pseudostate => NamedElement::clientDependency
   --  RaiseExceptionAction => NamedElement::clientDependency
   --  ReadExtentAction => NamedElement::clientDependency
   --  ReadIsClassifiedObjectAction => NamedElement::clientDependency
   --  ReadLinkAction => NamedElement::clientDependency
   --  ReadLinkObjectEndAction => NamedElement::clientDependency
   --  ReadLinkObjectEndQualifierAction => NamedElement::clientDependency
   --  ReadSelfAction => NamedElement::clientDependency
   --  ReadStructuralFeatureAction => NamedElement::clientDependency
   --  ReadVariableAction => NamedElement::clientDependency
   --  Realization => NamedElement::clientDependency
   --  Reception => NamedElement::clientDependency
   --  ReclassifyObjectAction => NamedElement::clientDependency
   --  RedefinableTemplateSignature => NamedElement::clientDependency
   --  ReduceAction => NamedElement::clientDependency
   --  Region => NamedElement::clientDependency
   --  RemoveStructuralFeatureValueAction => NamedElement::clientDependency
   --  RemoveVariableValueAction => NamedElement::clientDependency
   --  ReplyAction => NamedElement::clientDependency
   --  SendObjectAction => NamedElement::clientDependency
   --  SendSignalAction => NamedElement::clientDependency
   --  SequenceNode => NamedElement::clientDependency
   --  Signal => NamedElement::clientDependency
   --  SignalEvent => NamedElement::clientDependency
   --  StartClassifierBehaviorAction => NamedElement::clientDependency
   --  StartObjectBehaviorAction => NamedElement::clientDependency
   --  State => NamedElement::clientDependency
   --  StateInvariant => NamedElement::clientDependency
   --  StateMachine => NamedElement::clientDependency
   --  Stereotype => NamedElement::clientDependency
   --  StringExpression => NamedElement::clientDependency
   --  StructuredActivityNode => NamedElement::clientDependency
   --  Substitution => NamedElement::clientDependency
   --  TestIdentityAction => NamedElement::clientDependency
   --  TimeConstraint => NamedElement::clientDependency
   --  TimeEvent => NamedElement::clientDependency
   --  TimeExpression => NamedElement::clientDependency
   --  TimeInterval => NamedElement::clientDependency
   --  TimeObservation => NamedElement::clientDependency
   --  Transition => NamedElement::clientDependency
   --  Trigger => NamedElement::clientDependency
   --  UnmarshallAction => NamedElement::clientDependency
   --  Usage => NamedElement::clientDependency
   --  UseCase => NamedElement::clientDependency
   --  ValuePin => NamedElement::clientDependency
   --  ValueSpecificationAction => NamedElement::clientDependency
   --  Variable => NamedElement::clientDependency

   function Internal_Get_Collaboration_Role
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Collaboration => Collaboration::collaborationRole

   function Internal_Get_Collaboration_Use
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Classifier::collaborationUse
   --  Actor => Classifier::collaborationUse
   --  Artifact => Classifier::collaborationUse
   --  Association => Classifier::collaborationUse
   --  AssociationClass => Classifier::collaborationUse
   --  Class => Classifier::collaborationUse
   --  Collaboration => Classifier::collaborationUse
   --  CommunicationPath => Classifier::collaborationUse
   --  Component => Classifier::collaborationUse
   --  DataType => Classifier::collaborationUse
   --  DeploymentSpecification => Classifier::collaborationUse
   --  Device => Classifier::collaborationUse
   --  Enumeration => Classifier::collaborationUse
   --  ExecutionEnvironment => Classifier::collaborationUse
   --  Extension => Classifier::collaborationUse
   --  FunctionBehavior => Classifier::collaborationUse
   --  InformationItem => Classifier::collaborationUse
   --  Interaction => Classifier::collaborationUse
   --  Interface => Classifier::collaborationUse
   --  Node => Classifier::collaborationUse
   --  OpaqueBehavior => Classifier::collaborationUse
   --  PrimitiveType => Classifier::collaborationUse
   --  ProtocolStateMachine => Classifier::collaborationUse
   --  Signal => Classifier::collaborationUse
   --  StateMachine => Classifier::collaborationUse
   --  Stereotype => Classifier::collaborationUse
   --  UseCase => Classifier::collaborationUse

   function Internal_Get_Collection
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Collection
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ReduceAction => ReduceAction::collection

   function Internal_Get_Compartment
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  UMLClassifierShape => UMLCompartmentableShape::compartment
   --  UMLCompartmentableShape => UMLCompartmentableShape::compartment
   --  UMLStateShape => UMLCompartmentableShape::compartment

   function Internal_Get_Computation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Computation
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Derive => Derive::computation

   function Internal_Get_Concurrency
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Call_Concurrency_Kind;
   procedure Internal_Set_Concurrency
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Call_Concurrency_Kind);
   --  Operation => BehavioralFeature::concurrency
   --  Reception => BehavioralFeature::concurrency

   function Internal_Get_Condition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Condition
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Extend => Extend::condition

   function Internal_Get_Condition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ParameterSet => ParameterSet::condition

   function Internal_Get_Configuration
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Deployment => Deployment::configuration

   function Internal_Get_Conformance
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ProtocolStateMachine => ProtocolStateMachine::conformance

   function Internal_Get_Connection
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  FinalState => State::connection
   --  State => State::connection

   function Internal_Get_Connection_Point
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  FinalState => State::connectionPoint
   --  ProtocolStateMachine => StateMachine::connectionPoint
   --  State => State::connectionPoint
   --  StateMachine => StateMachine::connectionPoint

   function Internal_Get_Connector
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Connector
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Message => Message::connector

   function Internal_Get_Constrained_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Constraint => Constraint::constrainedElement
   --  DurationConstraint => Constraint::constrainedElement
   --  InteractionConstraint => Constraint::constrainedElement
   --  IntervalConstraint => Constraint::constrainedElement
   --  TimeConstraint => Constraint::constrainedElement

   function Internal_Get_Constraining_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ClassifierTemplateParameter => ClassifierTemplateParameter::constrainingClassifier

   function Internal_Get_Contained_Edge
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ActivityPartition => ActivityGroup::containedEdge
   --  ConditionalNode => ActivityGroup::containedEdge
   --  ExpansionRegion => ActivityGroup::containedEdge
   --  InterruptibleActivityRegion => ActivityGroup::containedEdge
   --  LoopNode => ActivityGroup::containedEdge
   --  SequenceNode => ActivityGroup::containedEdge
   --  StructuredActivityNode => ActivityGroup::containedEdge

   function Internal_Get_Contained_Node
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ActivityPartition => ActivityGroup::containedNode
   --  ConditionalNode => ActivityGroup::containedNode
   --  ExpansionRegion => ActivityGroup::containedNode
   --  InterruptibleActivityRegion => ActivityGroup::containedNode
   --  LoopNode => ActivityGroup::containedNode
   --  SequenceNode => ActivityGroup::containedNode
   --  StructuredActivityNode => ActivityGroup::containedNode

   function Internal_Get_Container
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Container
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ConnectionPointReference => Vertex::container
   --  FinalState => Vertex::container
   --  ProtocolTransition => Transition::container
   --  Pseudostate => Vertex::container
   --  State => Vertex::container
   --  Transition => Transition::container

   function Internal_Get_Content
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Content
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  Image => Image::content

   function Internal_Get_Context
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   --  AcceptCallAction => Action::context
   --  AcceptEventAction => Action::context
   --  Activity => Behavior::context
   --  AddStructuralFeatureValueAction => Action::context
   --  AddVariableValueAction => Action::context
   --  BroadcastSignalAction => Action::context
   --  CallBehaviorAction => Action::context
   --  CallOperationAction => Action::context
   --  ClearAssociationAction => Action::context
   --  ClearStructuralFeatureAction => Action::context
   --  ClearVariableAction => Action::context
   --  ConditionalNode => Action::context
   --  Constraint => Constraint::context
   --  CreateLinkAction => Action::context
   --  CreateLinkObjectAction => Action::context
   --  CreateObjectAction => Action::context
   --  DestroyLinkAction => Action::context
   --  DestroyObjectAction => Action::context
   --  DurationConstraint => Constraint::context
   --  ExpansionRegion => Action::context
   --  FunctionBehavior => Behavior::context
   --  Interaction => Behavior::context
   --  InteractionConstraint => Constraint::context
   --  IntervalConstraint => Constraint::context
   --  LoopNode => Action::context
   --  OpaqueAction => Action::context
   --  OpaqueBehavior => Behavior::context
   --  ProtocolStateMachine => Behavior::context
   --  RaiseExceptionAction => Action::context
   --  ReadExtentAction => Action::context
   --  ReadIsClassifiedObjectAction => Action::context
   --  ReadLinkAction => Action::context
   --  ReadLinkObjectEndAction => Action::context
   --  ReadLinkObjectEndQualifierAction => Action::context
   --  ReadSelfAction => Action::context
   --  ReadStructuralFeatureAction => Action::context
   --  ReadVariableAction => Action::context
   --  ReclassifyObjectAction => Action::context
   --  ReduceAction => Action::context
   --  RemoveStructuralFeatureValueAction => Action::context
   --  RemoveVariableValueAction => Action::context
   --  ReplyAction => Action::context
   --  SendObjectAction => Action::context
   --  SendSignalAction => Action::context
   --  SequenceNode => Action::context
   --  StartClassifierBehaviorAction => Action::context
   --  StartObjectBehaviorAction => Action::context
   --  StateMachine => Behavior::context
   --  StructuredActivityNode => Action::context
   --  TestIdentityAction => Action::context
   --  TimeConstraint => Constraint::context
   --  UnmarshallAction => Action::context
   --  ValueSpecificationAction => Action::context

   function Internal_Get_Contract
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Connector => Connector::contract

   function Internal_Get_Contract
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Contract
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  InterfaceRealization => InterfaceRealization::contract
   --  Substitution => Substitution::contract

   function Internal_Get_Conveyed
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  InformationFlow => InformationFlow::conveyed

   function Internal_Get_Covered
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ActionExecutionSpecification => InteractionFragment::covered
   --  BehaviorExecutionSpecification => InteractionFragment::covered
   --  CombinedFragment => InteractionFragment::covered
   --  ConsiderIgnoreFragment => InteractionFragment::covered
   --  Continuation => InteractionFragment::covered
   --  DestructionOccurrenceSpecification => InteractionFragment::covered
   --  ExecutionOccurrenceSpecification => InteractionFragment::covered
   --  Interaction => InteractionFragment::covered
   --  InteractionOperand => InteractionFragment::covered
   --  InteractionUse => InteractionFragment::covered
   --  MessageOccurrenceSpecification => InteractionFragment::covered
   --  OccurrenceSpecification => InteractionFragment::covered
   --  PartDecomposition => InteractionFragment::covered
   --  StateInvariant => InteractionFragment::covered

   function Internal_Get_Covered_By
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Lifeline => Lifeline::coveredBy

   function Internal_Get_Datatype
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Datatype
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ExtensionEnd => Property::datatype
   --  Operation => Operation::datatype
   --  Port => Property::datatype
   --  Property => Property::datatype

   function Internal_Get_Decider
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Decider
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Clause => Clause::decider
   --  LoopNode => LoopNode::decider

   function Internal_Get_Decision_Input
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Decision_Input
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  DecisionNode => DecisionNode::decisionInput

   function Internal_Get_Decision_Input_Flow
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Decision_Input_Flow
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  DecisionNode => DecisionNode::decisionInputFlow

   function Internal_Get_Decomposed_As
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Decomposed_As
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Lifeline => Lifeline::decomposedAs

   function Internal_Get_Default
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Default
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  ExtensionEnd => Property::default
   --  Parameter => Parameter::default
   --  Port => Property::default
   --  Property => Property::default

   function Internal_Get_Default
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Default
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ClassifierTemplateParameter => TemplateParameter::default
   --  ConnectableElementTemplateParameter => TemplateParameter::default
   --  OperationTemplateParameter => TemplateParameter::default
   --  TemplateParameter => TemplateParameter::default

   function Internal_Get_Default_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Default_Value
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ExtensionEnd => Property::defaultValue
   --  Parameter => Parameter::defaultValue
   --  Port => Property::defaultValue
   --  Property => Property::defaultValue

   function Internal_Get_Deferrable_Trigger
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  FinalState => State::deferrableTrigger
   --  State => State::deferrableTrigger

   function Internal_Get_Defining_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   --  ConnectorEnd => ConnectorEnd::definingEnd

   function Internal_Get_Defining_Feature
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Defining_Feature
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Slot => Slot::definingFeature

   function Internal_Get_Deployed_Artifact
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Deployment => Deployment::deployedArtifact

   function Internal_Get_Deployed_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Device => DeploymentTarget::deployedElement
   --  EnumerationLiteral => DeploymentTarget::deployedElement
   --  ExecutionEnvironment => DeploymentTarget::deployedElement
   --  ExtensionEnd => DeploymentTarget::deployedElement
   --  InstanceSpecification => DeploymentTarget::deployedElement
   --  Node => DeploymentTarget::deployedElement
   --  Port => DeploymentTarget::deployedElement
   --  Property => DeploymentTarget::deployedElement

   function Internal_Get_Deployment
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Deployment
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  DeploymentSpecification => DeploymentSpecification::deployment

   function Internal_Get_Deployment
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Device => DeploymentTarget::deployment
   --  EnumerationLiteral => DeploymentTarget::deployment
   --  ExecutionEnvironment => DeploymentTarget::deployment
   --  ExtensionEnd => DeploymentTarget::deployment
   --  InstanceSpecification => DeploymentTarget::deployment
   --  Node => DeploymentTarget::deployment
   --  Port => DeploymentTarget::deployment
   --  Property => DeploymentTarget::deployment

   function Internal_Get_Deployment_Location
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Deployment_Location
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  DeploymentSpecification => DeploymentSpecification::deploymentLocation

   function Internal_Get_Destroy_At
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Destroy_At
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  LinkEndDestructionData => LinkEndDestructionData::destroyAt

   function Internal_Get_Direction
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Parameter_Direction_Kind;
   procedure Internal_Set_Direction
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Parameter_Direction_Kind);
   --  Parameter => Parameter::direction

   function Internal_Get_Do_Activity
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Do_Activity
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  FinalState => State::doActivity
   --  State => State::doActivity

   function Internal_Get_Documentation
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Documentation
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  UMLActivityDiagram => Diagram::documentation
   --  UMLClassDiagram => Diagram::documentation
   --  UMLComponentDiagram => Diagram::documentation
   --  UMLCompositeStructureDiagram => Diagram::documentation
   --  UMLDeploymentDiagram => Diagram::documentation
   --  UMLInteractionDiagram => Diagram::documentation
   --  UMLObjectDiagram => Diagram::documentation
   --  UMLPackageDiagram => Diagram::documentation
   --  UMLProfileDiagram => Diagram::documentation
   --  UMLStateMachineDiagram => Diagram::documentation
   --  UMLUseCaseDiagram => Diagram::documentation

   function Internal_Get_Edge
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Activity::edge
   --  ActivityPartition => ActivityPartition::edge
   --  ConditionalNode => StructuredActivityNode::edge
   --  ExpansionRegion => StructuredActivityNode::edge
   --  LoopNode => StructuredActivityNode::edge
   --  SequenceNode => StructuredActivityNode::edge
   --  StructuredActivityNode => StructuredActivityNode::edge

   function Internal_Get_Effect
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.Optional_UML_Parameter_Effect_Kind;
   procedure Internal_Set_Effect
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.Optional_UML_Parameter_Effect_Kind);
   --  Parameter => Parameter::effect

   function Internal_Get_Effect
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Effect
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ProtocolTransition => Transition::effect
   --  Transition => Transition::effect

   function Internal_Get_Element_Import
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Namespace::elementImport
   --  Actor => Namespace::elementImport
   --  Artifact => Namespace::elementImport
   --  Association => Namespace::elementImport
   --  AssociationClass => Namespace::elementImport
   --  Class => Namespace::elementImport
   --  Collaboration => Namespace::elementImport
   --  CommunicationPath => Namespace::elementImport
   --  Component => Namespace::elementImport
   --  ConditionalNode => Namespace::elementImport
   --  DataType => Namespace::elementImport
   --  DeploymentSpecification => Namespace::elementImport
   --  Device => Namespace::elementImport
   --  Enumeration => Namespace::elementImport
   --  ExecutionEnvironment => Namespace::elementImport
   --  ExpansionRegion => Namespace::elementImport
   --  Extension => Namespace::elementImport
   --  FinalState => Namespace::elementImport
   --  FunctionBehavior => Namespace::elementImport
   --  InformationItem => Namespace::elementImport
   --  Interaction => Namespace::elementImport
   --  InteractionOperand => Namespace::elementImport
   --  Interface => Namespace::elementImport
   --  LoopNode => Namespace::elementImport
   --  Model => Namespace::elementImport
   --  Node => Namespace::elementImport
   --  OpaqueBehavior => Namespace::elementImport
   --  Operation => Namespace::elementImport
   --  Package => Namespace::elementImport
   --  PrimitiveType => Namespace::elementImport
   --  Profile => Namespace::elementImport
   --  ProtocolStateMachine => Namespace::elementImport
   --  ProtocolTransition => Namespace::elementImport
   --  Reception => Namespace::elementImport
   --  Region => Namespace::elementImport
   --  SequenceNode => Namespace::elementImport
   --  Signal => Namespace::elementImport
   --  State => Namespace::elementImport
   --  StateMachine => Namespace::elementImport
   --  Stereotype => Namespace::elementImport
   --  StructuredActivityNode => Namespace::elementImport
   --  Transition => Namespace::elementImport
   --  UseCase => Namespace::elementImport

   function Internal_Get_Element_In_Compartment
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  UMLCompartment => UMLCompartment::elementInCompartment

   function Internal_Get_Enclosing_Interaction
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Enclosing_Interaction
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ActionExecutionSpecification => InteractionFragment::enclosingInteraction
   --  BehaviorExecutionSpecification => InteractionFragment::enclosingInteraction
   --  CombinedFragment => InteractionFragment::enclosingInteraction
   --  ConsiderIgnoreFragment => InteractionFragment::enclosingInteraction
   --  Continuation => InteractionFragment::enclosingInteraction
   --  DestructionOccurrenceSpecification => InteractionFragment::enclosingInteraction
   --  ExecutionOccurrenceSpecification => InteractionFragment::enclosingInteraction
   --  Interaction => InteractionFragment::enclosingInteraction
   --  InteractionOperand => InteractionFragment::enclosingInteraction
   --  InteractionUse => InteractionFragment::enclosingInteraction
   --  MessageOccurrenceSpecification => InteractionFragment::enclosingInteraction
   --  OccurrenceSpecification => InteractionFragment::enclosingInteraction
   --  PartDecomposition => InteractionFragment::enclosingInteraction
   --  StateInvariant => InteractionFragment::enclosingInteraction

   function Internal_Get_Enclosing_Operand
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Enclosing_Operand
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ActionExecutionSpecification => InteractionFragment::enclosingOperand
   --  BehaviorExecutionSpecification => InteractionFragment::enclosingOperand
   --  CombinedFragment => InteractionFragment::enclosingOperand
   --  ConsiderIgnoreFragment => InteractionFragment::enclosingOperand
   --  Continuation => InteractionFragment::enclosingOperand
   --  DestructionOccurrenceSpecification => InteractionFragment::enclosingOperand
   --  ExecutionOccurrenceSpecification => InteractionFragment::enclosingOperand
   --  Interaction => InteractionFragment::enclosingOperand
   --  InteractionOperand => InteractionFragment::enclosingOperand
   --  InteractionUse => InteractionFragment::enclosingOperand
   --  MessageOccurrenceSpecification => InteractionFragment::enclosingOperand
   --  OccurrenceSpecification => InteractionFragment::enclosingOperand
   --  PartDecomposition => InteractionFragment::enclosingOperand
   --  StateInvariant => InteractionFragment::enclosingOperand

   function Internal_Get_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Connector => Connector::end
   --  ExtensionEnd => ConnectableElement::end
   --  Parameter => ConnectableElement::end
   --  Port => ConnectableElement::end
   --  Property => ConnectableElement::end
   --  Variable => ConnectableElement::end

   function Internal_Get_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_End
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  LinkEndCreationData => LinkEndData::end
   --  LinkEndData => LinkEndData::end
   --  LinkEndDestructionData => LinkEndData::end
   --  ReadLinkObjectEndAction => ReadLinkObjectEndAction::end

   function Internal_Get_End_Data
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  CreateLinkAction => CreateLinkAction::endData
   --  CreateLinkObjectAction => CreateLinkAction::endData
   --  DestroyLinkAction => DestroyLinkAction::endData
   --  ReadLinkAction => LinkAction::endData

   function Internal_Get_End_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Association::endType
   --  AssociationClass => Association::endType
   --  CommunicationPath => Association::endType
   --  Extension => Association::endType

   function Internal_Get_Entry
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ConnectionPointReference => ConnectionPointReference::entry

   function Internal_Get_Entry
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Entry
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  FinalState => State::entry
   --  State => State::entry

   function Internal_Get_Enumeration
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Enumeration
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  EnumerationLiteral => EnumerationLiteral::enumeration

   function Internal_Get_Event
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  DurationObservation => DurationObservation::event

   function Internal_Get_Event
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Event
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  TimeObservation => TimeObservation::event
   --  Trigger => Trigger::event

   function Internal_Get_Exception
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Exception
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  RaiseExceptionAction => RaiseExceptionAction::exception

   function Internal_Get_Exception_Input
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Exception_Input
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ExceptionHandler => ExceptionHandler::exceptionInput

   function Internal_Get_Exception_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ExceptionHandler => ExceptionHandler::exceptionType

   function Internal_Get_Executable_Node
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  SequenceNode => SequenceNode::executableNode

   function Internal_Get_Execution
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Execution
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ExecutionOccurrenceSpecification => ExecutionOccurrenceSpecification::execution

   function Internal_Get_Execution_Location
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Execution_Location
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  DeploymentSpecification => DeploymentSpecification::executionLocation

   function Internal_Get_Exit
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ConnectionPointReference => ConnectionPointReference::exit

   function Internal_Get_Exit
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Exit
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  FinalState => State::exit
   --  State => State::exit

   function Internal_Get_Expr
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Expr
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Duration => Duration::expr
   --  TimeExpression => TimeExpression::expr

   function Internal_Get_Extend
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  UseCase => UseCase::extend

   function Internal_Get_Extended_Case
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Extended_Case
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Extend => Extend::extendedCase

   function Internal_Get_Extended_Region
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Extended_Region
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Region => Region::extendedRegion

   function Internal_Get_Extended_Signature
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  RedefinableTemplateSignature => RedefinableTemplateSignature::extendedSignature

   function Internal_Get_Extended_State_Machine
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ProtocolStateMachine => StateMachine::extendedStateMachine
   --  StateMachine => StateMachine::extendedStateMachine

   function Internal_Get_Extension
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Class::extension
   --  AssociationClass => Class::extension
   --  Class => Class::extension
   --  Component => Class::extension
   --  Device => Class::extension
   --  ExecutionEnvironment => Class::extension
   --  FunctionBehavior => Class::extension
   --  Interaction => Class::extension
   --  Node => Class::extension
   --  OpaqueBehavior => Class::extension
   --  ProtocolStateMachine => Class::extension
   --  StateMachine => Class::extension
   --  Stereotype => Class::extension

   function Internal_Get_Extension
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Extension
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Extend => Extend::extension

   function Internal_Get_Extension_Location
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Extend => Extend::extensionLocation

   function Internal_Get_Extension_Point
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  UseCase => UseCase::extensionPoint

   function Internal_Get_Feature
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Classifier::feature
   --  Actor => Classifier::feature
   --  Artifact => Classifier::feature
   --  Association => Classifier::feature
   --  AssociationClass => Classifier::feature
   --  Class => Classifier::feature
   --  Collaboration => Classifier::feature
   --  CommunicationPath => Classifier::feature
   --  Component => Classifier::feature
   --  DataType => Classifier::feature
   --  DeploymentSpecification => Classifier::feature
   --  Device => Classifier::feature
   --  Enumeration => Classifier::feature
   --  ExecutionEnvironment => Classifier::feature
   --  Extension => Classifier::feature
   --  FunctionBehavior => Classifier::feature
   --  InformationItem => Classifier::feature
   --  Interaction => Classifier::feature
   --  Interface => Classifier::feature
   --  Node => Classifier::feature
   --  OpaqueBehavior => Classifier::feature
   --  PrimitiveType => Classifier::feature
   --  ProtocolStateMachine => Classifier::feature
   --  Signal => Classifier::feature
   --  StateMachine => Classifier::feature
   --  Stereotype => Classifier::feature
   --  UseCase => Classifier::feature

   function Internal_Get_Featuring_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Connector => Feature::featuringClassifier
   --  ExtensionEnd => Feature::featuringClassifier
   --  Operation => Feature::featuringClassifier
   --  Port => Feature::featuringClassifier
   --  Property => Feature::featuringClassifier
   --  Reception => Feature::featuringClassifier

   function Internal_Get_File_Name
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_File_Name
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  Artifact => Artifact::fileName
   --  DeploymentSpecification => Artifact::fileName

   function Internal_Get_Finish
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Finish
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ActionExecutionSpecification => ExecutionSpecification::finish
   --  BehaviorExecutionSpecification => ExecutionSpecification::finish

   function Internal_Get_First
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_First
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  TestIdentityAction => TestIdentityAction::first

   function Internal_Get_First_Event
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Boolean;
   --  DurationConstraint => DurationConstraint::firstEvent
   --  DurationObservation => DurationObservation::firstEvent

   function Internal_Get_First_Event
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Boolean;
   procedure Internal_Set_First_Event
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Boolean);
   --  TimeConstraint => TimeConstraint::firstEvent

   function Internal_Get_First_Event
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_First_Event
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  TimeObservation => TimeObservation::firstEvent

   function Internal_Get_Font_Name
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Font_Name
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  UMLStyle => UMLStyle::fontName

   function Internal_Get_Font_Size
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Real;
   procedure Internal_Set_Font_Size
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Real);
   --  UMLStyle => UMLStyle::fontSize

   function Internal_Get_Formal
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Formal
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  TemplateParameterSubstitution => TemplateParameterSubstitution::formal

   function Internal_Get_Formal_Gate
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Interaction => Interaction::formalGate

   function Internal_Get_Format
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Format
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  Image => Image::format

   function Internal_Get_Fragment
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Interaction => Interaction::fragment
   --  InteractionOperand => InteractionOperand::fragment

   function Internal_Get_From_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_From_Action
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ActionInputPin => ActionInputPin::fromAction

   function Internal_Get_General
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Classifier::general
   --  Actor => Classifier::general
   --  Artifact => Classifier::general
   --  Association => Classifier::general
   --  AssociationClass => Classifier::general
   --  Class => Classifier::general
   --  Collaboration => Classifier::general
   --  CommunicationPath => Classifier::general
   --  Component => Classifier::general
   --  DataType => Classifier::general
   --  DeploymentSpecification => Classifier::general
   --  Device => Classifier::general
   --  Enumeration => Classifier::general
   --  ExecutionEnvironment => Classifier::general
   --  Extension => Classifier::general
   --  FunctionBehavior => Classifier::general
   --  InformationItem => Classifier::general
   --  Interaction => Classifier::general
   --  Interface => Classifier::general
   --  Node => Classifier::general
   --  OpaqueBehavior => Classifier::general
   --  PrimitiveType => Classifier::general
   --  ProtocolStateMachine => Classifier::general
   --  Signal => Classifier::general
   --  StateMachine => Classifier::general
   --  Stereotype => Classifier::general
   --  UseCase => Classifier::general

   function Internal_Get_General
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_General
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Generalization => Generalization::general

   function Internal_Get_General_Machine
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_General_Machine
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ProtocolConformance => ProtocolConformance::generalMachine

   function Internal_Get_General_Ordering
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ActionExecutionSpecification => InteractionFragment::generalOrdering
   --  BehaviorExecutionSpecification => InteractionFragment::generalOrdering
   --  CombinedFragment => InteractionFragment::generalOrdering
   --  ConsiderIgnoreFragment => InteractionFragment::generalOrdering
   --  Continuation => InteractionFragment::generalOrdering
   --  DestructionOccurrenceSpecification => InteractionFragment::generalOrdering
   --  ExecutionOccurrenceSpecification => InteractionFragment::generalOrdering
   --  Interaction => InteractionFragment::generalOrdering
   --  InteractionOperand => InteractionFragment::generalOrdering
   --  InteractionUse => InteractionFragment::generalOrdering
   --  MessageOccurrenceSpecification => InteractionFragment::generalOrdering
   --  OccurrenceSpecification => InteractionFragment::generalOrdering
   --  PartDecomposition => InteractionFragment::generalOrdering
   --  StateInvariant => InteractionFragment::generalOrdering

   function Internal_Get_Generalization
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Classifier::generalization
   --  Actor => Classifier::generalization
   --  Artifact => Classifier::generalization
   --  Association => Classifier::generalization
   --  AssociationClass => Classifier::generalization
   --  Class => Classifier::generalization
   --  Collaboration => Classifier::generalization
   --  CommunicationPath => Classifier::generalization
   --  Component => Classifier::generalization
   --  DataType => Classifier::generalization
   --  DeploymentSpecification => Classifier::generalization
   --  Device => Classifier::generalization
   --  Enumeration => Classifier::generalization
   --  ExecutionEnvironment => Classifier::generalization
   --  Extension => Classifier::generalization
   --  FunctionBehavior => Classifier::generalization
   --  GeneralizationSet => GeneralizationSet::generalization
   --  InformationItem => Classifier::generalization
   --  Interaction => Classifier::generalization
   --  Interface => Classifier::generalization
   --  Node => Classifier::generalization
   --  OpaqueBehavior => Classifier::generalization
   --  PrimitiveType => Classifier::generalization
   --  ProtocolStateMachine => Classifier::generalization
   --  Signal => Classifier::generalization
   --  StateMachine => Classifier::generalization
   --  Stereotype => Classifier::generalization
   --  UseCase => Classifier::generalization

   function Internal_Get_Generalization_Set
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Generalization => Generalization::generalizationSet

   function Internal_Get_Group
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Activity::group

   function Internal_Get_Guard
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Guard
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ControlFlow => ActivityEdge::guard
   --  InteractionOperand => InteractionOperand::guard
   --  ObjectFlow => ActivityEdge::guard
   --  ProtocolTransition => Transition::guard
   --  Transition => Transition::guard

   function Internal_Get_Handler
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AcceptCallAction => ExecutableNode::handler
   --  AcceptEventAction => ExecutableNode::handler
   --  AddStructuralFeatureValueAction => ExecutableNode::handler
   --  AddVariableValueAction => ExecutableNode::handler
   --  BroadcastSignalAction => ExecutableNode::handler
   --  CallBehaviorAction => ExecutableNode::handler
   --  CallOperationAction => ExecutableNode::handler
   --  ClearAssociationAction => ExecutableNode::handler
   --  ClearStructuralFeatureAction => ExecutableNode::handler
   --  ClearVariableAction => ExecutableNode::handler
   --  ConditionalNode => ExecutableNode::handler
   --  CreateLinkAction => ExecutableNode::handler
   --  CreateLinkObjectAction => ExecutableNode::handler
   --  CreateObjectAction => ExecutableNode::handler
   --  DestroyLinkAction => ExecutableNode::handler
   --  DestroyObjectAction => ExecutableNode::handler
   --  ExpansionRegion => ExecutableNode::handler
   --  LoopNode => ExecutableNode::handler
   --  OpaqueAction => ExecutableNode::handler
   --  RaiseExceptionAction => ExecutableNode::handler
   --  ReadExtentAction => ExecutableNode::handler
   --  ReadIsClassifiedObjectAction => ExecutableNode::handler
   --  ReadLinkAction => ExecutableNode::handler
   --  ReadLinkObjectEndAction => ExecutableNode::handler
   --  ReadLinkObjectEndQualifierAction => ExecutableNode::handler
   --  ReadSelfAction => ExecutableNode::handler
   --  ReadStructuralFeatureAction => ExecutableNode::handler
   --  ReadVariableAction => ExecutableNode::handler
   --  ReclassifyObjectAction => ExecutableNode::handler
   --  ReduceAction => ExecutableNode::handler
   --  RemoveStructuralFeatureValueAction => ExecutableNode::handler
   --  RemoveVariableValueAction => ExecutableNode::handler
   --  ReplyAction => ExecutableNode::handler
   --  SendObjectAction => ExecutableNode::handler
   --  SendSignalAction => ExecutableNode::handler
   --  SequenceNode => ExecutableNode::handler
   --  StartClassifierBehaviorAction => ExecutableNode::handler
   --  StartObjectBehaviorAction => ExecutableNode::handler
   --  StructuredActivityNode => ExecutableNode::handler
   --  TestIdentityAction => ExecutableNode::handler
   --  UnmarshallAction => ExecutableNode::handler
   --  ValueSpecificationAction => ExecutableNode::handler

   function Internal_Get_Handler_Body
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Handler_Body
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ExceptionHandler => ExceptionHandler::handlerBody

   function Internal_Get_Heading
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Heading
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  UMLActivityDiagram => UMLDiagram::heading
   --  UMLClassDiagram => UMLDiagram::heading
   --  UMLComponentDiagram => UMLDiagram::heading
   --  UMLCompositeStructureDiagram => UMLDiagram::heading
   --  UMLDeploymentDiagram => UMLDiagram::heading
   --  UMLInteractionDiagram => UMLDiagram::heading
   --  UMLObjectDiagram => UMLDiagram::heading
   --  UMLPackageDiagram => UMLDiagram::heading
   --  UMLProfileDiagram => UMLDiagram::heading
   --  UMLStateMachineDiagram => UMLDiagram::heading
   --  UMLUseCaseDiagram => UMLDiagram::heading

   function Internal_Get_Icon
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Stereotype => Stereotype::icon

   function Internal_Get_Implementing_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Implementing_Classifier
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  InterfaceRealization => InterfaceRealization::implementingClassifier

   function Internal_Get_Imported_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Imported_Element
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ElementImport => ElementImport::importedElement

   function Internal_Get_Imported_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Namespace::importedMember
   --  Actor => Namespace::importedMember
   --  Artifact => Namespace::importedMember
   --  Association => Namespace::importedMember
   --  AssociationClass => Namespace::importedMember
   --  Class => Namespace::importedMember
   --  Collaboration => Namespace::importedMember
   --  CommunicationPath => Namespace::importedMember
   --  Component => Namespace::importedMember
   --  ConditionalNode => Namespace::importedMember
   --  DataType => Namespace::importedMember
   --  DeploymentSpecification => Namespace::importedMember
   --  Device => Namespace::importedMember
   --  Enumeration => Namespace::importedMember
   --  ExecutionEnvironment => Namespace::importedMember
   --  ExpansionRegion => Namespace::importedMember
   --  Extension => Namespace::importedMember
   --  FinalState => Namespace::importedMember
   --  FunctionBehavior => Namespace::importedMember
   --  InformationItem => Namespace::importedMember
   --  Interaction => Namespace::importedMember
   --  InteractionOperand => Namespace::importedMember
   --  Interface => Namespace::importedMember
   --  LoopNode => Namespace::importedMember
   --  Model => Namespace::importedMember
   --  Node => Namespace::importedMember
   --  OpaqueBehavior => Namespace::importedMember
   --  Operation => Namespace::importedMember
   --  Package => Namespace::importedMember
   --  PrimitiveType => Namespace::importedMember
   --  Profile => Namespace::importedMember
   --  ProtocolStateMachine => Namespace::importedMember
   --  ProtocolTransition => Namespace::importedMember
   --  Reception => Namespace::importedMember
   --  Region => Namespace::importedMember
   --  SequenceNode => Namespace::importedMember
   --  Signal => Namespace::importedMember
   --  State => Namespace::importedMember
   --  StateMachine => Namespace::importedMember
   --  Stereotype => Namespace::importedMember
   --  StructuredActivityNode => Namespace::importedMember
   --  Transition => Namespace::importedMember
   --  UseCase => Namespace::importedMember

   function Internal_Get_Imported_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Imported_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  PackageImport => PackageImport::importedPackage

   function Internal_Get_Importing_Namespace
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Importing_Namespace
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ElementImport => ElementImport::importingNamespace
   --  PackageImport => PackageImport::importingNamespace

   function Internal_Get_In_Activity
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_In_Activity
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ActivityPartition => ActivityGroup::inActivity
   --  ConditionalNode => ActivityGroup::inActivity
   --  ExpansionRegion => ActivityGroup::inActivity
   --  InterruptibleActivityRegion => ActivityGroup::inActivity
   --  LoopNode => ActivityGroup::inActivity
   --  SequenceNode => ActivityGroup::inActivity
   --  StructuredActivityNode => ActivityGroup::inActivity

   function Internal_Get_In_Group
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AcceptCallAction => ActivityNode::inGroup
   --  AcceptEventAction => ActivityNode::inGroup
   --  ActionInputPin => ActivityNode::inGroup
   --  ActivityFinalNode => ActivityNode::inGroup
   --  ActivityParameterNode => ActivityNode::inGroup
   --  AddStructuralFeatureValueAction => ActivityNode::inGroup
   --  AddVariableValueAction => ActivityNode::inGroup
   --  BroadcastSignalAction => ActivityNode::inGroup
   --  CallBehaviorAction => ActivityNode::inGroup
   --  CallOperationAction => ActivityNode::inGroup
   --  CentralBufferNode => ActivityNode::inGroup
   --  ClearAssociationAction => ActivityNode::inGroup
   --  ClearStructuralFeatureAction => ActivityNode::inGroup
   --  ClearVariableAction => ActivityNode::inGroup
   --  ConditionalNode => ActivityNode::inGroup
   --  ControlFlow => ActivityEdge::inGroup
   --  CreateLinkAction => ActivityNode::inGroup
   --  CreateLinkObjectAction => ActivityNode::inGroup
   --  CreateObjectAction => ActivityNode::inGroup
   --  DataStoreNode => ActivityNode::inGroup
   --  DecisionNode => ActivityNode::inGroup
   --  DestroyLinkAction => ActivityNode::inGroup
   --  DestroyObjectAction => ActivityNode::inGroup
   --  ExpansionNode => ActivityNode::inGroup
   --  ExpansionRegion => ActivityNode::inGroup
   --  FlowFinalNode => ActivityNode::inGroup
   --  ForkNode => ActivityNode::inGroup
   --  InitialNode => ActivityNode::inGroup
   --  InputPin => ActivityNode::inGroup
   --  JoinNode => ActivityNode::inGroup
   --  LoopNode => ActivityNode::inGroup
   --  MergeNode => ActivityNode::inGroup
   --  ObjectFlow => ActivityEdge::inGroup
   --  OpaqueAction => ActivityNode::inGroup
   --  OutputPin => ActivityNode::inGroup
   --  RaiseExceptionAction => ActivityNode::inGroup
   --  ReadExtentAction => ActivityNode::inGroup
   --  ReadIsClassifiedObjectAction => ActivityNode::inGroup
   --  ReadLinkAction => ActivityNode::inGroup
   --  ReadLinkObjectEndAction => ActivityNode::inGroup
   --  ReadLinkObjectEndQualifierAction => ActivityNode::inGroup
   --  ReadSelfAction => ActivityNode::inGroup
   --  ReadStructuralFeatureAction => ActivityNode::inGroup
   --  ReadVariableAction => ActivityNode::inGroup
   --  ReclassifyObjectAction => ActivityNode::inGroup
   --  ReduceAction => ActivityNode::inGroup
   --  RemoveStructuralFeatureValueAction => ActivityNode::inGroup
   --  RemoveVariableValueAction => ActivityNode::inGroup
   --  ReplyAction => ActivityNode::inGroup
   --  SendObjectAction => ActivityNode::inGroup
   --  SendSignalAction => ActivityNode::inGroup
   --  SequenceNode => ActivityNode::inGroup
   --  StartClassifierBehaviorAction => ActivityNode::inGroup
   --  StartObjectBehaviorAction => ActivityNode::inGroup
   --  StructuredActivityNode => ActivityNode::inGroup
   --  TestIdentityAction => ActivityNode::inGroup
   --  UnmarshallAction => ActivityNode::inGroup
   --  ValuePin => ActivityNode::inGroup
   --  ValueSpecificationAction => ActivityNode::inGroup

   function Internal_Get_In_Interruptible_Region
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AcceptCallAction => ActivityNode::inInterruptibleRegion
   --  AcceptEventAction => ActivityNode::inInterruptibleRegion
   --  ActionInputPin => ActivityNode::inInterruptibleRegion
   --  ActivityFinalNode => ActivityNode::inInterruptibleRegion
   --  ActivityParameterNode => ActivityNode::inInterruptibleRegion
   --  AddStructuralFeatureValueAction => ActivityNode::inInterruptibleRegion
   --  AddVariableValueAction => ActivityNode::inInterruptibleRegion
   --  BroadcastSignalAction => ActivityNode::inInterruptibleRegion
   --  CallBehaviorAction => ActivityNode::inInterruptibleRegion
   --  CallOperationAction => ActivityNode::inInterruptibleRegion
   --  CentralBufferNode => ActivityNode::inInterruptibleRegion
   --  ClearAssociationAction => ActivityNode::inInterruptibleRegion
   --  ClearStructuralFeatureAction => ActivityNode::inInterruptibleRegion
   --  ClearVariableAction => ActivityNode::inInterruptibleRegion
   --  ConditionalNode => ActivityNode::inInterruptibleRegion
   --  CreateLinkAction => ActivityNode::inInterruptibleRegion
   --  CreateLinkObjectAction => ActivityNode::inInterruptibleRegion
   --  CreateObjectAction => ActivityNode::inInterruptibleRegion
   --  DataStoreNode => ActivityNode::inInterruptibleRegion
   --  DecisionNode => ActivityNode::inInterruptibleRegion
   --  DestroyLinkAction => ActivityNode::inInterruptibleRegion
   --  DestroyObjectAction => ActivityNode::inInterruptibleRegion
   --  ExpansionNode => ActivityNode::inInterruptibleRegion
   --  ExpansionRegion => ActivityNode::inInterruptibleRegion
   --  FlowFinalNode => ActivityNode::inInterruptibleRegion
   --  ForkNode => ActivityNode::inInterruptibleRegion
   --  InitialNode => ActivityNode::inInterruptibleRegion
   --  InputPin => ActivityNode::inInterruptibleRegion
   --  JoinNode => ActivityNode::inInterruptibleRegion
   --  LoopNode => ActivityNode::inInterruptibleRegion
   --  MergeNode => ActivityNode::inInterruptibleRegion
   --  OpaqueAction => ActivityNode::inInterruptibleRegion
   --  OutputPin => ActivityNode::inInterruptibleRegion
   --  RaiseExceptionAction => ActivityNode::inInterruptibleRegion
   --  ReadExtentAction => ActivityNode::inInterruptibleRegion
   --  ReadIsClassifiedObjectAction => ActivityNode::inInterruptibleRegion
   --  ReadLinkAction => ActivityNode::inInterruptibleRegion
   --  ReadLinkObjectEndAction => ActivityNode::inInterruptibleRegion
   --  ReadLinkObjectEndQualifierAction => ActivityNode::inInterruptibleRegion
   --  ReadSelfAction => ActivityNode::inInterruptibleRegion
   --  ReadStructuralFeatureAction => ActivityNode::inInterruptibleRegion
   --  ReadVariableAction => ActivityNode::inInterruptibleRegion
   --  ReclassifyObjectAction => ActivityNode::inInterruptibleRegion
   --  ReduceAction => ActivityNode::inInterruptibleRegion
   --  RemoveStructuralFeatureValueAction => ActivityNode::inInterruptibleRegion
   --  RemoveVariableValueAction => ActivityNode::inInterruptibleRegion
   --  ReplyAction => ActivityNode::inInterruptibleRegion
   --  SendObjectAction => ActivityNode::inInterruptibleRegion
   --  SendSignalAction => ActivityNode::inInterruptibleRegion
   --  SequenceNode => ActivityNode::inInterruptibleRegion
   --  StartClassifierBehaviorAction => ActivityNode::inInterruptibleRegion
   --  StartObjectBehaviorAction => ActivityNode::inInterruptibleRegion
   --  StructuredActivityNode => ActivityNode::inInterruptibleRegion
   --  TestIdentityAction => ActivityNode::inInterruptibleRegion
   --  UnmarshallAction => ActivityNode::inInterruptibleRegion
   --  ValuePin => ActivityNode::inInterruptibleRegion
   --  ValueSpecificationAction => ActivityNode::inInterruptibleRegion

   function Internal_Get_In_Partition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AcceptCallAction => ActivityNode::inPartition
   --  AcceptEventAction => ActivityNode::inPartition
   --  ActionInputPin => ActivityNode::inPartition
   --  ActivityFinalNode => ActivityNode::inPartition
   --  ActivityParameterNode => ActivityNode::inPartition
   --  AddStructuralFeatureValueAction => ActivityNode::inPartition
   --  AddVariableValueAction => ActivityNode::inPartition
   --  BroadcastSignalAction => ActivityNode::inPartition
   --  CallBehaviorAction => ActivityNode::inPartition
   --  CallOperationAction => ActivityNode::inPartition
   --  CentralBufferNode => ActivityNode::inPartition
   --  ClearAssociationAction => ActivityNode::inPartition
   --  ClearStructuralFeatureAction => ActivityNode::inPartition
   --  ClearVariableAction => ActivityNode::inPartition
   --  ConditionalNode => ActivityNode::inPartition
   --  ControlFlow => ActivityEdge::inPartition
   --  CreateLinkAction => ActivityNode::inPartition
   --  CreateLinkObjectAction => ActivityNode::inPartition
   --  CreateObjectAction => ActivityNode::inPartition
   --  DataStoreNode => ActivityNode::inPartition
   --  DecisionNode => ActivityNode::inPartition
   --  DestroyLinkAction => ActivityNode::inPartition
   --  DestroyObjectAction => ActivityNode::inPartition
   --  ExpansionNode => ActivityNode::inPartition
   --  ExpansionRegion => ActivityNode::inPartition
   --  FlowFinalNode => ActivityNode::inPartition
   --  ForkNode => ActivityNode::inPartition
   --  InitialNode => ActivityNode::inPartition
   --  InputPin => ActivityNode::inPartition
   --  JoinNode => ActivityNode::inPartition
   --  LoopNode => ActivityNode::inPartition
   --  MergeNode => ActivityNode::inPartition
   --  ObjectFlow => ActivityEdge::inPartition
   --  OpaqueAction => ActivityNode::inPartition
   --  OutputPin => ActivityNode::inPartition
   --  RaiseExceptionAction => ActivityNode::inPartition
   --  ReadExtentAction => ActivityNode::inPartition
   --  ReadIsClassifiedObjectAction => ActivityNode::inPartition
   --  ReadLinkAction => ActivityNode::inPartition
   --  ReadLinkObjectEndAction => ActivityNode::inPartition
   --  ReadLinkObjectEndQualifierAction => ActivityNode::inPartition
   --  ReadSelfAction => ActivityNode::inPartition
   --  ReadStructuralFeatureAction => ActivityNode::inPartition
   --  ReadVariableAction => ActivityNode::inPartition
   --  ReclassifyObjectAction => ActivityNode::inPartition
   --  ReduceAction => ActivityNode::inPartition
   --  RemoveStructuralFeatureValueAction => ActivityNode::inPartition
   --  RemoveVariableValueAction => ActivityNode::inPartition
   --  ReplyAction => ActivityNode::inPartition
   --  SendObjectAction => ActivityNode::inPartition
   --  SendSignalAction => ActivityNode::inPartition
   --  SequenceNode => ActivityNode::inPartition
   --  StartClassifierBehaviorAction => ActivityNode::inPartition
   --  StartObjectBehaviorAction => ActivityNode::inPartition
   --  StructuredActivityNode => ActivityNode::inPartition
   --  TestIdentityAction => ActivityNode::inPartition
   --  UnmarshallAction => ActivityNode::inPartition
   --  ValuePin => ActivityNode::inPartition
   --  ValueSpecificationAction => ActivityNode::inPartition

   function Internal_Get_In_State
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ActionInputPin => ObjectNode::inState
   --  ActivityParameterNode => ObjectNode::inState
   --  CentralBufferNode => ObjectNode::inState
   --  DataStoreNode => ObjectNode::inState
   --  ExpansionNode => ObjectNode::inState
   --  InputPin => ObjectNode::inState
   --  OutputPin => ObjectNode::inState
   --  ValuePin => ObjectNode::inState

   function Internal_Get_In_Structured_Node
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_In_Structured_Node
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  AcceptCallAction => ActivityNode::inStructuredNode
   --  AcceptEventAction => ActivityNode::inStructuredNode
   --  ActionInputPin => ActivityNode::inStructuredNode
   --  ActivityFinalNode => ActivityNode::inStructuredNode
   --  ActivityParameterNode => ActivityNode::inStructuredNode
   --  AddStructuralFeatureValueAction => ActivityNode::inStructuredNode
   --  AddVariableValueAction => ActivityNode::inStructuredNode
   --  BroadcastSignalAction => ActivityNode::inStructuredNode
   --  CallBehaviorAction => ActivityNode::inStructuredNode
   --  CallOperationAction => ActivityNode::inStructuredNode
   --  CentralBufferNode => ActivityNode::inStructuredNode
   --  ClearAssociationAction => ActivityNode::inStructuredNode
   --  ClearStructuralFeatureAction => ActivityNode::inStructuredNode
   --  ClearVariableAction => ActivityNode::inStructuredNode
   --  ConditionalNode => ActivityNode::inStructuredNode
   --  ControlFlow => ActivityEdge::inStructuredNode
   --  CreateLinkAction => ActivityNode::inStructuredNode
   --  CreateLinkObjectAction => ActivityNode::inStructuredNode
   --  CreateObjectAction => ActivityNode::inStructuredNode
   --  DataStoreNode => ActivityNode::inStructuredNode
   --  DecisionNode => ActivityNode::inStructuredNode
   --  DestroyLinkAction => ActivityNode::inStructuredNode
   --  DestroyObjectAction => ActivityNode::inStructuredNode
   --  ExpansionNode => ActivityNode::inStructuredNode
   --  ExpansionRegion => ActivityNode::inStructuredNode
   --  FlowFinalNode => ActivityNode::inStructuredNode
   --  ForkNode => ActivityNode::inStructuredNode
   --  InitialNode => ActivityNode::inStructuredNode
   --  InputPin => ActivityNode::inStructuredNode
   --  JoinNode => ActivityNode::inStructuredNode
   --  LoopNode => ActivityNode::inStructuredNode
   --  MergeNode => ActivityNode::inStructuredNode
   --  ObjectFlow => ActivityEdge::inStructuredNode
   --  OpaqueAction => ActivityNode::inStructuredNode
   --  OutputPin => ActivityNode::inStructuredNode
   --  RaiseExceptionAction => ActivityNode::inStructuredNode
   --  ReadExtentAction => ActivityNode::inStructuredNode
   --  ReadIsClassifiedObjectAction => ActivityNode::inStructuredNode
   --  ReadLinkAction => ActivityNode::inStructuredNode
   --  ReadLinkObjectEndAction => ActivityNode::inStructuredNode
   --  ReadLinkObjectEndQualifierAction => ActivityNode::inStructuredNode
   --  ReadSelfAction => ActivityNode::inStructuredNode
   --  ReadStructuralFeatureAction => ActivityNode::inStructuredNode
   --  ReadVariableAction => ActivityNode::inStructuredNode
   --  ReclassifyObjectAction => ActivityNode::inStructuredNode
   --  ReduceAction => ActivityNode::inStructuredNode
   --  RemoveStructuralFeatureValueAction => ActivityNode::inStructuredNode
   --  RemoveVariableValueAction => ActivityNode::inStructuredNode
   --  ReplyAction => ActivityNode::inStructuredNode
   --  SendObjectAction => ActivityNode::inStructuredNode
   --  SendSignalAction => ActivityNode::inStructuredNode
   --  SequenceNode => ActivityNode::inStructuredNode
   --  StartClassifierBehaviorAction => ActivityNode::inStructuredNode
   --  StartObjectBehaviorAction => ActivityNode::inStructuredNode
   --  StructuredActivityNode => ActivityNode::inStructuredNode
   --  TestIdentityAction => ActivityNode::inStructuredNode
   --  UnmarshallAction => ActivityNode::inStructuredNode
   --  ValuePin => ActivityNode::inStructuredNode
   --  ValueSpecificationAction => ActivityNode::inStructuredNode

   function Internal_Get_Include
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  UseCase => UseCase::include

   function Internal_Get_Including_Case
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Including_Case
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Include => Include::includingCase

   function Internal_Get_Incoming
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AcceptCallAction => ActivityNode::incoming
   --  AcceptEventAction => ActivityNode::incoming
   --  ActionInputPin => ActivityNode::incoming
   --  ActivityFinalNode => ActivityNode::incoming
   --  ActivityParameterNode => ActivityNode::incoming
   --  AddStructuralFeatureValueAction => ActivityNode::incoming
   --  AddVariableValueAction => ActivityNode::incoming
   --  BroadcastSignalAction => ActivityNode::incoming
   --  CallBehaviorAction => ActivityNode::incoming
   --  CallOperationAction => ActivityNode::incoming
   --  CentralBufferNode => ActivityNode::incoming
   --  ClearAssociationAction => ActivityNode::incoming
   --  ClearStructuralFeatureAction => ActivityNode::incoming
   --  ClearVariableAction => ActivityNode::incoming
   --  ConditionalNode => ActivityNode::incoming
   --  ConnectionPointReference => Vertex::incoming
   --  CreateLinkAction => ActivityNode::incoming
   --  CreateLinkObjectAction => ActivityNode::incoming
   --  CreateObjectAction => ActivityNode::incoming
   --  DataStoreNode => ActivityNode::incoming
   --  DecisionNode => ActivityNode::incoming
   --  DestroyLinkAction => ActivityNode::incoming
   --  DestroyObjectAction => ActivityNode::incoming
   --  ExpansionNode => ActivityNode::incoming
   --  ExpansionRegion => ActivityNode::incoming
   --  FinalState => Vertex::incoming
   --  FlowFinalNode => ActivityNode::incoming
   --  ForkNode => ActivityNode::incoming
   --  InitialNode => ActivityNode::incoming
   --  InputPin => ActivityNode::incoming
   --  JoinNode => ActivityNode::incoming
   --  LoopNode => ActivityNode::incoming
   --  MergeNode => ActivityNode::incoming
   --  OpaqueAction => ActivityNode::incoming
   --  OutputPin => ActivityNode::incoming
   --  Pseudostate => Vertex::incoming
   --  RaiseExceptionAction => ActivityNode::incoming
   --  ReadExtentAction => ActivityNode::incoming
   --  ReadIsClassifiedObjectAction => ActivityNode::incoming
   --  ReadLinkAction => ActivityNode::incoming
   --  ReadLinkObjectEndAction => ActivityNode::incoming
   --  ReadLinkObjectEndQualifierAction => ActivityNode::incoming
   --  ReadSelfAction => ActivityNode::incoming
   --  ReadStructuralFeatureAction => ActivityNode::incoming
   --  ReadVariableAction => ActivityNode::incoming
   --  ReclassifyObjectAction => ActivityNode::incoming
   --  ReduceAction => ActivityNode::incoming
   --  RemoveStructuralFeatureValueAction => ActivityNode::incoming
   --  RemoveVariableValueAction => ActivityNode::incoming
   --  ReplyAction => ActivityNode::incoming
   --  SendObjectAction => ActivityNode::incoming
   --  SendSignalAction => ActivityNode::incoming
   --  SequenceNode => ActivityNode::incoming
   --  StartClassifierBehaviorAction => ActivityNode::incoming
   --  StartObjectBehaviorAction => ActivityNode::incoming
   --  State => Vertex::incoming
   --  StructuredActivityNode => ActivityNode::incoming
   --  TestIdentityAction => ActivityNode::incoming
   --  UnmarshallAction => ActivityNode::incoming
   --  ValuePin => ActivityNode::incoming
   --  ValueSpecificationAction => ActivityNode::incoming

   function Internal_Get_Information_Source
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  InformationFlow => InformationFlow::informationSource

   function Internal_Get_Information_Target
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  InformationFlow => InformationFlow::informationTarget

   function Internal_Get_Inherited_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Classifier::inheritedMember
   --  Actor => Classifier::inheritedMember
   --  Artifact => Classifier::inheritedMember
   --  Association => Classifier::inheritedMember
   --  AssociationClass => Classifier::inheritedMember
   --  Class => Classifier::inheritedMember
   --  Collaboration => Classifier::inheritedMember
   --  CommunicationPath => Classifier::inheritedMember
   --  Component => Classifier::inheritedMember
   --  DataType => Classifier::inheritedMember
   --  DeploymentSpecification => Classifier::inheritedMember
   --  Device => Classifier::inheritedMember
   --  Enumeration => Classifier::inheritedMember
   --  ExecutionEnvironment => Classifier::inheritedMember
   --  Extension => Classifier::inheritedMember
   --  FunctionBehavior => Classifier::inheritedMember
   --  InformationItem => Classifier::inheritedMember
   --  Interaction => Classifier::inheritedMember
   --  Interface => Classifier::inheritedMember
   --  Node => Classifier::inheritedMember
   --  OpaqueBehavior => Classifier::inheritedMember
   --  PrimitiveType => Classifier::inheritedMember
   --  ProtocolStateMachine => Classifier::inheritedMember
   --  Signal => Classifier::inheritedMember
   --  StateMachine => Classifier::inheritedMember
   --  Stereotype => Classifier::inheritedMember
   --  UseCase => Classifier::inheritedMember

   function Internal_Get_Inherited_Parameter
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  RedefinableTemplateSignature => RedefinableTemplateSignature::inheritedParameter

   function Internal_Get_Inherited_State_Border
    (Self : AMF.Internals.AMF_Element)
       return AMF.UMLDI.Optional_UMLDI_UML_Inherited_State_Border_Kind;
   procedure Internal_Set_Inherited_State_Border
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UMLDI.Optional_UMLDI_UML_Inherited_State_Border_Kind);
   --  UMLStateMachineDiagram => UMLStateMachineDiagram::inheritedStateBorder

   function Internal_Get_Input
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AcceptCallAction => Action::input
   --  AcceptEventAction => Action::input
   --  AddStructuralFeatureValueAction => Action::input
   --  AddVariableValueAction => Action::input
   --  BroadcastSignalAction => Action::input
   --  CallBehaviorAction => Action::input
   --  CallOperationAction => Action::input
   --  ClearAssociationAction => Action::input
   --  ClearStructuralFeatureAction => Action::input
   --  ClearVariableAction => Action::input
   --  ConditionalNode => Action::input
   --  CreateLinkAction => Action::input
   --  CreateLinkObjectAction => Action::input
   --  CreateObjectAction => Action::input
   --  DestroyLinkAction => Action::input
   --  DestroyObjectAction => Action::input
   --  ExpansionRegion => Action::input
   --  LoopNode => Action::input
   --  OpaqueAction => Action::input
   --  RaiseExceptionAction => Action::input
   --  ReadExtentAction => Action::input
   --  ReadIsClassifiedObjectAction => Action::input
   --  ReadLinkAction => Action::input
   --  ReadLinkObjectEndAction => Action::input
   --  ReadLinkObjectEndQualifierAction => Action::input
   --  ReadSelfAction => Action::input
   --  ReadStructuralFeatureAction => Action::input
   --  ReadVariableAction => Action::input
   --  ReclassifyObjectAction => Action::input
   --  ReduceAction => Action::input
   --  RemoveStructuralFeatureValueAction => Action::input
   --  RemoveVariableValueAction => Action::input
   --  ReplyAction => Action::input
   --  SendObjectAction => Action::input
   --  SendSignalAction => Action::input
   --  SequenceNode => Action::input
   --  StartClassifierBehaviorAction => Action::input
   --  StartObjectBehaviorAction => Action::input
   --  StructuredActivityNode => Action::input
   --  TestIdentityAction => Action::input
   --  UnmarshallAction => Action::input
   --  ValueSpecificationAction => Action::input

   function Internal_Get_Input_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ExpansionRegion => ExpansionRegion::inputElement

   function Internal_Get_Input_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  CreateLinkAction => LinkAction::inputValue
   --  CreateLinkObjectAction => LinkAction::inputValue
   --  DestroyLinkAction => LinkAction::inputValue
   --  OpaqueAction => OpaqueAction::inputValue
   --  ReadLinkAction => LinkAction::inputValue

   function Internal_Get_Insert_At
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Insert_At
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  AddStructuralFeatureValueAction => AddStructuralFeatureValueAction::insertAt
   --  AddVariableValueAction => AddVariableValueAction::insertAt
   --  LinkEndCreationData => LinkEndCreationData::insertAt

   function Internal_Get_Instance
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Instance
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  InstanceValue => InstanceValue::instance

   function Internal_Get_Interaction
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Interaction
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Lifeline => Lifeline::interaction
   --  Message => Message::interaction

   function Internal_Get_Interaction_Operator
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Interaction_Operator_Kind;
   procedure Internal_Set_Interaction_Operator
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Interaction_Operator_Kind);
   --  CombinedFragment => CombinedFragment::interactionOperator
   --  ConsiderIgnoreFragment => CombinedFragment::interactionOperator

   function Internal_Get_Interface
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Interface
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ExtensionEnd => Property::interface
   --  Operation => Operation::interface
   --  Port => Property::interface
   --  Property => Property::interface

   function Internal_Get_Interface_Realization
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => BehavioredClassifier::interfaceRealization
   --  Actor => BehavioredClassifier::interfaceRealization
   --  AssociationClass => BehavioredClassifier::interfaceRealization
   --  Class => BehavioredClassifier::interfaceRealization
   --  Collaboration => BehavioredClassifier::interfaceRealization
   --  Component => BehavioredClassifier::interfaceRealization
   --  Device => BehavioredClassifier::interfaceRealization
   --  ExecutionEnvironment => BehavioredClassifier::interfaceRealization
   --  FunctionBehavior => BehavioredClassifier::interfaceRealization
   --  Interaction => BehavioredClassifier::interfaceRealization
   --  Node => BehavioredClassifier::interfaceRealization
   --  OpaqueBehavior => BehavioredClassifier::interfaceRealization
   --  ProtocolStateMachine => BehavioredClassifier::interfaceRealization
   --  StateMachine => BehavioredClassifier::interfaceRealization
   --  Stereotype => BehavioredClassifier::interfaceRealization
   --  UseCase => BehavioredClassifier::interfaceRealization

   function Internal_Get_Interrupting_Edge
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  InterruptibleActivityRegion => InterruptibleActivityRegion::interruptingEdge

   function Internal_Get_Interrupts
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Interrupts
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ControlFlow => ActivityEdge::interrupts
   --  ObjectFlow => ActivityEdge::interrupts

   function Internal_Get_Invariant
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Invariant
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  StateInvariant => StateInvariant::invariant

   function Internal_Get_Is_Abstract
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Abstract
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Activity => Class::isAbstract
   --  Actor => Classifier::isAbstract
   --  Artifact => Classifier::isAbstract
   --  Association => Classifier::isAbstract
   --  AssociationClass => Class::isAbstract
   --  Class => Class::isAbstract
   --  Collaboration => Classifier::isAbstract
   --  CommunicationPath => Classifier::isAbstract
   --  Component => Class::isAbstract
   --  DataType => Classifier::isAbstract
   --  DeploymentSpecification => Classifier::isAbstract
   --  Device => Class::isAbstract
   --  Enumeration => Classifier::isAbstract
   --  ExecutionEnvironment => Class::isAbstract
   --  Extension => Classifier::isAbstract
   --  FunctionBehavior => Class::isAbstract
   --  InformationItem => Classifier::isAbstract
   --  Interaction => Class::isAbstract
   --  Interface => Classifier::isAbstract
   --  Node => Class::isAbstract
   --  OpaqueBehavior => Class::isAbstract
   --  Operation => BehavioralFeature::isAbstract
   --  PrimitiveType => Classifier::isAbstract
   --  ProtocolStateMachine => Class::isAbstract
   --  Reception => BehavioralFeature::isAbstract
   --  Signal => Classifier::isAbstract
   --  StateMachine => Class::isAbstract
   --  Stereotype => Class::isAbstract
   --  UseCase => Classifier::isAbstract

   function Internal_Get_Is_Active
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Active
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Activity => Class::isActive
   --  AssociationClass => Class::isActive
   --  Class => Class::isActive
   --  Component => Class::isActive
   --  Device => Class::isActive
   --  ExecutionEnvironment => Class::isActive
   --  FunctionBehavior => Class::isActive
   --  Interaction => Class::isActive
   --  Node => Class::isActive
   --  OpaqueBehavior => Class::isActive
   --  ProtocolStateMachine => Class::isActive
   --  StateMachine => Class::isActive
   --  Stereotype => Class::isActive

   function Internal_Get_Is_Activity_Frame
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Activity_Frame
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  UMLActivityDiagram => UMLActivityDiagram::isActivityFrame

   function Internal_Get_Is_Association_Dot_Shown
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Association_Dot_Shown
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  UMLClassDiagram => UMLClassOrCompositeStructureDiagram::isAssociationDotShown
   --  UMLCompositeStructureDiagram => UMLClassOrCompositeStructureDiagram::isAssociationDotShown

   function Internal_Get_Is_Assured
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Assured
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  ConditionalNode => ConditionalNode::isAssured

   function Internal_Get_Is_Behavior
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Behavior
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Port => Port::isBehavior

   function Internal_Get_Is_Collapse_State_Icon
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Collapse_State_Icon
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  UMLStateMachineDiagram => UMLStateMachineDiagram::isCollapseStateIcon

   function Internal_Get_Is_Combine_Duplicate
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Combine_Duplicate
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  JoinNode => JoinNode::isCombineDuplicate

   function Internal_Get_Is_Composite
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Composite
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  ExtensionEnd => Property::isComposite
   --  FinalState => State::isComposite
   --  Port => Property::isComposite
   --  Property => Property::isComposite
   --  State => State::isComposite

   function Internal_Get_Is_Conjugated
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Conjugated
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Port => Port::isConjugated

   function Internal_Get_Is_Control
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Control
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  ActionInputPin => Pin::isControl
   --  InputPin => Pin::isControl
   --  OutputPin => Pin::isControl
   --  ValuePin => Pin::isControl

   function Internal_Get_Is_Control_Type
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Control_Type
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  ActionInputPin => ObjectNode::isControlType
   --  ActivityParameterNode => ObjectNode::isControlType
   --  CentralBufferNode => ObjectNode::isControlType
   --  DataStoreNode => ObjectNode::isControlType
   --  ExpansionNode => ObjectNode::isControlType
   --  InputPin => ObjectNode::isControlType
   --  OutputPin => ObjectNode::isControlType
   --  ValuePin => ObjectNode::isControlType

   function Internal_Get_Is_Covering
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Covering
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  GeneralizationSet => GeneralizationSet::isCovering

   function Internal_Get_Is_Derived
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Derived
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Association => Association::isDerived
   --  AssociationClass => Association::isDerived
   --  CommunicationPath => Association::isDerived
   --  Extension => Association::isDerived
   --  ExtensionEnd => Property::isDerived
   --  Port => Property::isDerived
   --  Property => Property::isDerived

   function Internal_Get_Is_Derived_Union
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Derived_Union
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  ExtensionEnd => Property::isDerivedUnion
   --  Port => Property::isDerivedUnion
   --  Property => Property::isDerivedUnion

   function Internal_Get_Is_Destroy_Duplicates
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Destroy_Duplicates
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  LinkEndDestructionData => LinkEndDestructionData::isDestroyDuplicates

   function Internal_Get_Is_Destroy_Links
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Destroy_Links
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  DestroyObjectAction => DestroyObjectAction::isDestroyLinks

   function Internal_Get_Is_Destroy_Owned_Objects
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Destroy_Owned_Objects
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  DestroyObjectAction => DestroyObjectAction::isDestroyOwnedObjects

   function Internal_Get_Is_Determinate
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Determinate
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  ConditionalNode => ConditionalNode::isDeterminate

   function Internal_Get_Is_Dimension
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Dimension
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  ActivityPartition => ActivityPartition::isDimension

   function Internal_Get_Is_Direct
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Direct
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  ReadIsClassifiedObjectAction => ReadIsClassifiedObjectAction::isDirect

   function Internal_Get_Is_Disjoint
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Disjoint
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  GeneralizationSet => GeneralizationSet::isDisjoint

   function Internal_Get_Is_Double_Sided
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Double_Sided
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  UMLClassifierShape => UMLClassifierShape::isDoubleSided

   function Internal_Get_Is_Exception
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Exception
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Parameter => Parameter::isException

   function Internal_Get_Is_External
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_External
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  ActivityPartition => ActivityPartition::isExternal

   function Internal_Get_Is_Final_Specialization
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Final_Specialization
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Activity => Classifier::isFinalSpecialization
   --  Actor => Classifier::isFinalSpecialization
   --  Artifact => Classifier::isFinalSpecialization
   --  Association => Classifier::isFinalSpecialization
   --  AssociationClass => Classifier::isFinalSpecialization
   --  Class => Classifier::isFinalSpecialization
   --  Collaboration => Classifier::isFinalSpecialization
   --  CommunicationPath => Classifier::isFinalSpecialization
   --  Component => Classifier::isFinalSpecialization
   --  DataType => Classifier::isFinalSpecialization
   --  DeploymentSpecification => Classifier::isFinalSpecialization
   --  Device => Classifier::isFinalSpecialization
   --  Enumeration => Classifier::isFinalSpecialization
   --  ExecutionEnvironment => Classifier::isFinalSpecialization
   --  Extension => Classifier::isFinalSpecialization
   --  FunctionBehavior => Classifier::isFinalSpecialization
   --  InformationItem => Classifier::isFinalSpecialization
   --  Interaction => Classifier::isFinalSpecialization
   --  Interface => Classifier::isFinalSpecialization
   --  Node => Classifier::isFinalSpecialization
   --  OpaqueBehavior => Classifier::isFinalSpecialization
   --  PrimitiveType => Classifier::isFinalSpecialization
   --  ProtocolStateMachine => Classifier::isFinalSpecialization
   --  Signal => Classifier::isFinalSpecialization
   --  StateMachine => Classifier::isFinalSpecialization
   --  Stereotype => Classifier::isFinalSpecialization
   --  UseCase => Classifier::isFinalSpecialization

   function Internal_Get_Is_Frame
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Frame
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  UMLActivityDiagram => UMLDiagram::isFrame
   --  UMLClassDiagram => UMLDiagram::isFrame
   --  UMLComponentDiagram => UMLDiagram::isFrame
   --  UMLCompositeStructureDiagram => UMLDiagram::isFrame
   --  UMLDeploymentDiagram => UMLDiagram::isFrame
   --  UMLInteractionDiagram => UMLDiagram::isFrame
   --  UMLObjectDiagram => UMLDiagram::isFrame
   --  UMLPackageDiagram => UMLDiagram::isFrame
   --  UMLProfileDiagram => UMLDiagram::isFrame
   --  UMLStateMachineDiagram => UMLDiagram::isFrame
   --  UMLUseCaseDiagram => UMLDiagram::isFrame

   function Internal_Get_Is_ID
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_ID
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  ExtensionEnd => Property::isID
   --  Port => Property::isID
   --  Property => Property::isID

   function Internal_Get_Is_Icon
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Icon
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  UMLActivityDiagram => UMLDiagramElement::isIcon
   --  UMLAssociationEndLabel => UMLDiagramElement::isIcon
   --  UMLAssociationOrConnectorOrLinkShape => UMLDiagramElement::isIcon
   --  UMLClassDiagram => UMLDiagramElement::isIcon
   --  UMLClassifierShape => UMLDiagramElement::isIcon
   --  UMLCompartment => UMLDiagramElement::isIcon
   --  UMLCompartmentableShape => UMLDiagramElement::isIcon
   --  UMLComponentDiagram => UMLDiagramElement::isIcon
   --  UMLCompositeStructureDiagram => UMLDiagramElement::isIcon
   --  UMLDeploymentDiagram => UMLDiagramElement::isIcon
   --  UMLEdge => UMLDiagramElement::isIcon
   --  UMLInteractionDiagram => UMLDiagramElement::isIcon
   --  UMLInteractionTableLabel => UMLDiagramElement::isIcon
   --  UMLKeywordLabel => UMLDiagramElement::isIcon
   --  UMLLabel => UMLDiagramElement::isIcon
   --  UMLMultiplicityLabel => UMLDiagramElement::isIcon
   --  UMLNameLabel => UMLDiagramElement::isIcon
   --  UMLObjectDiagram => UMLDiagramElement::isIcon
   --  UMLPackageDiagram => UMLDiagramElement::isIcon
   --  UMLProfileDiagram => UMLDiagramElement::isIcon
   --  UMLRedefinesLabel => UMLDiagramElement::isIcon
   --  UMLShape => UMLDiagramElement::isIcon
   --  UMLStateMachineDiagram => UMLDiagramElement::isIcon
   --  UMLStateShape => UMLDiagramElement::isIcon
   --  UMLStereotypePropertyValueLabel => UMLDiagramElement::isIcon
   --  UMLTypedElementLabel => UMLDiagramElement::isIcon
   --  UMLUseCaseDiagram => UMLDiagramElement::isIcon

   function Internal_Get_Is_Indent_For_Visibility
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Indent_For_Visibility
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  UMLClassifierShape => UMLClassifierShape::isIndentForVisibility

   function Internal_Get_Is_Indirectly_Instantiated
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Indirectly_Instantiated
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Component => Component::isIndirectlyInstantiated

   function Internal_Get_Is_Iso
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Iso
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  UMLActivityDiagram => UMLDiagram::isIso
   --  UMLClassDiagram => UMLDiagram::isIso
   --  UMLComponentDiagram => UMLDiagram::isIso
   --  UMLCompositeStructureDiagram => UMLDiagram::isIso
   --  UMLDeploymentDiagram => UMLDiagram::isIso
   --  UMLInteractionDiagram => UMLDiagram::isIso
   --  UMLObjectDiagram => UMLDiagram::isIso
   --  UMLPackageDiagram => UMLDiagram::isIso
   --  UMLProfileDiagram => UMLDiagram::isIso
   --  UMLStateMachineDiagram => UMLDiagram::isIso
   --  UMLUseCaseDiagram => UMLDiagram::isIso

   function Internal_Get_Is_Leaf
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Leaf
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  AcceptCallAction => RedefinableElement::isLeaf
   --  AcceptEventAction => RedefinableElement::isLeaf
   --  ActionInputPin => RedefinableElement::isLeaf
   --  Activity => RedefinableElement::isLeaf
   --  ActivityFinalNode => RedefinableElement::isLeaf
   --  ActivityParameterNode => RedefinableElement::isLeaf
   --  Actor => RedefinableElement::isLeaf
   --  AddStructuralFeatureValueAction => RedefinableElement::isLeaf
   --  AddVariableValueAction => RedefinableElement::isLeaf
   --  Artifact => RedefinableElement::isLeaf
   --  Association => RedefinableElement::isLeaf
   --  AssociationClass => RedefinableElement::isLeaf
   --  BroadcastSignalAction => RedefinableElement::isLeaf
   --  CallBehaviorAction => RedefinableElement::isLeaf
   --  CallOperationAction => RedefinableElement::isLeaf
   --  CentralBufferNode => RedefinableElement::isLeaf
   --  Class => RedefinableElement::isLeaf
   --  ClearAssociationAction => RedefinableElement::isLeaf
   --  ClearStructuralFeatureAction => RedefinableElement::isLeaf
   --  ClearVariableAction => RedefinableElement::isLeaf
   --  Collaboration => RedefinableElement::isLeaf
   --  CommunicationPath => RedefinableElement::isLeaf
   --  Component => RedefinableElement::isLeaf
   --  ConditionalNode => RedefinableElement::isLeaf
   --  Connector => RedefinableElement::isLeaf
   --  ControlFlow => RedefinableElement::isLeaf
   --  CreateLinkAction => RedefinableElement::isLeaf
   --  CreateLinkObjectAction => RedefinableElement::isLeaf
   --  CreateObjectAction => RedefinableElement::isLeaf
   --  DataStoreNode => RedefinableElement::isLeaf
   --  DataType => RedefinableElement::isLeaf
   --  DecisionNode => RedefinableElement::isLeaf
   --  DeploymentSpecification => RedefinableElement::isLeaf
   --  DestroyLinkAction => RedefinableElement::isLeaf
   --  DestroyObjectAction => RedefinableElement::isLeaf
   --  Device => RedefinableElement::isLeaf
   --  Enumeration => RedefinableElement::isLeaf
   --  ExecutionEnvironment => RedefinableElement::isLeaf
   --  ExpansionNode => RedefinableElement::isLeaf
   --  ExpansionRegion => RedefinableElement::isLeaf
   --  Extension => RedefinableElement::isLeaf
   --  ExtensionEnd => RedefinableElement::isLeaf
   --  ExtensionPoint => RedefinableElement::isLeaf
   --  FinalState => RedefinableElement::isLeaf
   --  FlowFinalNode => RedefinableElement::isLeaf
   --  ForkNode => RedefinableElement::isLeaf
   --  FunctionBehavior => RedefinableElement::isLeaf
   --  InformationItem => RedefinableElement::isLeaf
   --  InitialNode => RedefinableElement::isLeaf
   --  InputPin => RedefinableElement::isLeaf
   --  Interaction => RedefinableElement::isLeaf
   --  Interface => RedefinableElement::isLeaf
   --  JoinNode => RedefinableElement::isLeaf
   --  LoopNode => RedefinableElement::isLeaf
   --  MergeNode => RedefinableElement::isLeaf
   --  Node => RedefinableElement::isLeaf
   --  ObjectFlow => RedefinableElement::isLeaf
   --  OpaqueAction => RedefinableElement::isLeaf
   --  OpaqueBehavior => RedefinableElement::isLeaf
   --  Operation => RedefinableElement::isLeaf
   --  OutputPin => RedefinableElement::isLeaf
   --  Port => RedefinableElement::isLeaf
   --  PrimitiveType => RedefinableElement::isLeaf
   --  Property => RedefinableElement::isLeaf
   --  ProtocolStateMachine => RedefinableElement::isLeaf
   --  ProtocolTransition => RedefinableElement::isLeaf
   --  RaiseExceptionAction => RedefinableElement::isLeaf
   --  ReadExtentAction => RedefinableElement::isLeaf
   --  ReadIsClassifiedObjectAction => RedefinableElement::isLeaf
   --  ReadLinkAction => RedefinableElement::isLeaf
   --  ReadLinkObjectEndAction => RedefinableElement::isLeaf
   --  ReadLinkObjectEndQualifierAction => RedefinableElement::isLeaf
   --  ReadSelfAction => RedefinableElement::isLeaf
   --  ReadStructuralFeatureAction => RedefinableElement::isLeaf
   --  ReadVariableAction => RedefinableElement::isLeaf
   --  Reception => RedefinableElement::isLeaf
   --  ReclassifyObjectAction => RedefinableElement::isLeaf
   --  RedefinableTemplateSignature => RedefinableElement::isLeaf
   --  ReduceAction => RedefinableElement::isLeaf
   --  Region => RedefinableElement::isLeaf
   --  RemoveStructuralFeatureValueAction => RedefinableElement::isLeaf
   --  RemoveVariableValueAction => RedefinableElement::isLeaf
   --  ReplyAction => RedefinableElement::isLeaf
   --  SendObjectAction => RedefinableElement::isLeaf
   --  SendSignalAction => RedefinableElement::isLeaf
   --  SequenceNode => RedefinableElement::isLeaf
   --  Signal => RedefinableElement::isLeaf
   --  StartClassifierBehaviorAction => RedefinableElement::isLeaf
   --  StartObjectBehaviorAction => RedefinableElement::isLeaf
   --  State => RedefinableElement::isLeaf
   --  StateMachine => RedefinableElement::isLeaf
   --  Stereotype => RedefinableElement::isLeaf
   --  StructuredActivityNode => RedefinableElement::isLeaf
   --  TestIdentityAction => RedefinableElement::isLeaf
   --  Transition => RedefinableElement::isLeaf
   --  UnmarshallAction => RedefinableElement::isLeaf
   --  UseCase => RedefinableElement::isLeaf
   --  ValuePin => RedefinableElement::isLeaf
   --  ValueSpecificationAction => RedefinableElement::isLeaf

   function Internal_Get_Is_Locally_Reentrant
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Locally_Reentrant
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  AcceptCallAction => Action::isLocallyReentrant
   --  AcceptEventAction => Action::isLocallyReentrant
   --  AddStructuralFeatureValueAction => Action::isLocallyReentrant
   --  AddVariableValueAction => Action::isLocallyReentrant
   --  BroadcastSignalAction => Action::isLocallyReentrant
   --  CallBehaviorAction => Action::isLocallyReentrant
   --  CallOperationAction => Action::isLocallyReentrant
   --  ClearAssociationAction => Action::isLocallyReentrant
   --  ClearStructuralFeatureAction => Action::isLocallyReentrant
   --  ClearVariableAction => Action::isLocallyReentrant
   --  ConditionalNode => Action::isLocallyReentrant
   --  CreateLinkAction => Action::isLocallyReentrant
   --  CreateLinkObjectAction => Action::isLocallyReentrant
   --  CreateObjectAction => Action::isLocallyReentrant
   --  DestroyLinkAction => Action::isLocallyReentrant
   --  DestroyObjectAction => Action::isLocallyReentrant
   --  ExpansionRegion => Action::isLocallyReentrant
   --  LoopNode => Action::isLocallyReentrant
   --  OpaqueAction => Action::isLocallyReentrant
   --  RaiseExceptionAction => Action::isLocallyReentrant
   --  ReadExtentAction => Action::isLocallyReentrant
   --  ReadIsClassifiedObjectAction => Action::isLocallyReentrant
   --  ReadLinkAction => Action::isLocallyReentrant
   --  ReadLinkObjectEndAction => Action::isLocallyReentrant
   --  ReadLinkObjectEndQualifierAction => Action::isLocallyReentrant
   --  ReadSelfAction => Action::isLocallyReentrant
   --  ReadStructuralFeatureAction => Action::isLocallyReentrant
   --  ReadVariableAction => Action::isLocallyReentrant
   --  ReclassifyObjectAction => Action::isLocallyReentrant
   --  ReduceAction => Action::isLocallyReentrant
   --  RemoveStructuralFeatureValueAction => Action::isLocallyReentrant
   --  RemoveVariableValueAction => Action::isLocallyReentrant
   --  ReplyAction => Action::isLocallyReentrant
   --  SendObjectAction => Action::isLocallyReentrant
   --  SendSignalAction => Action::isLocallyReentrant
   --  SequenceNode => Action::isLocallyReentrant
   --  StartClassifierBehaviorAction => Action::isLocallyReentrant
   --  StartObjectBehaviorAction => Action::isLocallyReentrant
   --  StructuredActivityNode => Action::isLocallyReentrant
   --  TestIdentityAction => Action::isLocallyReentrant
   --  UnmarshallAction => Action::isLocallyReentrant
   --  ValueSpecificationAction => Action::isLocallyReentrant

   function Internal_Get_Is_Multicast
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Multicast
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  ObjectFlow => ObjectFlow::isMulticast

   function Internal_Get_Is_Multireceive
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Multireceive
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  ObjectFlow => ObjectFlow::isMultireceive

   function Internal_Get_Is_Ordered
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Ordered
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  ActionInputPin => MultiplicityElement::isOrdered
   --  ConnectorEnd => MultiplicityElement::isOrdered
   --  ExtensionEnd => MultiplicityElement::isOrdered
   --  InputPin => MultiplicityElement::isOrdered
   --  Operation => Operation::isOrdered
   --  OutputPin => MultiplicityElement::isOrdered
   --  Parameter => MultiplicityElement::isOrdered
   --  Port => MultiplicityElement::isOrdered
   --  Property => MultiplicityElement::isOrdered
   --  ReduceAction => ReduceAction::isOrdered
   --  ValuePin => MultiplicityElement::isOrdered
   --  Variable => MultiplicityElement::isOrdered

   function Internal_Get_Is_Orthogonal
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   --  FinalState => State::isOrthogonal
   --  State => State::isOrthogonal

   function Internal_Get_Is_Query
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Query
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Operation => Operation::isQuery

   function Internal_Get_Is_Read_Only
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Read_Only
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Activity => Activity::isReadOnly
   --  ExtensionEnd => Property::isReadOnly
   --  Port => Property::isReadOnly
   --  Property => Property::isReadOnly

   function Internal_Get_Is_Reentrant
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Reentrant
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Activity => Behavior::isReentrant
   --  FunctionBehavior => Behavior::isReentrant
   --  Interaction => Behavior::isReentrant
   --  OpaqueBehavior => Behavior::isReentrant
   --  ProtocolStateMachine => Behavior::isReentrant
   --  StateMachine => Behavior::isReentrant

   function Internal_Get_Is_Relative
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Relative
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  TimeEvent => TimeEvent::isRelative

   function Internal_Get_Is_Remove_Duplicates
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Remove_Duplicates
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  RemoveStructuralFeatureValueAction => RemoveStructuralFeatureValueAction::isRemoveDuplicates
   --  RemoveVariableValueAction => RemoveVariableValueAction::isRemoveDuplicates

   function Internal_Get_Is_Replace_All
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Replace_All
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  AddStructuralFeatureValueAction => AddStructuralFeatureValueAction::isReplaceAll
   --  AddVariableValueAction => AddVariableValueAction::isReplaceAll
   --  LinkEndCreationData => LinkEndCreationData::isReplaceAll
   --  ReclassifyObjectAction => ReclassifyObjectAction::isReplaceAll

   function Internal_Get_Is_Required
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   --  Extension => Extension::isRequired

   function Internal_Get_Is_Service
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Service
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Port => Port::isService

   function Internal_Get_Is_Simple
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   --  FinalState => State::isSimple
   --  State => State::isSimple

   function Internal_Get_Is_Single_Execution
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Single_Execution
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Activity => Activity::isSingleExecution

   function Internal_Get_Is_Static
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Static
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Connector => Feature::isStatic
   --  ExtensionEnd => Feature::isStatic
   --  Operation => Feature::isStatic
   --  Port => Feature::isStatic
   --  Property => Feature::isStatic
   --  Reception => Feature::isStatic

   function Internal_Get_Is_Stream
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Stream
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Parameter => Parameter::isStream

   function Internal_Get_Is_Strict
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Strict
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  ProfileApplication => ProfileApplication::isStrict

   function Internal_Get_Is_Submachine_State
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   --  FinalState => State::isSubmachineState
   --  State => State::isSubmachineState

   function Internal_Get_Is_Substitutable
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Boolean;
   procedure Internal_Set_Is_Substitutable
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Boolean);
   --  Generalization => Generalization::isSubstitutable

   function Internal_Get_Is_Synchronous
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Synchronous
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  CallBehaviorAction => CallAction::isSynchronous
   --  CallOperationAction => CallAction::isSynchronous
   --  StartObjectBehaviorAction => CallAction::isSynchronous

   function Internal_Get_Is_Tabbed
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Tabbed
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  UMLStateShape => UMLStateShape::isTabbed

   function Internal_Get_Is_Tested_First
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Tested_First
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  LoopNode => LoopNode::isTestedFirst

   function Internal_Get_Is_Transition_Oriented
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Transition_Oriented
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  UMLStateMachineDiagram => UMLStateMachineDiagram::isTransitionOriented

   function Internal_Get_Is_Unique
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Unique
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  ActionInputPin => MultiplicityElement::isUnique
   --  ConnectorEnd => MultiplicityElement::isUnique
   --  ExtensionEnd => MultiplicityElement::isUnique
   --  InputPin => MultiplicityElement::isUnique
   --  Operation => Operation::isUnique
   --  OutputPin => MultiplicityElement::isUnique
   --  Parameter => MultiplicityElement::isUnique
   --  Port => MultiplicityElement::isUnique
   --  Property => MultiplicityElement::isUnique
   --  ValuePin => MultiplicityElement::isUnique
   --  Variable => MultiplicityElement::isUnique

   function Internal_Get_Is_Unmarshall
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Is_Unmarshall
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  AcceptCallAction => AcceptEventAction::isUnmarshall
   --  AcceptEventAction => AcceptEventAction::isUnmarshall

   function Internal_Get_Join_Spec
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Join_Spec
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  JoinNode => JoinNode::joinSpec

   function Internal_Get_Kind
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Connector_Kind;
   --  Connector => Connector::kind

   function Internal_Get_Kind
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Pseudostate_Kind;
   procedure Internal_Set_Kind
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Pseudostate_Kind);
   --  Pseudostate => Pseudostate::kind

   function Internal_Get_Kind
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Transition_Kind;
   procedure Internal_Set_Kind
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Transition_Kind);
   --  ProtocolTransition => Transition::kind
   --  Transition => Transition::kind

   function Internal_Get_Kind
    (Self : AMF.Internals.AMF_Element)
       return AMF.UMLDI.UMLDI_UML_Association_Or_Connector_Or_Link_Shape_Kind;
   procedure Internal_Set_Kind
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UMLDI.UMLDI_UML_Association_Or_Connector_Or_Link_Shape_Kind);
   --  UMLAssociationOrConnectorOrLinkShape => UMLAssociationOrConnectorOrLinkShape::kind

   function Internal_Get_Kind
    (Self : AMF.Internals.AMF_Element)
       return AMF.UMLDI.UMLDI_UML_Interaction_Diagram_Kind;
   procedure Internal_Set_Kind
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UMLDI.UMLDI_UML_Interaction_Diagram_Kind);
   --  UMLInteractionDiagram => UMLInteractionDiagram::kind

   function Internal_Get_Kind
    (Self : AMF.Internals.AMF_Element)
       return AMF.UMLDI.UMLDI_UML_Interaction_Table_Label_Kind;
   procedure Internal_Set_Kind
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UMLDI.UMLDI_UML_Interaction_Table_Label_Kind);
   --  UMLInteractionTableLabel => UMLInteractionTableLabel::kind

   function Internal_Get_Language
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_String;
   --  FunctionBehavior => OpaqueBehavior::language
   --  OpaqueAction => OpaqueAction::language
   --  OpaqueBehavior => OpaqueBehavior::language
   --  OpaqueExpression => OpaqueExpression::language

   function Internal_Get_Lifeline
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Interaction => Interaction::lifeline

   function Internal_Get_Local_Postcondition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AcceptCallAction => Action::localPostcondition
   --  AcceptEventAction => Action::localPostcondition
   --  AddStructuralFeatureValueAction => Action::localPostcondition
   --  AddVariableValueAction => Action::localPostcondition
   --  BroadcastSignalAction => Action::localPostcondition
   --  CallBehaviorAction => Action::localPostcondition
   --  CallOperationAction => Action::localPostcondition
   --  ClearAssociationAction => Action::localPostcondition
   --  ClearStructuralFeatureAction => Action::localPostcondition
   --  ClearVariableAction => Action::localPostcondition
   --  ConditionalNode => Action::localPostcondition
   --  CreateLinkAction => Action::localPostcondition
   --  CreateLinkObjectAction => Action::localPostcondition
   --  CreateObjectAction => Action::localPostcondition
   --  DestroyLinkAction => Action::localPostcondition
   --  DestroyObjectAction => Action::localPostcondition
   --  ExpansionRegion => Action::localPostcondition
   --  LoopNode => Action::localPostcondition
   --  OpaqueAction => Action::localPostcondition
   --  RaiseExceptionAction => Action::localPostcondition
   --  ReadExtentAction => Action::localPostcondition
   --  ReadIsClassifiedObjectAction => Action::localPostcondition
   --  ReadLinkAction => Action::localPostcondition
   --  ReadLinkObjectEndAction => Action::localPostcondition
   --  ReadLinkObjectEndQualifierAction => Action::localPostcondition
   --  ReadSelfAction => Action::localPostcondition
   --  ReadStructuralFeatureAction => Action::localPostcondition
   --  ReadVariableAction => Action::localPostcondition
   --  ReclassifyObjectAction => Action::localPostcondition
   --  ReduceAction => Action::localPostcondition
   --  RemoveStructuralFeatureValueAction => Action::localPostcondition
   --  RemoveVariableValueAction => Action::localPostcondition
   --  ReplyAction => Action::localPostcondition
   --  SendObjectAction => Action::localPostcondition
   --  SendSignalAction => Action::localPostcondition
   --  SequenceNode => Action::localPostcondition
   --  StartClassifierBehaviorAction => Action::localPostcondition
   --  StartObjectBehaviorAction => Action::localPostcondition
   --  StructuredActivityNode => Action::localPostcondition
   --  TestIdentityAction => Action::localPostcondition
   --  UnmarshallAction => Action::localPostcondition
   --  ValueSpecificationAction => Action::localPostcondition

   function Internal_Get_Local_Precondition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AcceptCallAction => Action::localPrecondition
   --  AcceptEventAction => Action::localPrecondition
   --  AddStructuralFeatureValueAction => Action::localPrecondition
   --  AddVariableValueAction => Action::localPrecondition
   --  BroadcastSignalAction => Action::localPrecondition
   --  CallBehaviorAction => Action::localPrecondition
   --  CallOperationAction => Action::localPrecondition
   --  ClearAssociationAction => Action::localPrecondition
   --  ClearStructuralFeatureAction => Action::localPrecondition
   --  ClearVariableAction => Action::localPrecondition
   --  ConditionalNode => Action::localPrecondition
   --  CreateLinkAction => Action::localPrecondition
   --  CreateLinkObjectAction => Action::localPrecondition
   --  CreateObjectAction => Action::localPrecondition
   --  DestroyLinkAction => Action::localPrecondition
   --  DestroyObjectAction => Action::localPrecondition
   --  ExpansionRegion => Action::localPrecondition
   --  LoopNode => Action::localPrecondition
   --  OpaqueAction => Action::localPrecondition
   --  RaiseExceptionAction => Action::localPrecondition
   --  ReadExtentAction => Action::localPrecondition
   --  ReadIsClassifiedObjectAction => Action::localPrecondition
   --  ReadLinkAction => Action::localPrecondition
   --  ReadLinkObjectEndAction => Action::localPrecondition
   --  ReadLinkObjectEndQualifierAction => Action::localPrecondition
   --  ReadSelfAction => Action::localPrecondition
   --  ReadStructuralFeatureAction => Action::localPrecondition
   --  ReadVariableAction => Action::localPrecondition
   --  ReclassifyObjectAction => Action::localPrecondition
   --  ReduceAction => Action::localPrecondition
   --  RemoveStructuralFeatureValueAction => Action::localPrecondition
   --  RemoveVariableValueAction => Action::localPrecondition
   --  ReplyAction => Action::localPrecondition
   --  SendObjectAction => Action::localPrecondition
   --  SendSignalAction => Action::localPrecondition
   --  SequenceNode => Action::localPrecondition
   --  StartClassifierBehaviorAction => Action::localPrecondition
   --  StartObjectBehaviorAction => Action::localPrecondition
   --  StructuredActivityNode => Action::localPrecondition
   --  TestIdentityAction => Action::localPrecondition
   --  UnmarshallAction => Action::localPrecondition
   --  ValueSpecificationAction => Action::localPrecondition

   function Internal_Get_Local_Style
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Local_Style
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  UMLActivityDiagram => UMLDiagramElement::localStyle
   --  UMLAssociationEndLabel => UMLDiagramElement::localStyle
   --  UMLAssociationOrConnectorOrLinkShape => UMLDiagramElement::localStyle
   --  UMLClassDiagram => UMLDiagramElement::localStyle
   --  UMLClassifierShape => UMLDiagramElement::localStyle
   --  UMLCompartment => UMLDiagramElement::localStyle
   --  UMLCompartmentableShape => UMLDiagramElement::localStyle
   --  UMLComponentDiagram => UMLDiagramElement::localStyle
   --  UMLCompositeStructureDiagram => UMLDiagramElement::localStyle
   --  UMLDeploymentDiagram => UMLDiagramElement::localStyle
   --  UMLEdge => UMLDiagramElement::localStyle
   --  UMLInteractionDiagram => UMLDiagramElement::localStyle
   --  UMLInteractionTableLabel => UMLDiagramElement::localStyle
   --  UMLKeywordLabel => UMLDiagramElement::localStyle
   --  UMLLabel => UMLDiagramElement::localStyle
   --  UMLMultiplicityLabel => UMLDiagramElement::localStyle
   --  UMLNameLabel => UMLDiagramElement::localStyle
   --  UMLObjectDiagram => UMLDiagramElement::localStyle
   --  UMLPackageDiagram => UMLDiagramElement::localStyle
   --  UMLProfileDiagram => UMLDiagramElement::localStyle
   --  UMLRedefinesLabel => UMLDiagramElement::localStyle
   --  UMLShape => UMLDiagramElement::localStyle
   --  UMLStateMachineDiagram => UMLDiagramElement::localStyle
   --  UMLStateShape => UMLDiagramElement::localStyle
   --  UMLStereotypePropertyValueLabel => UMLDiagramElement::localStyle
   --  UMLTypedElementLabel => UMLDiagramElement::localStyle
   --  UMLUseCaseDiagram => UMLDiagramElement::localStyle

   function Internal_Get_Location
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Location
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Deployment => Deployment::location

   function Internal_Get_Location
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Location
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  Image => Image::location

   function Internal_Get_Loop_Variable
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  LoopNode => LoopNode::loopVariable

   function Internal_Get_Loop_Variable_Input
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  LoopNode => LoopNode::loopVariableInput

   function Internal_Get_Lower
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Integer;
   procedure Internal_Set_Lower
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Integer);
   --  ActionInputPin => MultiplicityElement::lower
   --  ConnectorEnd => MultiplicityElement::lower
   --  ExtensionEnd => ExtensionEnd::lower
   --  InputPin => MultiplicityElement::lower
   --  Operation => Operation::lower
   --  OutputPin => MultiplicityElement::lower
   --  Parameter => MultiplicityElement::lower
   --  Port => MultiplicityElement::lower
   --  Property => MultiplicityElement::lower
   --  ValuePin => MultiplicityElement::lower
   --  Variable => MultiplicityElement::lower

   function Internal_Get_Lower_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Lower_Value
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ActionInputPin => MultiplicityElement::lowerValue
   --  ConnectorEnd => MultiplicityElement::lowerValue
   --  ExtensionEnd => MultiplicityElement::lowerValue
   --  InputPin => MultiplicityElement::lowerValue
   --  OutputPin => MultiplicityElement::lowerValue
   --  Parameter => MultiplicityElement::lowerValue
   --  Port => MultiplicityElement::lowerValue
   --  Property => MultiplicityElement::lowerValue
   --  ValuePin => MultiplicityElement::lowerValue
   --  Variable => MultiplicityElement::lowerValue

   function Internal_Get_Manifestation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Artifact => Artifact::manifestation
   --  DeploymentSpecification => Artifact::manifestation

   function Internal_Get_Mapping
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Mapping
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Abstraction => Abstraction::mapping
   --  ComponentRealization => Abstraction::mapping
   --  InterfaceRealization => Abstraction::mapping
   --  Manifestation => Abstraction::mapping
   --  Realization => Abstraction::mapping
   --  Substitution => Abstraction::mapping

   function Internal_Get_Max
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Max
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  DurationInterval => DurationInterval::max
   --  Interval => Interval::max
   --  TimeInterval => Interval::max

   function Internal_Get_Maxint
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Maxint
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  InteractionConstraint => InteractionConstraint::maxint

   function Internal_Get_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Namespace::member
   --  Actor => Namespace::member
   --  Artifact => Namespace::member
   --  Association => Namespace::member
   --  AssociationClass => Namespace::member
   --  Class => Namespace::member
   --  Collaboration => Namespace::member
   --  CommunicationPath => Namespace::member
   --  Component => Namespace::member
   --  ConditionalNode => Namespace::member
   --  DataType => Namespace::member
   --  DeploymentSpecification => Namespace::member
   --  Device => Namespace::member
   --  Enumeration => Namespace::member
   --  ExecutionEnvironment => Namespace::member
   --  ExpansionRegion => Namespace::member
   --  Extension => Namespace::member
   --  FinalState => Namespace::member
   --  FunctionBehavior => Namespace::member
   --  InformationItem => Namespace::member
   --  Interaction => Namespace::member
   --  InteractionOperand => Namespace::member
   --  Interface => Namespace::member
   --  LoopNode => Namespace::member
   --  Model => Namespace::member
   --  Node => Namespace::member
   --  OpaqueBehavior => Namespace::member
   --  Operation => Namespace::member
   --  Package => Namespace::member
   --  PrimitiveType => Namespace::member
   --  Profile => Namespace::member
   --  ProtocolStateMachine => Namespace::member
   --  ProtocolTransition => Namespace::member
   --  Reception => Namespace::member
   --  Region => Namespace::member
   --  SequenceNode => Namespace::member
   --  Signal => Namespace::member
   --  State => Namespace::member
   --  StateMachine => Namespace::member
   --  Stereotype => Namespace::member
   --  StructuredActivityNode => Namespace::member
   --  Transition => Namespace::member
   --  UseCase => Namespace::member

   function Internal_Get_Member_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Association::memberEnd
   --  AssociationClass => Association::memberEnd
   --  CommunicationPath => Association::memberEnd
   --  Extension => Association::memberEnd

   function Internal_Get_Merged_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Merged_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  PackageMerge => PackageMerge::mergedPackage

   function Internal_Get_Message
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ConsiderIgnoreFragment => ConsiderIgnoreFragment::message
   --  Interaction => Interaction::message

   function Internal_Get_Message
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Message
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  DestructionOccurrenceSpecification => MessageEnd::message
   --  Gate => MessageEnd::message
   --  MessageOccurrenceSpecification => MessageEnd::message

   function Internal_Get_Message_Kind
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Message_Kind;
   --  Message => Message::messageKind

   function Internal_Get_Message_Sort
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Message_Sort;
   procedure Internal_Set_Message_Sort
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Message_Sort);
   --  Message => Message::messageSort

   function Internal_Get_Metaclass
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   --  Extension => Extension::metaclass

   function Internal_Get_Metaclass_Reference
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Profile => Profile::metaclassReference

   function Internal_Get_Metamodel_Reference
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Profile => Profile::metamodelReference

   function Internal_Get_Method
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Operation => BehavioralFeature::method
   --  Reception => BehavioralFeature::method

   function Internal_Get_Min
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Min
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  DurationInterval => DurationInterval::min
   --  Interval => Interval::min
   --  TimeInterval => Interval::min

   function Internal_Get_Minint
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Minint
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  InteractionConstraint => InteractionConstraint::minint

   function Internal_Get_Mode
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Expansion_Kind;
   procedure Internal_Set_Mode
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Expansion_Kind);
   --  ExpansionRegion => ExpansionRegion::mode

   function Internal_Get_Mode_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   --  UMLNameLabel => UMLNameLabel::modeElement

   function Internal_Get_Model_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   --  UMLActivityDiagram => UMLActivityDiagram::modelElement
   --  UMLAssociationEndLabel => UMLAssociationEndLabel::modelElement
   --  UMLAssociationOrConnectorOrLinkShape => UMLDiagramElement::modelElement
   --  UMLClassDiagram => UMLDiagramElement::modelElement
   --  UMLClassifierShape => UMLClassifierShape::modelElement
   --  UMLCompartment => UMLDiagramElement::modelElement
   --  UMLCompartmentableShape => UMLDiagramElement::modelElement
   --  UMLComponentDiagram => UMLDiagramElement::modelElement
   --  UMLCompositeStructureDiagram => UMLDiagramElement::modelElement
   --  UMLDeploymentDiagram => UMLDiagramElement::modelElement
   --  UMLEdge => UMLDiagramElement::modelElement
   --  UMLInteractionDiagram => UMLBehaviorDiagram::modelElement
   --  UMLInteractionTableLabel => UMLDiagramElement::modelElement
   --  UMLKeywordLabel => UMLDiagramElement::modelElement
   --  UMLLabel => UMLDiagramElement::modelElement
   --  UMLMultiplicityLabel => UMLDiagramElement::modelElement
   --  UMLNameLabel => UMLDiagramElement::modelElement
   --  UMLObjectDiagram => UMLDiagramElement::modelElement
   --  UMLPackageDiagram => UMLDiagramElement::modelElement
   --  UMLProfileDiagram => UMLDiagramElement::modelElement
   --  UMLRedefinesLabel => UMLDiagramElement::modelElement
   --  UMLShape => UMLDiagramElement::modelElement
   --  UMLStateMachineDiagram => UMLBehaviorDiagram::modelElement
   --  UMLStateShape => UMLDiagramElement::modelElement
   --  UMLStereotypePropertyValueLabel => UMLDiagramElement::modelElement
   --  UMLTypedElementLabel => UMLDiagramElement::modelElement
   --  UMLUseCaseDiagram => UMLBehaviorDiagram::modelElement

   function Internal_Get_Must_Isolate
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Must_Isolate
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  ConditionalNode => StructuredActivityNode::mustIsolate
   --  ExpansionRegion => StructuredActivityNode::mustIsolate
   --  LoopNode => StructuredActivityNode::mustIsolate
   --  SequenceNode => StructuredActivityNode::mustIsolate
   --  StructuredActivityNode => StructuredActivityNode::mustIsolate

   function Internal_Get_Name
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Name
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  Abstraction => NamedElement::name
   --  AcceptCallAction => NamedElement::name
   --  AcceptEventAction => NamedElement::name
   --  ActionExecutionSpecification => NamedElement::name
   --  ActionInputPin => NamedElement::name
   --  Activity => NamedElement::name
   --  ActivityFinalNode => NamedElement::name
   --  ActivityParameterNode => NamedElement::name
   --  ActivityPartition => NamedElement::name
   --  Actor => NamedElement::name
   --  AddStructuralFeatureValueAction => NamedElement::name
   --  AddVariableValueAction => NamedElement::name
   --  AnyReceiveEvent => NamedElement::name
   --  Artifact => NamedElement::name
   --  Association => NamedElement::name
   --  AssociationClass => NamedElement::name
   --  BehaviorExecutionSpecification => NamedElement::name
   --  BroadcastSignalAction => NamedElement::name
   --  CallBehaviorAction => NamedElement::name
   --  CallEvent => NamedElement::name
   --  CallOperationAction => NamedElement::name
   --  CentralBufferNode => NamedElement::name
   --  ChangeEvent => NamedElement::name
   --  Class => NamedElement::name
   --  ClearAssociationAction => NamedElement::name
   --  ClearStructuralFeatureAction => NamedElement::name
   --  ClearVariableAction => NamedElement::name
   --  Collaboration => NamedElement::name
   --  CollaborationUse => NamedElement::name
   --  CombinedFragment => NamedElement::name
   --  CommunicationPath => NamedElement::name
   --  Component => NamedElement::name
   --  ComponentRealization => NamedElement::name
   --  ConditionalNode => NamedElement::name
   --  ConnectionPointReference => NamedElement::name
   --  Connector => NamedElement::name
   --  ConsiderIgnoreFragment => NamedElement::name
   --  Constraint => NamedElement::name
   --  Continuation => NamedElement::name
   --  ControlFlow => NamedElement::name
   --  CreateLinkAction => NamedElement::name
   --  CreateLinkObjectAction => NamedElement::name
   --  CreateObjectAction => NamedElement::name
   --  UMLActivityDiagram => NamedElement::name
   --  UMLClassDiagram => NamedElement::name
   --  UMLComponentDiagram => NamedElement::name
   --  UMLCompositeStructureDiagram => NamedElement::name
   --  UMLDeploymentDiagram => NamedElement::name
   --  UMLInteractionDiagram => NamedElement::name
   --  UMLObjectDiagram => NamedElement::name
   --  UMLPackageDiagram => NamedElement::name
   --  UMLProfileDiagram => NamedElement::name
   --  UMLStateMachineDiagram => NamedElement::name
   --  UMLStyle => NamedElement::name
   --  UMLUseCaseDiagram => NamedElement::name
   --  DataStoreNode => NamedElement::name
   --  DataType => NamedElement::name
   --  DecisionNode => NamedElement::name
   --  Dependency => NamedElement::name
   --  Deployment => NamedElement::name
   --  DeploymentSpecification => NamedElement::name
   --  DestroyLinkAction => NamedElement::name
   --  DestroyObjectAction => NamedElement::name
   --  DestructionOccurrenceSpecification => NamedElement::name
   --  Device => NamedElement::name
   --  Duration => NamedElement::name
   --  DurationConstraint => NamedElement::name
   --  DurationInterval => NamedElement::name
   --  DurationObservation => NamedElement::name
   --  Enumeration => NamedElement::name
   --  EnumerationLiteral => NamedElement::name
   --  ExecutionEnvironment => NamedElement::name
   --  ExecutionOccurrenceSpecification => NamedElement::name
   --  ExpansionNode => NamedElement::name
   --  ExpansionRegion => NamedElement::name
   --  Expression => NamedElement::name
   --  Extend => NamedElement::name
   --  Extension => NamedElement::name
   --  ExtensionEnd => NamedElement::name
   --  ExtensionPoint => NamedElement::name
   --  FinalState => NamedElement::name
   --  FlowFinalNode => NamedElement::name
   --  ForkNode => NamedElement::name
   --  FunctionBehavior => NamedElement::name
   --  Gate => NamedElement::name
   --  GeneralOrdering => NamedElement::name
   --  GeneralizationSet => NamedElement::name
   --  Include => NamedElement::name
   --  InformationFlow => NamedElement::name
   --  InformationItem => NamedElement::name
   --  InitialNode => NamedElement::name
   --  InputPin => NamedElement::name
   --  InstanceSpecification => NamedElement::name
   --  InstanceValue => NamedElement::name
   --  Interaction => NamedElement::name
   --  InteractionConstraint => NamedElement::name
   --  InteractionOperand => NamedElement::name
   --  InteractionUse => NamedElement::name
   --  Interface => NamedElement::name
   --  InterfaceRealization => NamedElement::name
   --  InterruptibleActivityRegion => NamedElement::name
   --  Interval => NamedElement::name
   --  IntervalConstraint => NamedElement::name
   --  JoinNode => NamedElement::name
   --  Lifeline => NamedElement::name
   --  LiteralBoolean => NamedElement::name
   --  LiteralInteger => NamedElement::name
   --  LiteralNull => NamedElement::name
   --  LiteralReal => NamedElement::name
   --  LiteralString => NamedElement::name
   --  LiteralUnlimitedNatural => NamedElement::name
   --  LoopNode => NamedElement::name
   --  Manifestation => NamedElement::name
   --  MergeNode => NamedElement::name
   --  Message => NamedElement::name
   --  MessageOccurrenceSpecification => NamedElement::name
   --  Model => NamedElement::name
   --  Node => NamedElement::name
   --  ObjectFlow => NamedElement::name
   --  OccurrenceSpecification => NamedElement::name
   --  OpaqueAction => NamedElement::name
   --  OpaqueBehavior => NamedElement::name
   --  OpaqueExpression => NamedElement::name
   --  Operation => NamedElement::name
   --  OutputPin => NamedElement::name
   --  Package => NamedElement::name
   --  Parameter => NamedElement::name
   --  ParameterSet => NamedElement::name
   --  PartDecomposition => NamedElement::name
   --  Port => NamedElement::name
   --  PrimitiveType => NamedElement::name
   --  Profile => NamedElement::name
   --  Property => NamedElement::name
   --  ProtocolStateMachine => NamedElement::name
   --  ProtocolTransition => NamedElement::name
   --  Pseudostate => NamedElement::name
   --  RaiseExceptionAction => NamedElement::name
   --  ReadExtentAction => NamedElement::name
   --  ReadIsClassifiedObjectAction => NamedElement::name
   --  ReadLinkAction => NamedElement::name
   --  ReadLinkObjectEndAction => NamedElement::name
   --  ReadLinkObjectEndQualifierAction => NamedElement::name
   --  ReadSelfAction => NamedElement::name
   --  ReadStructuralFeatureAction => NamedElement::name
   --  ReadVariableAction => NamedElement::name
   --  Realization => NamedElement::name
   --  Reception => NamedElement::name
   --  ReclassifyObjectAction => NamedElement::name
   --  RedefinableTemplateSignature => NamedElement::name
   --  ReduceAction => NamedElement::name
   --  Region => NamedElement::name
   --  RemoveStructuralFeatureValueAction => NamedElement::name
   --  RemoveVariableValueAction => NamedElement::name
   --  ReplyAction => NamedElement::name
   --  SendObjectAction => NamedElement::name
   --  SendSignalAction => NamedElement::name
   --  SequenceNode => NamedElement::name
   --  Signal => NamedElement::name
   --  SignalEvent => NamedElement::name
   --  StartClassifierBehaviorAction => NamedElement::name
   --  StartObjectBehaviorAction => NamedElement::name
   --  State => NamedElement::name
   --  StateInvariant => NamedElement::name
   --  StateMachine => NamedElement::name
   --  Stereotype => NamedElement::name
   --  StringExpression => NamedElement::name
   --  StructuredActivityNode => NamedElement::name
   --  Substitution => NamedElement::name
   --  TestIdentityAction => NamedElement::name
   --  TimeConstraint => NamedElement::name
   --  TimeEvent => NamedElement::name
   --  TimeExpression => NamedElement::name
   --  TimeInterval => NamedElement::name
   --  TimeObservation => NamedElement::name
   --  Transition => NamedElement::name
   --  Trigger => NamedElement::name
   --  UnmarshallAction => NamedElement::name
   --  Usage => NamedElement::name
   --  UseCase => NamedElement::name
   --  ValuePin => NamedElement::name
   --  ValueSpecificationAction => NamedElement::name
   --  Variable => NamedElement::name

   function Internal_Get_Name_Expression
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Name_Expression
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Abstraction => NamedElement::nameExpression
   --  AcceptCallAction => NamedElement::nameExpression
   --  AcceptEventAction => NamedElement::nameExpression
   --  ActionExecutionSpecification => NamedElement::nameExpression
   --  ActionInputPin => NamedElement::nameExpression
   --  Activity => NamedElement::nameExpression
   --  ActivityFinalNode => NamedElement::nameExpression
   --  ActivityParameterNode => NamedElement::nameExpression
   --  ActivityPartition => NamedElement::nameExpression
   --  Actor => NamedElement::nameExpression
   --  AddStructuralFeatureValueAction => NamedElement::nameExpression
   --  AddVariableValueAction => NamedElement::nameExpression
   --  AnyReceiveEvent => NamedElement::nameExpression
   --  Artifact => NamedElement::nameExpression
   --  Association => NamedElement::nameExpression
   --  AssociationClass => NamedElement::nameExpression
   --  BehaviorExecutionSpecification => NamedElement::nameExpression
   --  BroadcastSignalAction => NamedElement::nameExpression
   --  CallBehaviorAction => NamedElement::nameExpression
   --  CallEvent => NamedElement::nameExpression
   --  CallOperationAction => NamedElement::nameExpression
   --  CentralBufferNode => NamedElement::nameExpression
   --  ChangeEvent => NamedElement::nameExpression
   --  Class => NamedElement::nameExpression
   --  ClearAssociationAction => NamedElement::nameExpression
   --  ClearStructuralFeatureAction => NamedElement::nameExpression
   --  ClearVariableAction => NamedElement::nameExpression
   --  Collaboration => NamedElement::nameExpression
   --  CollaborationUse => NamedElement::nameExpression
   --  CombinedFragment => NamedElement::nameExpression
   --  CommunicationPath => NamedElement::nameExpression
   --  Component => NamedElement::nameExpression
   --  ComponentRealization => NamedElement::nameExpression
   --  ConditionalNode => NamedElement::nameExpression
   --  ConnectionPointReference => NamedElement::nameExpression
   --  Connector => NamedElement::nameExpression
   --  ConsiderIgnoreFragment => NamedElement::nameExpression
   --  Constraint => NamedElement::nameExpression
   --  Continuation => NamedElement::nameExpression
   --  ControlFlow => NamedElement::nameExpression
   --  CreateLinkAction => NamedElement::nameExpression
   --  CreateLinkObjectAction => NamedElement::nameExpression
   --  CreateObjectAction => NamedElement::nameExpression
   --  UMLActivityDiagram => NamedElement::nameExpression
   --  UMLClassDiagram => NamedElement::nameExpression
   --  UMLComponentDiagram => NamedElement::nameExpression
   --  UMLCompositeStructureDiagram => NamedElement::nameExpression
   --  UMLDeploymentDiagram => NamedElement::nameExpression
   --  UMLInteractionDiagram => NamedElement::nameExpression
   --  UMLObjectDiagram => NamedElement::nameExpression
   --  UMLPackageDiagram => NamedElement::nameExpression
   --  UMLProfileDiagram => NamedElement::nameExpression
   --  UMLStateMachineDiagram => NamedElement::nameExpression
   --  UMLStyle => NamedElement::nameExpression
   --  UMLUseCaseDiagram => NamedElement::nameExpression
   --  DataStoreNode => NamedElement::nameExpression
   --  DataType => NamedElement::nameExpression
   --  DecisionNode => NamedElement::nameExpression
   --  Dependency => NamedElement::nameExpression
   --  Deployment => NamedElement::nameExpression
   --  DeploymentSpecification => NamedElement::nameExpression
   --  DestroyLinkAction => NamedElement::nameExpression
   --  DestroyObjectAction => NamedElement::nameExpression
   --  DestructionOccurrenceSpecification => NamedElement::nameExpression
   --  Device => NamedElement::nameExpression
   --  Duration => NamedElement::nameExpression
   --  DurationConstraint => NamedElement::nameExpression
   --  DurationInterval => NamedElement::nameExpression
   --  DurationObservation => NamedElement::nameExpression
   --  Enumeration => NamedElement::nameExpression
   --  EnumerationLiteral => NamedElement::nameExpression
   --  ExecutionEnvironment => NamedElement::nameExpression
   --  ExecutionOccurrenceSpecification => NamedElement::nameExpression
   --  ExpansionNode => NamedElement::nameExpression
   --  ExpansionRegion => NamedElement::nameExpression
   --  Expression => NamedElement::nameExpression
   --  Extend => NamedElement::nameExpression
   --  Extension => NamedElement::nameExpression
   --  ExtensionEnd => NamedElement::nameExpression
   --  ExtensionPoint => NamedElement::nameExpression
   --  FinalState => NamedElement::nameExpression
   --  FlowFinalNode => NamedElement::nameExpression
   --  ForkNode => NamedElement::nameExpression
   --  FunctionBehavior => NamedElement::nameExpression
   --  Gate => NamedElement::nameExpression
   --  GeneralOrdering => NamedElement::nameExpression
   --  GeneralizationSet => NamedElement::nameExpression
   --  Include => NamedElement::nameExpression
   --  InformationFlow => NamedElement::nameExpression
   --  InformationItem => NamedElement::nameExpression
   --  InitialNode => NamedElement::nameExpression
   --  InputPin => NamedElement::nameExpression
   --  InstanceSpecification => NamedElement::nameExpression
   --  InstanceValue => NamedElement::nameExpression
   --  Interaction => NamedElement::nameExpression
   --  InteractionConstraint => NamedElement::nameExpression
   --  InteractionOperand => NamedElement::nameExpression
   --  InteractionUse => NamedElement::nameExpression
   --  Interface => NamedElement::nameExpression
   --  InterfaceRealization => NamedElement::nameExpression
   --  InterruptibleActivityRegion => NamedElement::nameExpression
   --  Interval => NamedElement::nameExpression
   --  IntervalConstraint => NamedElement::nameExpression
   --  JoinNode => NamedElement::nameExpression
   --  Lifeline => NamedElement::nameExpression
   --  LiteralBoolean => NamedElement::nameExpression
   --  LiteralInteger => NamedElement::nameExpression
   --  LiteralNull => NamedElement::nameExpression
   --  LiteralReal => NamedElement::nameExpression
   --  LiteralString => NamedElement::nameExpression
   --  LiteralUnlimitedNatural => NamedElement::nameExpression
   --  LoopNode => NamedElement::nameExpression
   --  Manifestation => NamedElement::nameExpression
   --  MergeNode => NamedElement::nameExpression
   --  Message => NamedElement::nameExpression
   --  MessageOccurrenceSpecification => NamedElement::nameExpression
   --  Model => NamedElement::nameExpression
   --  Node => NamedElement::nameExpression
   --  ObjectFlow => NamedElement::nameExpression
   --  OccurrenceSpecification => NamedElement::nameExpression
   --  OpaqueAction => NamedElement::nameExpression
   --  OpaqueBehavior => NamedElement::nameExpression
   --  OpaqueExpression => NamedElement::nameExpression
   --  Operation => NamedElement::nameExpression
   --  OutputPin => NamedElement::nameExpression
   --  Package => NamedElement::nameExpression
   --  Parameter => NamedElement::nameExpression
   --  ParameterSet => NamedElement::nameExpression
   --  PartDecomposition => NamedElement::nameExpression
   --  Port => NamedElement::nameExpression
   --  PrimitiveType => NamedElement::nameExpression
   --  Profile => NamedElement::nameExpression
   --  Property => NamedElement::nameExpression
   --  ProtocolStateMachine => NamedElement::nameExpression
   --  ProtocolTransition => NamedElement::nameExpression
   --  Pseudostate => NamedElement::nameExpression
   --  RaiseExceptionAction => NamedElement::nameExpression
   --  ReadExtentAction => NamedElement::nameExpression
   --  ReadIsClassifiedObjectAction => NamedElement::nameExpression
   --  ReadLinkAction => NamedElement::nameExpression
   --  ReadLinkObjectEndAction => NamedElement::nameExpression
   --  ReadLinkObjectEndQualifierAction => NamedElement::nameExpression
   --  ReadSelfAction => NamedElement::nameExpression
   --  ReadStructuralFeatureAction => NamedElement::nameExpression
   --  ReadVariableAction => NamedElement::nameExpression
   --  Realization => NamedElement::nameExpression
   --  Reception => NamedElement::nameExpression
   --  ReclassifyObjectAction => NamedElement::nameExpression
   --  RedefinableTemplateSignature => NamedElement::nameExpression
   --  ReduceAction => NamedElement::nameExpression
   --  Region => NamedElement::nameExpression
   --  RemoveStructuralFeatureValueAction => NamedElement::nameExpression
   --  RemoveVariableValueAction => NamedElement::nameExpression
   --  ReplyAction => NamedElement::nameExpression
   --  SendObjectAction => NamedElement::nameExpression
   --  SendSignalAction => NamedElement::nameExpression
   --  SequenceNode => NamedElement::nameExpression
   --  Signal => NamedElement::nameExpression
   --  SignalEvent => NamedElement::nameExpression
   --  StartClassifierBehaviorAction => NamedElement::nameExpression
   --  StartObjectBehaviorAction => NamedElement::nameExpression
   --  State => NamedElement::nameExpression
   --  StateInvariant => NamedElement::nameExpression
   --  StateMachine => NamedElement::nameExpression
   --  Stereotype => NamedElement::nameExpression
   --  StringExpression => NamedElement::nameExpression
   --  StructuredActivityNode => NamedElement::nameExpression
   --  Substitution => NamedElement::nameExpression
   --  TestIdentityAction => NamedElement::nameExpression
   --  TimeConstraint => NamedElement::nameExpression
   --  TimeEvent => NamedElement::nameExpression
   --  TimeExpression => NamedElement::nameExpression
   --  TimeInterval => NamedElement::nameExpression
   --  TimeObservation => NamedElement::nameExpression
   --  Transition => NamedElement::nameExpression
   --  Trigger => NamedElement::nameExpression
   --  UnmarshallAction => NamedElement::nameExpression
   --  Usage => NamedElement::nameExpression
   --  UseCase => NamedElement::nameExpression
   --  ValuePin => NamedElement::nameExpression
   --  ValueSpecificationAction => NamedElement::nameExpression
   --  Variable => NamedElement::nameExpression

   function Internal_Get_Namespace
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   --  Abstraction => NamedElement::namespace
   --  AcceptCallAction => NamedElement::namespace
   --  AcceptEventAction => NamedElement::namespace
   --  ActionExecutionSpecification => NamedElement::namespace
   --  ActionInputPin => NamedElement::namespace
   --  Activity => NamedElement::namespace
   --  ActivityFinalNode => NamedElement::namespace
   --  ActivityParameterNode => NamedElement::namespace
   --  ActivityPartition => NamedElement::namespace
   --  Actor => NamedElement::namespace
   --  AddStructuralFeatureValueAction => NamedElement::namespace
   --  AddVariableValueAction => NamedElement::namespace
   --  AnyReceiveEvent => NamedElement::namespace
   --  Artifact => NamedElement::namespace
   --  Association => NamedElement::namespace
   --  AssociationClass => NamedElement::namespace
   --  BehaviorExecutionSpecification => NamedElement::namespace
   --  BroadcastSignalAction => NamedElement::namespace
   --  CallBehaviorAction => NamedElement::namespace
   --  CallEvent => NamedElement::namespace
   --  CallOperationAction => NamedElement::namespace
   --  CentralBufferNode => NamedElement::namespace
   --  ChangeEvent => NamedElement::namespace
   --  Class => NamedElement::namespace
   --  ClearAssociationAction => NamedElement::namespace
   --  ClearStructuralFeatureAction => NamedElement::namespace
   --  ClearVariableAction => NamedElement::namespace
   --  Collaboration => NamedElement::namespace
   --  CollaborationUse => NamedElement::namespace
   --  CombinedFragment => NamedElement::namespace
   --  CommunicationPath => NamedElement::namespace
   --  Component => NamedElement::namespace
   --  ComponentRealization => NamedElement::namespace
   --  ConditionalNode => NamedElement::namespace
   --  ConnectionPointReference => NamedElement::namespace
   --  Connector => NamedElement::namespace
   --  ConsiderIgnoreFragment => NamedElement::namespace
   --  Constraint => NamedElement::namespace
   --  Continuation => NamedElement::namespace
   --  ControlFlow => NamedElement::namespace
   --  CreateLinkAction => NamedElement::namespace
   --  CreateLinkObjectAction => NamedElement::namespace
   --  CreateObjectAction => NamedElement::namespace
   --  UMLActivityDiagram => NamedElement::namespace
   --  UMLClassDiagram => NamedElement::namespace
   --  UMLComponentDiagram => NamedElement::namespace
   --  UMLCompositeStructureDiagram => NamedElement::namespace
   --  UMLDeploymentDiagram => NamedElement::namespace
   --  UMLInteractionDiagram => NamedElement::namespace
   --  UMLObjectDiagram => NamedElement::namespace
   --  UMLPackageDiagram => NamedElement::namespace
   --  UMLProfileDiagram => NamedElement::namespace
   --  UMLStateMachineDiagram => NamedElement::namespace
   --  UMLStyle => NamedElement::namespace
   --  UMLUseCaseDiagram => NamedElement::namespace
   --  DataStoreNode => NamedElement::namespace
   --  DataType => NamedElement::namespace
   --  DecisionNode => NamedElement::namespace
   --  Dependency => NamedElement::namespace
   --  Deployment => NamedElement::namespace
   --  DeploymentSpecification => NamedElement::namespace
   --  DestroyLinkAction => NamedElement::namespace
   --  DestroyObjectAction => NamedElement::namespace
   --  DestructionOccurrenceSpecification => NamedElement::namespace
   --  Device => NamedElement::namespace
   --  Duration => NamedElement::namespace
   --  DurationConstraint => NamedElement::namespace
   --  DurationInterval => NamedElement::namespace
   --  DurationObservation => NamedElement::namespace
   --  Enumeration => NamedElement::namespace
   --  EnumerationLiteral => NamedElement::namespace
   --  ExecutionEnvironment => NamedElement::namespace
   --  ExecutionOccurrenceSpecification => NamedElement::namespace
   --  ExpansionNode => NamedElement::namespace
   --  ExpansionRegion => NamedElement::namespace
   --  Expression => NamedElement::namespace
   --  Extend => NamedElement::namespace
   --  Extension => NamedElement::namespace
   --  ExtensionEnd => NamedElement::namespace
   --  ExtensionPoint => NamedElement::namespace
   --  FinalState => NamedElement::namespace
   --  FlowFinalNode => NamedElement::namespace
   --  ForkNode => NamedElement::namespace
   --  FunctionBehavior => NamedElement::namespace
   --  Gate => NamedElement::namespace
   --  GeneralOrdering => NamedElement::namespace
   --  GeneralizationSet => NamedElement::namespace
   --  Include => NamedElement::namespace
   --  InformationFlow => NamedElement::namespace
   --  InformationItem => NamedElement::namespace
   --  InitialNode => NamedElement::namespace
   --  InputPin => NamedElement::namespace
   --  InstanceSpecification => NamedElement::namespace
   --  InstanceValue => NamedElement::namespace
   --  Interaction => NamedElement::namespace
   --  InteractionConstraint => NamedElement::namespace
   --  InteractionOperand => NamedElement::namespace
   --  InteractionUse => NamedElement::namespace
   --  Interface => NamedElement::namespace
   --  InterfaceRealization => NamedElement::namespace
   --  InterruptibleActivityRegion => NamedElement::namespace
   --  Interval => NamedElement::namespace
   --  IntervalConstraint => NamedElement::namespace
   --  JoinNode => NamedElement::namespace
   --  Lifeline => NamedElement::namespace
   --  LiteralBoolean => NamedElement::namespace
   --  LiteralInteger => NamedElement::namespace
   --  LiteralNull => NamedElement::namespace
   --  LiteralReal => NamedElement::namespace
   --  LiteralString => NamedElement::namespace
   --  LiteralUnlimitedNatural => NamedElement::namespace
   --  LoopNode => NamedElement::namespace
   --  Manifestation => NamedElement::namespace
   --  MergeNode => NamedElement::namespace
   --  Message => NamedElement::namespace
   --  MessageOccurrenceSpecification => NamedElement::namespace
   --  Model => NamedElement::namespace
   --  Node => NamedElement::namespace
   --  ObjectFlow => NamedElement::namespace
   --  OccurrenceSpecification => NamedElement::namespace
   --  OpaqueAction => NamedElement::namespace
   --  OpaqueBehavior => NamedElement::namespace
   --  OpaqueExpression => NamedElement::namespace
   --  Operation => NamedElement::namespace
   --  OutputPin => NamedElement::namespace
   --  Package => NamedElement::namespace
   --  Parameter => NamedElement::namespace
   --  ParameterSet => NamedElement::namespace
   --  PartDecomposition => NamedElement::namespace
   --  Port => NamedElement::namespace
   --  PrimitiveType => NamedElement::namespace
   --  Profile => NamedElement::namespace
   --  Property => NamedElement::namespace
   --  ProtocolStateMachine => NamedElement::namespace
   --  ProtocolTransition => NamedElement::namespace
   --  Pseudostate => NamedElement::namespace
   --  RaiseExceptionAction => NamedElement::namespace
   --  ReadExtentAction => NamedElement::namespace
   --  ReadIsClassifiedObjectAction => NamedElement::namespace
   --  ReadLinkAction => NamedElement::namespace
   --  ReadLinkObjectEndAction => NamedElement::namespace
   --  ReadLinkObjectEndQualifierAction => NamedElement::namespace
   --  ReadSelfAction => NamedElement::namespace
   --  ReadStructuralFeatureAction => NamedElement::namespace
   --  ReadVariableAction => NamedElement::namespace
   --  Realization => NamedElement::namespace
   --  Reception => NamedElement::namespace
   --  ReclassifyObjectAction => NamedElement::namespace
   --  RedefinableTemplateSignature => NamedElement::namespace
   --  ReduceAction => NamedElement::namespace
   --  Region => NamedElement::namespace
   --  RemoveStructuralFeatureValueAction => NamedElement::namespace
   --  RemoveVariableValueAction => NamedElement::namespace
   --  ReplyAction => NamedElement::namespace
   --  SendObjectAction => NamedElement::namespace
   --  SendSignalAction => NamedElement::namespace
   --  SequenceNode => NamedElement::namespace
   --  Signal => NamedElement::namespace
   --  SignalEvent => NamedElement::namespace
   --  StartClassifierBehaviorAction => NamedElement::namespace
   --  StartObjectBehaviorAction => NamedElement::namespace
   --  State => NamedElement::namespace
   --  StateInvariant => NamedElement::namespace
   --  StateMachine => NamedElement::namespace
   --  Stereotype => NamedElement::namespace
   --  StringExpression => NamedElement::namespace
   --  StructuredActivityNode => NamedElement::namespace
   --  Substitution => NamedElement::namespace
   --  TestIdentityAction => NamedElement::namespace
   --  TimeConstraint => NamedElement::namespace
   --  TimeEvent => NamedElement::namespace
   --  TimeExpression => NamedElement::namespace
   --  TimeInterval => NamedElement::namespace
   --  TimeObservation => NamedElement::namespace
   --  Transition => NamedElement::namespace
   --  Trigger => NamedElement::namespace
   --  UnmarshallAction => NamedElement::namespace
   --  Usage => NamedElement::namespace
   --  UseCase => NamedElement::namespace
   --  ValuePin => NamedElement::namespace
   --  ValueSpecificationAction => NamedElement::namespace
   --  Variable => NamedElement::namespace

   function Internal_Get_Navigability_Notation
    (Self : AMF.Internals.AMF_Element)
       return AMF.UMLDI.UMLDI_UML_Navigability_Notation_Kind;
   procedure Internal_Set_Navigability_Notation
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UMLDI.UMLDI_UML_Navigability_Notation_Kind);
   --  UMLClassDiagram => UMLClassOrCompositeStructureDiagram::navigabilityNotation
   --  UMLCompositeStructureDiagram => UMLClassOrCompositeStructureDiagram::navigabilityNotation

   function Internal_Get_Navigable_Owned_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Association::navigableOwnedEnd
   --  AssociationClass => Association::navigableOwnedEnd
   --  CommunicationPath => Association::navigableOwnedEnd
   --  Extension => Association::navigableOwnedEnd

   function Internal_Get_Nested_Artifact
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Artifact => Artifact::nestedArtifact
   --  DeploymentSpecification => Artifact::nestedArtifact

   function Internal_Get_Nested_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Class::nestedClassifier
   --  AssociationClass => Class::nestedClassifier
   --  Class => Class::nestedClassifier
   --  Component => Class::nestedClassifier
   --  Device => Class::nestedClassifier
   --  ExecutionEnvironment => Class::nestedClassifier
   --  FunctionBehavior => Class::nestedClassifier
   --  Interaction => Class::nestedClassifier
   --  Interface => Interface::nestedClassifier
   --  Node => Class::nestedClassifier
   --  OpaqueBehavior => Class::nestedClassifier
   --  ProtocolStateMachine => Class::nestedClassifier
   --  StateMachine => Class::nestedClassifier
   --  Stereotype => Class::nestedClassifier

   function Internal_Get_Nested_Node
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Device => Node::nestedNode
   --  ExecutionEnvironment => Node::nestedNode
   --  Node => Node::nestedNode

   function Internal_Get_Nested_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Model => Package::nestedPackage
   --  Package => Package::nestedPackage
   --  Profile => Package::nestedPackage

   function Internal_Get_Nesting_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Nesting_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Model => Package::nestingPackage
   --  Package => Package::nestingPackage
   --  Profile => Package::nestingPackage

   function Internal_Get_New_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ReclassifyObjectAction => ReclassifyObjectAction::newClassifier

   function Internal_Get_Node
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Activity::node
   --  ActivityPartition => ActivityPartition::node
   --  ConditionalNode => StructuredActivityNode::node
   --  ExpansionRegion => StructuredActivityNode::node
   --  InterruptibleActivityRegion => InterruptibleActivityRegion::node
   --  LoopNode => StructuredActivityNode::node
   --  SequenceNode => StructuredActivityNode::node
   --  StructuredActivityNode => StructuredActivityNode::node

   function Internal_Get_Non_Navigability_Notation
    (Self : AMF.Internals.AMF_Element)
       return AMF.UMLDI.UMLDI_UML_Navigability_Notation_Kind;
   procedure Internal_Set_Non_Navigability_Notation
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UMLDI.UMLDI_UML_Navigability_Notation_Kind);
   --  UMLClassDiagram => UMLClassOrCompositeStructureDiagram::nonNavigabilityNotation
   --  UMLCompositeStructureDiagram => UMLClassOrCompositeStructureDiagram::nonNavigabilityNotation

   function Internal_Get_Object
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Object
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  AddStructuralFeatureValueAction => StructuralFeatureAction::object
   --  ClearAssociationAction => ClearAssociationAction::object
   --  ClearStructuralFeatureAction => StructuralFeatureAction::object
   --  ReadIsClassifiedObjectAction => ReadIsClassifiedObjectAction::object
   --  ReadLinkObjectEndAction => ReadLinkObjectEndAction::object
   --  ReadLinkObjectEndQualifierAction => ReadLinkObjectEndQualifierAction::object
   --  ReadStructuralFeatureAction => StructuralFeatureAction::object
   --  ReclassifyObjectAction => ReclassifyObjectAction::object
   --  RemoveStructuralFeatureValueAction => StructuralFeatureAction::object
   --  StartClassifierBehaviorAction => StartClassifierBehaviorAction::object
   --  StartObjectBehaviorAction => StartObjectBehaviorAction::object
   --  UnmarshallAction => UnmarshallAction::object

   function Internal_Get_Observation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Duration => Duration::observation
   --  TimeExpression => TimeExpression::observation

   function Internal_Get_Old_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ReclassifyObjectAction => ReclassifyObjectAction::oldClassifier

   function Internal_Get_On_Port
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_On_Port
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  BroadcastSignalAction => InvocationAction::onPort
   --  CallBehaviorAction => InvocationAction::onPort
   --  CallOperationAction => InvocationAction::onPort
   --  SendObjectAction => InvocationAction::onPort
   --  SendSignalAction => InvocationAction::onPort
   --  StartObjectBehaviorAction => InvocationAction::onPort

   function Internal_Get_Operand
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  CombinedFragment => CombinedFragment::operand
   --  ConsiderIgnoreFragment => CombinedFragment::operand
   --  Expression => Expression::operand
   --  StringExpression => Expression::operand

   function Internal_Get_Operation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Operation
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  CallEvent => CallEvent::operation
   --  CallOperationAction => CallOperationAction::operation
   --  Parameter => Parameter::operation

   function Internal_Get_Opposite
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Opposite
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ExtensionEnd => Property::opposite
   --  Port => Property::opposite
   --  Property => Property::opposite

   function Internal_Get_Ordering
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Object_Node_Ordering_Kind;
   procedure Internal_Set_Ordering
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Object_Node_Ordering_Kind);
   --  ActionInputPin => ObjectNode::ordering
   --  ActivityParameterNode => ObjectNode::ordering
   --  CentralBufferNode => ObjectNode::ordering
   --  DataStoreNode => ObjectNode::ordering
   --  ExpansionNode => ObjectNode::ordering
   --  InputPin => ObjectNode::ordering
   --  OutputPin => ObjectNode::ordering
   --  ValuePin => ObjectNode::ordering

   function Internal_Get_Outgoing
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AcceptCallAction => ActivityNode::outgoing
   --  AcceptEventAction => ActivityNode::outgoing
   --  ActionInputPin => ActivityNode::outgoing
   --  ActivityFinalNode => ActivityNode::outgoing
   --  ActivityParameterNode => ActivityNode::outgoing
   --  AddStructuralFeatureValueAction => ActivityNode::outgoing
   --  AddVariableValueAction => ActivityNode::outgoing
   --  BroadcastSignalAction => ActivityNode::outgoing
   --  CallBehaviorAction => ActivityNode::outgoing
   --  CallOperationAction => ActivityNode::outgoing
   --  CentralBufferNode => ActivityNode::outgoing
   --  ClearAssociationAction => ActivityNode::outgoing
   --  ClearStructuralFeatureAction => ActivityNode::outgoing
   --  ClearVariableAction => ActivityNode::outgoing
   --  ConditionalNode => ActivityNode::outgoing
   --  ConnectionPointReference => Vertex::outgoing
   --  CreateLinkAction => ActivityNode::outgoing
   --  CreateLinkObjectAction => ActivityNode::outgoing
   --  CreateObjectAction => ActivityNode::outgoing
   --  DataStoreNode => ActivityNode::outgoing
   --  DecisionNode => ActivityNode::outgoing
   --  DestroyLinkAction => ActivityNode::outgoing
   --  DestroyObjectAction => ActivityNode::outgoing
   --  ExpansionNode => ActivityNode::outgoing
   --  ExpansionRegion => ActivityNode::outgoing
   --  FinalState => Vertex::outgoing
   --  FlowFinalNode => ActivityNode::outgoing
   --  ForkNode => ActivityNode::outgoing
   --  InitialNode => ActivityNode::outgoing
   --  InputPin => ActivityNode::outgoing
   --  JoinNode => ActivityNode::outgoing
   --  LoopNode => ActivityNode::outgoing
   --  MergeNode => ActivityNode::outgoing
   --  OpaqueAction => ActivityNode::outgoing
   --  OutputPin => ActivityNode::outgoing
   --  Pseudostate => Vertex::outgoing
   --  RaiseExceptionAction => ActivityNode::outgoing
   --  ReadExtentAction => ActivityNode::outgoing
   --  ReadIsClassifiedObjectAction => ActivityNode::outgoing
   --  ReadLinkAction => ActivityNode::outgoing
   --  ReadLinkObjectEndAction => ActivityNode::outgoing
   --  ReadLinkObjectEndQualifierAction => ActivityNode::outgoing
   --  ReadSelfAction => ActivityNode::outgoing
   --  ReadStructuralFeatureAction => ActivityNode::outgoing
   --  ReadVariableAction => ActivityNode::outgoing
   --  ReclassifyObjectAction => ActivityNode::outgoing
   --  ReduceAction => ActivityNode::outgoing
   --  RemoveStructuralFeatureValueAction => ActivityNode::outgoing
   --  RemoveVariableValueAction => ActivityNode::outgoing
   --  ReplyAction => ActivityNode::outgoing
   --  SendObjectAction => ActivityNode::outgoing
   --  SendSignalAction => ActivityNode::outgoing
   --  SequenceNode => ActivityNode::outgoing
   --  StartClassifierBehaviorAction => ActivityNode::outgoing
   --  StartObjectBehaviorAction => ActivityNode::outgoing
   --  State => Vertex::outgoing
   --  StructuredActivityNode => ActivityNode::outgoing
   --  TestIdentityAction => ActivityNode::outgoing
   --  UnmarshallAction => ActivityNode::outgoing
   --  ValuePin => ActivityNode::outgoing
   --  ValueSpecificationAction => ActivityNode::outgoing

   function Internal_Get_Output
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AcceptCallAction => Action::output
   --  AcceptEventAction => Action::output
   --  AddStructuralFeatureValueAction => Action::output
   --  AddVariableValueAction => Action::output
   --  BroadcastSignalAction => Action::output
   --  CallBehaviorAction => Action::output
   --  CallOperationAction => Action::output
   --  ClearAssociationAction => Action::output
   --  ClearStructuralFeatureAction => Action::output
   --  ClearVariableAction => Action::output
   --  ConditionalNode => Action::output
   --  CreateLinkAction => Action::output
   --  CreateLinkObjectAction => Action::output
   --  CreateObjectAction => Action::output
   --  DestroyLinkAction => Action::output
   --  DestroyObjectAction => Action::output
   --  ExpansionRegion => Action::output
   --  LoopNode => Action::output
   --  OpaqueAction => Action::output
   --  RaiseExceptionAction => Action::output
   --  ReadExtentAction => Action::output
   --  ReadIsClassifiedObjectAction => Action::output
   --  ReadLinkAction => Action::output
   --  ReadLinkObjectEndAction => Action::output
   --  ReadLinkObjectEndQualifierAction => Action::output
   --  ReadSelfAction => Action::output
   --  ReadStructuralFeatureAction => Action::output
   --  ReadVariableAction => Action::output
   --  ReclassifyObjectAction => Action::output
   --  ReduceAction => Action::output
   --  RemoveStructuralFeatureValueAction => Action::output
   --  RemoveVariableValueAction => Action::output
   --  ReplyAction => Action::output
   --  SendObjectAction => Action::output
   --  SendSignalAction => Action::output
   --  SequenceNode => Action::output
   --  StartClassifierBehaviorAction => Action::output
   --  StartObjectBehaviorAction => Action::output
   --  StructuredActivityNode => Action::output
   --  TestIdentityAction => Action::output
   --  UnmarshallAction => Action::output
   --  ValueSpecificationAction => Action::output

   function Internal_Get_Output_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ExpansionRegion => ExpansionRegion::outputElement

   function Internal_Get_Output_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  OpaqueAction => OpaqueAction::outputValue

   function Internal_Get_Owned_Actual
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Owned_Actual
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  TemplateParameterSubstitution => TemplateParameterSubstitution::ownedActual

   function Internal_Get_Owned_Attribute
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Class::ownedAttribute
   --  Artifact => Artifact::ownedAttribute
   --  AssociationClass => Class::ownedAttribute
   --  Class => Class::ownedAttribute
   --  Collaboration => StructuredClassifier::ownedAttribute
   --  Component => Class::ownedAttribute
   --  DataType => DataType::ownedAttribute
   --  DeploymentSpecification => Artifact::ownedAttribute
   --  Device => Class::ownedAttribute
   --  Enumeration => DataType::ownedAttribute
   --  ExecutionEnvironment => Class::ownedAttribute
   --  FunctionBehavior => Class::ownedAttribute
   --  Interaction => Class::ownedAttribute
   --  Interface => Interface::ownedAttribute
   --  Node => Class::ownedAttribute
   --  OpaqueBehavior => Class::ownedAttribute
   --  PrimitiveType => DataType::ownedAttribute
   --  ProtocolStateMachine => Class::ownedAttribute
   --  Signal => Signal::ownedAttribute
   --  StateMachine => Class::ownedAttribute
   --  Stereotype => Class::ownedAttribute

   function Internal_Get_Owned_Behavior
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => BehavioredClassifier::ownedBehavior
   --  Actor => BehavioredClassifier::ownedBehavior
   --  AssociationClass => BehavioredClassifier::ownedBehavior
   --  Class => BehavioredClassifier::ownedBehavior
   --  Collaboration => BehavioredClassifier::ownedBehavior
   --  Component => BehavioredClassifier::ownedBehavior
   --  Device => BehavioredClassifier::ownedBehavior
   --  ExecutionEnvironment => BehavioredClassifier::ownedBehavior
   --  FunctionBehavior => BehavioredClassifier::ownedBehavior
   --  Interaction => BehavioredClassifier::ownedBehavior
   --  Node => BehavioredClassifier::ownedBehavior
   --  OpaqueBehavior => BehavioredClassifier::ownedBehavior
   --  ProtocolStateMachine => BehavioredClassifier::ownedBehavior
   --  StateMachine => BehavioredClassifier::ownedBehavior
   --  Stereotype => BehavioredClassifier::ownedBehavior
   --  UseCase => BehavioredClassifier::ownedBehavior

   function Internal_Get_Owned_Comment
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Abstraction => Element::ownedComment
   --  AcceptCallAction => Element::ownedComment
   --  AcceptEventAction => Element::ownedComment
   --  ActionExecutionSpecification => Element::ownedComment
   --  ActionInputPin => Element::ownedComment
   --  Activity => Element::ownedComment
   --  ActivityFinalNode => Element::ownedComment
   --  ActivityParameterNode => Element::ownedComment
   --  ActivityPartition => Element::ownedComment
   --  Actor => Element::ownedComment
   --  AddStructuralFeatureValueAction => Element::ownedComment
   --  AddVariableValueAction => Element::ownedComment
   --  AnyReceiveEvent => Element::ownedComment
   --  Artifact => Element::ownedComment
   --  Association => Element::ownedComment
   --  AssociationClass => Element::ownedComment
   --  BehaviorExecutionSpecification => Element::ownedComment
   --  BroadcastSignalAction => Element::ownedComment
   --  CallBehaviorAction => Element::ownedComment
   --  CallEvent => Element::ownedComment
   --  CallOperationAction => Element::ownedComment
   --  CentralBufferNode => Element::ownedComment
   --  ChangeEvent => Element::ownedComment
   --  Class => Element::ownedComment
   --  ClassifierTemplateParameter => Element::ownedComment
   --  Clause => Element::ownedComment
   --  ClearAssociationAction => Element::ownedComment
   --  ClearStructuralFeatureAction => Element::ownedComment
   --  ClearVariableAction => Element::ownedComment
   --  Collaboration => Element::ownedComment
   --  CollaborationUse => Element::ownedComment
   --  CombinedFragment => Element::ownedComment
   --  Comment => Element::ownedComment
   --  CommunicationPath => Element::ownedComment
   --  Component => Element::ownedComment
   --  ComponentRealization => Element::ownedComment
   --  ConditionalNode => Element::ownedComment
   --  ConnectableElementTemplateParameter => Element::ownedComment
   --  ConnectionPointReference => Element::ownedComment
   --  Connector => Element::ownedComment
   --  ConnectorEnd => Element::ownedComment
   --  ConsiderIgnoreFragment => Element::ownedComment
   --  Constraint => Element::ownedComment
   --  Continuation => Element::ownedComment
   --  ControlFlow => Element::ownedComment
   --  CreateLinkAction => Element::ownedComment
   --  CreateLinkObjectAction => Element::ownedComment
   --  CreateObjectAction => Element::ownedComment
   --  UMLActivityDiagram => Element::ownedComment
   --  UMLClassDiagram => Element::ownedComment
   --  UMLComponentDiagram => Element::ownedComment
   --  UMLCompositeStructureDiagram => Element::ownedComment
   --  UMLDeploymentDiagram => Element::ownedComment
   --  UMLInteractionDiagram => Element::ownedComment
   --  UMLObjectDiagram => Element::ownedComment
   --  UMLPackageDiagram => Element::ownedComment
   --  UMLProfileDiagram => Element::ownedComment
   --  UMLStateMachineDiagram => Element::ownedComment
   --  UMLStyle => Element::ownedComment
   --  UMLUseCaseDiagram => Element::ownedComment
   --  DataStoreNode => Element::ownedComment
   --  DataType => Element::ownedComment
   --  DecisionNode => Element::ownedComment
   --  Dependency => Element::ownedComment
   --  Deployment => Element::ownedComment
   --  DeploymentSpecification => Element::ownedComment
   --  DestroyLinkAction => Element::ownedComment
   --  DestroyObjectAction => Element::ownedComment
   --  DestructionOccurrenceSpecification => Element::ownedComment
   --  Device => Element::ownedComment
   --  Duration => Element::ownedComment
   --  DurationConstraint => Element::ownedComment
   --  DurationInterval => Element::ownedComment
   --  DurationObservation => Element::ownedComment
   --  ElementImport => Element::ownedComment
   --  Enumeration => Element::ownedComment
   --  EnumerationLiteral => Element::ownedComment
   --  ExceptionHandler => Element::ownedComment
   --  ExecutionEnvironment => Element::ownedComment
   --  ExecutionOccurrenceSpecification => Element::ownedComment
   --  ExpansionNode => Element::ownedComment
   --  ExpansionRegion => Element::ownedComment
   --  Expression => Element::ownedComment
   --  Extend => Element::ownedComment
   --  Extension => Element::ownedComment
   --  ExtensionEnd => Element::ownedComment
   --  ExtensionPoint => Element::ownedComment
   --  FinalState => Element::ownedComment
   --  FlowFinalNode => Element::ownedComment
   --  ForkNode => Element::ownedComment
   --  FunctionBehavior => Element::ownedComment
   --  Gate => Element::ownedComment
   --  GeneralOrdering => Element::ownedComment
   --  Generalization => Element::ownedComment
   --  GeneralizationSet => Element::ownedComment
   --  Image => Element::ownedComment
   --  Include => Element::ownedComment
   --  InformationFlow => Element::ownedComment
   --  InformationItem => Element::ownedComment
   --  InitialNode => Element::ownedComment
   --  InputPin => Element::ownedComment
   --  InstanceSpecification => Element::ownedComment
   --  InstanceValue => Element::ownedComment
   --  Interaction => Element::ownedComment
   --  InteractionConstraint => Element::ownedComment
   --  InteractionOperand => Element::ownedComment
   --  InteractionUse => Element::ownedComment
   --  Interface => Element::ownedComment
   --  InterfaceRealization => Element::ownedComment
   --  InterruptibleActivityRegion => Element::ownedComment
   --  Interval => Element::ownedComment
   --  IntervalConstraint => Element::ownedComment
   --  JoinNode => Element::ownedComment
   --  Lifeline => Element::ownedComment
   --  LinkEndCreationData => Element::ownedComment
   --  LinkEndData => Element::ownedComment
   --  LinkEndDestructionData => Element::ownedComment
   --  LiteralBoolean => Element::ownedComment
   --  LiteralInteger => Element::ownedComment
   --  LiteralNull => Element::ownedComment
   --  LiteralReal => Element::ownedComment
   --  LiteralString => Element::ownedComment
   --  LiteralUnlimitedNatural => Element::ownedComment
   --  LoopNode => Element::ownedComment
   --  Manifestation => Element::ownedComment
   --  MergeNode => Element::ownedComment
   --  Message => Element::ownedComment
   --  MessageOccurrenceSpecification => Element::ownedComment
   --  Model => Element::ownedComment
   --  Node => Element::ownedComment
   --  ObjectFlow => Element::ownedComment
   --  OccurrenceSpecification => Element::ownedComment
   --  OpaqueAction => Element::ownedComment
   --  OpaqueBehavior => Element::ownedComment
   --  OpaqueExpression => Element::ownedComment
   --  Operation => Element::ownedComment
   --  OperationTemplateParameter => Element::ownedComment
   --  OutputPin => Element::ownedComment
   --  Package => Element::ownedComment
   --  PackageImport => Element::ownedComment
   --  PackageMerge => Element::ownedComment
   --  Parameter => Element::ownedComment
   --  ParameterSet => Element::ownedComment
   --  PartDecomposition => Element::ownedComment
   --  Port => Element::ownedComment
   --  PrimitiveType => Element::ownedComment
   --  Profile => Element::ownedComment
   --  ProfileApplication => Element::ownedComment
   --  Property => Element::ownedComment
   --  ProtocolConformance => Element::ownedComment
   --  ProtocolStateMachine => Element::ownedComment
   --  ProtocolTransition => Element::ownedComment
   --  Pseudostate => Element::ownedComment
   --  QualifierValue => Element::ownedComment
   --  RaiseExceptionAction => Element::ownedComment
   --  ReadExtentAction => Element::ownedComment
   --  ReadIsClassifiedObjectAction => Element::ownedComment
   --  ReadLinkAction => Element::ownedComment
   --  ReadLinkObjectEndAction => Element::ownedComment
   --  ReadLinkObjectEndQualifierAction => Element::ownedComment
   --  ReadSelfAction => Element::ownedComment
   --  ReadStructuralFeatureAction => Element::ownedComment
   --  ReadVariableAction => Element::ownedComment
   --  Realization => Element::ownedComment
   --  Reception => Element::ownedComment
   --  ReclassifyObjectAction => Element::ownedComment
   --  RedefinableTemplateSignature => Element::ownedComment
   --  ReduceAction => Element::ownedComment
   --  Region => Element::ownedComment
   --  RemoveStructuralFeatureValueAction => Element::ownedComment
   --  RemoveVariableValueAction => Element::ownedComment
   --  ReplyAction => Element::ownedComment
   --  SendObjectAction => Element::ownedComment
   --  SendSignalAction => Element::ownedComment
   --  SequenceNode => Element::ownedComment
   --  Signal => Element::ownedComment
   --  SignalEvent => Element::ownedComment
   --  Slot => Element::ownedComment
   --  StartClassifierBehaviorAction => Element::ownedComment
   --  StartObjectBehaviorAction => Element::ownedComment
   --  State => Element::ownedComment
   --  StateInvariant => Element::ownedComment
   --  StateMachine => Element::ownedComment
   --  Stereotype => Element::ownedComment
   --  StringExpression => Element::ownedComment
   --  StructuredActivityNode => Element::ownedComment
   --  Substitution => Element::ownedComment
   --  TemplateBinding => Element::ownedComment
   --  TemplateParameter => Element::ownedComment
   --  TemplateParameterSubstitution => Element::ownedComment
   --  TemplateSignature => Element::ownedComment
   --  TestIdentityAction => Element::ownedComment
   --  TimeConstraint => Element::ownedComment
   --  TimeEvent => Element::ownedComment
   --  TimeExpression => Element::ownedComment
   --  TimeInterval => Element::ownedComment
   --  TimeObservation => Element::ownedComment
   --  Transition => Element::ownedComment
   --  Trigger => Element::ownedComment
   --  UnmarshallAction => Element::ownedComment
   --  Usage => Element::ownedComment
   --  UseCase => Element::ownedComment
   --  ValuePin => Element::ownedComment
   --  ValueSpecificationAction => Element::ownedComment
   --  Variable => Element::ownedComment

   function Internal_Get_Owned_Connector
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => StructuredClassifier::ownedConnector
   --  AssociationClass => StructuredClassifier::ownedConnector
   --  Class => StructuredClassifier::ownedConnector
   --  Collaboration => StructuredClassifier::ownedConnector
   --  Component => StructuredClassifier::ownedConnector
   --  Device => StructuredClassifier::ownedConnector
   --  ExecutionEnvironment => StructuredClassifier::ownedConnector
   --  FunctionBehavior => StructuredClassifier::ownedConnector
   --  Interaction => StructuredClassifier::ownedConnector
   --  Node => StructuredClassifier::ownedConnector
   --  OpaqueBehavior => StructuredClassifier::ownedConnector
   --  ProtocolStateMachine => StructuredClassifier::ownedConnector
   --  StateMachine => StructuredClassifier::ownedConnector
   --  Stereotype => StructuredClassifier::ownedConnector

   function Internal_Get_Owned_Default
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Owned_Default
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ClassifierTemplateParameter => TemplateParameter::ownedDefault
   --  ConnectableElementTemplateParameter => TemplateParameter::ownedDefault
   --  OperationTemplateParameter => TemplateParameter::ownedDefault
   --  TemplateParameter => TemplateParameter::ownedDefault

   function Internal_Get_Owned_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Abstraction => Element::ownedElement
   --  AcceptCallAction => Element::ownedElement
   --  AcceptEventAction => Element::ownedElement
   --  ActionExecutionSpecification => Element::ownedElement
   --  ActionInputPin => Element::ownedElement
   --  Activity => Element::ownedElement
   --  ActivityFinalNode => Element::ownedElement
   --  ActivityParameterNode => Element::ownedElement
   --  ActivityPartition => Element::ownedElement
   --  Actor => Element::ownedElement
   --  AddStructuralFeatureValueAction => Element::ownedElement
   --  AddVariableValueAction => Element::ownedElement
   --  AnyReceiveEvent => Element::ownedElement
   --  Artifact => Element::ownedElement
   --  Association => Element::ownedElement
   --  AssociationClass => Element::ownedElement
   --  BehaviorExecutionSpecification => Element::ownedElement
   --  BroadcastSignalAction => Element::ownedElement
   --  CallBehaviorAction => Element::ownedElement
   --  CallEvent => Element::ownedElement
   --  CallOperationAction => Element::ownedElement
   --  CentralBufferNode => Element::ownedElement
   --  ChangeEvent => Element::ownedElement
   --  Class => Element::ownedElement
   --  ClassifierTemplateParameter => Element::ownedElement
   --  Clause => Element::ownedElement
   --  ClearAssociationAction => Element::ownedElement
   --  ClearStructuralFeatureAction => Element::ownedElement
   --  ClearVariableAction => Element::ownedElement
   --  Collaboration => Element::ownedElement
   --  CollaborationUse => Element::ownedElement
   --  CombinedFragment => Element::ownedElement
   --  Comment => Element::ownedElement
   --  CommunicationPath => Element::ownedElement
   --  Component => Element::ownedElement
   --  ComponentRealization => Element::ownedElement
   --  ConditionalNode => Element::ownedElement
   --  ConnectableElementTemplateParameter => Element::ownedElement
   --  ConnectionPointReference => Element::ownedElement
   --  Connector => Element::ownedElement
   --  ConnectorEnd => Element::ownedElement
   --  ConsiderIgnoreFragment => Element::ownedElement
   --  Constraint => Element::ownedElement
   --  Continuation => Element::ownedElement
   --  ControlFlow => Element::ownedElement
   --  CreateLinkAction => Element::ownedElement
   --  CreateLinkObjectAction => Element::ownedElement
   --  CreateObjectAction => Element::ownedElement
   --  UMLActivityDiagram => Element::ownedElement
   --  UMLAssociationEndLabel => UMLDiagramElement::ownedElement
   --  UMLAssociationOrConnectorOrLinkShape => UMLDiagramElement::ownedElement
   --  UMLClassDiagram => Element::ownedElement
   --  UMLClassifierShape => UMLDiagramElement::ownedElement
   --  UMLCompartment => UMLDiagramElement::ownedElement
   --  UMLCompartmentableShape => UMLDiagramElement::ownedElement
   --  UMLComponentDiagram => Element::ownedElement
   --  UMLCompositeStructureDiagram => Element::ownedElement
   --  UMLDeploymentDiagram => Element::ownedElement
   --  UMLEdge => UMLDiagramElement::ownedElement
   --  UMLInteractionDiagram => Element::ownedElement
   --  UMLInteractionTableLabel => UMLDiagramElement::ownedElement
   --  UMLKeywordLabel => UMLDiagramElement::ownedElement
   --  UMLLabel => UMLDiagramElement::ownedElement
   --  UMLMultiplicityLabel => UMLDiagramElement::ownedElement
   --  UMLNameLabel => UMLDiagramElement::ownedElement
   --  UMLObjectDiagram => Element::ownedElement
   --  UMLPackageDiagram => Element::ownedElement
   --  UMLProfileDiagram => Element::ownedElement
   --  UMLRedefinesLabel => UMLDiagramElement::ownedElement
   --  UMLShape => UMLDiagramElement::ownedElement
   --  UMLStateMachineDiagram => Element::ownedElement
   --  UMLStateShape => UMLDiagramElement::ownedElement
   --  UMLStereotypePropertyValueLabel => UMLDiagramElement::ownedElement
   --  UMLStyle => Element::ownedElement
   --  UMLTypedElementLabel => UMLDiagramElement::ownedElement
   --  UMLUseCaseDiagram => Element::ownedElement
   --  DataStoreNode => Element::ownedElement
   --  DataType => Element::ownedElement
   --  DecisionNode => Element::ownedElement
   --  Dependency => Element::ownedElement
   --  Deployment => Element::ownedElement
   --  DeploymentSpecification => Element::ownedElement
   --  DestroyLinkAction => Element::ownedElement
   --  DestroyObjectAction => Element::ownedElement
   --  DestructionOccurrenceSpecification => Element::ownedElement
   --  Device => Element::ownedElement
   --  Duration => Element::ownedElement
   --  DurationConstraint => Element::ownedElement
   --  DurationInterval => Element::ownedElement
   --  DurationObservation => Element::ownedElement
   --  ElementImport => Element::ownedElement
   --  Enumeration => Element::ownedElement
   --  EnumerationLiteral => Element::ownedElement
   --  ExceptionHandler => Element::ownedElement
   --  ExecutionEnvironment => Element::ownedElement
   --  ExecutionOccurrenceSpecification => Element::ownedElement
   --  ExpansionNode => Element::ownedElement
   --  ExpansionRegion => Element::ownedElement
   --  Expression => Element::ownedElement
   --  Extend => Element::ownedElement
   --  Extension => Element::ownedElement
   --  ExtensionEnd => Element::ownedElement
   --  ExtensionPoint => Element::ownedElement
   --  FinalState => Element::ownedElement
   --  FlowFinalNode => Element::ownedElement
   --  ForkNode => Element::ownedElement
   --  FunctionBehavior => Element::ownedElement
   --  Gate => Element::ownedElement
   --  GeneralOrdering => Element::ownedElement
   --  Generalization => Element::ownedElement
   --  GeneralizationSet => Element::ownedElement
   --  Image => Element::ownedElement
   --  Include => Element::ownedElement
   --  InformationFlow => Element::ownedElement
   --  InformationItem => Element::ownedElement
   --  InitialNode => Element::ownedElement
   --  InputPin => Element::ownedElement
   --  InstanceSpecification => Element::ownedElement
   --  InstanceValue => Element::ownedElement
   --  Interaction => Element::ownedElement
   --  InteractionConstraint => Element::ownedElement
   --  InteractionOperand => Element::ownedElement
   --  InteractionUse => Element::ownedElement
   --  Interface => Element::ownedElement
   --  InterfaceRealization => Element::ownedElement
   --  InterruptibleActivityRegion => Element::ownedElement
   --  Interval => Element::ownedElement
   --  IntervalConstraint => Element::ownedElement
   --  JoinNode => Element::ownedElement
   --  Lifeline => Element::ownedElement
   --  LinkEndCreationData => Element::ownedElement
   --  LinkEndData => Element::ownedElement
   --  LinkEndDestructionData => Element::ownedElement
   --  LiteralBoolean => Element::ownedElement
   --  LiteralInteger => Element::ownedElement
   --  LiteralNull => Element::ownedElement
   --  LiteralReal => Element::ownedElement
   --  LiteralString => Element::ownedElement
   --  LiteralUnlimitedNatural => Element::ownedElement
   --  LoopNode => Element::ownedElement
   --  Manifestation => Element::ownedElement
   --  MergeNode => Element::ownedElement
   --  Message => Element::ownedElement
   --  MessageOccurrenceSpecification => Element::ownedElement
   --  Model => Element::ownedElement
   --  Node => Element::ownedElement
   --  ObjectFlow => Element::ownedElement
   --  OccurrenceSpecification => Element::ownedElement
   --  OpaqueAction => Element::ownedElement
   --  OpaqueBehavior => Element::ownedElement
   --  OpaqueExpression => Element::ownedElement
   --  Operation => Element::ownedElement
   --  OperationTemplateParameter => Element::ownedElement
   --  OutputPin => Element::ownedElement
   --  Package => Element::ownedElement
   --  PackageImport => Element::ownedElement
   --  PackageMerge => Element::ownedElement
   --  Parameter => Element::ownedElement
   --  ParameterSet => Element::ownedElement
   --  PartDecomposition => Element::ownedElement
   --  Port => Element::ownedElement
   --  PrimitiveType => Element::ownedElement
   --  Profile => Element::ownedElement
   --  ProfileApplication => Element::ownedElement
   --  Property => Element::ownedElement
   --  ProtocolConformance => Element::ownedElement
   --  ProtocolStateMachine => Element::ownedElement
   --  ProtocolTransition => Element::ownedElement
   --  Pseudostate => Element::ownedElement
   --  QualifierValue => Element::ownedElement
   --  RaiseExceptionAction => Element::ownedElement
   --  ReadExtentAction => Element::ownedElement
   --  ReadIsClassifiedObjectAction => Element::ownedElement
   --  ReadLinkAction => Element::ownedElement
   --  ReadLinkObjectEndAction => Element::ownedElement
   --  ReadLinkObjectEndQualifierAction => Element::ownedElement
   --  ReadSelfAction => Element::ownedElement
   --  ReadStructuralFeatureAction => Element::ownedElement
   --  ReadVariableAction => Element::ownedElement
   --  Realization => Element::ownedElement
   --  Reception => Element::ownedElement
   --  ReclassifyObjectAction => Element::ownedElement
   --  RedefinableTemplateSignature => Element::ownedElement
   --  ReduceAction => Element::ownedElement
   --  Region => Element::ownedElement
   --  RemoveStructuralFeatureValueAction => Element::ownedElement
   --  RemoveVariableValueAction => Element::ownedElement
   --  ReplyAction => Element::ownedElement
   --  SendObjectAction => Element::ownedElement
   --  SendSignalAction => Element::ownedElement
   --  SequenceNode => Element::ownedElement
   --  Signal => Element::ownedElement
   --  SignalEvent => Element::ownedElement
   --  Slot => Element::ownedElement
   --  StartClassifierBehaviorAction => Element::ownedElement
   --  StartObjectBehaviorAction => Element::ownedElement
   --  State => Element::ownedElement
   --  StateInvariant => Element::ownedElement
   --  StateMachine => Element::ownedElement
   --  Stereotype => Element::ownedElement
   --  StringExpression => Element::ownedElement
   --  StructuredActivityNode => Element::ownedElement
   --  Substitution => Element::ownedElement
   --  TemplateBinding => Element::ownedElement
   --  TemplateParameter => Element::ownedElement
   --  TemplateParameterSubstitution => Element::ownedElement
   --  TemplateSignature => Element::ownedElement
   --  TestIdentityAction => Element::ownedElement
   --  TimeConstraint => Element::ownedElement
   --  TimeEvent => Element::ownedElement
   --  TimeExpression => Element::ownedElement
   --  TimeInterval => Element::ownedElement
   --  TimeObservation => Element::ownedElement
   --  Transition => Element::ownedElement
   --  Trigger => Element::ownedElement
   --  UnmarshallAction => Element::ownedElement
   --  Usage => Element::ownedElement
   --  UseCase => Element::ownedElement
   --  ValuePin => Element::ownedElement
   --  ValueSpecificationAction => Element::ownedElement
   --  Variable => Element::ownedElement

   function Internal_Get_Owned_End
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Association => Association::ownedEnd
   --  AssociationClass => Association::ownedEnd
   --  CommunicationPath => Association::ownedEnd
   --  Extension => Association::ownedEnd

   function Internal_Get_Owned_Literal
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Enumeration => Enumeration::ownedLiteral

   function Internal_Get_Owned_Member
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Namespace::ownedMember
   --  Actor => Namespace::ownedMember
   --  Artifact => Namespace::ownedMember
   --  Association => Namespace::ownedMember
   --  AssociationClass => Namespace::ownedMember
   --  Class => Namespace::ownedMember
   --  Collaboration => Namespace::ownedMember
   --  CommunicationPath => Namespace::ownedMember
   --  Component => Namespace::ownedMember
   --  ConditionalNode => Namespace::ownedMember
   --  DataType => Namespace::ownedMember
   --  DeploymentSpecification => Namespace::ownedMember
   --  Device => Namespace::ownedMember
   --  Enumeration => Namespace::ownedMember
   --  ExecutionEnvironment => Namespace::ownedMember
   --  ExpansionRegion => Namespace::ownedMember
   --  Extension => Namespace::ownedMember
   --  FinalState => Namespace::ownedMember
   --  FunctionBehavior => Namespace::ownedMember
   --  InformationItem => Namespace::ownedMember
   --  Interaction => Namespace::ownedMember
   --  InteractionOperand => Namespace::ownedMember
   --  Interface => Namespace::ownedMember
   --  LoopNode => Namespace::ownedMember
   --  Model => Namespace::ownedMember
   --  Node => Namespace::ownedMember
   --  OpaqueBehavior => Namespace::ownedMember
   --  Operation => Namespace::ownedMember
   --  Package => Namespace::ownedMember
   --  PrimitiveType => Namespace::ownedMember
   --  Profile => Namespace::ownedMember
   --  ProtocolStateMachine => Namespace::ownedMember
   --  ProtocolTransition => Namespace::ownedMember
   --  Reception => Namespace::ownedMember
   --  Region => Namespace::ownedMember
   --  SequenceNode => Namespace::ownedMember
   --  Signal => Namespace::ownedMember
   --  State => Namespace::ownedMember
   --  StateMachine => Namespace::ownedMember
   --  Stereotype => Namespace::ownedMember
   --  StructuredActivityNode => Namespace::ownedMember
   --  Transition => Namespace::ownedMember
   --  UseCase => Namespace::ownedMember

   function Internal_Get_Owned_Operation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Class::ownedOperation
   --  Artifact => Artifact::ownedOperation
   --  AssociationClass => Class::ownedOperation
   --  Class => Class::ownedOperation
   --  Component => Class::ownedOperation
   --  DataType => DataType::ownedOperation
   --  DeploymentSpecification => Artifact::ownedOperation
   --  Device => Class::ownedOperation
   --  Enumeration => DataType::ownedOperation
   --  ExecutionEnvironment => Class::ownedOperation
   --  FunctionBehavior => Class::ownedOperation
   --  Interaction => Class::ownedOperation
   --  Interface => Interface::ownedOperation
   --  Node => Class::ownedOperation
   --  OpaqueBehavior => Class::ownedOperation
   --  PrimitiveType => DataType::ownedOperation
   --  ProtocolStateMachine => Class::ownedOperation
   --  StateMachine => Class::ownedOperation
   --  Stereotype => Class::ownedOperation

   function Internal_Get_Owned_Parameter
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Behavior::ownedParameter
   --  FunctionBehavior => Behavior::ownedParameter
   --  Interaction => Behavior::ownedParameter
   --  OpaqueBehavior => Behavior::ownedParameter
   --  Operation => BehavioralFeature::ownedParameter
   --  ProtocolStateMachine => Behavior::ownedParameter
   --  Reception => BehavioralFeature::ownedParameter
   --  RedefinableTemplateSignature => TemplateSignature::ownedParameter
   --  StateMachine => Behavior::ownedParameter
   --  TemplateSignature => TemplateSignature::ownedParameter

   function Internal_Get_Owned_Parameter_Set
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Behavior::ownedParameterSet
   --  FunctionBehavior => Behavior::ownedParameterSet
   --  Interaction => Behavior::ownedParameterSet
   --  OpaqueBehavior => Behavior::ownedParameterSet
   --  Operation => BehavioralFeature::ownedParameterSet
   --  ProtocolStateMachine => Behavior::ownedParameterSet
   --  Reception => BehavioralFeature::ownedParameterSet
   --  StateMachine => Behavior::ownedParameterSet

   function Internal_Get_Owned_Parametered_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Owned_Parametered_Element
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ClassifierTemplateParameter => TemplateParameter::ownedParameteredElement
   --  ConnectableElementTemplateParameter => TemplateParameter::ownedParameteredElement
   --  OperationTemplateParameter => TemplateParameter::ownedParameteredElement
   --  TemplateParameter => TemplateParameter::ownedParameteredElement

   function Internal_Get_Owned_Port
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => EncapsulatedClassifier::ownedPort
   --  AssociationClass => EncapsulatedClassifier::ownedPort
   --  Class => EncapsulatedClassifier::ownedPort
   --  Component => EncapsulatedClassifier::ownedPort
   --  Device => EncapsulatedClassifier::ownedPort
   --  ExecutionEnvironment => EncapsulatedClassifier::ownedPort
   --  FunctionBehavior => EncapsulatedClassifier::ownedPort
   --  Interaction => EncapsulatedClassifier::ownedPort
   --  Node => EncapsulatedClassifier::ownedPort
   --  OpaqueBehavior => EncapsulatedClassifier::ownedPort
   --  ProtocolStateMachine => EncapsulatedClassifier::ownedPort
   --  StateMachine => EncapsulatedClassifier::ownedPort
   --  Stereotype => EncapsulatedClassifier::ownedPort

   function Internal_Get_Owned_Reception
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Class::ownedReception
   --  AssociationClass => Class::ownedReception
   --  Class => Class::ownedReception
   --  Component => Class::ownedReception
   --  Device => Class::ownedReception
   --  ExecutionEnvironment => Class::ownedReception
   --  FunctionBehavior => Class::ownedReception
   --  Interaction => Class::ownedReception
   --  Interface => Interface::ownedReception
   --  Node => Class::ownedReception
   --  OpaqueBehavior => Class::ownedReception
   --  ProtocolStateMachine => Class::ownedReception
   --  StateMachine => Class::ownedReception
   --  Stereotype => Class::ownedReception

   function Internal_Get_Owned_Rule
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Namespace::ownedRule
   --  Actor => Namespace::ownedRule
   --  Artifact => Namespace::ownedRule
   --  Association => Namespace::ownedRule
   --  AssociationClass => Namespace::ownedRule
   --  Class => Namespace::ownedRule
   --  Collaboration => Namespace::ownedRule
   --  CommunicationPath => Namespace::ownedRule
   --  Component => Namespace::ownedRule
   --  ConditionalNode => Namespace::ownedRule
   --  DataType => Namespace::ownedRule
   --  DeploymentSpecification => Namespace::ownedRule
   --  Device => Namespace::ownedRule
   --  Enumeration => Namespace::ownedRule
   --  ExecutionEnvironment => Namespace::ownedRule
   --  ExpansionRegion => Namespace::ownedRule
   --  Extension => Namespace::ownedRule
   --  FinalState => Namespace::ownedRule
   --  FunctionBehavior => Namespace::ownedRule
   --  InformationItem => Namespace::ownedRule
   --  Interaction => Namespace::ownedRule
   --  InteractionOperand => Namespace::ownedRule
   --  Interface => Namespace::ownedRule
   --  LoopNode => Namespace::ownedRule
   --  Model => Namespace::ownedRule
   --  Node => Namespace::ownedRule
   --  OpaqueBehavior => Namespace::ownedRule
   --  Operation => Namespace::ownedRule
   --  Package => Namespace::ownedRule
   --  PrimitiveType => Namespace::ownedRule
   --  Profile => Namespace::ownedRule
   --  ProtocolStateMachine => Namespace::ownedRule
   --  ProtocolTransition => Namespace::ownedRule
   --  Reception => Namespace::ownedRule
   --  Region => Namespace::ownedRule
   --  SequenceNode => Namespace::ownedRule
   --  Signal => Namespace::ownedRule
   --  State => Namespace::ownedRule
   --  StateMachine => Namespace::ownedRule
   --  Stereotype => Namespace::ownedRule
   --  StructuredActivityNode => Namespace::ownedRule
   --  Transition => Namespace::ownedRule
   --  UseCase => Namespace::ownedRule

   function Internal_Get_Owned_Stereotype
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Model => Package::ownedStereotype
   --  Package => Package::ownedStereotype
   --  Profile => Package::ownedStereotype

   function Internal_Get_Owned_Template_Signature
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Owned_Template_Signature
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Activity => Classifier::ownedTemplateSignature
   --  Actor => Classifier::ownedTemplateSignature
   --  Artifact => Classifier::ownedTemplateSignature
   --  Association => Classifier::ownedTemplateSignature
   --  AssociationClass => Classifier::ownedTemplateSignature
   --  Class => Classifier::ownedTemplateSignature
   --  Collaboration => Classifier::ownedTemplateSignature
   --  CommunicationPath => Classifier::ownedTemplateSignature
   --  Component => Classifier::ownedTemplateSignature
   --  DataType => Classifier::ownedTemplateSignature
   --  DeploymentSpecification => Classifier::ownedTemplateSignature
   --  Device => Classifier::ownedTemplateSignature
   --  Enumeration => Classifier::ownedTemplateSignature
   --  ExecutionEnvironment => Classifier::ownedTemplateSignature
   --  Extension => Classifier::ownedTemplateSignature
   --  FunctionBehavior => Classifier::ownedTemplateSignature
   --  InformationItem => Classifier::ownedTemplateSignature
   --  Interaction => Classifier::ownedTemplateSignature
   --  Interface => Classifier::ownedTemplateSignature
   --  Model => TemplateableElement::ownedTemplateSignature
   --  Node => Classifier::ownedTemplateSignature
   --  OpaqueBehavior => Classifier::ownedTemplateSignature
   --  Operation => TemplateableElement::ownedTemplateSignature
   --  Package => TemplateableElement::ownedTemplateSignature
   --  PrimitiveType => Classifier::ownedTemplateSignature
   --  Profile => TemplateableElement::ownedTemplateSignature
   --  ProtocolStateMachine => Classifier::ownedTemplateSignature
   --  Signal => Classifier::ownedTemplateSignature
   --  StateMachine => Classifier::ownedTemplateSignature
   --  Stereotype => Classifier::ownedTemplateSignature
   --  StringExpression => TemplateableElement::ownedTemplateSignature
   --  UseCase => Classifier::ownedTemplateSignature

   function Internal_Get_Owned_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Model => Package::ownedType
   --  Package => Package::ownedType
   --  Profile => Package::ownedType

   function Internal_Get_Owned_Use_Case
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Classifier::ownedUseCase
   --  Actor => Classifier::ownedUseCase
   --  Artifact => Classifier::ownedUseCase
   --  Association => Classifier::ownedUseCase
   --  AssociationClass => Classifier::ownedUseCase
   --  Class => Classifier::ownedUseCase
   --  Collaboration => Classifier::ownedUseCase
   --  CommunicationPath => Classifier::ownedUseCase
   --  Component => Classifier::ownedUseCase
   --  DataType => Classifier::ownedUseCase
   --  DeploymentSpecification => Classifier::ownedUseCase
   --  Device => Classifier::ownedUseCase
   --  Enumeration => Classifier::ownedUseCase
   --  ExecutionEnvironment => Classifier::ownedUseCase
   --  Extension => Classifier::ownedUseCase
   --  FunctionBehavior => Classifier::ownedUseCase
   --  InformationItem => Classifier::ownedUseCase
   --  Interaction => Classifier::ownedUseCase
   --  Interface => Classifier::ownedUseCase
   --  Node => Classifier::ownedUseCase
   --  OpaqueBehavior => Classifier::ownedUseCase
   --  PrimitiveType => Classifier::ownedUseCase
   --  ProtocolStateMachine => Classifier::ownedUseCase
   --  Signal => Classifier::ownedUseCase
   --  StateMachine => Classifier::ownedUseCase
   --  Stereotype => Classifier::ownedUseCase
   --  UseCase => Classifier::ownedUseCase

   function Internal_Get_Owner
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   --  Abstraction => Element::owner
   --  AcceptCallAction => Element::owner
   --  AcceptEventAction => Element::owner
   --  ActionExecutionSpecification => Element::owner
   --  ActionInputPin => Element::owner
   --  Activity => Element::owner
   --  ActivityFinalNode => Element::owner
   --  ActivityParameterNode => Element::owner
   --  ActivityPartition => Element::owner
   --  Actor => Element::owner
   --  AddStructuralFeatureValueAction => Element::owner
   --  AddVariableValueAction => Element::owner
   --  AnyReceiveEvent => Element::owner
   --  Artifact => Element::owner
   --  Association => Element::owner
   --  AssociationClass => Element::owner
   --  BehaviorExecutionSpecification => Element::owner
   --  BroadcastSignalAction => Element::owner
   --  CallBehaviorAction => Element::owner
   --  CallEvent => Element::owner
   --  CallOperationAction => Element::owner
   --  CentralBufferNode => Element::owner
   --  ChangeEvent => Element::owner
   --  Class => Element::owner
   --  ClassifierTemplateParameter => Element::owner
   --  Clause => Element::owner
   --  ClearAssociationAction => Element::owner
   --  ClearStructuralFeatureAction => Element::owner
   --  ClearVariableAction => Element::owner
   --  Collaboration => Element::owner
   --  CollaborationUse => Element::owner
   --  CombinedFragment => Element::owner
   --  Comment => Element::owner
   --  CommunicationPath => Element::owner
   --  Component => Element::owner
   --  ComponentRealization => Element::owner
   --  ConditionalNode => Element::owner
   --  ConnectableElementTemplateParameter => Element::owner
   --  ConnectionPointReference => Element::owner
   --  Connector => Element::owner
   --  ConnectorEnd => Element::owner
   --  ConsiderIgnoreFragment => Element::owner
   --  Constraint => Element::owner
   --  Continuation => Element::owner
   --  ControlFlow => Element::owner
   --  CreateLinkAction => Element::owner
   --  CreateLinkObjectAction => Element::owner
   --  CreateObjectAction => Element::owner
   --  UMLActivityDiagram => Element::owner
   --  UMLClassDiagram => Element::owner
   --  UMLComponentDiagram => Element::owner
   --  UMLCompositeStructureDiagram => Element::owner
   --  UMLDeploymentDiagram => Element::owner
   --  UMLInteractionDiagram => Element::owner
   --  UMLObjectDiagram => Element::owner
   --  UMLPackageDiagram => Element::owner
   --  UMLProfileDiagram => Element::owner
   --  UMLStateMachineDiagram => Element::owner
   --  UMLStyle => Element::owner
   --  UMLUseCaseDiagram => Element::owner
   --  DataStoreNode => Element::owner
   --  DataType => Element::owner
   --  DecisionNode => Element::owner
   --  Dependency => Element::owner
   --  Deployment => Element::owner
   --  DeploymentSpecification => Element::owner
   --  DestroyLinkAction => Element::owner
   --  DestroyObjectAction => Element::owner
   --  DestructionOccurrenceSpecification => Element::owner
   --  Device => Element::owner
   --  Duration => Element::owner
   --  DurationConstraint => Element::owner
   --  DurationInterval => Element::owner
   --  DurationObservation => Element::owner
   --  ElementImport => Element::owner
   --  Enumeration => Element::owner
   --  EnumerationLiteral => Element::owner
   --  ExceptionHandler => Element::owner
   --  ExecutionEnvironment => Element::owner
   --  ExecutionOccurrenceSpecification => Element::owner
   --  ExpansionNode => Element::owner
   --  ExpansionRegion => Element::owner
   --  Expression => Element::owner
   --  Extend => Element::owner
   --  Extension => Element::owner
   --  ExtensionEnd => Element::owner
   --  ExtensionPoint => Element::owner
   --  FinalState => Element::owner
   --  FlowFinalNode => Element::owner
   --  ForkNode => Element::owner
   --  FunctionBehavior => Element::owner
   --  Gate => Element::owner
   --  GeneralOrdering => Element::owner
   --  Generalization => Element::owner
   --  GeneralizationSet => Element::owner
   --  Image => Element::owner
   --  Include => Element::owner
   --  InformationFlow => Element::owner
   --  InformationItem => Element::owner
   --  InitialNode => Element::owner
   --  InputPin => Element::owner
   --  InstanceSpecification => Element::owner
   --  InstanceValue => Element::owner
   --  Interaction => Element::owner
   --  InteractionConstraint => Element::owner
   --  InteractionOperand => Element::owner
   --  InteractionUse => Element::owner
   --  Interface => Element::owner
   --  InterfaceRealization => Element::owner
   --  InterruptibleActivityRegion => Element::owner
   --  Interval => Element::owner
   --  IntervalConstraint => Element::owner
   --  JoinNode => Element::owner
   --  Lifeline => Element::owner
   --  LinkEndCreationData => Element::owner
   --  LinkEndData => Element::owner
   --  LinkEndDestructionData => Element::owner
   --  LiteralBoolean => Element::owner
   --  LiteralInteger => Element::owner
   --  LiteralNull => Element::owner
   --  LiteralReal => Element::owner
   --  LiteralString => Element::owner
   --  LiteralUnlimitedNatural => Element::owner
   --  LoopNode => Element::owner
   --  Manifestation => Element::owner
   --  MergeNode => Element::owner
   --  Message => Element::owner
   --  MessageOccurrenceSpecification => Element::owner
   --  Model => Element::owner
   --  Node => Element::owner
   --  ObjectFlow => Element::owner
   --  OccurrenceSpecification => Element::owner
   --  OpaqueAction => Element::owner
   --  OpaqueBehavior => Element::owner
   --  OpaqueExpression => Element::owner
   --  Operation => Element::owner
   --  OperationTemplateParameter => Element::owner
   --  OutputPin => Element::owner
   --  Package => Element::owner
   --  PackageImport => Element::owner
   --  PackageMerge => Element::owner
   --  Parameter => Element::owner
   --  ParameterSet => Element::owner
   --  PartDecomposition => Element::owner
   --  Port => Element::owner
   --  PrimitiveType => Element::owner
   --  Profile => Element::owner
   --  ProfileApplication => Element::owner
   --  Property => Element::owner
   --  ProtocolConformance => Element::owner
   --  ProtocolStateMachine => Element::owner
   --  ProtocolTransition => Element::owner
   --  Pseudostate => Element::owner
   --  QualifierValue => Element::owner
   --  RaiseExceptionAction => Element::owner
   --  ReadExtentAction => Element::owner
   --  ReadIsClassifiedObjectAction => Element::owner
   --  ReadLinkAction => Element::owner
   --  ReadLinkObjectEndAction => Element::owner
   --  ReadLinkObjectEndQualifierAction => Element::owner
   --  ReadSelfAction => Element::owner
   --  ReadStructuralFeatureAction => Element::owner
   --  ReadVariableAction => Element::owner
   --  Realization => Element::owner
   --  Reception => Element::owner
   --  ReclassifyObjectAction => Element::owner
   --  RedefinableTemplateSignature => Element::owner
   --  ReduceAction => Element::owner
   --  Region => Element::owner
   --  RemoveStructuralFeatureValueAction => Element::owner
   --  RemoveVariableValueAction => Element::owner
   --  ReplyAction => Element::owner
   --  SendObjectAction => Element::owner
   --  SendSignalAction => Element::owner
   --  SequenceNode => Element::owner
   --  Signal => Element::owner
   --  SignalEvent => Element::owner
   --  Slot => Element::owner
   --  StartClassifierBehaviorAction => Element::owner
   --  StartObjectBehaviorAction => Element::owner
   --  State => Element::owner
   --  StateInvariant => Element::owner
   --  StateMachine => Element::owner
   --  Stereotype => Element::owner
   --  StringExpression => Element::owner
   --  StructuredActivityNode => Element::owner
   --  Substitution => Element::owner
   --  TemplateBinding => Element::owner
   --  TemplateParameter => Element::owner
   --  TemplateParameterSubstitution => Element::owner
   --  TemplateSignature => Element::owner
   --  TestIdentityAction => Element::owner
   --  TimeConstraint => Element::owner
   --  TimeEvent => Element::owner
   --  TimeExpression => Element::owner
   --  TimeInterval => Element::owner
   --  TimeObservation => Element::owner
   --  Transition => Element::owner
   --  Trigger => Element::owner
   --  UnmarshallAction => Element::owner
   --  Usage => Element::owner
   --  UseCase => Element::owner
   --  ValuePin => Element::owner
   --  ValueSpecificationAction => Element::owner
   --  Variable => Element::owner

   function Internal_Get_Owning_Association
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Owning_Association
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ExtensionEnd => Property::owningAssociation
   --  Port => Property::owningAssociation
   --  Property => Property::owningAssociation

   function Internal_Get_Owning_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   --  UMLActivityDiagram => UMLDiagramElement::owningElement
   --  UMLAssociationEndLabel => UMLDiagramElement::owningElement
   --  UMLAssociationOrConnectorOrLinkShape => UMLDiagramElement::owningElement
   --  UMLClassDiagram => UMLDiagramElement::owningElement
   --  UMLClassifierShape => UMLDiagramElement::owningElement
   --  UMLCompartment => UMLDiagramElement::owningElement
   --  UMLCompartmentableShape => UMLDiagramElement::owningElement
   --  UMLComponentDiagram => UMLDiagramElement::owningElement
   --  UMLCompositeStructureDiagram => UMLDiagramElement::owningElement
   --  UMLDeploymentDiagram => UMLDiagramElement::owningElement
   --  UMLEdge => UMLDiagramElement::owningElement
   --  UMLInteractionDiagram => UMLDiagramElement::owningElement
   --  UMLInteractionTableLabel => UMLDiagramElement::owningElement
   --  UMLKeywordLabel => UMLDiagramElement::owningElement
   --  UMLLabel => UMLDiagramElement::owningElement
   --  UMLMultiplicityLabel => UMLDiagramElement::owningElement
   --  UMLNameLabel => UMLDiagramElement::owningElement
   --  UMLObjectDiagram => UMLDiagramElement::owningElement
   --  UMLPackageDiagram => UMLDiagramElement::owningElement
   --  UMLProfileDiagram => UMLDiagramElement::owningElement
   --  UMLRedefinesLabel => UMLDiagramElement::owningElement
   --  UMLShape => UMLDiagramElement::owningElement
   --  UMLStateMachineDiagram => UMLDiagramElement::owningElement
   --  UMLStateShape => UMLDiagramElement::owningElement
   --  UMLStereotypePropertyValueLabel => UMLDiagramElement::owningElement
   --  UMLTypedElementLabel => UMLDiagramElement::owningElement
   --  UMLUseCaseDiagram => UMLDiagramElement::owningElement

   function Internal_Get_Owning_Expression
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Owning_Expression
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  StringExpression => StringExpression::owningExpression

   function Internal_Get_Owning_Instance
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Owning_Instance
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Slot => Slot::owningInstance

   function Internal_Get_Owning_Template_Parameter
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Owning_Template_Parameter
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Abstraction => ParameterableElement::owningTemplateParameter
   --  Activity => ParameterableElement::owningTemplateParameter
   --  Actor => ParameterableElement::owningTemplateParameter
   --  AnyReceiveEvent => ParameterableElement::owningTemplateParameter
   --  Artifact => ParameterableElement::owningTemplateParameter
   --  Association => ParameterableElement::owningTemplateParameter
   --  AssociationClass => ParameterableElement::owningTemplateParameter
   --  CallEvent => ParameterableElement::owningTemplateParameter
   --  ChangeEvent => ParameterableElement::owningTemplateParameter
   --  Class => ParameterableElement::owningTemplateParameter
   --  Collaboration => ParameterableElement::owningTemplateParameter
   --  CommunicationPath => ParameterableElement::owningTemplateParameter
   --  Component => ParameterableElement::owningTemplateParameter
   --  ComponentRealization => ParameterableElement::owningTemplateParameter
   --  Constraint => ParameterableElement::owningTemplateParameter
   --  UMLActivityDiagram => ParameterableElement::owningTemplateParameter
   --  UMLClassDiagram => ParameterableElement::owningTemplateParameter
   --  UMLComponentDiagram => ParameterableElement::owningTemplateParameter
   --  UMLCompositeStructureDiagram => ParameterableElement::owningTemplateParameter
   --  UMLDeploymentDiagram => ParameterableElement::owningTemplateParameter
   --  UMLInteractionDiagram => ParameterableElement::owningTemplateParameter
   --  UMLObjectDiagram => ParameterableElement::owningTemplateParameter
   --  UMLPackageDiagram => ParameterableElement::owningTemplateParameter
   --  UMLProfileDiagram => ParameterableElement::owningTemplateParameter
   --  UMLStateMachineDiagram => ParameterableElement::owningTemplateParameter
   --  UMLStyle => ParameterableElement::owningTemplateParameter
   --  UMLUseCaseDiagram => ParameterableElement::owningTemplateParameter
   --  DataType => ParameterableElement::owningTemplateParameter
   --  Dependency => ParameterableElement::owningTemplateParameter
   --  Deployment => ParameterableElement::owningTemplateParameter
   --  DeploymentSpecification => ParameterableElement::owningTemplateParameter
   --  Device => ParameterableElement::owningTemplateParameter
   --  Duration => ParameterableElement::owningTemplateParameter
   --  DurationConstraint => ParameterableElement::owningTemplateParameter
   --  DurationInterval => ParameterableElement::owningTemplateParameter
   --  DurationObservation => ParameterableElement::owningTemplateParameter
   --  Enumeration => ParameterableElement::owningTemplateParameter
   --  EnumerationLiteral => ParameterableElement::owningTemplateParameter
   --  ExecutionEnvironment => ParameterableElement::owningTemplateParameter
   --  Expression => ParameterableElement::owningTemplateParameter
   --  Extension => ParameterableElement::owningTemplateParameter
   --  ExtensionEnd => ParameterableElement::owningTemplateParameter
   --  FunctionBehavior => ParameterableElement::owningTemplateParameter
   --  GeneralizationSet => ParameterableElement::owningTemplateParameter
   --  InformationFlow => ParameterableElement::owningTemplateParameter
   --  InformationItem => ParameterableElement::owningTemplateParameter
   --  InstanceSpecification => ParameterableElement::owningTemplateParameter
   --  InstanceValue => ParameterableElement::owningTemplateParameter
   --  Interaction => ParameterableElement::owningTemplateParameter
   --  InteractionConstraint => ParameterableElement::owningTemplateParameter
   --  Interface => ParameterableElement::owningTemplateParameter
   --  InterfaceRealization => ParameterableElement::owningTemplateParameter
   --  Interval => ParameterableElement::owningTemplateParameter
   --  IntervalConstraint => ParameterableElement::owningTemplateParameter
   --  LiteralBoolean => ParameterableElement::owningTemplateParameter
   --  LiteralInteger => ParameterableElement::owningTemplateParameter
   --  LiteralNull => ParameterableElement::owningTemplateParameter
   --  LiteralReal => ParameterableElement::owningTemplateParameter
   --  LiteralString => ParameterableElement::owningTemplateParameter
   --  LiteralUnlimitedNatural => ParameterableElement::owningTemplateParameter
   --  Manifestation => ParameterableElement::owningTemplateParameter
   --  Model => ParameterableElement::owningTemplateParameter
   --  Node => ParameterableElement::owningTemplateParameter
   --  OpaqueBehavior => ParameterableElement::owningTemplateParameter
   --  OpaqueExpression => ParameterableElement::owningTemplateParameter
   --  Operation => ParameterableElement::owningTemplateParameter
   --  Package => ParameterableElement::owningTemplateParameter
   --  Parameter => ParameterableElement::owningTemplateParameter
   --  Port => ParameterableElement::owningTemplateParameter
   --  PrimitiveType => ParameterableElement::owningTemplateParameter
   --  Profile => ParameterableElement::owningTemplateParameter
   --  Property => ParameterableElement::owningTemplateParameter
   --  ProtocolStateMachine => ParameterableElement::owningTemplateParameter
   --  Realization => ParameterableElement::owningTemplateParameter
   --  Signal => ParameterableElement::owningTemplateParameter
   --  SignalEvent => ParameterableElement::owningTemplateParameter
   --  StateMachine => ParameterableElement::owningTemplateParameter
   --  Stereotype => ParameterableElement::owningTemplateParameter
   --  StringExpression => ParameterableElement::owningTemplateParameter
   --  Substitution => ParameterableElement::owningTemplateParameter
   --  TimeConstraint => ParameterableElement::owningTemplateParameter
   --  TimeEvent => ParameterableElement::owningTemplateParameter
   --  TimeExpression => ParameterableElement::owningTemplateParameter
   --  TimeInterval => ParameterableElement::owningTemplateParameter
   --  TimeObservation => ParameterableElement::owningTemplateParameter
   --  Usage => ParameterableElement::owningTemplateParameter
   --  UseCase => ParameterableElement::owningTemplateParameter
   --  Variable => ParameterableElement::owningTemplateParameter

   function Internal_Get_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Activity => Type::package
   --  Actor => Type::package
   --  Artifact => Type::package
   --  Association => Type::package
   --  AssociationClass => Type::package
   --  Class => Type::package
   --  Collaboration => Type::package
   --  CommunicationPath => Type::package
   --  Component => Type::package
   --  DataType => Type::package
   --  DeploymentSpecification => Type::package
   --  Device => Type::package
   --  Enumeration => Type::package
   --  ExecutionEnvironment => Type::package
   --  Extension => Type::package
   --  FunctionBehavior => Type::package
   --  InformationItem => Type::package
   --  Interaction => Type::package
   --  Interface => Type::package
   --  Node => Type::package
   --  OpaqueBehavior => Type::package
   --  PrimitiveType => Type::package
   --  ProtocolStateMachine => Type::package
   --  Signal => Type::package
   --  StateMachine => Type::package
   --  Stereotype => Type::package
   --  UseCase => Type::package

   function Internal_Get_Package_Import
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Namespace::packageImport
   --  Actor => Namespace::packageImport
   --  Artifact => Namespace::packageImport
   --  Association => Namespace::packageImport
   --  AssociationClass => Namespace::packageImport
   --  Class => Namespace::packageImport
   --  Collaboration => Namespace::packageImport
   --  CommunicationPath => Namespace::packageImport
   --  Component => Namespace::packageImport
   --  ConditionalNode => Namespace::packageImport
   --  DataType => Namespace::packageImport
   --  DeploymentSpecification => Namespace::packageImport
   --  Device => Namespace::packageImport
   --  Enumeration => Namespace::packageImport
   --  ExecutionEnvironment => Namespace::packageImport
   --  ExpansionRegion => Namespace::packageImport
   --  Extension => Namespace::packageImport
   --  FinalState => Namespace::packageImport
   --  FunctionBehavior => Namespace::packageImport
   --  InformationItem => Namespace::packageImport
   --  Interaction => Namespace::packageImport
   --  InteractionOperand => Namespace::packageImport
   --  Interface => Namespace::packageImport
   --  LoopNode => Namespace::packageImport
   --  Model => Namespace::packageImport
   --  Node => Namespace::packageImport
   --  OpaqueBehavior => Namespace::packageImport
   --  Operation => Namespace::packageImport
   --  Package => Namespace::packageImport
   --  PrimitiveType => Namespace::packageImport
   --  Profile => Namespace::packageImport
   --  ProtocolStateMachine => Namespace::packageImport
   --  ProtocolTransition => Namespace::packageImport
   --  Reception => Namespace::packageImport
   --  Region => Namespace::packageImport
   --  SequenceNode => Namespace::packageImport
   --  Signal => Namespace::packageImport
   --  State => Namespace::packageImport
   --  StateMachine => Namespace::packageImport
   --  Stereotype => Namespace::packageImport
   --  StructuredActivityNode => Namespace::packageImport
   --  Transition => Namespace::packageImport
   --  UseCase => Namespace::packageImport

   function Internal_Get_Package_Merge
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Model => Package::packageMerge
   --  Package => Package::packageMerge
   --  Profile => Package::packageMerge

   function Internal_Get_Packaged_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Component => Component::packagedElement
   --  Model => Package::packagedElement
   --  Package => Package::packagedElement
   --  Profile => Package::packagedElement

   function Internal_Get_Parameter
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Parameter
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ActivityParameterNode => ActivityParameterNode::parameter

   function Internal_Get_Parameter
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ParameterSet => ParameterSet::parameter
   --  RedefinableTemplateSignature => TemplateSignature::parameter
   --  TemplateSignature => TemplateSignature::parameter

   function Internal_Get_Parameter_Set
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Parameter => Parameter::parameterSet

   function Internal_Get_Parameter_Substitution
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  TemplateBinding => TemplateBinding::parameterSubstitution

   function Internal_Get_Parametered_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Parametered_Element
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ClassifierTemplateParameter => ClassifierTemplateParameter::parameteredElement
   --  ConnectableElementTemplateParameter => ConnectableElementTemplateParameter::parameteredElement
   --  OperationTemplateParameter => OperationTemplateParameter::parameteredElement
   --  TemplateParameter => TemplateParameter::parameteredElement

   function Internal_Get_Part
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => StructuredClassifier::part
   --  AssociationClass => StructuredClassifier::part
   --  Class => StructuredClassifier::part
   --  Collaboration => StructuredClassifier::part
   --  Component => StructuredClassifier::part
   --  Device => StructuredClassifier::part
   --  ExecutionEnvironment => StructuredClassifier::part
   --  FunctionBehavior => StructuredClassifier::part
   --  Interaction => StructuredClassifier::part
   --  Node => StructuredClassifier::part
   --  OpaqueBehavior => StructuredClassifier::part
   --  ProtocolStateMachine => StructuredClassifier::part
   --  StateMachine => StructuredClassifier::part
   --  Stereotype => StructuredClassifier::part

   function Internal_Get_Part_With_Port
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Part_With_Port
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ConnectorEnd => ConnectorEnd::partWithPort

   function Internal_Get_Partition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Activity::partition

   function Internal_Get_Port
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Trigger => Trigger::port

   function Internal_Get_Post_Condition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Post_Condition
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ProtocolTransition => ProtocolTransition::postCondition

   function Internal_Get_Postcondition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Behavior::postcondition
   --  FunctionBehavior => Behavior::postcondition
   --  Interaction => Behavior::postcondition
   --  OpaqueBehavior => Behavior::postcondition
   --  Operation => Operation::postcondition
   --  ProtocolStateMachine => Behavior::postcondition
   --  StateMachine => Behavior::postcondition

   function Internal_Get_Powertype
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Powertype
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  GeneralizationSet => GeneralizationSet::powertype

   function Internal_Get_Powertype_Extent
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Classifier::powertypeExtent
   --  Actor => Classifier::powertypeExtent
   --  Artifact => Classifier::powertypeExtent
   --  Association => Classifier::powertypeExtent
   --  AssociationClass => Classifier::powertypeExtent
   --  Class => Classifier::powertypeExtent
   --  Collaboration => Classifier::powertypeExtent
   --  CommunicationPath => Classifier::powertypeExtent
   --  Component => Classifier::powertypeExtent
   --  DataType => Classifier::powertypeExtent
   --  DeploymentSpecification => Classifier::powertypeExtent
   --  Device => Classifier::powertypeExtent
   --  Enumeration => Classifier::powertypeExtent
   --  ExecutionEnvironment => Classifier::powertypeExtent
   --  Extension => Classifier::powertypeExtent
   --  FunctionBehavior => Classifier::powertypeExtent
   --  InformationItem => Classifier::powertypeExtent
   --  Interaction => Classifier::powertypeExtent
   --  Interface => Classifier::powertypeExtent
   --  Node => Classifier::powertypeExtent
   --  OpaqueBehavior => Classifier::powertypeExtent
   --  PrimitiveType => Classifier::powertypeExtent
   --  ProtocolStateMachine => Classifier::powertypeExtent
   --  Signal => Classifier::powertypeExtent
   --  StateMachine => Classifier::powertypeExtent
   --  Stereotype => Classifier::powertypeExtent
   --  UseCase => Classifier::powertypeExtent

   function Internal_Get_Pre_Condition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Pre_Condition
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ProtocolTransition => ProtocolTransition::preCondition

   function Internal_Get_Precondition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Behavior::precondition
   --  FunctionBehavior => Behavior::precondition
   --  Interaction => Behavior::precondition
   --  OpaqueBehavior => Behavior::precondition
   --  Operation => Operation::precondition
   --  ProtocolStateMachine => Behavior::precondition
   --  StateMachine => Behavior::precondition

   function Internal_Get_Predecessor_Clause
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Clause => Clause::predecessorClause

   function Internal_Get_Profile
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   --  Stereotype => Stereotype::profile

   function Internal_Get_Profile_Application
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Model => Package::profileApplication
   --  Package => Package::profileApplication
   --  Profile => Package::profileApplication

   function Internal_Get_Protected_Node
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Protected_Node
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ExceptionHandler => ExceptionHandler::protectedNode

   function Internal_Get_Protocol
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Protocol
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Interface => Interface::protocol
   --  Port => Port::protocol

   function Internal_Get_Provided
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Component => Component::provided
   --  Port => Port::provided

   function Internal_Get_Qualified_Name
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   --  Abstraction => NamedElement::qualifiedName
   --  AcceptCallAction => NamedElement::qualifiedName
   --  AcceptEventAction => NamedElement::qualifiedName
   --  ActionExecutionSpecification => NamedElement::qualifiedName
   --  ActionInputPin => NamedElement::qualifiedName
   --  Activity => NamedElement::qualifiedName
   --  ActivityFinalNode => NamedElement::qualifiedName
   --  ActivityParameterNode => NamedElement::qualifiedName
   --  ActivityPartition => NamedElement::qualifiedName
   --  Actor => NamedElement::qualifiedName
   --  AddStructuralFeatureValueAction => NamedElement::qualifiedName
   --  AddVariableValueAction => NamedElement::qualifiedName
   --  AnyReceiveEvent => NamedElement::qualifiedName
   --  Artifact => NamedElement::qualifiedName
   --  Association => NamedElement::qualifiedName
   --  AssociationClass => NamedElement::qualifiedName
   --  BehaviorExecutionSpecification => NamedElement::qualifiedName
   --  BroadcastSignalAction => NamedElement::qualifiedName
   --  CallBehaviorAction => NamedElement::qualifiedName
   --  CallEvent => NamedElement::qualifiedName
   --  CallOperationAction => NamedElement::qualifiedName
   --  CentralBufferNode => NamedElement::qualifiedName
   --  ChangeEvent => NamedElement::qualifiedName
   --  Class => NamedElement::qualifiedName
   --  ClearAssociationAction => NamedElement::qualifiedName
   --  ClearStructuralFeatureAction => NamedElement::qualifiedName
   --  ClearVariableAction => NamedElement::qualifiedName
   --  Collaboration => NamedElement::qualifiedName
   --  CollaborationUse => NamedElement::qualifiedName
   --  CombinedFragment => NamedElement::qualifiedName
   --  CommunicationPath => NamedElement::qualifiedName
   --  Component => NamedElement::qualifiedName
   --  ComponentRealization => NamedElement::qualifiedName
   --  ConditionalNode => NamedElement::qualifiedName
   --  ConnectionPointReference => NamedElement::qualifiedName
   --  Connector => NamedElement::qualifiedName
   --  ConsiderIgnoreFragment => NamedElement::qualifiedName
   --  Constraint => NamedElement::qualifiedName
   --  Continuation => NamedElement::qualifiedName
   --  ControlFlow => NamedElement::qualifiedName
   --  CreateLinkAction => NamedElement::qualifiedName
   --  CreateLinkObjectAction => NamedElement::qualifiedName
   --  CreateObjectAction => NamedElement::qualifiedName
   --  UMLActivityDiagram => NamedElement::qualifiedName
   --  UMLClassDiagram => NamedElement::qualifiedName
   --  UMLComponentDiagram => NamedElement::qualifiedName
   --  UMLCompositeStructureDiagram => NamedElement::qualifiedName
   --  UMLDeploymentDiagram => NamedElement::qualifiedName
   --  UMLInteractionDiagram => NamedElement::qualifiedName
   --  UMLObjectDiagram => NamedElement::qualifiedName
   --  UMLPackageDiagram => NamedElement::qualifiedName
   --  UMLProfileDiagram => NamedElement::qualifiedName
   --  UMLStateMachineDiagram => NamedElement::qualifiedName
   --  UMLStyle => NamedElement::qualifiedName
   --  UMLUseCaseDiagram => NamedElement::qualifiedName
   --  DataStoreNode => NamedElement::qualifiedName
   --  DataType => NamedElement::qualifiedName
   --  DecisionNode => NamedElement::qualifiedName
   --  Dependency => NamedElement::qualifiedName
   --  Deployment => NamedElement::qualifiedName
   --  DeploymentSpecification => NamedElement::qualifiedName
   --  DestroyLinkAction => NamedElement::qualifiedName
   --  DestroyObjectAction => NamedElement::qualifiedName
   --  DestructionOccurrenceSpecification => NamedElement::qualifiedName
   --  Device => NamedElement::qualifiedName
   --  Duration => NamedElement::qualifiedName
   --  DurationConstraint => NamedElement::qualifiedName
   --  DurationInterval => NamedElement::qualifiedName
   --  DurationObservation => NamedElement::qualifiedName
   --  Enumeration => NamedElement::qualifiedName
   --  EnumerationLiteral => NamedElement::qualifiedName
   --  ExecutionEnvironment => NamedElement::qualifiedName
   --  ExecutionOccurrenceSpecification => NamedElement::qualifiedName
   --  ExpansionNode => NamedElement::qualifiedName
   --  ExpansionRegion => NamedElement::qualifiedName
   --  Expression => NamedElement::qualifiedName
   --  Extend => NamedElement::qualifiedName
   --  Extension => NamedElement::qualifiedName
   --  ExtensionEnd => NamedElement::qualifiedName
   --  ExtensionPoint => NamedElement::qualifiedName
   --  FinalState => NamedElement::qualifiedName
   --  FlowFinalNode => NamedElement::qualifiedName
   --  ForkNode => NamedElement::qualifiedName
   --  FunctionBehavior => NamedElement::qualifiedName
   --  Gate => NamedElement::qualifiedName
   --  GeneralOrdering => NamedElement::qualifiedName
   --  GeneralizationSet => NamedElement::qualifiedName
   --  Include => NamedElement::qualifiedName
   --  InformationFlow => NamedElement::qualifiedName
   --  InformationItem => NamedElement::qualifiedName
   --  InitialNode => NamedElement::qualifiedName
   --  InputPin => NamedElement::qualifiedName
   --  InstanceSpecification => NamedElement::qualifiedName
   --  InstanceValue => NamedElement::qualifiedName
   --  Interaction => NamedElement::qualifiedName
   --  InteractionConstraint => NamedElement::qualifiedName
   --  InteractionOperand => NamedElement::qualifiedName
   --  InteractionUse => NamedElement::qualifiedName
   --  Interface => NamedElement::qualifiedName
   --  InterfaceRealization => NamedElement::qualifiedName
   --  InterruptibleActivityRegion => NamedElement::qualifiedName
   --  Interval => NamedElement::qualifiedName
   --  IntervalConstraint => NamedElement::qualifiedName
   --  JoinNode => NamedElement::qualifiedName
   --  Lifeline => NamedElement::qualifiedName
   --  LiteralBoolean => NamedElement::qualifiedName
   --  LiteralInteger => NamedElement::qualifiedName
   --  LiteralNull => NamedElement::qualifiedName
   --  LiteralReal => NamedElement::qualifiedName
   --  LiteralString => NamedElement::qualifiedName
   --  LiteralUnlimitedNatural => NamedElement::qualifiedName
   --  LoopNode => NamedElement::qualifiedName
   --  Manifestation => NamedElement::qualifiedName
   --  MergeNode => NamedElement::qualifiedName
   --  Message => NamedElement::qualifiedName
   --  MessageOccurrenceSpecification => NamedElement::qualifiedName
   --  Model => NamedElement::qualifiedName
   --  Node => NamedElement::qualifiedName
   --  ObjectFlow => NamedElement::qualifiedName
   --  OccurrenceSpecification => NamedElement::qualifiedName
   --  OpaqueAction => NamedElement::qualifiedName
   --  OpaqueBehavior => NamedElement::qualifiedName
   --  OpaqueExpression => NamedElement::qualifiedName
   --  Operation => NamedElement::qualifiedName
   --  OutputPin => NamedElement::qualifiedName
   --  Package => NamedElement::qualifiedName
   --  Parameter => NamedElement::qualifiedName
   --  ParameterSet => NamedElement::qualifiedName
   --  PartDecomposition => NamedElement::qualifiedName
   --  Port => NamedElement::qualifiedName
   --  PrimitiveType => NamedElement::qualifiedName
   --  Profile => NamedElement::qualifiedName
   --  Property => NamedElement::qualifiedName
   --  ProtocolStateMachine => NamedElement::qualifiedName
   --  ProtocolTransition => NamedElement::qualifiedName
   --  Pseudostate => NamedElement::qualifiedName
   --  RaiseExceptionAction => NamedElement::qualifiedName
   --  ReadExtentAction => NamedElement::qualifiedName
   --  ReadIsClassifiedObjectAction => NamedElement::qualifiedName
   --  ReadLinkAction => NamedElement::qualifiedName
   --  ReadLinkObjectEndAction => NamedElement::qualifiedName
   --  ReadLinkObjectEndQualifierAction => NamedElement::qualifiedName
   --  ReadSelfAction => NamedElement::qualifiedName
   --  ReadStructuralFeatureAction => NamedElement::qualifiedName
   --  ReadVariableAction => NamedElement::qualifiedName
   --  Realization => NamedElement::qualifiedName
   --  Reception => NamedElement::qualifiedName
   --  ReclassifyObjectAction => NamedElement::qualifiedName
   --  RedefinableTemplateSignature => NamedElement::qualifiedName
   --  ReduceAction => NamedElement::qualifiedName
   --  Region => NamedElement::qualifiedName
   --  RemoveStructuralFeatureValueAction => NamedElement::qualifiedName
   --  RemoveVariableValueAction => NamedElement::qualifiedName
   --  ReplyAction => NamedElement::qualifiedName
   --  SendObjectAction => NamedElement::qualifiedName
   --  SendSignalAction => NamedElement::qualifiedName
   --  SequenceNode => NamedElement::qualifiedName
   --  Signal => NamedElement::qualifiedName
   --  SignalEvent => NamedElement::qualifiedName
   --  StartClassifierBehaviorAction => NamedElement::qualifiedName
   --  StartObjectBehaviorAction => NamedElement::qualifiedName
   --  State => NamedElement::qualifiedName
   --  StateInvariant => NamedElement::qualifiedName
   --  StateMachine => NamedElement::qualifiedName
   --  Stereotype => NamedElement::qualifiedName
   --  StringExpression => NamedElement::qualifiedName
   --  StructuredActivityNode => NamedElement::qualifiedName
   --  Substitution => NamedElement::qualifiedName
   --  TestIdentityAction => NamedElement::qualifiedName
   --  TimeConstraint => NamedElement::qualifiedName
   --  TimeEvent => NamedElement::qualifiedName
   --  TimeExpression => NamedElement::qualifiedName
   --  TimeInterval => NamedElement::qualifiedName
   --  TimeObservation => NamedElement::qualifiedName
   --  Transition => NamedElement::qualifiedName
   --  Trigger => NamedElement::qualifiedName
   --  UnmarshallAction => NamedElement::qualifiedName
   --  Usage => NamedElement::qualifiedName
   --  UseCase => NamedElement::qualifiedName
   --  ValuePin => NamedElement::qualifiedName
   --  ValueSpecificationAction => NamedElement::qualifiedName
   --  Variable => NamedElement::qualifiedName

   function Internal_Get_Qualifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ExtensionEnd => Property::qualifier
   --  LinkEndCreationData => LinkEndData::qualifier
   --  LinkEndData => LinkEndData::qualifier
   --  LinkEndDestructionData => LinkEndData::qualifier
   --  Port => Property::qualifier
   --  Property => Property::qualifier

   function Internal_Get_Qualifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Qualifier
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  QualifierValue => QualifierValue::qualifier
   --  ReadLinkObjectEndQualifierAction => ReadLinkObjectEndQualifierAction::qualifier

   function Internal_Get_Raised_Exception
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Operation => BehavioralFeature::raisedException
   --  Reception => BehavioralFeature::raisedException

   function Internal_Get_Realization
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Component => Component::realization
   --  InformationFlow => InformationFlow::realization

   function Internal_Get_Realizing_Activity_Edge
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  InformationFlow => InformationFlow::realizingActivityEdge

   function Internal_Get_Realizing_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ComponentRealization => ComponentRealization::realizingClassifier

   function Internal_Get_Realizing_Connector
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  InformationFlow => InformationFlow::realizingConnector

   function Internal_Get_Realizing_Message
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  InformationFlow => InformationFlow::realizingMessage

   function Internal_Get_Receive_Event
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Receive_Event
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Message => Message::receiveEvent

   function Internal_Get_Receiving_Package
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Receiving_Package
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  PackageMerge => PackageMerge::receivingPackage

   function Internal_Get_Redefined_Behavior
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Behavior::redefinedBehavior
   --  FunctionBehavior => Behavior::redefinedBehavior
   --  Interaction => Behavior::redefinedBehavior
   --  OpaqueBehavior => Behavior::redefinedBehavior
   --  ProtocolStateMachine => Behavior::redefinedBehavior
   --  StateMachine => Behavior::redefinedBehavior

   function Internal_Get_Redefined_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Classifier::redefinedClassifier
   --  Actor => Classifier::redefinedClassifier
   --  Artifact => Classifier::redefinedClassifier
   --  Association => Classifier::redefinedClassifier
   --  AssociationClass => Classifier::redefinedClassifier
   --  Class => Classifier::redefinedClassifier
   --  Collaboration => Classifier::redefinedClassifier
   --  CommunicationPath => Classifier::redefinedClassifier
   --  Component => Classifier::redefinedClassifier
   --  DataType => Classifier::redefinedClassifier
   --  DeploymentSpecification => Classifier::redefinedClassifier
   --  Device => Classifier::redefinedClassifier
   --  Enumeration => Classifier::redefinedClassifier
   --  ExecutionEnvironment => Classifier::redefinedClassifier
   --  Extension => Classifier::redefinedClassifier
   --  FunctionBehavior => Classifier::redefinedClassifier
   --  InformationItem => Classifier::redefinedClassifier
   --  Interaction => Classifier::redefinedClassifier
   --  Interface => Classifier::redefinedClassifier
   --  Node => Classifier::redefinedClassifier
   --  OpaqueBehavior => Classifier::redefinedClassifier
   --  PrimitiveType => Classifier::redefinedClassifier
   --  ProtocolStateMachine => Classifier::redefinedClassifier
   --  Signal => Classifier::redefinedClassifier
   --  StateMachine => Classifier::redefinedClassifier
   --  Stereotype => Classifier::redefinedClassifier
   --  UseCase => Classifier::redefinedClassifier

   function Internal_Get_Redefined_Connector
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Connector => Connector::redefinedConnector

   function Internal_Get_Redefined_Edge
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ControlFlow => ActivityEdge::redefinedEdge
   --  ObjectFlow => ActivityEdge::redefinedEdge

   function Internal_Get_Redefined_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AcceptCallAction => RedefinableElement::redefinedElement
   --  AcceptEventAction => RedefinableElement::redefinedElement
   --  ActionInputPin => RedefinableElement::redefinedElement
   --  Activity => RedefinableElement::redefinedElement
   --  ActivityFinalNode => RedefinableElement::redefinedElement
   --  ActivityParameterNode => RedefinableElement::redefinedElement
   --  Actor => RedefinableElement::redefinedElement
   --  AddStructuralFeatureValueAction => RedefinableElement::redefinedElement
   --  AddVariableValueAction => RedefinableElement::redefinedElement
   --  Artifact => RedefinableElement::redefinedElement
   --  Association => RedefinableElement::redefinedElement
   --  AssociationClass => RedefinableElement::redefinedElement
   --  BroadcastSignalAction => RedefinableElement::redefinedElement
   --  CallBehaviorAction => RedefinableElement::redefinedElement
   --  CallOperationAction => RedefinableElement::redefinedElement
   --  CentralBufferNode => RedefinableElement::redefinedElement
   --  Class => RedefinableElement::redefinedElement
   --  ClearAssociationAction => RedefinableElement::redefinedElement
   --  ClearStructuralFeatureAction => RedefinableElement::redefinedElement
   --  ClearVariableAction => RedefinableElement::redefinedElement
   --  Collaboration => RedefinableElement::redefinedElement
   --  CommunicationPath => RedefinableElement::redefinedElement
   --  Component => RedefinableElement::redefinedElement
   --  ConditionalNode => RedefinableElement::redefinedElement
   --  Connector => RedefinableElement::redefinedElement
   --  ControlFlow => RedefinableElement::redefinedElement
   --  CreateLinkAction => RedefinableElement::redefinedElement
   --  CreateLinkObjectAction => RedefinableElement::redefinedElement
   --  CreateObjectAction => RedefinableElement::redefinedElement
   --  DataStoreNode => RedefinableElement::redefinedElement
   --  DataType => RedefinableElement::redefinedElement
   --  DecisionNode => RedefinableElement::redefinedElement
   --  DeploymentSpecification => RedefinableElement::redefinedElement
   --  DestroyLinkAction => RedefinableElement::redefinedElement
   --  DestroyObjectAction => RedefinableElement::redefinedElement
   --  Device => RedefinableElement::redefinedElement
   --  Enumeration => RedefinableElement::redefinedElement
   --  ExecutionEnvironment => RedefinableElement::redefinedElement
   --  ExpansionNode => RedefinableElement::redefinedElement
   --  ExpansionRegion => RedefinableElement::redefinedElement
   --  Extension => RedefinableElement::redefinedElement
   --  ExtensionEnd => RedefinableElement::redefinedElement
   --  ExtensionPoint => RedefinableElement::redefinedElement
   --  FinalState => RedefinableElement::redefinedElement
   --  FlowFinalNode => RedefinableElement::redefinedElement
   --  ForkNode => RedefinableElement::redefinedElement
   --  FunctionBehavior => RedefinableElement::redefinedElement
   --  InformationItem => RedefinableElement::redefinedElement
   --  InitialNode => RedefinableElement::redefinedElement
   --  InputPin => RedefinableElement::redefinedElement
   --  Interaction => RedefinableElement::redefinedElement
   --  Interface => RedefinableElement::redefinedElement
   --  JoinNode => RedefinableElement::redefinedElement
   --  LoopNode => RedefinableElement::redefinedElement
   --  MergeNode => RedefinableElement::redefinedElement
   --  Node => RedefinableElement::redefinedElement
   --  ObjectFlow => RedefinableElement::redefinedElement
   --  OpaqueAction => RedefinableElement::redefinedElement
   --  OpaqueBehavior => RedefinableElement::redefinedElement
   --  Operation => RedefinableElement::redefinedElement
   --  OutputPin => RedefinableElement::redefinedElement
   --  Port => RedefinableElement::redefinedElement
   --  PrimitiveType => RedefinableElement::redefinedElement
   --  Property => RedefinableElement::redefinedElement
   --  ProtocolStateMachine => RedefinableElement::redefinedElement
   --  ProtocolTransition => RedefinableElement::redefinedElement
   --  RaiseExceptionAction => RedefinableElement::redefinedElement
   --  ReadExtentAction => RedefinableElement::redefinedElement
   --  ReadIsClassifiedObjectAction => RedefinableElement::redefinedElement
   --  ReadLinkAction => RedefinableElement::redefinedElement
   --  ReadLinkObjectEndAction => RedefinableElement::redefinedElement
   --  ReadLinkObjectEndQualifierAction => RedefinableElement::redefinedElement
   --  ReadSelfAction => RedefinableElement::redefinedElement
   --  ReadStructuralFeatureAction => RedefinableElement::redefinedElement
   --  ReadVariableAction => RedefinableElement::redefinedElement
   --  Reception => RedefinableElement::redefinedElement
   --  ReclassifyObjectAction => RedefinableElement::redefinedElement
   --  RedefinableTemplateSignature => RedefinableElement::redefinedElement
   --  ReduceAction => RedefinableElement::redefinedElement
   --  Region => RedefinableElement::redefinedElement
   --  RemoveStructuralFeatureValueAction => RedefinableElement::redefinedElement
   --  RemoveVariableValueAction => RedefinableElement::redefinedElement
   --  ReplyAction => RedefinableElement::redefinedElement
   --  SendObjectAction => RedefinableElement::redefinedElement
   --  SendSignalAction => RedefinableElement::redefinedElement
   --  SequenceNode => RedefinableElement::redefinedElement
   --  Signal => RedefinableElement::redefinedElement
   --  StartClassifierBehaviorAction => RedefinableElement::redefinedElement
   --  StartObjectBehaviorAction => RedefinableElement::redefinedElement
   --  State => RedefinableElement::redefinedElement
   --  StateMachine => RedefinableElement::redefinedElement
   --  Stereotype => RedefinableElement::redefinedElement
   --  StructuredActivityNode => RedefinableElement::redefinedElement
   --  TestIdentityAction => RedefinableElement::redefinedElement
   --  Transition => RedefinableElement::redefinedElement
   --  UnmarshallAction => RedefinableElement::redefinedElement
   --  UseCase => RedefinableElement::redefinedElement
   --  ValuePin => RedefinableElement::redefinedElement
   --  ValueSpecificationAction => RedefinableElement::redefinedElement

   function Internal_Get_Redefined_Interface
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Interface => Interface::redefinedInterface

   function Internal_Get_Redefined_Node
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AcceptCallAction => ActivityNode::redefinedNode
   --  AcceptEventAction => ActivityNode::redefinedNode
   --  ActionInputPin => ActivityNode::redefinedNode
   --  ActivityFinalNode => ActivityNode::redefinedNode
   --  ActivityParameterNode => ActivityNode::redefinedNode
   --  AddStructuralFeatureValueAction => ActivityNode::redefinedNode
   --  AddVariableValueAction => ActivityNode::redefinedNode
   --  BroadcastSignalAction => ActivityNode::redefinedNode
   --  CallBehaviorAction => ActivityNode::redefinedNode
   --  CallOperationAction => ActivityNode::redefinedNode
   --  CentralBufferNode => ActivityNode::redefinedNode
   --  ClearAssociationAction => ActivityNode::redefinedNode
   --  ClearStructuralFeatureAction => ActivityNode::redefinedNode
   --  ClearVariableAction => ActivityNode::redefinedNode
   --  ConditionalNode => ActivityNode::redefinedNode
   --  CreateLinkAction => ActivityNode::redefinedNode
   --  CreateLinkObjectAction => ActivityNode::redefinedNode
   --  CreateObjectAction => ActivityNode::redefinedNode
   --  DataStoreNode => ActivityNode::redefinedNode
   --  DecisionNode => ActivityNode::redefinedNode
   --  DestroyLinkAction => ActivityNode::redefinedNode
   --  DestroyObjectAction => ActivityNode::redefinedNode
   --  ExpansionNode => ActivityNode::redefinedNode
   --  ExpansionRegion => ActivityNode::redefinedNode
   --  FlowFinalNode => ActivityNode::redefinedNode
   --  ForkNode => ActivityNode::redefinedNode
   --  InitialNode => ActivityNode::redefinedNode
   --  InputPin => ActivityNode::redefinedNode
   --  JoinNode => ActivityNode::redefinedNode
   --  LoopNode => ActivityNode::redefinedNode
   --  MergeNode => ActivityNode::redefinedNode
   --  OpaqueAction => ActivityNode::redefinedNode
   --  OutputPin => ActivityNode::redefinedNode
   --  RaiseExceptionAction => ActivityNode::redefinedNode
   --  ReadExtentAction => ActivityNode::redefinedNode
   --  ReadIsClassifiedObjectAction => ActivityNode::redefinedNode
   --  ReadLinkAction => ActivityNode::redefinedNode
   --  ReadLinkObjectEndAction => ActivityNode::redefinedNode
   --  ReadLinkObjectEndQualifierAction => ActivityNode::redefinedNode
   --  ReadSelfAction => ActivityNode::redefinedNode
   --  ReadStructuralFeatureAction => ActivityNode::redefinedNode
   --  ReadVariableAction => ActivityNode::redefinedNode
   --  ReclassifyObjectAction => ActivityNode::redefinedNode
   --  ReduceAction => ActivityNode::redefinedNode
   --  RemoveStructuralFeatureValueAction => ActivityNode::redefinedNode
   --  RemoveVariableValueAction => ActivityNode::redefinedNode
   --  ReplyAction => ActivityNode::redefinedNode
   --  SendObjectAction => ActivityNode::redefinedNode
   --  SendSignalAction => ActivityNode::redefinedNode
   --  SequenceNode => ActivityNode::redefinedNode
   --  StartClassifierBehaviorAction => ActivityNode::redefinedNode
   --  StartObjectBehaviorAction => ActivityNode::redefinedNode
   --  StructuredActivityNode => ActivityNode::redefinedNode
   --  TestIdentityAction => ActivityNode::redefinedNode
   --  UnmarshallAction => ActivityNode::redefinedNode
   --  ValuePin => ActivityNode::redefinedNode
   --  ValueSpecificationAction => ActivityNode::redefinedNode

   function Internal_Get_Redefined_Operation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Operation => Operation::redefinedOperation

   function Internal_Get_Redefined_Port
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Port => Port::redefinedPort

   function Internal_Get_Redefined_Property
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ExtensionEnd => Property::redefinedProperty
   --  Port => Property::redefinedProperty
   --  Property => Property::redefinedProperty

   function Internal_Get_Redefined_State
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Redefined_State
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  FinalState => State::redefinedState
   --  State => State::redefinedState

   function Internal_Get_Redefined_Transition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Redefined_Transition
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ProtocolTransition => Transition::redefinedTransition
   --  Transition => Transition::redefinedTransition

   function Internal_Get_Redefinition_Context
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AcceptCallAction => RedefinableElement::redefinitionContext
   --  AcceptEventAction => RedefinableElement::redefinitionContext
   --  ActionInputPin => RedefinableElement::redefinitionContext
   --  Activity => RedefinableElement::redefinitionContext
   --  ActivityFinalNode => RedefinableElement::redefinitionContext
   --  ActivityParameterNode => RedefinableElement::redefinitionContext
   --  Actor => RedefinableElement::redefinitionContext
   --  AddStructuralFeatureValueAction => RedefinableElement::redefinitionContext
   --  AddVariableValueAction => RedefinableElement::redefinitionContext
   --  Artifact => RedefinableElement::redefinitionContext
   --  Association => RedefinableElement::redefinitionContext
   --  AssociationClass => RedefinableElement::redefinitionContext
   --  BroadcastSignalAction => RedefinableElement::redefinitionContext
   --  CallBehaviorAction => RedefinableElement::redefinitionContext
   --  CallOperationAction => RedefinableElement::redefinitionContext
   --  CentralBufferNode => RedefinableElement::redefinitionContext
   --  Class => RedefinableElement::redefinitionContext
   --  ClearAssociationAction => RedefinableElement::redefinitionContext
   --  ClearStructuralFeatureAction => RedefinableElement::redefinitionContext
   --  ClearVariableAction => RedefinableElement::redefinitionContext
   --  Collaboration => RedefinableElement::redefinitionContext
   --  CommunicationPath => RedefinableElement::redefinitionContext
   --  Component => RedefinableElement::redefinitionContext
   --  ConditionalNode => RedefinableElement::redefinitionContext
   --  Connector => RedefinableElement::redefinitionContext
   --  ControlFlow => RedefinableElement::redefinitionContext
   --  CreateLinkAction => RedefinableElement::redefinitionContext
   --  CreateLinkObjectAction => RedefinableElement::redefinitionContext
   --  CreateObjectAction => RedefinableElement::redefinitionContext
   --  DataStoreNode => RedefinableElement::redefinitionContext
   --  DataType => RedefinableElement::redefinitionContext
   --  DecisionNode => RedefinableElement::redefinitionContext
   --  DeploymentSpecification => RedefinableElement::redefinitionContext
   --  DestroyLinkAction => RedefinableElement::redefinitionContext
   --  DestroyObjectAction => RedefinableElement::redefinitionContext
   --  Device => RedefinableElement::redefinitionContext
   --  Enumeration => RedefinableElement::redefinitionContext
   --  ExecutionEnvironment => RedefinableElement::redefinitionContext
   --  ExpansionNode => RedefinableElement::redefinitionContext
   --  ExpansionRegion => RedefinableElement::redefinitionContext
   --  Extension => RedefinableElement::redefinitionContext
   --  ExtensionEnd => RedefinableElement::redefinitionContext
   --  ExtensionPoint => RedefinableElement::redefinitionContext
   --  FinalState => RedefinableElement::redefinitionContext
   --  FlowFinalNode => RedefinableElement::redefinitionContext
   --  ForkNode => RedefinableElement::redefinitionContext
   --  FunctionBehavior => RedefinableElement::redefinitionContext
   --  InformationItem => RedefinableElement::redefinitionContext
   --  InitialNode => RedefinableElement::redefinitionContext
   --  InputPin => RedefinableElement::redefinitionContext
   --  Interaction => RedefinableElement::redefinitionContext
   --  Interface => RedefinableElement::redefinitionContext
   --  JoinNode => RedefinableElement::redefinitionContext
   --  LoopNode => RedefinableElement::redefinitionContext
   --  MergeNode => RedefinableElement::redefinitionContext
   --  Node => RedefinableElement::redefinitionContext
   --  ObjectFlow => RedefinableElement::redefinitionContext
   --  OpaqueAction => RedefinableElement::redefinitionContext
   --  OpaqueBehavior => RedefinableElement::redefinitionContext
   --  Operation => RedefinableElement::redefinitionContext
   --  OutputPin => RedefinableElement::redefinitionContext
   --  Port => RedefinableElement::redefinitionContext
   --  PrimitiveType => RedefinableElement::redefinitionContext
   --  Property => RedefinableElement::redefinitionContext
   --  ProtocolStateMachine => RedefinableElement::redefinitionContext
   --  ProtocolTransition => RedefinableElement::redefinitionContext
   --  RaiseExceptionAction => RedefinableElement::redefinitionContext
   --  ReadExtentAction => RedefinableElement::redefinitionContext
   --  ReadIsClassifiedObjectAction => RedefinableElement::redefinitionContext
   --  ReadLinkAction => RedefinableElement::redefinitionContext
   --  ReadLinkObjectEndAction => RedefinableElement::redefinitionContext
   --  ReadLinkObjectEndQualifierAction => RedefinableElement::redefinitionContext
   --  ReadSelfAction => RedefinableElement::redefinitionContext
   --  ReadStructuralFeatureAction => RedefinableElement::redefinitionContext
   --  ReadVariableAction => RedefinableElement::redefinitionContext
   --  Reception => RedefinableElement::redefinitionContext
   --  ReclassifyObjectAction => RedefinableElement::redefinitionContext
   --  RedefinableTemplateSignature => RedefinableElement::redefinitionContext
   --  ReduceAction => RedefinableElement::redefinitionContext
   --  Region => RedefinableElement::redefinitionContext
   --  RemoveStructuralFeatureValueAction => RedefinableElement::redefinitionContext
   --  RemoveVariableValueAction => RedefinableElement::redefinitionContext
   --  ReplyAction => RedefinableElement::redefinitionContext
   --  SendObjectAction => RedefinableElement::redefinitionContext
   --  SendSignalAction => RedefinableElement::redefinitionContext
   --  SequenceNode => RedefinableElement::redefinitionContext
   --  Signal => RedefinableElement::redefinitionContext
   --  StartClassifierBehaviorAction => RedefinableElement::redefinitionContext
   --  StartObjectBehaviorAction => RedefinableElement::redefinitionContext
   --  State => RedefinableElement::redefinitionContext
   --  StateMachine => RedefinableElement::redefinitionContext
   --  Stereotype => RedefinableElement::redefinitionContext
   --  StructuredActivityNode => RedefinableElement::redefinitionContext
   --  TestIdentityAction => RedefinableElement::redefinitionContext
   --  Transition => RedefinableElement::redefinitionContext
   --  UnmarshallAction => RedefinableElement::redefinitionContext
   --  UseCase => RedefinableElement::redefinitionContext
   --  ValuePin => RedefinableElement::redefinitionContext
   --  ValueSpecificationAction => RedefinableElement::redefinitionContext

   function Internal_Get_Reducer
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Reducer
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ReduceAction => ReduceAction::reducer

   function Internal_Get_Referred
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ProtocolTransition => ProtocolTransition::referred

   function Internal_Get_Refers_To
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Refers_To
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  InteractionUse => InteractionUse::refersTo
   --  PartDecomposition => InteractionUse::refersTo

   function Internal_Get_Region
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  FinalState => State::region
   --  ProtocolStateMachine => StateMachine::region
   --  State => State::region
   --  StateMachine => StateMachine::region

   function Internal_Get_Region_As_Input
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Region_As_Input
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ExpansionNode => ExpansionNode::regionAsInput

   function Internal_Get_Region_As_Output
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Region_As_Output
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ExpansionNode => ExpansionNode::regionAsOutput

   function Internal_Get_Related_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Abstraction => Relationship::relatedElement
   --  Association => Relationship::relatedElement
   --  AssociationClass => Relationship::relatedElement
   --  CommunicationPath => Relationship::relatedElement
   --  ComponentRealization => Relationship::relatedElement
   --  Dependency => Relationship::relatedElement
   --  Deployment => Relationship::relatedElement
   --  ElementImport => Relationship::relatedElement
   --  Extend => Relationship::relatedElement
   --  Extension => Relationship::relatedElement
   --  Generalization => Relationship::relatedElement
   --  Include => Relationship::relatedElement
   --  InformationFlow => Relationship::relatedElement
   --  InterfaceRealization => Relationship::relatedElement
   --  Manifestation => Relationship::relatedElement
   --  PackageImport => Relationship::relatedElement
   --  PackageMerge => Relationship::relatedElement
   --  ProfileApplication => Relationship::relatedElement
   --  ProtocolConformance => Relationship::relatedElement
   --  Realization => Relationship::relatedElement
   --  Substitution => Relationship::relatedElement
   --  TemplateBinding => Relationship::relatedElement
   --  Usage => Relationship::relatedElement

   function Internal_Get_Remove_At
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Remove_At
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  RemoveStructuralFeatureValueAction => RemoveStructuralFeatureValueAction::removeAt
   --  RemoveVariableValueAction => RemoveVariableValueAction::removeAt

   function Internal_Get_Reply_To_Call
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Reply_To_Call
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ReplyAction => ReplyAction::replyToCall

   function Internal_Get_Reply_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ReplyAction => ReplyAction::replyValue

   function Internal_Get_Representation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Representation
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Activity => Classifier::representation
   --  Actor => Classifier::representation
   --  Artifact => Classifier::representation
   --  Association => Classifier::representation
   --  AssociationClass => Classifier::representation
   --  Class => Classifier::representation
   --  Collaboration => Classifier::representation
   --  CommunicationPath => Classifier::representation
   --  Component => Classifier::representation
   --  DataType => Classifier::representation
   --  DeploymentSpecification => Classifier::representation
   --  Device => Classifier::representation
   --  Enumeration => Classifier::representation
   --  ExecutionEnvironment => Classifier::representation
   --  Extension => Classifier::representation
   --  FunctionBehavior => Classifier::representation
   --  InformationItem => Classifier::representation
   --  Interaction => Classifier::representation
   --  Interface => Classifier::representation
   --  Node => Classifier::representation
   --  OpaqueBehavior => Classifier::representation
   --  PrimitiveType => Classifier::representation
   --  ProtocolStateMachine => Classifier::representation
   --  Signal => Classifier::representation
   --  StateMachine => Classifier::representation
   --  Stereotype => Classifier::representation
   --  UseCase => Classifier::representation

   function Internal_Get_Represented
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  InformationItem => InformationItem::represented

   function Internal_Get_Represents
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Represents
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ActivityPartition => ActivityPartition::represents
   --  Lifeline => Lifeline::represents

   function Internal_Get_Request
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  SendObjectAction => SendObjectAction::request

   function Internal_Get_Required
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Component => Component::required
   --  Port => Port::required

   function Internal_Get_Resolution
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real;
   procedure Internal_Set_Resolution
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real);
   --  UMLActivityDiagram => Diagram::resolution
   --  UMLClassDiagram => Diagram::resolution
   --  UMLComponentDiagram => Diagram::resolution
   --  UMLCompositeStructureDiagram => Diagram::resolution
   --  UMLDeploymentDiagram => Diagram::resolution
   --  UMLInteractionDiagram => Diagram::resolution
   --  UMLObjectDiagram => Diagram::resolution
   --  UMLPackageDiagram => Diagram::resolution
   --  UMLProfileDiagram => Diagram::resolution
   --  UMLStateMachineDiagram => Diagram::resolution
   --  UMLUseCaseDiagram => Diagram::resolution

   function Internal_Get_Result
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AcceptCallAction => AcceptEventAction::result
   --  AcceptEventAction => AcceptEventAction::result
   --  CallBehaviorAction => CallAction::result
   --  CallOperationAction => CallAction::result
   --  ConditionalNode => ConditionalNode::result
   --  LoopNode => LoopNode::result
   --  StartObjectBehaviorAction => CallAction::result
   --  UnmarshallAction => UnmarshallAction::result

   function Internal_Get_Result
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Result
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  AddStructuralFeatureValueAction => WriteStructuralFeatureAction::result
   --  ClearStructuralFeatureAction => ClearStructuralFeatureAction::result
   --  CreateLinkObjectAction => CreateLinkObjectAction::result
   --  CreateObjectAction => CreateObjectAction::result
   --  OpaqueExpression => OpaqueExpression::result
   --  ReadExtentAction => ReadExtentAction::result
   --  ReadIsClassifiedObjectAction => ReadIsClassifiedObjectAction::result
   --  ReadLinkAction => ReadLinkAction::result
   --  ReadLinkObjectEndAction => ReadLinkObjectEndAction::result
   --  ReadLinkObjectEndQualifierAction => ReadLinkObjectEndQualifierAction::result
   --  ReadSelfAction => ReadSelfAction::result
   --  ReadStructuralFeatureAction => ReadStructuralFeatureAction::result
   --  ReadVariableAction => ReadVariableAction::result
   --  ReduceAction => ReduceAction::result
   --  RemoveStructuralFeatureValueAction => WriteStructuralFeatureAction::result
   --  TestIdentityAction => TestIdentityAction::result
   --  ValueSpecificationAction => ValueSpecificationAction::result

   function Internal_Get_Return_Information
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Return_Information
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  AcceptCallAction => AcceptCallAction::returnInformation
   --  ReplyAction => ReplyAction::returnInformation

   function Internal_Get_Return_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Return_Value
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  InteractionUse => InteractionUse::returnValue
   --  PartDecomposition => InteractionUse::returnValue

   function Internal_Get_Return_Value_Recipient
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Return_Value_Recipient
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  InteractionUse => InteractionUse::returnValueRecipient
   --  PartDecomposition => InteractionUse::returnValueRecipient

   function Internal_Get_Role
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Role
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ConnectorEnd => ConnectorEnd::role

   function Internal_Get_Role
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => StructuredClassifier::role
   --  AssociationClass => StructuredClassifier::role
   --  Class => StructuredClassifier::role
   --  Collaboration => StructuredClassifier::role
   --  Component => StructuredClassifier::role
   --  Device => StructuredClassifier::role
   --  ExecutionEnvironment => StructuredClassifier::role
   --  FunctionBehavior => StructuredClassifier::role
   --  Interaction => StructuredClassifier::role
   --  Node => StructuredClassifier::role
   --  OpaqueBehavior => StructuredClassifier::role
   --  ProtocolStateMachine => StructuredClassifier::role
   --  StateMachine => StructuredClassifier::role
   --  Stereotype => StructuredClassifier::role

   function Internal_Get_Role_Binding
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  CollaborationUse => CollaborationUse::roleBinding

   function Internal_Get_Scope
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Scope
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Variable => Variable::scope

   function Internal_Get_Second
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Second
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  TestIdentityAction => TestIdentityAction::second

   function Internal_Get_Selection
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Selection
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ActionInputPin => ObjectNode::selection
   --  ActivityParameterNode => ObjectNode::selection
   --  CentralBufferNode => ObjectNode::selection
   --  DataStoreNode => ObjectNode::selection
   --  ExpansionNode => ObjectNode::selection
   --  InputPin => ObjectNode::selection
   --  ObjectFlow => ObjectFlow::selection
   --  OutputPin => ObjectNode::selection
   --  ValuePin => ObjectNode::selection

   function Internal_Get_Selector
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Selector
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Lifeline => Lifeline::selector

   function Internal_Get_Send_Event
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Send_Event
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Message => Message::sendEvent

   function Internal_Get_Setting
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Setting
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  Continuation => Continuation::setting

   function Internal_Get_Setup_Part
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  LoopNode => LoopNode::setupPart

   function Internal_Get_Shared_Style
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Shared_Style
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  UMLActivityDiagram => UMLDiagramElement::sharedStyle
   --  UMLAssociationEndLabel => UMLDiagramElement::sharedStyle
   --  UMLAssociationOrConnectorOrLinkShape => UMLDiagramElement::sharedStyle
   --  UMLClassDiagram => UMLDiagramElement::sharedStyle
   --  UMLClassifierShape => UMLDiagramElement::sharedStyle
   --  UMLCompartment => UMLDiagramElement::sharedStyle
   --  UMLCompartmentableShape => UMLDiagramElement::sharedStyle
   --  UMLComponentDiagram => UMLDiagramElement::sharedStyle
   --  UMLCompositeStructureDiagram => UMLDiagramElement::sharedStyle
   --  UMLDeploymentDiagram => UMLDiagramElement::sharedStyle
   --  UMLEdge => UMLDiagramElement::sharedStyle
   --  UMLInteractionDiagram => UMLDiagramElement::sharedStyle
   --  UMLInteractionTableLabel => UMLDiagramElement::sharedStyle
   --  UMLKeywordLabel => UMLDiagramElement::sharedStyle
   --  UMLLabel => UMLDiagramElement::sharedStyle
   --  UMLMultiplicityLabel => UMLDiagramElement::sharedStyle
   --  UMLNameLabel => UMLDiagramElement::sharedStyle
   --  UMLObjectDiagram => UMLDiagramElement::sharedStyle
   --  UMLPackageDiagram => UMLDiagramElement::sharedStyle
   --  UMLProfileDiagram => UMLDiagramElement::sharedStyle
   --  UMLRedefinesLabel => UMLDiagramElement::sharedStyle
   --  UMLShape => UMLDiagramElement::sharedStyle
   --  UMLStateMachineDiagram => UMLDiagramElement::sharedStyle
   --  UMLStateShape => UMLDiagramElement::sharedStyle
   --  UMLStereotypePropertyValueLabel => UMLDiagramElement::sharedStyle
   --  UMLTypedElementLabel => UMLDiagramElement::sharedStyle
   --  UMLUseCaseDiagram => UMLDiagramElement::sharedStyle

   function Internal_Get_Signal
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Signal
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  BroadcastSignalAction => BroadcastSignalAction::signal
   --  Reception => Reception::signal
   --  SendSignalAction => SendSignalAction::signal
   --  SignalEvent => SignalEvent::signal

   function Internal_Get_Signature
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Signature
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ClassifierTemplateParameter => TemplateParameter::signature
   --  ConnectableElementTemplateParameter => TemplateParameter::signature
   --  Message => Message::signature
   --  OperationTemplateParameter => TemplateParameter::signature
   --  TemplateBinding => TemplateBinding::signature
   --  TemplateParameter => TemplateParameter::signature

   function Internal_Get_Slot
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  EnumerationLiteral => InstanceSpecification::slot
   --  InstanceSpecification => InstanceSpecification::slot

   function Internal_Get_Source
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Source
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ControlFlow => ActivityEdge::source
   --  UMLEdge => UMLEdge::source
   --  ObjectFlow => ActivityEdge::source
   --  ProtocolTransition => Transition::source
   --  Transition => Transition::source

   function Internal_Get_Source
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Abstraction => DirectedRelationship::source
   --  ComponentRealization => DirectedRelationship::source
   --  Dependency => DirectedRelationship::source
   --  Deployment => DirectedRelationship::source
   --  ElementImport => DirectedRelationship::source
   --  Extend => DirectedRelationship::source
   --  Generalization => DirectedRelationship::source
   --  Include => DirectedRelationship::source
   --  InformationFlow => DirectedRelationship::source
   --  InterfaceRealization => DirectedRelationship::source
   --  Manifestation => DirectedRelationship::source
   --  PackageImport => DirectedRelationship::source
   --  PackageMerge => DirectedRelationship::source
   --  ProfileApplication => DirectedRelationship::source
   --  ProtocolConformance => DirectedRelationship::source
   --  Realization => DirectedRelationship::source
   --  Substitution => DirectedRelationship::source
   --  TemplateBinding => DirectedRelationship::source
   --  Usage => DirectedRelationship::source

   function Internal_Get_Specific
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Specific
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Generalization => Generalization::specific

   function Internal_Get_Specific_Machine
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Specific_Machine
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ProtocolConformance => ProtocolConformance::specificMachine

   function Internal_Get_Specification
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Specification
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Activity => Behavior::specification
   --  Constraint => Constraint::specification
   --  DurationConstraint => Constraint::specification
   --  EnumerationLiteral => InstanceSpecification::specification
   --  FunctionBehavior => Behavior::specification
   --  InstanceSpecification => InstanceSpecification::specification
   --  Interaction => Behavior::specification
   --  InteractionConstraint => Constraint::specification
   --  IntervalConstraint => Constraint::specification
   --  OpaqueBehavior => Behavior::specification
   --  ProtocolStateMachine => Behavior::specification
   --  StateMachine => Behavior::specification
   --  TimeConstraint => Constraint::specification

   function Internal_Get_Start
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Start
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ActionExecutionSpecification => ExecutionSpecification::start
   --  BehaviorExecutionSpecification => ExecutionSpecification::start

   function Internal_Get_State
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_State
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ConnectionPointReference => ConnectionPointReference::state
   --  Pseudostate => Pseudostate::state
   --  Region => Region::state

   function Internal_Get_State_Invariant
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_State_Invariant
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  FinalState => State::stateInvariant
   --  State => State::stateInvariant

   function Internal_Get_State_Machine
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_State_Machine
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Pseudostate => Pseudostate::stateMachine
   --  Region => Region::stateMachine

   function Internal_Get_Stereotyped_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Stereotyped_Element
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  UMLStereotypePropertyValueLabel => UMLStereotypePropertyValueLabel::stereotypedElement

   function Internal_Get_Structural_Feature
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Structural_Feature
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  AddStructuralFeatureValueAction => StructuralFeatureAction::structuralFeature
   --  ClearStructuralFeatureAction => StructuralFeatureAction::structuralFeature
   --  ReadStructuralFeatureAction => StructuralFeatureAction::structuralFeature
   --  RemoveStructuralFeatureValueAction => StructuralFeatureAction::structuralFeature

   function Internal_Get_Structured_Node
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Activity::structuredNode

   function Internal_Get_Structured_Node_Input
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ConditionalNode => StructuredActivityNode::structuredNodeInput
   --  ExpansionRegion => StructuredActivityNode::structuredNodeInput
   --  LoopNode => StructuredActivityNode::structuredNodeInput
   --  SequenceNode => StructuredActivityNode::structuredNodeInput
   --  StructuredActivityNode => StructuredActivityNode::structuredNodeInput

   function Internal_Get_Structured_Node_Output
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ConditionalNode => StructuredActivityNode::structuredNodeOutput
   --  ExpansionRegion => StructuredActivityNode::structuredNodeOutput
   --  LoopNode => StructuredActivityNode::structuredNodeOutput
   --  SequenceNode => StructuredActivityNode::structuredNodeOutput
   --  StructuredActivityNode => StructuredActivityNode::structuredNodeOutput

   function Internal_Get_Sub_Expression
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  StringExpression => StringExpression::subExpression

   function Internal_Get_Subgroup
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ActivityPartition => ActivityGroup::subgroup
   --  ConditionalNode => ActivityGroup::subgroup
   --  ExpansionRegion => ActivityGroup::subgroup
   --  InterruptibleActivityRegion => ActivityGroup::subgroup
   --  LoopNode => ActivityGroup::subgroup
   --  SequenceNode => ActivityGroup::subgroup
   --  StructuredActivityNode => ActivityGroup::subgroup

   function Internal_Get_Subject
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  UseCase => UseCase::subject

   function Internal_Get_Submachine
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Submachine
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  FinalState => State::submachine
   --  State => State::submachine

   function Internal_Get_Submachine_State
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ProtocolStateMachine => StateMachine::submachineState
   --  StateMachine => StateMachine::submachineState

   function Internal_Get_Subpartition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ActivityPartition => ActivityPartition::subpartition

   function Internal_Get_Subsetted_Property
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  ExtensionEnd => Property::subsettedProperty
   --  Port => Property::subsettedProperty
   --  Property => Property::subsettedProperty

   function Internal_Get_Substituting_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Substituting_Classifier
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Substitution => Substitution::substitutingClassifier

   function Internal_Get_Substitution
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Classifier::substitution
   --  Actor => Classifier::substitution
   --  Artifact => Classifier::substitution
   --  Association => Classifier::substitution
   --  AssociationClass => Classifier::substitution
   --  Class => Classifier::substitution
   --  Collaboration => Classifier::substitution
   --  CommunicationPath => Classifier::substitution
   --  Component => Classifier::substitution
   --  DataType => Classifier::substitution
   --  DeploymentSpecification => Classifier::substitution
   --  Device => Classifier::substitution
   --  Enumeration => Classifier::substitution
   --  ExecutionEnvironment => Classifier::substitution
   --  Extension => Classifier::substitution
   --  FunctionBehavior => Classifier::substitution
   --  InformationItem => Classifier::substitution
   --  Interaction => Classifier::substitution
   --  Interface => Classifier::substitution
   --  Node => Classifier::substitution
   --  OpaqueBehavior => Classifier::substitution
   --  PrimitiveType => Classifier::substitution
   --  ProtocolStateMachine => Classifier::substitution
   --  Signal => Classifier::substitution
   --  StateMachine => Classifier::substitution
   --  Stereotype => Classifier::substitution
   --  UseCase => Classifier::substitution

   function Internal_Get_Subvertex
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Region => Region::subvertex

   function Internal_Get_Successor_Clause
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Clause => Clause::successorClause

   function Internal_Get_Super_Class
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Class::superClass
   --  AssociationClass => Class::superClass
   --  Class => Class::superClass
   --  Component => Class::superClass
   --  Device => Class::superClass
   --  ExecutionEnvironment => Class::superClass
   --  FunctionBehavior => Class::superClass
   --  Interaction => Class::superClass
   --  Node => Class::superClass
   --  OpaqueBehavior => Class::superClass
   --  ProtocolStateMachine => Class::superClass
   --  StateMachine => Class::superClass
   --  Stereotype => Class::superClass

   function Internal_Get_Super_Group
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   --  ActivityPartition => ActivityGroup::superGroup
   --  ConditionalNode => ActivityGroup::superGroup
   --  ExpansionRegion => ActivityGroup::superGroup
   --  InterruptibleActivityRegion => ActivityGroup::superGroup
   --  LoopNode => ActivityGroup::superGroup
   --  SequenceNode => ActivityGroup::superGroup
   --  StructuredActivityNode => ActivityGroup::superGroup

   function Internal_Get_Super_Partition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Super_Partition
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ActivityPartition => ActivityPartition::superPartition

   function Internal_Get_Supplier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Abstraction => Dependency::supplier
   --  ComponentRealization => Dependency::supplier
   --  Dependency => Dependency::supplier
   --  Deployment => Dependency::supplier
   --  InterfaceRealization => Dependency::supplier
   --  Manifestation => Dependency::supplier
   --  Realization => Dependency::supplier
   --  Substitution => Dependency::supplier
   --  Usage => Dependency::supplier

   function Internal_Get_Symbol
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Symbol
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  Expression => Expression::symbol
   --  StringExpression => Expression::symbol

   function Internal_Get_Target
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Target
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  CallOperationAction => CallOperationAction::target
   --  ControlFlow => ActivityEdge::target
   --  UMLEdge => UMLEdge::target
   --  DestroyObjectAction => DestroyObjectAction::target
   --  ObjectFlow => ActivityEdge::target
   --  ProtocolTransition => Transition::target
   --  SendObjectAction => SendObjectAction::target
   --  SendSignalAction => SendSignalAction::target
   --  Transition => Transition::target

   function Internal_Get_Target
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Abstraction => DirectedRelationship::target
   --  ComponentRealization => DirectedRelationship::target
   --  Dependency => DirectedRelationship::target
   --  Deployment => DirectedRelationship::target
   --  ElementImport => DirectedRelationship::target
   --  Extend => DirectedRelationship::target
   --  Generalization => DirectedRelationship::target
   --  Include => DirectedRelationship::target
   --  InformationFlow => DirectedRelationship::target
   --  InterfaceRealization => DirectedRelationship::target
   --  Manifestation => DirectedRelationship::target
   --  PackageImport => DirectedRelationship::target
   --  PackageMerge => DirectedRelationship::target
   --  ProfileApplication => DirectedRelationship::target
   --  ProtocolConformance => DirectedRelationship::target
   --  Realization => DirectedRelationship::target
   --  Substitution => DirectedRelationship::target
   --  TemplateBinding => DirectedRelationship::target
   --  Usage => DirectedRelationship::target

   function Internal_Get_Template
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Template
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  RedefinableTemplateSignature => TemplateSignature::template
   --  TemplateSignature => TemplateSignature::template

   function Internal_Get_Template_Binding
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Template_Binding
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  TemplateParameterSubstitution => TemplateParameterSubstitution::templateBinding

   function Internal_Get_Template_Binding
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => TemplateableElement::templateBinding
   --  Actor => TemplateableElement::templateBinding
   --  Artifact => TemplateableElement::templateBinding
   --  Association => TemplateableElement::templateBinding
   --  AssociationClass => TemplateableElement::templateBinding
   --  Class => TemplateableElement::templateBinding
   --  Collaboration => TemplateableElement::templateBinding
   --  CommunicationPath => TemplateableElement::templateBinding
   --  Component => TemplateableElement::templateBinding
   --  DataType => TemplateableElement::templateBinding
   --  DeploymentSpecification => TemplateableElement::templateBinding
   --  Device => TemplateableElement::templateBinding
   --  Enumeration => TemplateableElement::templateBinding
   --  ExecutionEnvironment => TemplateableElement::templateBinding
   --  Extension => TemplateableElement::templateBinding
   --  FunctionBehavior => TemplateableElement::templateBinding
   --  InformationItem => TemplateableElement::templateBinding
   --  Interaction => TemplateableElement::templateBinding
   --  Interface => TemplateableElement::templateBinding
   --  Model => TemplateableElement::templateBinding
   --  Node => TemplateableElement::templateBinding
   --  OpaqueBehavior => TemplateableElement::templateBinding
   --  Operation => TemplateableElement::templateBinding
   --  Package => TemplateableElement::templateBinding
   --  PrimitiveType => TemplateableElement::templateBinding
   --  Profile => TemplateableElement::templateBinding
   --  ProtocolStateMachine => TemplateableElement::templateBinding
   --  Signal => TemplateableElement::templateBinding
   --  StateMachine => TemplateableElement::templateBinding
   --  Stereotype => TemplateableElement::templateBinding
   --  StringExpression => TemplateableElement::templateBinding
   --  UseCase => TemplateableElement::templateBinding

   function Internal_Get_Template_Parameter
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Template_Parameter
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Abstraction => ParameterableElement::templateParameter
   --  Activity => Classifier::templateParameter
   --  Actor => Classifier::templateParameter
   --  AnyReceiveEvent => ParameterableElement::templateParameter
   --  Artifact => Classifier::templateParameter
   --  Association => Classifier::templateParameter
   --  AssociationClass => Classifier::templateParameter
   --  CallEvent => ParameterableElement::templateParameter
   --  ChangeEvent => ParameterableElement::templateParameter
   --  Class => Classifier::templateParameter
   --  Collaboration => Classifier::templateParameter
   --  CommunicationPath => Classifier::templateParameter
   --  Component => Classifier::templateParameter
   --  ComponentRealization => ParameterableElement::templateParameter
   --  Constraint => ParameterableElement::templateParameter
   --  UMLActivityDiagram => ParameterableElement::templateParameter
   --  UMLClassDiagram => ParameterableElement::templateParameter
   --  UMLComponentDiagram => ParameterableElement::templateParameter
   --  UMLCompositeStructureDiagram => ParameterableElement::templateParameter
   --  UMLDeploymentDiagram => ParameterableElement::templateParameter
   --  UMLInteractionDiagram => ParameterableElement::templateParameter
   --  UMLObjectDiagram => ParameterableElement::templateParameter
   --  UMLPackageDiagram => ParameterableElement::templateParameter
   --  UMLProfileDiagram => ParameterableElement::templateParameter
   --  UMLStateMachineDiagram => ParameterableElement::templateParameter
   --  UMLStyle => ParameterableElement::templateParameter
   --  UMLUseCaseDiagram => ParameterableElement::templateParameter
   --  DataType => Classifier::templateParameter
   --  Dependency => ParameterableElement::templateParameter
   --  Deployment => ParameterableElement::templateParameter
   --  DeploymentSpecification => Classifier::templateParameter
   --  Device => Classifier::templateParameter
   --  Duration => ParameterableElement::templateParameter
   --  DurationConstraint => ParameterableElement::templateParameter
   --  DurationInterval => ParameterableElement::templateParameter
   --  DurationObservation => ParameterableElement::templateParameter
   --  Enumeration => Classifier::templateParameter
   --  EnumerationLiteral => ParameterableElement::templateParameter
   --  ExecutionEnvironment => Classifier::templateParameter
   --  Expression => ParameterableElement::templateParameter
   --  Extension => Classifier::templateParameter
   --  ExtensionEnd => ConnectableElement::templateParameter
   --  FunctionBehavior => Classifier::templateParameter
   --  GeneralizationSet => ParameterableElement::templateParameter
   --  InformationFlow => ParameterableElement::templateParameter
   --  InformationItem => Classifier::templateParameter
   --  InstanceSpecification => ParameterableElement::templateParameter
   --  InstanceValue => ParameterableElement::templateParameter
   --  Interaction => Classifier::templateParameter
   --  InteractionConstraint => ParameterableElement::templateParameter
   --  Interface => Classifier::templateParameter
   --  InterfaceRealization => ParameterableElement::templateParameter
   --  Interval => ParameterableElement::templateParameter
   --  IntervalConstraint => ParameterableElement::templateParameter
   --  LiteralBoolean => ParameterableElement::templateParameter
   --  LiteralInteger => ParameterableElement::templateParameter
   --  LiteralNull => ParameterableElement::templateParameter
   --  LiteralReal => ParameterableElement::templateParameter
   --  LiteralString => ParameterableElement::templateParameter
   --  LiteralUnlimitedNatural => ParameterableElement::templateParameter
   --  Manifestation => ParameterableElement::templateParameter
   --  Model => ParameterableElement::templateParameter
   --  Node => Classifier::templateParameter
   --  OpaqueBehavior => Classifier::templateParameter
   --  OpaqueExpression => ParameterableElement::templateParameter
   --  Operation => Operation::templateParameter
   --  Package => ParameterableElement::templateParameter
   --  Parameter => ConnectableElement::templateParameter
   --  Port => ConnectableElement::templateParameter
   --  PrimitiveType => Classifier::templateParameter
   --  Profile => ParameterableElement::templateParameter
   --  Property => ConnectableElement::templateParameter
   --  ProtocolStateMachine => Classifier::templateParameter
   --  Realization => ParameterableElement::templateParameter
   --  Signal => Classifier::templateParameter
   --  SignalEvent => ParameterableElement::templateParameter
   --  StateMachine => Classifier::templateParameter
   --  Stereotype => Classifier::templateParameter
   --  StringExpression => ParameterableElement::templateParameter
   --  Substitution => ParameterableElement::templateParameter
   --  TimeConstraint => ParameterableElement::templateParameter
   --  TimeEvent => ParameterableElement::templateParameter
   --  TimeExpression => ParameterableElement::templateParameter
   --  TimeInterval => ParameterableElement::templateParameter
   --  TimeObservation => ParameterableElement::templateParameter
   --  Usage => ParameterableElement::templateParameter
   --  UseCase => Classifier::templateParameter
   --  Variable => ConnectableElement::templateParameter

   function Internal_Get_Test
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Clause => Clause::test
   --  LoopNode => LoopNode::test

   function Internal_Get_Text
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Text
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  UMLAssociationEndLabel => UMLLabel::text
   --  UMLInteractionTableLabel => UMLLabel::text
   --  UMLKeywordLabel => UMLLabel::text
   --  UMLLabel => UMLLabel::text
   --  UMLMultiplicityLabel => UMLLabel::text
   --  UMLNameLabel => UMLLabel::text
   --  UMLRedefinesLabel => UMLLabel::text
   --  UMLStereotypePropertyValueLabel => UMLLabel::text
   --  UMLTypedElementLabel => UMLLabel::text

   function Internal_Get_To_After
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  DestructionOccurrenceSpecification => OccurrenceSpecification::toAfter
   --  ExecutionOccurrenceSpecification => OccurrenceSpecification::toAfter
   --  MessageOccurrenceSpecification => OccurrenceSpecification::toAfter
   --  OccurrenceSpecification => OccurrenceSpecification::toAfter

   function Internal_Get_To_Before
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  DestructionOccurrenceSpecification => OccurrenceSpecification::toBefore
   --  ExecutionOccurrenceSpecification => OccurrenceSpecification::toBefore
   --  MessageOccurrenceSpecification => OccurrenceSpecification::toBefore
   --  OccurrenceSpecification => OccurrenceSpecification::toBefore

   function Internal_Get_Transformation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Transformation
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ObjectFlow => ObjectFlow::transformation

   function Internal_Get_Transition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Region => Region::transition

   function Internal_Get_Trigger
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  AcceptCallAction => AcceptEventAction::trigger
   --  AcceptEventAction => AcceptEventAction::trigger
   --  ProtocolTransition => Transition::trigger
   --  Transition => Transition::trigger

   function Internal_Get_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Type
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ActionInputPin => TypedElement::type
   --  ActivityParameterNode => TypedElement::type
   --  CentralBufferNode => TypedElement::type
   --  CollaborationUse => CollaborationUse::type
   --  Connector => Connector::type
   --  DataStoreNode => TypedElement::type
   --  Duration => TypedElement::type
   --  DurationInterval => TypedElement::type
   --  ExpansionNode => TypedElement::type
   --  Expression => TypedElement::type
   --  ExtensionEnd => ExtensionEnd::type
   --  InputPin => TypedElement::type
   --  InstanceValue => TypedElement::type
   --  Interval => TypedElement::type
   --  LiteralBoolean => TypedElement::type
   --  LiteralInteger => TypedElement::type
   --  LiteralNull => TypedElement::type
   --  LiteralReal => TypedElement::type
   --  LiteralString => TypedElement::type
   --  LiteralUnlimitedNatural => TypedElement::type
   --  OpaqueExpression => TypedElement::type
   --  Operation => Operation::type
   --  OutputPin => TypedElement::type
   --  Parameter => TypedElement::type
   --  Port => TypedElement::type
   --  Property => TypedElement::type
   --  StringExpression => TypedElement::type
   --  TimeExpression => TypedElement::type
   --  TimeInterval => TypedElement::type
   --  ValuePin => TypedElement::type
   --  Variable => TypedElement::type

   function Internal_Get_Unmarshall_Type
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Unmarshall_Type
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  UnmarshallAction => UnmarshallAction::unmarshallType

   function Internal_Get_Upper
    (Self : AMF.Internals.AMF_Element)
       return AMF.Optional_Unlimited_Natural;
   procedure Internal_Set_Upper
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Optional_Unlimited_Natural);
   --  ActionInputPin => MultiplicityElement::upper
   --  ConnectorEnd => MultiplicityElement::upper
   --  ExtensionEnd => MultiplicityElement::upper
   --  InputPin => MultiplicityElement::upper
   --  Operation => Operation::upper
   --  OutputPin => MultiplicityElement::upper
   --  Parameter => MultiplicityElement::upper
   --  Port => MultiplicityElement::upper
   --  Property => MultiplicityElement::upper
   --  ValuePin => MultiplicityElement::upper
   --  Variable => MultiplicityElement::upper

   function Internal_Get_Upper_Bound
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Upper_Bound
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ActionInputPin => ObjectNode::upperBound
   --  ActivityParameterNode => ObjectNode::upperBound
   --  CentralBufferNode => ObjectNode::upperBound
   --  DataStoreNode => ObjectNode::upperBound
   --  ExpansionNode => ObjectNode::upperBound
   --  InputPin => ObjectNode::upperBound
   --  OutputPin => ObjectNode::upperBound
   --  ValuePin => ObjectNode::upperBound

   function Internal_Get_Upper_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Upper_Value
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ActionInputPin => MultiplicityElement::upperValue
   --  ConnectorEnd => MultiplicityElement::upperValue
   --  ExtensionEnd => MultiplicityElement::upperValue
   --  InputPin => MultiplicityElement::upperValue
   --  OutputPin => MultiplicityElement::upperValue
   --  Parameter => MultiplicityElement::upperValue
   --  Port => MultiplicityElement::upperValue
   --  Property => MultiplicityElement::upperValue
   --  ValuePin => MultiplicityElement::upperValue
   --  Variable => MultiplicityElement::upperValue

   function Internal_Get_Use_Case
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Classifier::useCase
   --  Actor => Classifier::useCase
   --  Artifact => Classifier::useCase
   --  Association => Classifier::useCase
   --  AssociationClass => Classifier::useCase
   --  Class => Classifier::useCase
   --  Collaboration => Classifier::useCase
   --  CommunicationPath => Classifier::useCase
   --  Component => Classifier::useCase
   --  DataType => Classifier::useCase
   --  DeploymentSpecification => Classifier::useCase
   --  Device => Classifier::useCase
   --  Enumeration => Classifier::useCase
   --  ExecutionEnvironment => Classifier::useCase
   --  Extension => Classifier::useCase
   --  FunctionBehavior => Classifier::useCase
   --  InformationItem => Classifier::useCase
   --  Interaction => Classifier::useCase
   --  Interface => Classifier::useCase
   --  Node => Classifier::useCase
   --  OpaqueBehavior => Classifier::useCase
   --  PrimitiveType => Classifier::useCase
   --  ProtocolStateMachine => Classifier::useCase
   --  Signal => Classifier::useCase
   --  StateMachine => Classifier::useCase
   --  Stereotype => Classifier::useCase
   --  UseCase => Classifier::useCase

   function Internal_Get_Use_Case
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Use_Case
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ExtensionPoint => ExtensionPoint::useCase

   function Internal_Get_Utilized_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Utilized_Element
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Manifestation => Manifestation::utilizedElement

   function Internal_Get_Value
    (Self : AMF.Internals.AMF_Element)
       return Boolean;
   procedure Internal_Set_Value
    (Self : AMF.Internals.AMF_Element;
     To   : Boolean);
   --  LiteralBoolean => LiteralBoolean::value

   function Internal_Get_Value
    (Self : AMF.Internals.AMF_Element)
       return Integer;
   procedure Internal_Set_Value
    (Self : AMF.Internals.AMF_Element;
     To   : Integer);
   --  LiteralInteger => LiteralInteger::value

   function Internal_Get_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Real;
   procedure Internal_Set_Value
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Real);
   --  LiteralReal => LiteralReal::value

   function Internal_Get_Value
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Value
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  LiteralString => LiteralString::value

   function Internal_Get_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Unlimited_Natural;
   procedure Internal_Set_Value
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Unlimited_Natural);
   --  LiteralUnlimitedNatural => LiteralUnlimitedNatural::value

   function Internal_Get_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Slot => Slot::value

   function Internal_Get_Value
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Value
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  AddStructuralFeatureValueAction => WriteStructuralFeatureAction::value
   --  AddVariableValueAction => WriteVariableAction::value
   --  LinkEndCreationData => LinkEndData::value
   --  LinkEndData => LinkEndData::value
   --  LinkEndDestructionData => LinkEndData::value
   --  QualifierValue => QualifierValue::value
   --  RemoveStructuralFeatureValueAction => WriteStructuralFeatureAction::value
   --  RemoveVariableValueAction => WriteVariableAction::value
   --  ValuePin => ValuePin::value
   --  ValueSpecificationAction => ValueSpecificationAction::value

   function Internal_Get_Variable
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  Activity => Activity::variable
   --  ConditionalNode => StructuredActivityNode::variable
   --  ExpansionRegion => StructuredActivityNode::variable
   --  LoopNode => StructuredActivityNode::variable
   --  SequenceNode => StructuredActivityNode::variable
   --  StructuredActivityNode => StructuredActivityNode::variable

   function Internal_Get_Variable
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Variable
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  AddVariableValueAction => VariableAction::variable
   --  ClearVariableAction => VariableAction::variable
   --  ReadVariableAction => VariableAction::variable
   --  RemoveVariableValueAction => VariableAction::variable

   function Internal_Get_Viewpoint
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Viewpoint
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  Model => Model::viewpoint

   function Internal_Get_Visibility
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.UML_Visibility_Kind;
   procedure Internal_Set_Visibility
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.UML_Visibility_Kind);
   --  ElementImport => ElementImport::visibility
   --  PackageImport => PackageImport::visibility

   function Internal_Get_Visibility
    (Self : AMF.Internals.AMF_Element)
       return AMF.UML.Optional_UML_Visibility_Kind;
   procedure Internal_Set_Visibility
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.UML.Optional_UML_Visibility_Kind);
   --  Abstraction => NamedElement::visibility
   --  AcceptCallAction => NamedElement::visibility
   --  AcceptEventAction => NamedElement::visibility
   --  ActionExecutionSpecification => NamedElement::visibility
   --  ActionInputPin => NamedElement::visibility
   --  Activity => NamedElement::visibility
   --  ActivityFinalNode => NamedElement::visibility
   --  ActivityParameterNode => NamedElement::visibility
   --  ActivityPartition => NamedElement::visibility
   --  Actor => NamedElement::visibility
   --  AddStructuralFeatureValueAction => NamedElement::visibility
   --  AddVariableValueAction => NamedElement::visibility
   --  AnyReceiveEvent => NamedElement::visibility
   --  Artifact => NamedElement::visibility
   --  Association => NamedElement::visibility
   --  AssociationClass => NamedElement::visibility
   --  BehaviorExecutionSpecification => NamedElement::visibility
   --  BroadcastSignalAction => NamedElement::visibility
   --  CallBehaviorAction => NamedElement::visibility
   --  CallEvent => NamedElement::visibility
   --  CallOperationAction => NamedElement::visibility
   --  CentralBufferNode => NamedElement::visibility
   --  ChangeEvent => NamedElement::visibility
   --  Class => NamedElement::visibility
   --  ClearAssociationAction => NamedElement::visibility
   --  ClearStructuralFeatureAction => NamedElement::visibility
   --  ClearVariableAction => NamedElement::visibility
   --  Collaboration => NamedElement::visibility
   --  CollaborationUse => NamedElement::visibility
   --  CombinedFragment => NamedElement::visibility
   --  CommunicationPath => NamedElement::visibility
   --  Component => NamedElement::visibility
   --  ComponentRealization => NamedElement::visibility
   --  ConditionalNode => NamedElement::visibility
   --  ConnectionPointReference => NamedElement::visibility
   --  Connector => NamedElement::visibility
   --  ConsiderIgnoreFragment => NamedElement::visibility
   --  Constraint => NamedElement::visibility
   --  Continuation => NamedElement::visibility
   --  ControlFlow => NamedElement::visibility
   --  CreateLinkAction => NamedElement::visibility
   --  CreateLinkObjectAction => NamedElement::visibility
   --  CreateObjectAction => NamedElement::visibility
   --  UMLActivityDiagram => NamedElement::visibility
   --  UMLClassDiagram => NamedElement::visibility
   --  UMLComponentDiagram => NamedElement::visibility
   --  UMLCompositeStructureDiagram => NamedElement::visibility
   --  UMLDeploymentDiagram => NamedElement::visibility
   --  UMLInteractionDiagram => NamedElement::visibility
   --  UMLObjectDiagram => NamedElement::visibility
   --  UMLPackageDiagram => NamedElement::visibility
   --  UMLProfileDiagram => NamedElement::visibility
   --  UMLStateMachineDiagram => NamedElement::visibility
   --  UMLStyle => NamedElement::visibility
   --  UMLUseCaseDiagram => NamedElement::visibility
   --  DataStoreNode => NamedElement::visibility
   --  DataType => NamedElement::visibility
   --  DecisionNode => NamedElement::visibility
   --  Dependency => NamedElement::visibility
   --  Deployment => NamedElement::visibility
   --  DeploymentSpecification => NamedElement::visibility
   --  DestroyLinkAction => NamedElement::visibility
   --  DestroyObjectAction => NamedElement::visibility
   --  DestructionOccurrenceSpecification => NamedElement::visibility
   --  Device => NamedElement::visibility
   --  Duration => NamedElement::visibility
   --  DurationConstraint => NamedElement::visibility
   --  DurationInterval => NamedElement::visibility
   --  DurationObservation => NamedElement::visibility
   --  Enumeration => NamedElement::visibility
   --  EnumerationLiteral => NamedElement::visibility
   --  ExecutionEnvironment => NamedElement::visibility
   --  ExecutionOccurrenceSpecification => NamedElement::visibility
   --  ExpansionNode => NamedElement::visibility
   --  ExpansionRegion => NamedElement::visibility
   --  Expression => NamedElement::visibility
   --  Extend => NamedElement::visibility
   --  Extension => NamedElement::visibility
   --  ExtensionEnd => NamedElement::visibility
   --  ExtensionPoint => NamedElement::visibility
   --  FinalState => NamedElement::visibility
   --  FlowFinalNode => NamedElement::visibility
   --  ForkNode => NamedElement::visibility
   --  FunctionBehavior => NamedElement::visibility
   --  Gate => NamedElement::visibility
   --  GeneralOrdering => NamedElement::visibility
   --  GeneralizationSet => NamedElement::visibility
   --  Include => NamedElement::visibility
   --  InformationFlow => NamedElement::visibility
   --  InformationItem => NamedElement::visibility
   --  InitialNode => NamedElement::visibility
   --  InputPin => NamedElement::visibility
   --  InstanceSpecification => NamedElement::visibility
   --  InstanceValue => NamedElement::visibility
   --  Interaction => NamedElement::visibility
   --  InteractionConstraint => NamedElement::visibility
   --  InteractionOperand => NamedElement::visibility
   --  InteractionUse => NamedElement::visibility
   --  Interface => NamedElement::visibility
   --  InterfaceRealization => NamedElement::visibility
   --  InterruptibleActivityRegion => NamedElement::visibility
   --  Interval => NamedElement::visibility
   --  IntervalConstraint => NamedElement::visibility
   --  JoinNode => NamedElement::visibility
   --  Lifeline => NamedElement::visibility
   --  LiteralBoolean => NamedElement::visibility
   --  LiteralInteger => NamedElement::visibility
   --  LiteralNull => NamedElement::visibility
   --  LiteralReal => NamedElement::visibility
   --  LiteralString => NamedElement::visibility
   --  LiteralUnlimitedNatural => NamedElement::visibility
   --  LoopNode => NamedElement::visibility
   --  Manifestation => NamedElement::visibility
   --  MergeNode => NamedElement::visibility
   --  Message => NamedElement::visibility
   --  MessageOccurrenceSpecification => NamedElement::visibility
   --  Model => NamedElement::visibility
   --  Node => NamedElement::visibility
   --  ObjectFlow => NamedElement::visibility
   --  OccurrenceSpecification => NamedElement::visibility
   --  OpaqueAction => NamedElement::visibility
   --  OpaqueBehavior => NamedElement::visibility
   --  OpaqueExpression => NamedElement::visibility
   --  Operation => NamedElement::visibility
   --  OutputPin => NamedElement::visibility
   --  Package => NamedElement::visibility
   --  Parameter => NamedElement::visibility
   --  ParameterSet => NamedElement::visibility
   --  PartDecomposition => NamedElement::visibility
   --  Port => NamedElement::visibility
   --  PrimitiveType => NamedElement::visibility
   --  Profile => NamedElement::visibility
   --  Property => NamedElement::visibility
   --  ProtocolStateMachine => NamedElement::visibility
   --  ProtocolTransition => NamedElement::visibility
   --  Pseudostate => NamedElement::visibility
   --  RaiseExceptionAction => NamedElement::visibility
   --  ReadExtentAction => NamedElement::visibility
   --  ReadIsClassifiedObjectAction => NamedElement::visibility
   --  ReadLinkAction => NamedElement::visibility
   --  ReadLinkObjectEndAction => NamedElement::visibility
   --  ReadLinkObjectEndQualifierAction => NamedElement::visibility
   --  ReadSelfAction => NamedElement::visibility
   --  ReadStructuralFeatureAction => NamedElement::visibility
   --  ReadVariableAction => NamedElement::visibility
   --  Realization => NamedElement::visibility
   --  Reception => NamedElement::visibility
   --  ReclassifyObjectAction => NamedElement::visibility
   --  RedefinableTemplateSignature => NamedElement::visibility
   --  ReduceAction => NamedElement::visibility
   --  Region => NamedElement::visibility
   --  RemoveStructuralFeatureValueAction => NamedElement::visibility
   --  RemoveVariableValueAction => NamedElement::visibility
   --  ReplyAction => NamedElement::visibility
   --  SendObjectAction => NamedElement::visibility
   --  SendSignalAction => NamedElement::visibility
   --  SequenceNode => NamedElement::visibility
   --  Signal => NamedElement::visibility
   --  SignalEvent => NamedElement::visibility
   --  StartClassifierBehaviorAction => NamedElement::visibility
   --  StartObjectBehaviorAction => NamedElement::visibility
   --  State => NamedElement::visibility
   --  StateInvariant => NamedElement::visibility
   --  StateMachine => NamedElement::visibility
   --  Stereotype => NamedElement::visibility
   --  StringExpression => NamedElement::visibility
   --  StructuredActivityNode => NamedElement::visibility
   --  Substitution => NamedElement::visibility
   --  TestIdentityAction => NamedElement::visibility
   --  TimeConstraint => NamedElement::visibility
   --  TimeEvent => NamedElement::visibility
   --  TimeExpression => NamedElement::visibility
   --  TimeInterval => NamedElement::visibility
   --  TimeObservation => NamedElement::visibility
   --  Transition => NamedElement::visibility
   --  Trigger => NamedElement::visibility
   --  UnmarshallAction => NamedElement::visibility
   --  Usage => NamedElement::visibility
   --  UseCase => NamedElement::visibility
   --  ValuePin => NamedElement::visibility
   --  ValueSpecificationAction => NamedElement::visibility
   --  Variable => NamedElement::visibility

   function Internal_Get_Waypoint
    (Self : AMF.Internals.AMF_Element)
       return AMF.DC.Sequence_Of_DC_Point;
   --  UMLEdge => Edge::waypoint

   function Internal_Get_Weight
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Weight
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ControlFlow => ActivityEdge::weight
   --  ObjectFlow => ActivityEdge::weight

   function Internal_Get_When
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_When
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  TimeEvent => TimeEvent::when

end AMF.Internals.Tables.UML_Attributes;
