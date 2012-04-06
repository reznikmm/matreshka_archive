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
with AMF.Internals.Tables.Utp_Types;

package AMF.Internals.Tables.Utp_Attribute_Mappings is

   pragma Preelaborate;

   Utp_Collection_Offset : constant
     array (AMF.Internals.Tables.Utp_Types.Element_Kinds,
            AMF.Internals.CMOF_Element range 31 .. 31)
       of AMF.Internals.AMF_Collection_Of_Element :=
        (AMF.Internals.Tables.Utp_Types.E_None =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Coding_Rule =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Data_Partition =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Data_Pool =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Data_Selector =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Default =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Default_Application =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Determ_Alt =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Finish_Action =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Get_Timezone_Action =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Literal_Any =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Literal_Any_Or_Null =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Log_Action =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Managed_Element =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Read_Timer_Action =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_SUT =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Set_Timezone_Action =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Start_Timer_Action =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Stop_Timer_Action =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Test_Case =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Test_Component =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Test_Context =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Test_Log =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Test_Log_Application =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Test_Objective =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Test_Suite =>
          (31     => 1,     --  TestSuite::testCase
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Time_Out =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Time_Out_Action =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Time_Out_Message =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Timer_Running_Action =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Validation_Action =>
          (others => 0));

   Utp_Member_Offset : constant
     array (AMF.Internals.Tables.Utp_Types.Element_Kinds,
            AMF.Internals.CMOF_Element range 32 .. 89) of Natural :=
        (AMF.Internals.Tables.Utp_Types.E_None =>
          (others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Coding_Rule =>
          (32     => 3,     --  CodingRule::base_Namespace
           33     => 1,     --  CodingRule::base_Property
           34     => 2,     --  CodingRule::base_ValueSpecification
           35     => 4,     --  CodingRule::coding
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Data_Partition =>
          (36     => 2,     --  DataPartition::base_Classifier
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Data_Pool =>
          (37     => 2,     --  DataPool::base_Classifier
           38     => 1,     --  DataPool::base_Property
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Data_Selector =>
          (39     => 5,     --  DataSelector::base_Operation
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Default =>
          (40     => 1,     --  Default::base_Behavior
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Default_Application =>
          (41     => 1,     --  DefaultApplication::base_Dependency
           42     => 2,     --  DefaultApplication::repetition
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Determ_Alt =>
          (43     => 1,     --  DetermAlt::base_CombinedFragment
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Finish_Action =>
          (44     => 2,     --  FinishAction::base_InvocationAction
           45     => 1,     --  FinishAction::base_OpaqueAction
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Get_Timezone_Action =>
          (46     => 1,     --  GetTimezoneAction::base_ReadStructuralFeatureAction
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Literal_Any =>
          (47     => 1,     --  LiteralAny::base_LiteralSpecification
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Literal_Any_Or_Null =>
          (48     => 1,     --  LiteralAnyOrNull::base_LiteralSpecification
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Log_Action =>
          (49     => 1,     --  LogAction::base_SendObjectAction
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Managed_Element =>
          (50     => 1,     --  ManagedElement::base_Element
           51     => 5,     --  ManagedElement::criticality
           52     => 3,     --  ManagedElement::description
           53     => 2,     --  ManagedElement::owner
           54     => 4,     --  ManagedElement::version
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Read_Timer_Action =>
          (55     => 1,     --  ReadTimerAction::base_CallOperationAction
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_SUT =>
          (56     => 1,     --  SUT::base_Property
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Set_Timezone_Action =>
          (57     => 1,     --  SetTimezoneAction::base_WriteStructuralFeatureAction
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Start_Timer_Action =>
          (58     => 1,     --  StartTimerAction::base_CallOperationAction
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Stop_Timer_Action =>
          (59     => 1,     --  StopTimerAction::base_CallOperationAction
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Test_Case =>
          (60     => 1,     --  TestCase::base_Behavior
           61     => 5,     --  TestCase::base_Operation
           62     => 3,     --  TestCase::compatibleSUTVariant
           63     => 2,     --  TestCase::compatibleSUTVersion
           64     => 4,     --  TestCase::priority
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Test_Component =>
          (65     => 1,     --  TestComponent::base_StructuredClassifier
           66     => 3,     --  TestComponent::compatibleSUTVariant
           67     => 2,     --  TestComponent::compatibleSUTVersion
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Test_Context =>
          (68     => 4,     --  TestContext::base_BehavioredClassifier
           69     => 1,     --  TestContext::base_StructuredClassifier
           70     => 3,     --  TestContext::compatibleSUTVariant
           71     => 2,     --  TestContext::compatibleSUTVersion
           72     => 5,     --  TestContext::testLevel
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Test_Log =>
          (73     => 1,     --  TestLog::base_Behavior
           74     => 4,     --  TestLog::duration
           75     => 3,     --  TestLog::executedAt
           76     => 7,     --  TestLog::sutVersion
           77     => 2,     --  TestLog::tester
           78     => 5,     --  TestLog::verdict
           79     => 6,     --  TestLog::verdictReason
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Test_Log_Application =>
          (80     => 1,     --  TestLogApplication::base_Dependency
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Test_Objective =>
          (81     => 1,     --  TestObjective::base_Dependency
           82     => 4,     --  TestObjective::priority
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Test_Suite =>
          (83     => 1,     --  TestSuite::base_Behavior
           84     => 4,     --  TestSuite::priority
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Time_Out =>
          (85     => 1,     --  TimeOut::base_TimeEvent
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Time_Out_Action =>
          (86     => 1,     --  TimeOutAction::base_AcceptEventAction
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Time_Out_Message =>
          (87     => 1,     --  TimeOutMessage::base_Message
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Timer_Running_Action =>
          (88     => 1,     --  TimerRunningAction::base_ReadStructuralFeatureAction
           others => 0),
         AMF.Internals.Tables.Utp_Types.E_Utp_Validation_Action =>
          (89     => 1,     --  ValidationAction::base_CallOperationAction
           others => 0));

end AMF.Internals.Tables.Utp_Attribute_Mappings;
