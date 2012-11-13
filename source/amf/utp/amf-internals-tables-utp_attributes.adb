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
with AMF.Internals.Links;
with AMF.Internals.Tables.Primitive_Types_Notification;
with AMF.Internals.Tables.UTP_Element_Table;
with AMF.Internals.Tables.UTP_Types;
with AMF.Internals.Tables.Utp_Metamodel;
with AMF.Internals.Tables.Utp_Notification;

package body AMF.Internals.Tables.UTP_Attributes is

   use type Matreshka.Internals.Strings.Shared_String_Access;

   --  CodingRule
   --
   --     3  CodingRule::base_Namespace
   --     1  CodingRule::base_Property
   --     2  CodingRule::base_ValueSpecification
   --     4  CodingRule::coding
   --

   --  DataPartition
   --
   --     2  DataPartition::base_Classifier
   --

   --  DataPool
   --
   --     2  DataPool::base_Classifier
   --     1  DataPool::base_Property
   --

   --  DataSelector
   --
   --     5  DataSelector::base_Operation
   --

   --  Default
   --
   --     1  Default::base_Behavior
   --

   --  DefaultApplication
   --
   --     1  DefaultApplication::base_Dependency
   --     2  DefaultApplication::repetition
   --

   --  DetermAlt
   --
   --     1  DetermAlt::base_CombinedFragment
   --

   --  FinishAction
   --
   --     2  FinishAction::base_InvocationAction
   --     1  FinishAction::base_OpaqueAction
   --

   --  GetTimezoneAction
   --
   --     1  GetTimezoneAction::base_ReadStructuralFeatureAction
   --

   --  LiteralAny
   --
   --     1  LiteralAny::base_LiteralSpecification
   --

   --  LiteralAnyOrNull
   --
   --     1  LiteralAnyOrNull::base_LiteralSpecification
   --

   --  LogAction
   --
   --     1  LogAction::base_SendObjectAction
   --

   --  ManagedElement
   --
   --     1  ManagedElement::base_Element
   --     5  ManagedElement::criticality
   --     3  ManagedElement::description
   --     2  ManagedElement::owner
   --     4  ManagedElement::version
   --

   --  ReadTimerAction
   --
   --     1  ReadTimerAction::base_CallOperationAction
   --

   --  SUT
   --
   --     1  SUT::base_Property
   --

   --  SetTimezoneAction
   --
   --     1  SetTimezoneAction::base_WriteStructuralFeatureAction
   --

   --  StartTimerAction
   --
   --     1  StartTimerAction::base_CallOperationAction
   --

   --  StopTimerAction
   --
   --     1  StopTimerAction::base_CallOperationAction
   --

   --  TestCase
   --
   --     1  TestCase::base_Behavior
   --     5  TestCase::base_Operation
   --     3  TestCase::compatibleSUTVariant
   --     2  TestCase::compatibleSUTVersion
   --     4  TestCase::priority
   --

   --  TestComponent
   --
   --     1  TestComponent::base_StructuredClassifier
   --     3  TestComponent::compatibleSUTVariant
   --     2  TestComponent::compatibleSUTVersion
   --

   --  TestContext
   --
   --     4  TestContext::base_BehavioredClassifier
   --     1  TestContext::base_StructuredClassifier
   --     3  TestContext::compatibleSUTVariant
   --     2  TestContext::compatibleSUTVersion
   --     5  TestContext::testLevel
   --

   --  TestLog
   --
   --     1  TestLog::base_Behavior
   --     4  TestLog::duration
   --     3  TestLog::executedAt
   --     7  TestLog::sutVersion
   --     2  TestLog::tester
   --     5  TestLog::verdict
   --     6  TestLog::verdictReason
   --

   --  TestLogApplication
   --
   --     1  TestLogApplication::base_Dependency
   --

   --  TestObjective
   --
   --     1  TestObjective::base_Dependency
   --     4  TestObjective::priority
   --

   --  TestSuite
   --
   --     1  TestSuite::base_Behavior
   --     4  TestSuite::priority
   --
   --     1  TestSuite::testCase

   --  TimeOut
   --
   --     1  TimeOut::base_TimeEvent
   --

   --  TimeOutAction
   --
   --     1  TimeOutAction::base_AcceptEventAction
   --

   --  TimeOutMessage
   --
   --     1  TimeOutMessage::base_Message
   --

   --  TimerRunningAction
   --
   --     1  TimerRunningAction::base_ReadStructuralFeatureAction
   --

   --  ValidationAction
   --
   --     1  ValidationAction::base_CallOperationAction
   --

   -------------------------------------------
   -- Internal_Get_Base_Accept_Event_Action --
   -------------------------------------------

   function Internal_Get_Base_Accept_Event_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Accept_Event_Action;

   --------------------------------
   -- Internal_Get_Base_Behavior --
   --------------------------------

   function Internal_Get_Base_Behavior
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Behavior;

   ---------------------------------------------
   -- Internal_Get_Base_Behaviored_Classifier --
   ---------------------------------------------

   function Internal_Get_Base_Behaviored_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (4).Link, Self);
   end Internal_Get_Base_Behaviored_Classifier;

   ---------------------------------------------
   -- Internal_Get_Base_Call_Operation_Action --
   ---------------------------------------------

   function Internal_Get_Base_Call_Operation_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Call_Operation_Action;

   ----------------------------------
   -- Internal_Get_Base_Classifier --
   ----------------------------------

   function Internal_Get_Base_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (2).Link, Self);
   end Internal_Get_Base_Classifier;

   -----------------------------------------
   -- Internal_Get_Base_Combined_Fragment --
   -----------------------------------------

   function Internal_Get_Base_Combined_Fragment
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Combined_Fragment;

   ----------------------------------
   -- Internal_Get_Base_Dependency --
   ----------------------------------

   function Internal_Get_Base_Dependency
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Dependency;

   -------------------------------
   -- Internal_Get_Base_Element --
   -------------------------------

   function Internal_Get_Base_Element
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Element;

   -----------------------------------------
   -- Internal_Get_Base_Invocation_Action --
   -----------------------------------------

   function Internal_Get_Base_Invocation_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (2).Link, Self);
   end Internal_Get_Base_Invocation_Action;

   ---------------------------------------------
   -- Internal_Get_Base_Literal_Specification --
   ---------------------------------------------

   function Internal_Get_Base_Literal_Specification
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Literal_Specification;

   -------------------------------
   -- Internal_Get_Base_Message --
   -------------------------------

   function Internal_Get_Base_Message
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Message;

   ---------------------------------
   -- Internal_Get_Base_Namespace --
   ---------------------------------

   function Internal_Get_Base_Namespace
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (3).Link, Self);
   end Internal_Get_Base_Namespace;

   -------------------------------------
   -- Internal_Get_Base_Opaque_Action --
   -------------------------------------

   function Internal_Get_Base_Opaque_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Opaque_Action;

   ---------------------------------
   -- Internal_Get_Base_Operation --
   ---------------------------------

   function Internal_Get_Base_Operation
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (5).Link, Self);
   end Internal_Get_Base_Operation;

   --------------------------------
   -- Internal_Get_Base_Property --
   --------------------------------

   function Internal_Get_Base_Property
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Property;

   ------------------------------------------------------
   -- Internal_Get_Base_Read_Structural_Feature_Action --
   ------------------------------------------------------

   function Internal_Get_Base_Read_Structural_Feature_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Read_Structural_Feature_Action;

   ------------------------------------------
   -- Internal_Get_Base_Send_Object_Action --
   ------------------------------------------

   function Internal_Get_Base_Send_Object_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Send_Object_Action;

   ---------------------------------------------
   -- Internal_Get_Base_Structured_Classifier --
   ---------------------------------------------

   function Internal_Get_Base_Structured_Classifier
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Structured_Classifier;

   ----------------------------------
   -- Internal_Get_Base_Time_Event --
   ----------------------------------

   function Internal_Get_Base_Time_Event
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Time_Event;

   -------------------------------------------
   -- Internal_Get_Base_Value_Specification --
   -------------------------------------------

   function Internal_Get_Base_Value_Specification
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (2).Link, Self);
   end Internal_Get_Base_Value_Specification;

   -------------------------------------------------------
   -- Internal_Get_Base_Write_Structural_Feature_Action --
   -------------------------------------------------------

   function Internal_Get_Base_Write_Structural_Feature_Action
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Element is
   begin
      return
        AMF.Internals.Links.Opposite_Element
         (AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (1).Link, Self);
   end Internal_Get_Base_Write_Structural_Feature_Action;

   -------------------------
   -- Internal_Get_Coding --
   -------------------------

   function Internal_Get_Coding
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (4).String_Value;
   end Internal_Get_Coding;

   -----------------------------------------
   -- Internal_Get_Compatible_SUT_Variant --
   -----------------------------------------

   function Internal_Get_Compatible_SUT_Variant
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_String is
   begin
      return AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (3).String_Collection;
   end Internal_Get_Compatible_SUT_Variant;

   -----------------------------------------
   -- Internal_Get_Compatible_SUT_Version --
   -----------------------------------------

   function Internal_Get_Compatible_SUT_Version
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_String is
   begin
      return AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (2).String_Collection;
   end Internal_Get_Compatible_SUT_Version;

   ------------------------------
   -- Internal_Get_Criticality --
   ------------------------------

   function Internal_Get_Criticality
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (5).String_Value;
   end Internal_Get_Criticality;

   ------------------------------
   -- Internal_Get_Description --
   ------------------------------

   function Internal_Get_Description
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (3).String_Value;
   end Internal_Get_Description;

   ---------------------------
   -- Internal_Get_Duration --
   ---------------------------

   function Internal_Get_Duration
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (4).String_Value;
   end Internal_Get_Duration;

   ------------------------------
   -- Internal_Get_Executed_At --
   ------------------------------

   function Internal_Get_Executed_At
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (3).String_Value;
   end Internal_Get_Executed_At;

   ------------------------
   -- Internal_Get_Owner --
   ------------------------

   function Internal_Get_Owner
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (2).String_Value;
   end Internal_Get_Owner;

   ---------------------------
   -- Internal_Get_Priority --
   ---------------------------

   function Internal_Get_Priority
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (4).String_Value;
   end Internal_Get_Priority;

   -----------------------------
   -- Internal_Get_Repetition --
   -----------------------------

   function Internal_Get_Repetition
    (Self : AMF.Internals.AMF_Element)
       return AMF.Unlimited_Natural is
   begin
      return AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (2).Unlimited_Natural_Value;
   end Internal_Get_Repetition;

   ------------------------------
   -- Internal_Get_Sut_Version --
   ------------------------------

   function Internal_Get_Sut_Version
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (7).String_Value;
   end Internal_Get_Sut_Version;

   ----------------------------
   -- Internal_Get_Test_Case --
   ----------------------------

   function Internal_Get_Test_Case
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_Element is
   begin
      return AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (0).Collection + 1;
   end Internal_Get_Test_Case;

   -----------------------------
   -- Internal_Get_Test_Level --
   -----------------------------

   function Internal_Get_Test_Level
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (5).String_Value;
   end Internal_Get_Test_Level;

   -------------------------
   -- Internal_Get_Tester --
   -------------------------

   function Internal_Get_Tester
    (Self : AMF.Internals.AMF_Element)
       return AMF.Internals.AMF_Collection_Of_String is
   begin
      return AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (2).String_Collection;
   end Internal_Get_Tester;

   --------------------------
   -- Internal_Get_Verdict --
   --------------------------

   function Internal_Get_Verdict
    (Self : AMF.Internals.AMF_Element)
       return AMF.Utp.Utp_Verdict is
   begin
      return AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (5).Verdict_Value;
   end Internal_Get_Verdict;

   ---------------------------------
   -- Internal_Get_Verdict_Reason --
   ---------------------------------

   function Internal_Get_Verdict_Reason
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (6).String_Value;
   end Internal_Get_Verdict_Reason;

   --------------------------
   -- Internal_Get_Version --
   --------------------------

   function Internal_Get_Version
    (Self : AMF.Internals.AMF_Element)
       return Matreshka.Internals.Strings.Shared_String_Access is
   begin
      return
        AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (4).String_Value;
   end Internal_Get_Version;

   -------------------------------------------
   -- Internal_Set_Base_Accept_Event_Action --
   -------------------------------------------

   procedure Internal_Set_Base_Accept_Event_Action
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Time_Out_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Time_Out_Action_Base_Accept_Event_Action_Extension_Time_Out_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Accept_Event_Action;

   --------------------------------
   -- Internal_Set_Base_Behavior --
   --------------------------------

   procedure Internal_Set_Base_Behavior
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Default =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Default_Base_Behavior_Extension_Default,
              Self,
              To);

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Case =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Test_Case_Base_Behavior_Extension_Test_Case,
              Self,
              To);

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Log =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Test_Log_Base_Behavior_Extension_Test_Log,
              Self,
              To);

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Suite =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Test_Suite_Base_Behavior_Extension_Test_Suite,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Behavior;

   ---------------------------------------------
   -- Internal_Set_Base_Behaviored_Classifier --
   ---------------------------------------------

   procedure Internal_Set_Base_Behaviored_Classifier
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Context =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Test_Context_Base_Behaviored_Classifier_Extension_Test_Context,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Behaviored_Classifier;

   ---------------------------------------------
   -- Internal_Set_Base_Call_Operation_Action --
   ---------------------------------------------

   procedure Internal_Set_Base_Call_Operation_Action
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Read_Timer_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Read_Timer_Action_Base_Call_Operation_Action_Extension_Read_Timer_Action,
              Self,
              To);

         when AMF.Internals.Tables.UTP_Types.E_Utp_Start_Timer_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Start_Timer_Action_Base_Call_Operation_Action_Extension_Start_Timer_Action,
              Self,
              To);

         when AMF.Internals.Tables.UTP_Types.E_Utp_Stop_Timer_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Stop_Timer_Action_Base_Call_Operation_Action_Extension_Stop_Timer_Action,
              Self,
              To);

         when AMF.Internals.Tables.UTP_Types.E_Utp_Validation_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Validation_Action_Base_Call_Operation_Action_Extension_Validation_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Call_Operation_Action;

   ----------------------------------
   -- Internal_Set_Base_Classifier --
   ----------------------------------

   procedure Internal_Set_Base_Classifier
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Data_Partition =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Data_Partition_Base_Classifier_Extension_Data_Partition,
              Self,
              To);

         when AMF.Internals.Tables.UTP_Types.E_Utp_Data_Pool =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Data_Pool_Base_Classifier_Extension_Data_Pool,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Classifier;

   -----------------------------------------
   -- Internal_Set_Base_Combined_Fragment --
   -----------------------------------------

   procedure Internal_Set_Base_Combined_Fragment
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Determ_Alt =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Determ_Alt_Base_Combined_Fragment_Extension_Determ_Alt,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Combined_Fragment;

   ----------------------------------
   -- Internal_Set_Base_Dependency --
   ----------------------------------

   procedure Internal_Set_Base_Dependency
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Default_Application =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Default_Application_Base_Dependency_Extension_Default_Application,
              Self,
              To);

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Log_Application =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Test_Log_Application_Base_Dependency_Extension_Test_Log_Application,
              Self,
              To);

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Objective =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Test_Objective_Base_Dependency_Extension_Test_Objective,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Dependency;

   -------------------------------
   -- Internal_Set_Base_Element --
   -------------------------------

   procedure Internal_Set_Base_Element
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Managed_Element =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Managed_Element_Base_Element_Extension_Managed_Element,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Element;

   -----------------------------------------
   -- Internal_Set_Base_Invocation_Action --
   -----------------------------------------

   procedure Internal_Set_Base_Invocation_Action
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Finish_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Finish_Action_Base_Invocation_Action_Extension_Finish_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Invocation_Action;

   ---------------------------------------------
   -- Internal_Set_Base_Literal_Specification --
   ---------------------------------------------

   procedure Internal_Set_Base_Literal_Specification
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Literal_Any =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Literal_Any_Base_Literal_Specification_Extension_Literal_Any,
              Self,
              To);

         when AMF.Internals.Tables.UTP_Types.E_Utp_Literal_Any_Or_Null =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Literal_Any_Or_Null_Base_Literal_Specification_Extension_Literal_Any_Or_Null,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Literal_Specification;

   -------------------------------
   -- Internal_Set_Base_Message --
   -------------------------------

   procedure Internal_Set_Base_Message
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Time_Out_Message =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Time_Out_Message_Base_Message_Extension_Time_Out_Message,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Message;

   ---------------------------------
   -- Internal_Set_Base_Namespace --
   ---------------------------------

   procedure Internal_Set_Base_Namespace
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Coding_Rule =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Coding_Rule_Base_Namespace_Extension_Coding_Rule,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Namespace;

   -------------------------------------
   -- Internal_Set_Base_Opaque_Action --
   -------------------------------------

   procedure Internal_Set_Base_Opaque_Action
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Finish_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Finish_Action_Base_Opaque_Action_Extension_Finish_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Opaque_Action;

   ---------------------------------
   -- Internal_Set_Base_Operation --
   ---------------------------------

   procedure Internal_Set_Base_Operation
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Data_Selector =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Data_Selector_Base_Operation_Extension_Data_Selector,
              Self,
              To);

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Case =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Test_Case_Base_Operation_Extension_Test_Case,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Operation;

   --------------------------------
   -- Internal_Set_Base_Property --
   --------------------------------

   procedure Internal_Set_Base_Property
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Coding_Rule =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Coding_Rule_Base_Property_Extension_Coding_Rule,
              Self,
              To);

         when AMF.Internals.Tables.UTP_Types.E_Utp_Data_Pool =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Data_Pool_Base_Property_Extension_Data_Pool,
              Self,
              To);

         when AMF.Internals.Tables.UTP_Types.E_Utp_SUT =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_SUT_Base_Property_Extension_SUT,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Property;

   ------------------------------------------------------
   -- Internal_Set_Base_Read_Structural_Feature_Action --
   ------------------------------------------------------

   procedure Internal_Set_Base_Read_Structural_Feature_Action
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Get_Timezone_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Get_Timezone_Action_Base_Read_Structural_Feature_Action_Extension_Get_Timezone_Action,
              Self,
              To);

         when AMF.Internals.Tables.UTP_Types.E_Utp_Timer_Running_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Timer_Running_Action_Base_Read_Structural_Feature_Action_Extension_Timer_Running_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Read_Structural_Feature_Action;

   ------------------------------------------
   -- Internal_Set_Base_Send_Object_Action --
   ------------------------------------------

   procedure Internal_Set_Base_Send_Object_Action
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Log_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Log_Action_Base_Send_Object_Action_Extension_Log_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Send_Object_Action;

   ---------------------------------------------
   -- Internal_Set_Base_Structured_Classifier --
   ---------------------------------------------

   procedure Internal_Set_Base_Structured_Classifier
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Component =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Test_Component_Base_Structured_Classifier_Extension_Test_Component,
              Self,
              To);

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Context =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Test_Context_Base_Structured_Classifier_Extension_Test_Context,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Structured_Classifier;

   ----------------------------------
   -- Internal_Set_Base_Time_Event --
   ----------------------------------

   procedure Internal_Set_Base_Time_Event
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Time_Out =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Time_Out_Base_Time_Event_Extension_Time_Out,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Time_Event;

   -------------------------------------------
   -- Internal_Set_Base_Value_Specification --
   -------------------------------------------

   procedure Internal_Set_Base_Value_Specification
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Coding_Rule =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Coding_Rule_Base_Value_Specification_Extension_Coding_Rule,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Value_Specification;

   -------------------------------------------------------
   -- Internal_Set_Base_Write_Structural_Feature_Action --
   -------------------------------------------------------

   procedure Internal_Set_Base_Write_Structural_Feature_Action
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Internals.AMF_Element) is
   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_Utp_Set_Timezone_Action =>
            AMF.Internals.Links.Create_Link
             (AMF.Internals.Tables.Utp_Metamodel.MA_Utp_Set_Timezone_Action_Base_Write_Structural_Feature_Action_Extension_Set_Timezone_Action,
              Self,
              To);

         when others =>
            raise Program_Error;
      end case;
   end Internal_Set_Base_Write_Structural_Feature_Action;

   -------------------------
   -- Internal_Set_Coding --
   -------------------------

   procedure Internal_Set_Coding
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old :=
        AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (4).String_Value;

      UTP_Element_Table.Table (Self).Member (4).String_Value := To;
      Matreshka.Internals.Strings.Reference
       (UTP_Element_Table.Table (Self).Member (4).String_Value);

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Coding_Rule_Coding, Old, To);
      Matreshka.Internals.Strings.Dereference (Old);
   end Internal_Set_Coding;

   ------------------------------
   -- Internal_Set_Criticality --
   ------------------------------

   procedure Internal_Set_Criticality
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (5).String_Value;

      UTP_Element_Table.Table (Self).Member (5).String_Value := To;

      if UTP_Element_Table.Table (Self).Member (5).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UTP_Element_Table.Table (Self).Member (5).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Managed_Element_Criticality, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Criticality;

   ------------------------------
   -- Internal_Set_Description --
   ------------------------------

   procedure Internal_Set_Description
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (3).String_Value;

      UTP_Element_Table.Table (Self).Member (3).String_Value := To;

      if UTP_Element_Table.Table (Self).Member (3).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UTP_Element_Table.Table (Self).Member (3).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Managed_Element_Description, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Description;

   ---------------------------
   -- Internal_Set_Duration --
   ---------------------------

   procedure Internal_Set_Duration
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (4).String_Value;

      UTP_Element_Table.Table (Self).Member (4).String_Value := To;

      if UTP_Element_Table.Table (Self).Member (4).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UTP_Element_Table.Table (Self).Member (4).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Duration, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Duration;

   ------------------------------
   -- Internal_Set_Executed_At --
   ------------------------------

   procedure Internal_Set_Executed_At
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (3).String_Value;

      UTP_Element_Table.Table (Self).Member (3).String_Value := To;

      if UTP_Element_Table.Table (Self).Member (3).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UTP_Element_Table.Table (Self).Member (3).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Executed_At, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Executed_At;

   ------------------------
   -- Internal_Set_Owner --
   ------------------------

   procedure Internal_Set_Owner
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (2).String_Value;

      UTP_Element_Table.Table (Self).Member (2).String_Value := To;

      if UTP_Element_Table.Table (Self).Member (2).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UTP_Element_Table.Table (Self).Member (2).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Managed_Element_Owner, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Owner;

   ---------------------------
   -- Internal_Set_Priority --
   ---------------------------

   procedure Internal_Set_Priority
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (4).String_Value;

      UTP_Element_Table.Table (Self).Member (4).String_Value := To;

      if UTP_Element_Table.Table (Self).Member (4).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UTP_Element_Table.Table (Self).Member (4).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Case_Priority, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Priority;

   -----------------------------
   -- Internal_Set_Repetition --
   -----------------------------

   procedure Internal_Set_Repetition
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Unlimited_Natural)
   is
      Old : AMF.Unlimited_Natural;

   begin
      Old := AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (2).Unlimited_Natural_Value;
      AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (2).Unlimited_Natural_Value := To;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Default_Application_Repetition, Old, To);
   end Internal_Set_Repetition;

   ------------------------------
   -- Internal_Set_Sut_Version --
   ------------------------------

   procedure Internal_Set_Sut_Version
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (7).String_Value;

      UTP_Element_Table.Table (Self).Member (7).String_Value := To;

      if UTP_Element_Table.Table (Self).Member (7).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UTP_Element_Table.Table (Self).Member (7).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Sut_Version, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Sut_Version;

   -----------------------------
   -- Internal_Set_Test_Level --
   -----------------------------

   procedure Internal_Set_Test_Level
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (5).String_Value;

      UTP_Element_Table.Table (Self).Member (5).String_Value := To;

      if UTP_Element_Table.Table (Self).Member (5).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UTP_Element_Table.Table (Self).Member (5).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Context_Test_Level, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Test_Level;

   --------------------------
   -- Internal_Set_Verdict --
   --------------------------

   procedure Internal_Set_Verdict
    (Self : AMF.Internals.AMF_Element;
     To   : AMF.Utp.Utp_Verdict)
   is
      Old : AMF.Utp.Utp_Verdict;

   begin
      Old := AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (5).Verdict_Value;
      AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (5).Verdict_Value := To;

      AMF.Internals.Tables.Utp_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Verdict, Old, To);
   end Internal_Set_Verdict;

   ---------------------------------
   -- Internal_Set_Verdict_Reason --
   ---------------------------------

   procedure Internal_Set_Verdict_Reason
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (6).String_Value;

      UTP_Element_Table.Table (Self).Member (6).String_Value := To;

      if UTP_Element_Table.Table (Self).Member (6).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UTP_Element_Table.Table (Self).Member (6).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Verdict_Reason, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Verdict_Reason;

   --------------------------
   -- Internal_Set_Version --
   --------------------------

   procedure Internal_Set_Version
    (Self : AMF.Internals.AMF_Element;
     To   : Matreshka.Internals.Strings.Shared_String_Access)
   is
      Old : Matreshka.Internals.Strings.Shared_String_Access;

   begin
      Old := AMF.Internals.Tables.UTP_Element_Table.Table (Self).Member (4).String_Value;

      UTP_Element_Table.Table (Self).Member (4).String_Value := To;

      if UTP_Element_Table.Table (Self).Member (4).String_Value /= null then
         Matreshka.Internals.Strings.Reference
          (UTP_Element_Table.Table (Self).Member (4).String_Value);
      end if;

      AMF.Internals.Tables.Primitive_Types_Notification.Notify_Attribute_Set
       (Self, AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Managed_Element_Version, Old, To);

      if Old /= null then
         Matreshka.Internals.Strings.Reference (Old);
      end if;
   end Internal_Set_Version;

end AMF.Internals.Tables.UTP_Attributes;
