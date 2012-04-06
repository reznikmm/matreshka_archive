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
with AMF.Utp;
with Matreshka.Internals.Strings;

package AMF.Internals.Tables.Utp_Attributes is

   function Internal_Get_Base_Accept_Event_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Accept_Event_Action
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  TimeOutAction => TimeOutAction::base_AcceptEventAction

   function Internal_Get_Base_Behavior
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Behavior
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  Default => Default::base_Behavior
   --  TestCase => TestCase::base_Behavior
   --  TestLog => TestLog::base_Behavior
   --  TestSuite => TestSuite::base_Behavior

   function Internal_Get_Base_Behaviored_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Behaviored_Classifier
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  TestContext => TestContext::base_BehavioredClassifier

   function Internal_Get_Base_Call_Operation_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Call_Operation_Action
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ReadTimerAction => ReadTimerAction::base_CallOperationAction
   --  StartTimerAction => StartTimerAction::base_CallOperationAction
   --  StopTimerAction => StopTimerAction::base_CallOperationAction
   --  ValidationAction => ValidationAction::base_CallOperationAction

   function Internal_Get_Base_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Classifier
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  DataPartition => DataPartition::base_Classifier
   --  DataPool => DataPool::base_Classifier

   function Internal_Get_Base_Combined_Fragment
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Combined_Fragment
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  DetermAlt => DetermAlt::base_CombinedFragment

   function Internal_Get_Base_Dependency
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Dependency
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  DefaultApplication => DefaultApplication::base_Dependency
   --  TestLogApplication => TestLogApplication::base_Dependency
   --  TestObjective => TestObjective::base_Dependency

   function Internal_Get_Base_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Element
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  ManagedElement => ManagedElement::base_Element

   function Internal_Get_Base_Invocation_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Invocation_Action
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  FinishAction => FinishAction::base_InvocationAction

   function Internal_Get_Base_Literal_Specification
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Literal_Specification
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  LiteralAny => LiteralAny::base_LiteralSpecification
   --  LiteralAnyOrNull => LiteralAnyOrNull::base_LiteralSpecification

   function Internal_Get_Base_Message
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Message
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  TimeOutMessage => TimeOutMessage::base_Message

   function Internal_Get_Base_Namespace
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Namespace
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  CodingRule => CodingRule::base_Namespace

   function Internal_Get_Base_Opaque_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Opaque_Action
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  FinishAction => FinishAction::base_OpaqueAction

   function Internal_Get_Base_Operation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Operation
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  DataSelector => DataSelector::base_Operation
   --  TestCase => TestCase::base_Operation

   function Internal_Get_Base_Property
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Property
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  CodingRule => CodingRule::base_Property
   --  DataPool => DataPool::base_Property
   --  SUT => SUT::base_Property

   function Internal_Get_Base_Read_Structural_Feature_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Read_Structural_Feature_Action
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  GetTimezoneAction => GetTimezoneAction::base_ReadStructuralFeatureAction
   --  TimerRunningAction => TimerRunningAction::base_ReadStructuralFeatureAction

   function Internal_Get_Base_Send_Object_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Send_Object_Action
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  LogAction => LogAction::base_SendObjectAction

   function Internal_Get_Base_Structured_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Structured_Classifier
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  TestComponent => TestComponent::base_StructuredClassifier
   --  TestContext => TestContext::base_StructuredClassifier

   function Internal_Get_Base_Time_Event
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Time_Event
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  TimeOut => TimeOut::base_TimeEvent

   function Internal_Get_Base_Value_Specification
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Value_Specification
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  CodingRule => CodingRule::base_ValueSpecification

   function Internal_Get_Base_Write_Structural_Feature_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element;
   procedure Internal_Set_Base_Write_Structural_Feature_Action
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element);
   --  SetTimezoneAction => SetTimezoneAction::base_WriteStructuralFeatureAction

   function Internal_Get_Coding
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Coding
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  CodingRule => CodingRule::coding

   function Internal_Get_Compatible_SUT_Variant
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_String;
   --  TestCase => TestCase::compatibleSUTVariant
   --  TestComponent => TestComponent::compatibleSUTVariant
   --  TestContext => TestContext::compatibleSUTVariant

   function Internal_Get_Compatible_SUT_Version
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_String;
   --  TestCase => TestCase::compatibleSUTVersion
   --  TestComponent => TestComponent::compatibleSUTVersion
   --  TestContext => TestContext::compatibleSUTVersion

   function Internal_Get_Criticality
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Criticality
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  ManagedElement => ManagedElement::criticality

   function Internal_Get_Description
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Description
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  ManagedElement => ManagedElement::description

   function Internal_Get_Duration
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Duration
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  TestLog => TestLog::duration

   function Internal_Get_Executed_At
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Executed_At
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  TestLog => TestLog::executedAt

   function Internal_Get_Owner
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Owner
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  ManagedElement => ManagedElement::owner

   function Internal_Get_Priority
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Priority
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  TestCase => TestCase::priority
   --  TestObjective => TestObjective::priority
   --  TestSuite => TestSuite::priority

   function Internal_Get_Repetition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Unlimited_Natural;
   procedure Internal_Set_Repetition
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Unlimited_Natural);
   --  DefaultApplication => DefaultApplication::repetition

   function Internal_Get_Sut_Version
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Sut_Version
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  TestLog => TestLog::sutVersion

   function Internal_Get_Test_Case
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element;
   --  TestSuite => TestSuite::testCase

   function Internal_Get_Test_Level
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Test_Level
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  TestContext => TestContext::testLevel

   function Internal_Get_Tester
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_String;
   --  TestLog => TestLog::tester

   function Internal_Get_Verdict
    (Self : AMF.Internals.AMF_Element)
       return AMF.Utp.Utp_Verdict;
   procedure Internal_Set_Verdict
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Utp.Utp_Verdict);
   --  TestLog => TestLog::verdict

   function Internal_Get_Verdict_Reason
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Verdict_Reason
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  TestLog => TestLog::verdictReason

   function Internal_Get_Version
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access;
   procedure Internal_Set_Version
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access);
   --  ManagedElement => ManagedElement::version

end AMF.Internals.Tables.Utp_Attributes;
