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
with AMF.Holders.Elements;
with AMF.Holders.Unlimited_Naturals;
with AMF.Internals.Helpers;
with AMF.Internals.Holders.UML_Holders;
with AMF.Internals.Tables.UTP_Element_Table;
with AMF.Internals.Tables.UTP_Types;
with AMF.Internals.Tables.Utp_Metamodel;
with AMF.String_Collections.Internals;
with AMF.UML.Accept_Event_Actions;
with AMF.UML.Behaviored_Classifiers;
with AMF.UML.Behaviors;
with AMF.UML.Call_Operation_Actions;
with AMF.UML.Classifiers;
with AMF.UML.Combined_Fragments;
with AMF.UML.Dependencies;
with AMF.UML.Elements;
with AMF.UML.Invocation_Actions;
with AMF.UML.Literal_Specifications;
with AMF.UML.Messages;
with AMF.UML.Namespaces;
with AMF.UML.Opaque_Actions;
with AMF.UML.Operations;
with AMF.UML.Properties;
with AMF.UML.Read_Structural_Feature_Actions;
with AMF.UML.Send_Object_Actions;
with AMF.UML.Structured_Classifiers;
with AMF.UML.Time_Events;
with AMF.UML.Value_Specifications;
with AMF.UML.Write_Structural_Feature_Actions;
with AMF.Utp.Coding_Rules;
with AMF.Utp.Data_Partitions;
with AMF.Utp.Data_Pools;
with AMF.Utp.Data_Selectors;
with AMF.Utp.Default_Applications;
with AMF.Utp.Defaults;
with AMF.Utp.Determ_Alts;
with AMF.Utp.Finish_Actions;
with AMF.Utp.Get_Timezone_Actions;
with AMF.Utp.Holders.Verdicts;
with AMF.Utp.Literal_Anies;
with AMF.Utp.Literal_Any_Or_Nulls;
with AMF.Utp.Log_Actions;
with AMF.Utp.Managed_Elements;
with AMF.Utp.Read_Timer_Actions;
with AMF.Utp.SUTs;
with AMF.Utp.Set_Timezone_Actions;
with AMF.Utp.Start_Timer_Actions;
with AMF.Utp.Stop_Timer_Actions;
with AMF.Utp.Test_Cases.Collections;
with AMF.Utp.Test_Components;
with AMF.Utp.Test_Contexts;
with AMF.Utp.Test_Log_Applications;
with AMF.Utp.Test_Logs;
with AMF.Utp.Test_Objectives;
with AMF.Utp.Test_Suites;
with AMF.Utp.Time_Out_Actions;
with AMF.Utp.Time_Out_Messages;
with AMF.Utp.Time_Outs;
with AMF.Utp.Timer_Running_Actions;
with AMF.Utp.Validation_Actions;
with League.Holders;

package body AMF.Internals.Tables.UTP_Reflection is

   ---------
   -- Get --
   ---------

   function Get
    (Self     : AMF.Internals.AMF_Element;
     Property : CMOF_Element) return League.Holders.Holder
   is

      function Utp_Coding_Rule_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of CodingRule class.

      function Utp_Data_Partition_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of DataPartition class.

      function Utp_Data_Pool_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of DataPool class.

      function Utp_Data_Selector_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of DataSelector class.

      function Utp_Default_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of Default class.

      function Utp_Default_Application_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of DefaultApplication class.

      function Utp_Determ_Alt_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of DetermAlt class.

      function Utp_Finish_Action_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of FinishAction class.

      function Utp_Get_Timezone_Action_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of GetTimezoneAction class.

      function Utp_Literal_Any_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of LiteralAny class.

      function Utp_Literal_Any_Or_Null_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of LiteralAnyOrNull class.

      function Utp_Log_Action_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of LogAction class.

      function Utp_Managed_Element_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of ManagedElement class.

      function Utp_Read_Timer_Action_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of ReadTimerAction class.

      function Utp_SUT_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of SUT class.

      function Utp_Set_Timezone_Action_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of SetTimezoneAction class.

      function Utp_Start_Timer_Action_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of StartTimerAction class.

      function Utp_Stop_Timer_Action_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of StopTimerAction class.

      function Utp_Test_Case_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TestCase class.

      function Utp_Test_Component_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TestComponent class.

      function Utp_Test_Context_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TestContext class.

      function Utp_Test_Log_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TestLog class.

      function Utp_Test_Log_Application_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TestLogApplication class.

      function Utp_Test_Objective_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TestObjective class.

      function Utp_Test_Suite_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TestSuite class.

      function Utp_Time_Out_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TimeOut class.

      function Utp_Time_Out_Action_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TimeOutAction class.

      function Utp_Time_Out_Message_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TimeOutMessage class.

      function Utp_Timer_Running_Action_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of TimerRunningAction class.

      function Utp_Validation_Action_Get return League.Holders.Holder;
      --  Returns attribute's value of instance of ValidationAction class.

      -------------------------
      -- Utp_Coding_Rule_Get --
      -------------------------

      function Utp_Coding_Rule_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Coding_Rule_Base_Namespace_A_Extension_Coding_Rule then
            --  CodingRule::base_Namespace : Namespace

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Namespaces.UML_Namespace_Access'
                 (AMF.Utp.Coding_Rules.Utp_Coding_Rule_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Namespace));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Coding_Rule_Base_Property_A_Extension_Coding_Rule then
            --  CodingRule::base_Property : Property

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Properties.UML_Property_Access'
                 (AMF.Utp.Coding_Rules.Utp_Coding_Rule_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Property));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Coding_Rule_Base_Value_Specification_A_Extension_Coding_Rule then
            --  CodingRule::base_ValueSpecification : ValueSpecification

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Value_Specifications.UML_Value_Specification_Access'
                 (AMF.Utp.Coding_Rules.Utp_Coding_Rule_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Value_Specification));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Coding_Rule_Coding then
            --  CodingRule::coding : String

            return
              League.Holders.To_Holder
               (AMF.Utp.Coding_Rules.Utp_Coding_Rule_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Coding);

         else
            raise Program_Error;
         end if;
      end Utp_Coding_Rule_Get;

      ----------------------------
      -- Utp_Data_Partition_Get --
      ----------------------------

      function Utp_Data_Partition_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Data_Partition_Base_Classifier_A_Extension_Data_Partition then
            --  DataPartition::base_Classifier : Classifier

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifiers.UML_Classifier_Access'
                 (AMF.Utp.Data_Partitions.Utp_Data_Partition_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Classifier));

         else
            raise Program_Error;
         end if;
      end Utp_Data_Partition_Get;

      -----------------------
      -- Utp_Data_Pool_Get --
      -----------------------

      function Utp_Data_Pool_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Data_Pool_Base_Classifier_A_Extension_Data_Pool then
            --  DataPool::base_Classifier : Classifier

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Classifiers.UML_Classifier_Access'
                 (AMF.Utp.Data_Pools.Utp_Data_Pool_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Classifier));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Data_Pool_Base_Property_A_Extension_Data_Pool then
            --  DataPool::base_Property : Property

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Properties.UML_Property_Access'
                 (AMF.Utp.Data_Pools.Utp_Data_Pool_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Property));

         else
            raise Program_Error;
         end if;
      end Utp_Data_Pool_Get;

      ---------------------------
      -- Utp_Data_Selector_Get --
      ---------------------------

      function Utp_Data_Selector_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Data_Selector_Base_Operation_A_Extension_Data_Selector then
            --  DataSelector::base_Operation : Operation

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Operations.UML_Operation_Access'
                 (AMF.Utp.Data_Selectors.Utp_Data_Selector_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Operation));

         else
            raise Program_Error;
         end if;
      end Utp_Data_Selector_Get;

      ---------------------
      -- Utp_Default_Get --
      ---------------------

      function Utp_Default_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Default_Base_Behavior_A_Extension_Default then
            --  Default::base_Behavior : Behavior

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Behaviors.UML_Behavior_Access'
                 (AMF.Utp.Defaults.Utp_Default_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Behavior));

         else
            raise Program_Error;
         end if;
      end Utp_Default_Get;

      ---------------------------------
      -- Utp_Default_Application_Get --
      ---------------------------------

      function Utp_Default_Application_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Default_Application_Base_Dependency_A_Extension_Default_Application then
            --  DefaultApplication::base_Dependency : Dependency

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Dependencies.UML_Dependency_Access'
                 (AMF.Utp.Default_Applications.Utp_Default_Application_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Dependency));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Default_Application_Repetition then
            --  DefaultApplication::repetition : UnlimitedNatural

            return
              AMF.Holders.Unlimited_Naturals.To_Holder
               (AMF.Utp.Default_Applications.Utp_Default_Application_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Repetition);

         else
            raise Program_Error;
         end if;
      end Utp_Default_Application_Get;

      ------------------------
      -- Utp_Determ_Alt_Get --
      ------------------------

      function Utp_Determ_Alt_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Determ_Alt_Base_Combined_Fragment_A_Extension_Determ_Alt then
            --  DetermAlt::base_CombinedFragment : CombinedFragment

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Combined_Fragments.UML_Combined_Fragment_Access'
                 (AMF.Utp.Determ_Alts.Utp_Determ_Alt_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Combined_Fragment));

         else
            raise Program_Error;
         end if;
      end Utp_Determ_Alt_Get;

      ---------------------------
      -- Utp_Finish_Action_Get --
      ---------------------------

      function Utp_Finish_Action_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Finish_Action_Base_Invocation_Action_A_Extension_Finish_Action then
            --  FinishAction::base_InvocationAction : InvocationAction

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Invocation_Actions.UML_Invocation_Action_Access'
                 (AMF.Utp.Finish_Actions.Utp_Finish_Action_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Invocation_Action));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Finish_Action_Base_Opaque_Action_A_Extension_Finish_Action then
            --  FinishAction::base_OpaqueAction : OpaqueAction

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Opaque_Actions.UML_Opaque_Action_Access'
                 (AMF.Utp.Finish_Actions.Utp_Finish_Action_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Opaque_Action));

         else
            raise Program_Error;
         end if;
      end Utp_Finish_Action_Get;

      ---------------------------------
      -- Utp_Get_Timezone_Action_Get --
      ---------------------------------

      function Utp_Get_Timezone_Action_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Get_Timezone_Action_Base_Read_Structural_Feature_Action_A_Extension_Get_Timezone_Action then
            --  GetTimezoneAction::base_ReadStructuralFeatureAction : ReadStructuralFeatureAction

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Read_Structural_Feature_Actions.UML_Read_Structural_Feature_Action_Access'
                 (AMF.Utp.Get_Timezone_Actions.Utp_Get_Timezone_Action_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Read_Structural_Feature_Action));

         else
            raise Program_Error;
         end if;
      end Utp_Get_Timezone_Action_Get;

      -------------------------
      -- Utp_Literal_Any_Get --
      -------------------------

      function Utp_Literal_Any_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Literal_Any_Base_Literal_Specification_A_Extension_Literal_Any then
            --  LiteralAny::base_LiteralSpecification : LiteralSpecification

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Literal_Specifications.UML_Literal_Specification_Access'
                 (AMF.Utp.Literal_Anies.Utp_Literal_Any_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Literal_Specification));

         else
            raise Program_Error;
         end if;
      end Utp_Literal_Any_Get;

      ---------------------------------
      -- Utp_Literal_Any_Or_Null_Get --
      ---------------------------------

      function Utp_Literal_Any_Or_Null_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Literal_Any_Or_Null_Base_Literal_Specification_A_Extension_Literal_Any_Or_Null then
            --  LiteralAnyOrNull::base_LiteralSpecification : LiteralSpecification

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Literal_Specifications.UML_Literal_Specification_Access'
                 (AMF.Utp.Literal_Any_Or_Nulls.Utp_Literal_Any_Or_Null_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Literal_Specification));

         else
            raise Program_Error;
         end if;
      end Utp_Literal_Any_Or_Null_Get;

      ------------------------
      -- Utp_Log_Action_Get --
      ------------------------

      function Utp_Log_Action_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Log_Action_Base_Send_Object_Action_A_Extension_Log_Action then
            --  LogAction::base_SendObjectAction : SendObjectAction

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Send_Object_Actions.UML_Send_Object_Action_Access'
                 (AMF.Utp.Log_Actions.Utp_Log_Action_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Send_Object_Action));

         else
            raise Program_Error;
         end if;
      end Utp_Log_Action_Get;

      -----------------------------
      -- Utp_Managed_Element_Get --
      -----------------------------

      function Utp_Managed_Element_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Managed_Element_Base_Element_A_Extension_Managed_Element then
            --  ManagedElement::base_Element : Element

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Elements.UML_Element_Access'
                 (AMF.Utp.Managed_Elements.Utp_Managed_Element_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Element));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Managed_Element_Criticality then
            --  ManagedElement::criticality : String

            return
              AMF.Holders.To_Holder
               (AMF.Utp.Managed_Elements.Utp_Managed_Element_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Criticality);

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Managed_Element_Description then
            --  ManagedElement::description : String

            return
              AMF.Holders.To_Holder
               (AMF.Utp.Managed_Elements.Utp_Managed_Element_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Description);

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Managed_Element_Owner then
            --  ManagedElement::owner : String

            return
              AMF.Holders.To_Holder
               (AMF.Utp.Managed_Elements.Utp_Managed_Element_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Owner);

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Managed_Element_Version then
            --  ManagedElement::version : String

            return
              AMF.Holders.To_Holder
               (AMF.Utp.Managed_Elements.Utp_Managed_Element_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Version);

         else
            raise Program_Error;
         end if;
      end Utp_Managed_Element_Get;

      -------------------------------
      -- Utp_Read_Timer_Action_Get --
      -------------------------------

      function Utp_Read_Timer_Action_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Read_Timer_Action_Base_Call_Operation_Action_A_Extension_Read_Timer_Action then
            --  ReadTimerAction::base_CallOperationAction : CallOperationAction

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access'
                 (AMF.Utp.Read_Timer_Actions.Utp_Read_Timer_Action_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Call_Operation_Action));

         else
            raise Program_Error;
         end if;
      end Utp_Read_Timer_Action_Get;

      -----------------
      -- Utp_SUT_Get --
      -----------------

      function Utp_SUT_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_SUT_Base_Property_A_Extension_SUT then
            --  SUT::base_Property : Property

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Properties.UML_Property_Access'
                 (AMF.Utp.SUTs.Utp_SUT_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Property));

         else
            raise Program_Error;
         end if;
      end Utp_SUT_Get;

      ---------------------------------
      -- Utp_Set_Timezone_Action_Get --
      ---------------------------------

      function Utp_Set_Timezone_Action_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Set_Timezone_Action_Base_Write_Structural_Feature_Action_A_Extension_Set_Timezone_Action then
            --  SetTimezoneAction::base_WriteStructuralFeatureAction : WriteStructuralFeatureAction

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Write_Structural_Feature_Actions.UML_Write_Structural_Feature_Action_Access'
                 (AMF.Utp.Set_Timezone_Actions.Utp_Set_Timezone_Action_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Write_Structural_Feature_Action));

         else
            raise Program_Error;
         end if;
      end Utp_Set_Timezone_Action_Get;

      --------------------------------
      -- Utp_Start_Timer_Action_Get --
      --------------------------------

      function Utp_Start_Timer_Action_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Start_Timer_Action_Base_Call_Operation_Action_A_Extension_Start_Timer_Action then
            --  StartTimerAction::base_CallOperationAction : CallOperationAction

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access'
                 (AMF.Utp.Start_Timer_Actions.Utp_Start_Timer_Action_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Call_Operation_Action));

         else
            raise Program_Error;
         end if;
      end Utp_Start_Timer_Action_Get;

      -------------------------------
      -- Utp_Stop_Timer_Action_Get --
      -------------------------------

      function Utp_Stop_Timer_Action_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Stop_Timer_Action_Base_Call_Operation_Action_A_Extension_Stop_Timer_Action then
            --  StopTimerAction::base_CallOperationAction : CallOperationAction

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access'
                 (AMF.Utp.Stop_Timer_Actions.Utp_Stop_Timer_Action_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Call_Operation_Action));

         else
            raise Program_Error;
         end if;
      end Utp_Stop_Timer_Action_Get;

      -----------------------
      -- Utp_Test_Case_Get --
      -----------------------

      function Utp_Test_Case_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Case_Base_Behavior_A_Extension_Test_Case then
            --  TestCase::base_Behavior : Behavior

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Behaviors.UML_Behavior_Access'
                 (AMF.Utp.Test_Cases.Utp_Test_Case_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Behavior));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Case_Base_Operation_A_Extension_Test_Case then
            --  TestCase::base_Operation : Operation

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Operations.UML_Operation_Access'
                 (AMF.Utp.Test_Cases.Utp_Test_Case_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Operation));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Case_Compatible_SUT_Variant then
            --  TestCase::compatibleSUTVariant : String

            return
              AMF.String_Collections.Internals.To_Holder
               (AMF.Utp.Test_Cases.Utp_Test_Case_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Compatible_SUT_Variant);

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Case_Compatible_SUT_Version then
            --  TestCase::compatibleSUTVersion : String

            return
              AMF.String_Collections.Internals.To_Holder
               (AMF.Utp.Test_Cases.Utp_Test_Case_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Compatible_SUT_Version);

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Case_Priority then
            --  TestCase::priority : String

            return
              AMF.Holders.To_Holder
               (AMF.Utp.Test_Cases.Utp_Test_Case_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Priority);

         else
            raise Program_Error;
         end if;
      end Utp_Test_Case_Get;

      ----------------------------
      -- Utp_Test_Component_Get --
      ----------------------------

      function Utp_Test_Component_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Component_Base_Structured_Classifier_A_Extension_Test_Component then
            --  TestComponent::base_StructuredClassifier : StructuredClassifier

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Structured_Classifiers.UML_Structured_Classifier_Access'
                 (AMF.Utp.Test_Components.Utp_Test_Component_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Structured_Classifier));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Component_Compatible_SUT_Variant then
            --  TestComponent::compatibleSUTVariant : String

            return
              AMF.String_Collections.Internals.To_Holder
               (AMF.Utp.Test_Components.Utp_Test_Component_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Compatible_SUT_Variant);

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Component_Compatible_SUT_Version then
            --  TestComponent::compatibleSUTVersion : String

            return
              AMF.String_Collections.Internals.To_Holder
               (AMF.Utp.Test_Components.Utp_Test_Component_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Compatible_SUT_Version);

         else
            raise Program_Error;
         end if;
      end Utp_Test_Component_Get;

      --------------------------
      -- Utp_Test_Context_Get --
      --------------------------

      function Utp_Test_Context_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Context_Base_Behaviored_Classifier_A_Extension_Test_Context then
            --  TestContext::base_BehavioredClassifier : BehavioredClassifier

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Behaviored_Classifiers.UML_Behaviored_Classifier_Access'
                 (AMF.Utp.Test_Contexts.Utp_Test_Context_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Behaviored_Classifier));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Context_Base_Structured_Classifier_A_Extension_Test_Context then
            --  TestContext::base_StructuredClassifier : StructuredClassifier

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Structured_Classifiers.UML_Structured_Classifier_Access'
                 (AMF.Utp.Test_Contexts.Utp_Test_Context_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Structured_Classifier));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Context_Compatible_SUT_Variant then
            --  TestContext::compatibleSUTVariant : String

            return
              AMF.String_Collections.Internals.To_Holder
               (AMF.Utp.Test_Contexts.Utp_Test_Context_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Compatible_SUT_Variant);

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Context_Compatible_SUT_Version then
            --  TestContext::compatibleSUTVersion : String

            return
              AMF.String_Collections.Internals.To_Holder
               (AMF.Utp.Test_Contexts.Utp_Test_Context_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Compatible_SUT_Version);

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Context_Test_Level then
            --  TestContext::testLevel : String

            return
              AMF.Holders.To_Holder
               (AMF.Utp.Test_Contexts.Utp_Test_Context_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Test_Level);

         else
            raise Program_Error;
         end if;
      end Utp_Test_Context_Get;

      ----------------------
      -- Utp_Test_Log_Get --
      ----------------------

      function Utp_Test_Log_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Base_Behavior_A_Extension_Test_Log then
            --  TestLog::base_Behavior : Behavior

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Behaviors.UML_Behavior_Access'
                 (AMF.Utp.Test_Logs.Utp_Test_Log_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Behavior));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Duration then
            --  TestLog::duration : String

            return
              AMF.Holders.To_Holder
               (AMF.Utp.Test_Logs.Utp_Test_Log_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Duration);

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Executed_At then
            --  TestLog::executedAt : String

            return
              AMF.Holders.To_Holder
               (AMF.Utp.Test_Logs.Utp_Test_Log_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Executed_At);

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Sut_Version then
            --  TestLog::sutVersion : String

            return
              AMF.Holders.To_Holder
               (AMF.Utp.Test_Logs.Utp_Test_Log_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Sut_Version);

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Tester then
            --  TestLog::tester : String

            return
              AMF.String_Collections.Internals.To_Holder
               (AMF.Utp.Test_Logs.Utp_Test_Log_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Tester);

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Verdict then
            --  TestLog::verdict : Verdict

            return
              AMF.Utp.Holders.Verdicts.To_Holder
               (AMF.Utp.Test_Logs.Utp_Test_Log_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Verdict);

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Verdict_Reason then
            --  TestLog::verdictReason : String

            return
              AMF.Holders.To_Holder
               (AMF.Utp.Test_Logs.Utp_Test_Log_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Verdict_Reason);

         else
            raise Program_Error;
         end if;
      end Utp_Test_Log_Get;

      ----------------------------------
      -- Utp_Test_Log_Application_Get --
      ----------------------------------

      function Utp_Test_Log_Application_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Application_Base_Dependency_A_Extension_Test_Log_Application then
            --  TestLogApplication::base_Dependency : Dependency

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Dependencies.UML_Dependency_Access'
                 (AMF.Utp.Test_Log_Applications.Utp_Test_Log_Application_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Dependency));

         else
            raise Program_Error;
         end if;
      end Utp_Test_Log_Application_Get;

      ----------------------------
      -- Utp_Test_Objective_Get --
      ----------------------------

      function Utp_Test_Objective_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Objective_Base_Dependency_A_Extension_Test_Objective then
            --  TestObjective::base_Dependency : Dependency

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Dependencies.UML_Dependency_Access'
                 (AMF.Utp.Test_Objectives.Utp_Test_Objective_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Dependency));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Objective_Priority then
            --  TestObjective::priority : String

            return
              AMF.Holders.To_Holder
               (AMF.Utp.Test_Objectives.Utp_Test_Objective_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Priority);

         else
            raise Program_Error;
         end if;
      end Utp_Test_Objective_Get;

      ------------------------
      -- Utp_Test_Suite_Get --
      ------------------------

      function Utp_Test_Suite_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Suite_Base_Behavior_A_Extension_Test_Suite then
            --  TestSuite::base_Behavior : Behavior

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Behaviors.UML_Behavior_Access'
                 (AMF.Utp.Test_Suites.Utp_Test_Suite_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Behavior));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Suite_Priority then
            --  TestSuite::priority : String

            return
              AMF.Holders.To_Holder
               (AMF.Utp.Test_Suites.Utp_Test_Suite_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Priority);

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Suite_Test_Case then
            --  TestSuite::testCase : TestCase

            return
              AMF.Utp.Test_Cases.Collections.Utp_Test_Case_Collections.Internals.To_Holder
               (AMF.Utp.Test_Suites.Utp_Test_Suite_Access
                 (AMF.Internals.Helpers.To_Element (Self)).Get_Test_Case);

         else
            raise Program_Error;
         end if;
      end Utp_Test_Suite_Get;

      ----------------------
      -- Utp_Time_Out_Get --
      ----------------------

      function Utp_Time_Out_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Time_Out_Base_Time_Event_A_Extension_Time_Out then
            --  TimeOut::base_TimeEvent : TimeEvent

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Time_Events.UML_Time_Event_Access'
                 (AMF.Utp.Time_Outs.Utp_Time_Out_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Time_Event));

         else
            raise Program_Error;
         end if;
      end Utp_Time_Out_Get;

      -----------------------------
      -- Utp_Time_Out_Action_Get --
      -----------------------------

      function Utp_Time_Out_Action_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Time_Out_Action_Base_Accept_Event_Action_A_Extension_Time_Out_Action then
            --  TimeOutAction::base_AcceptEventAction : AcceptEventAction

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Accept_Event_Actions.UML_Accept_Event_Action_Access'
                 (AMF.Utp.Time_Out_Actions.Utp_Time_Out_Action_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Accept_Event_Action));

         else
            raise Program_Error;
         end if;
      end Utp_Time_Out_Action_Get;

      ------------------------------
      -- Utp_Time_Out_Message_Get --
      ------------------------------

      function Utp_Time_Out_Message_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Time_Out_Message_Base_Message_A_Extension_Time_Out_Message then
            --  TimeOutMessage::base_Message : Message

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Messages.UML_Message_Access'
                 (AMF.Utp.Time_Out_Messages.Utp_Time_Out_Message_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Message));

         else
            raise Program_Error;
         end if;
      end Utp_Time_Out_Message_Get;

      ----------------------------------
      -- Utp_Timer_Running_Action_Get --
      ----------------------------------

      function Utp_Timer_Running_Action_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Timer_Running_Action_Base_Read_Structural_Feature_Action_A_Extension_Timer_Running_Action then
            --  TimerRunningAction::base_ReadStructuralFeatureAction : ReadStructuralFeatureAction

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Read_Structural_Feature_Actions.UML_Read_Structural_Feature_Action_Access'
                 (AMF.Utp.Timer_Running_Actions.Utp_Timer_Running_Action_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Read_Structural_Feature_Action));

         else
            raise Program_Error;
         end if;
      end Utp_Timer_Running_Action_Get;

      -------------------------------
      -- Utp_Validation_Action_Get --
      -------------------------------

      function Utp_Validation_Action_Get return League.Holders.Holder is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Validation_Action_Base_Call_Operation_Action_A_Extension_Validation_Action then
            --  ValidationAction::base_CallOperationAction : CallOperationAction

            return
              AMF.Internals.Holders.UML_Holders.To_Holder
               (AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access'
                 (AMF.Utp.Validation_Actions.Utp_Validation_Action_Access
                   (AMF.Internals.Helpers.To_Element (Self)).Get_Base_Call_Operation_Action));

         else
            raise Program_Error;
         end if;
      end Utp_Validation_Action_Get;

   begin
      case AMF.Internals.Tables.UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_None =>
            raise Program_Error;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Coding_Rule =>
            return Utp_Coding_Rule_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Data_Partition =>
            return Utp_Data_Partition_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Data_Pool =>
            return Utp_Data_Pool_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Data_Selector =>
            return Utp_Data_Selector_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Default =>
            return Utp_Default_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Default_Application =>
            return Utp_Default_Application_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Determ_Alt =>
            return Utp_Determ_Alt_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Finish_Action =>
            return Utp_Finish_Action_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Get_Timezone_Action =>
            return Utp_Get_Timezone_Action_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Literal_Any =>
            return Utp_Literal_Any_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Literal_Any_Or_Null =>
            return Utp_Literal_Any_Or_Null_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Log_Action =>
            return Utp_Log_Action_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Managed_Element =>
            return Utp_Managed_Element_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Read_Timer_Action =>
            return Utp_Read_Timer_Action_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_SUT =>
            return Utp_SUT_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Set_Timezone_Action =>
            return Utp_Set_Timezone_Action_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Start_Timer_Action =>
            return Utp_Start_Timer_Action_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Stop_Timer_Action =>
            return Utp_Stop_Timer_Action_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Case =>
            return Utp_Test_Case_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Component =>
            return Utp_Test_Component_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Context =>
            return Utp_Test_Context_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Log =>
            return Utp_Test_Log_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Log_Application =>
            return Utp_Test_Log_Application_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Objective =>
            return Utp_Test_Objective_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Suite =>
            return Utp_Test_Suite_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Time_Out =>
            return Utp_Time_Out_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Time_Out_Action =>
            return Utp_Time_Out_Action_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Time_Out_Message =>
            return Utp_Time_Out_Message_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Timer_Running_Action =>
            return Utp_Timer_Running_Action_Get;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Validation_Action =>
            return Utp_Validation_Action_Get;
      end case;
   end Get;

   --------------------
   -- Get_Meta_Class --
   --------------------

   function Get_Meta_Class
    (Self : AMF.Internals.AMF_Element) return CMOF_Element is
   begin
      case UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_None =>
            return 0;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Coding_Rule =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Coding_Rule;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Data_Partition =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Data_Partition;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Data_Pool =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Data_Pool;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Data_Selector =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Data_Selector;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Default =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Default;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Default_Application =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Default_Application;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Determ_Alt =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Determ_Alt;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Finish_Action =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Finish_Action;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Get_Timezone_Action =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Get_Timezone_Action;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Literal_Any =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Literal_Any;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Literal_Any_Or_Null =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Literal_Any_Or_Null;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Log_Action =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Log_Action;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Managed_Element =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Managed_Element;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Read_Timer_Action =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Read_Timer_Action;

         when AMF.Internals.Tables.UTP_Types.E_Utp_SUT =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_SUT;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Set_Timezone_Action =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Set_Timezone_Action;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Start_Timer_Action =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Start_Timer_Action;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Stop_Timer_Action =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Stop_Timer_Action;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Case =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Test_Case;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Component =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Test_Component;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Context =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Test_Context;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Log =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Test_Log;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Log_Application =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Test_Log_Application;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Objective =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Test_Objective;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Suite =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Test_Suite;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Time_Out =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Time_Out;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Time_Out_Action =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Time_Out_Action;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Time_Out_Message =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Time_Out_Message;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Timer_Running_Action =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Timer_Running_Action;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Validation_Action =>
            return AMF.Internals.Tables.Utp_Metamodel.MC_Utp_Validation_Action;
      end case;
   end Get_Meta_Class;

   ---------
   -- Set --
   ---------

   procedure Set
    (Self     : AMF.Internals.AMF_Element;
     Property : CMOF_Element;
     Value    : League.Holders.Holder)
   is

      procedure Utp_Coding_Rule_Set;
      --  Sets attribute's value of instance of CodingRule class.

      procedure Utp_Data_Partition_Set;
      --  Sets attribute's value of instance of DataPartition class.

      procedure Utp_Data_Pool_Set;
      --  Sets attribute's value of instance of DataPool class.

      procedure Utp_Data_Selector_Set;
      --  Sets attribute's value of instance of DataSelector class.

      procedure Utp_Default_Set;
      --  Sets attribute's value of instance of Default class.

      procedure Utp_Default_Application_Set;
      --  Sets attribute's value of instance of DefaultApplication class.

      procedure Utp_Determ_Alt_Set;
      --  Sets attribute's value of instance of DetermAlt class.

      procedure Utp_Finish_Action_Set;
      --  Sets attribute's value of instance of FinishAction class.

      procedure Utp_Get_Timezone_Action_Set;
      --  Sets attribute's value of instance of GetTimezoneAction class.

      procedure Utp_Literal_Any_Set;
      --  Sets attribute's value of instance of LiteralAny class.

      procedure Utp_Literal_Any_Or_Null_Set;
      --  Sets attribute's value of instance of LiteralAnyOrNull class.

      procedure Utp_Log_Action_Set;
      --  Sets attribute's value of instance of LogAction class.

      procedure Utp_Managed_Element_Set;
      --  Sets attribute's value of instance of ManagedElement class.

      procedure Utp_Read_Timer_Action_Set;
      --  Sets attribute's value of instance of ReadTimerAction class.

      procedure Utp_SUT_Set;
      --  Sets attribute's value of instance of SUT class.

      procedure Utp_Set_Timezone_Action_Set;
      --  Sets attribute's value of instance of SetTimezoneAction class.

      procedure Utp_Start_Timer_Action_Set;
      --  Sets attribute's value of instance of StartTimerAction class.

      procedure Utp_Stop_Timer_Action_Set;
      --  Sets attribute's value of instance of StopTimerAction class.

      procedure Utp_Test_Case_Set;
      --  Sets attribute's value of instance of TestCase class.

      procedure Utp_Test_Component_Set;
      --  Sets attribute's value of instance of TestComponent class.

      procedure Utp_Test_Context_Set;
      --  Sets attribute's value of instance of TestContext class.

      procedure Utp_Test_Log_Set;
      --  Sets attribute's value of instance of TestLog class.

      procedure Utp_Test_Log_Application_Set;
      --  Sets attribute's value of instance of TestLogApplication class.

      procedure Utp_Test_Objective_Set;
      --  Sets attribute's value of instance of TestObjective class.

      procedure Utp_Test_Suite_Set;
      --  Sets attribute's value of instance of TestSuite class.

      procedure Utp_Time_Out_Set;
      --  Sets attribute's value of instance of TimeOut class.

      procedure Utp_Time_Out_Action_Set;
      --  Sets attribute's value of instance of TimeOutAction class.

      procedure Utp_Time_Out_Message_Set;
      --  Sets attribute's value of instance of TimeOutMessage class.

      procedure Utp_Timer_Running_Action_Set;
      --  Sets attribute's value of instance of TimerRunningAction class.

      procedure Utp_Validation_Action_Set;
      --  Sets attribute's value of instance of ValidationAction class.

      -------------------------
      -- Utp_Coding_Rule_Set --
      -------------------------

      procedure Utp_Coding_Rule_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Coding_Rule_Base_Namespace_A_Extension_Coding_Rule then
            --  CodingRule::base_Namespace : Namespace

            AMF.Utp.Coding_Rules.Utp_Coding_Rule_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Namespace
               (AMF.UML.Namespaces.UML_Namespace_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Coding_Rule_Base_Property_A_Extension_Coding_Rule then
            --  CodingRule::base_Property : Property

            AMF.Utp.Coding_Rules.Utp_Coding_Rule_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Property
               (AMF.UML.Properties.UML_Property_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Coding_Rule_Base_Value_Specification_A_Extension_Coding_Rule then
            --  CodingRule::base_ValueSpecification : ValueSpecification

            AMF.Utp.Coding_Rules.Utp_Coding_Rule_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Value_Specification
               (AMF.UML.Value_Specifications.UML_Value_Specification_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Coding_Rule_Coding then
            --  CodingRule::coding : String

            AMF.Utp.Coding_Rules.Utp_Coding_Rule_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Coding
               (League.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Utp_Coding_Rule_Set;

      ----------------------------
      -- Utp_Data_Partition_Set --
      ----------------------------

      procedure Utp_Data_Partition_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Data_Partition_Base_Classifier_A_Extension_Data_Partition then
            --  DataPartition::base_Classifier : Classifier

            AMF.Utp.Data_Partitions.Utp_Data_Partition_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Classifier
               (AMF.UML.Classifiers.UML_Classifier_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Data_Partition_Set;

      -----------------------
      -- Utp_Data_Pool_Set --
      -----------------------

      procedure Utp_Data_Pool_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Data_Pool_Base_Classifier_A_Extension_Data_Pool then
            --  DataPool::base_Classifier : Classifier

            AMF.Utp.Data_Pools.Utp_Data_Pool_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Classifier
               (AMF.UML.Classifiers.UML_Classifier_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Data_Pool_Base_Property_A_Extension_Data_Pool then
            --  DataPool::base_Property : Property

            AMF.Utp.Data_Pools.Utp_Data_Pool_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Property
               (AMF.UML.Properties.UML_Property_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Data_Pool_Set;

      ---------------------------
      -- Utp_Data_Selector_Set --
      ---------------------------

      procedure Utp_Data_Selector_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Data_Selector_Base_Operation_A_Extension_Data_Selector then
            --  DataSelector::base_Operation : Operation

            AMF.Utp.Data_Selectors.Utp_Data_Selector_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Operation
               (AMF.UML.Operations.UML_Operation_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Data_Selector_Set;

      ---------------------
      -- Utp_Default_Set --
      ---------------------

      procedure Utp_Default_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Default_Base_Behavior_A_Extension_Default then
            --  Default::base_Behavior : Behavior

            AMF.Utp.Defaults.Utp_Default_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Behavior
               (AMF.UML.Behaviors.UML_Behavior_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Default_Set;

      ---------------------------------
      -- Utp_Default_Application_Set --
      ---------------------------------

      procedure Utp_Default_Application_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Default_Application_Base_Dependency_A_Extension_Default_Application then
            --  DefaultApplication::base_Dependency : Dependency

            AMF.Utp.Default_Applications.Utp_Default_Application_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Dependency
               (AMF.UML.Dependencies.UML_Dependency_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Default_Application_Repetition then
            --  DefaultApplication::repetition : UnlimitedNatural

            AMF.Utp.Default_Applications.Utp_Default_Application_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Repetition
               (AMF.Holders.Unlimited_Naturals.Element (Value));

         else
            raise Program_Error;
         end if;
      end Utp_Default_Application_Set;

      ------------------------
      -- Utp_Determ_Alt_Set --
      ------------------------

      procedure Utp_Determ_Alt_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Determ_Alt_Base_Combined_Fragment_A_Extension_Determ_Alt then
            --  DetermAlt::base_CombinedFragment : CombinedFragment

            AMF.Utp.Determ_Alts.Utp_Determ_Alt_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Combined_Fragment
               (AMF.UML.Combined_Fragments.UML_Combined_Fragment_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Determ_Alt_Set;

      ---------------------------
      -- Utp_Finish_Action_Set --
      ---------------------------

      procedure Utp_Finish_Action_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Finish_Action_Base_Invocation_Action_A_Extension_Finish_Action then
            --  FinishAction::base_InvocationAction : InvocationAction

            AMF.Utp.Finish_Actions.Utp_Finish_Action_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Invocation_Action
               (AMF.UML.Invocation_Actions.UML_Invocation_Action_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Finish_Action_Base_Opaque_Action_A_Extension_Finish_Action then
            --  FinishAction::base_OpaqueAction : OpaqueAction

            AMF.Utp.Finish_Actions.Utp_Finish_Action_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Opaque_Action
               (AMF.UML.Opaque_Actions.UML_Opaque_Action_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Finish_Action_Set;

      ---------------------------------
      -- Utp_Get_Timezone_Action_Set --
      ---------------------------------

      procedure Utp_Get_Timezone_Action_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Get_Timezone_Action_Base_Read_Structural_Feature_Action_A_Extension_Get_Timezone_Action then
            --  GetTimezoneAction::base_ReadStructuralFeatureAction : ReadStructuralFeatureAction

            AMF.Utp.Get_Timezone_Actions.Utp_Get_Timezone_Action_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Read_Structural_Feature_Action
               (AMF.UML.Read_Structural_Feature_Actions.UML_Read_Structural_Feature_Action_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Get_Timezone_Action_Set;

      -------------------------
      -- Utp_Literal_Any_Set --
      -------------------------

      procedure Utp_Literal_Any_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Literal_Any_Base_Literal_Specification_A_Extension_Literal_Any then
            --  LiteralAny::base_LiteralSpecification : LiteralSpecification

            AMF.Utp.Literal_Anies.Utp_Literal_Any_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Literal_Specification
               (AMF.UML.Literal_Specifications.UML_Literal_Specification_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Literal_Any_Set;

      ---------------------------------
      -- Utp_Literal_Any_Or_Null_Set --
      ---------------------------------

      procedure Utp_Literal_Any_Or_Null_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Literal_Any_Or_Null_Base_Literal_Specification_A_Extension_Literal_Any_Or_Null then
            --  LiteralAnyOrNull::base_LiteralSpecification : LiteralSpecification

            AMF.Utp.Literal_Any_Or_Nulls.Utp_Literal_Any_Or_Null_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Literal_Specification
               (AMF.UML.Literal_Specifications.UML_Literal_Specification_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Literal_Any_Or_Null_Set;

      ------------------------
      -- Utp_Log_Action_Set --
      ------------------------

      procedure Utp_Log_Action_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Log_Action_Base_Send_Object_Action_A_Extension_Log_Action then
            --  LogAction::base_SendObjectAction : SendObjectAction

            AMF.Utp.Log_Actions.Utp_Log_Action_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Send_Object_Action
               (AMF.UML.Send_Object_Actions.UML_Send_Object_Action_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Log_Action_Set;

      -----------------------------
      -- Utp_Managed_Element_Set --
      -----------------------------

      procedure Utp_Managed_Element_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Managed_Element_Base_Element_A_Extension_Managed_Element then
            --  ManagedElement::base_Element : Element

            AMF.Utp.Managed_Elements.Utp_Managed_Element_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Element
               (AMF.UML.Elements.UML_Element_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Managed_Element_Criticality then
            --  ManagedElement::criticality : String

            AMF.Utp.Managed_Elements.Utp_Managed_Element_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Criticality
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Managed_Element_Description then
            --  ManagedElement::description : String

            AMF.Utp.Managed_Elements.Utp_Managed_Element_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Description
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Managed_Element_Owner then
            --  ManagedElement::owner : String

            AMF.Utp.Managed_Elements.Utp_Managed_Element_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Owner
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Managed_Element_Version then
            --  ManagedElement::version : String

            AMF.Utp.Managed_Elements.Utp_Managed_Element_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Version
               (AMF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Utp_Managed_Element_Set;

      -------------------------------
      -- Utp_Read_Timer_Action_Set --
      -------------------------------

      procedure Utp_Read_Timer_Action_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Read_Timer_Action_Base_Call_Operation_Action_A_Extension_Read_Timer_Action then
            --  ReadTimerAction::base_CallOperationAction : CallOperationAction

            AMF.Utp.Read_Timer_Actions.Utp_Read_Timer_Action_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Call_Operation_Action
               (AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Read_Timer_Action_Set;

      -----------------
      -- Utp_SUT_Set --
      -----------------

      procedure Utp_SUT_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_SUT_Base_Property_A_Extension_SUT then
            --  SUT::base_Property : Property

            AMF.Utp.SUTs.Utp_SUT_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Property
               (AMF.UML.Properties.UML_Property_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_SUT_Set;

      ---------------------------------
      -- Utp_Set_Timezone_Action_Set --
      ---------------------------------

      procedure Utp_Set_Timezone_Action_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Set_Timezone_Action_Base_Write_Structural_Feature_Action_A_Extension_Set_Timezone_Action then
            --  SetTimezoneAction::base_WriteStructuralFeatureAction : WriteStructuralFeatureAction

            AMF.Utp.Set_Timezone_Actions.Utp_Set_Timezone_Action_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Write_Structural_Feature_Action
               (AMF.UML.Write_Structural_Feature_Actions.UML_Write_Structural_Feature_Action_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Set_Timezone_Action_Set;

      --------------------------------
      -- Utp_Start_Timer_Action_Set --
      --------------------------------

      procedure Utp_Start_Timer_Action_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Start_Timer_Action_Base_Call_Operation_Action_A_Extension_Start_Timer_Action then
            --  StartTimerAction::base_CallOperationAction : CallOperationAction

            AMF.Utp.Start_Timer_Actions.Utp_Start_Timer_Action_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Call_Operation_Action
               (AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Start_Timer_Action_Set;

      -------------------------------
      -- Utp_Stop_Timer_Action_Set --
      -------------------------------

      procedure Utp_Stop_Timer_Action_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Stop_Timer_Action_Base_Call_Operation_Action_A_Extension_Stop_Timer_Action then
            --  StopTimerAction::base_CallOperationAction : CallOperationAction

            AMF.Utp.Stop_Timer_Actions.Utp_Stop_Timer_Action_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Call_Operation_Action
               (AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Stop_Timer_Action_Set;

      -----------------------
      -- Utp_Test_Case_Set --
      -----------------------

      procedure Utp_Test_Case_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Case_Base_Behavior_A_Extension_Test_Case then
            --  TestCase::base_Behavior : Behavior

            AMF.Utp.Test_Cases.Utp_Test_Case_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Behavior
               (AMF.UML.Behaviors.UML_Behavior_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Case_Base_Operation_A_Extension_Test_Case then
            --  TestCase::base_Operation : Operation

            AMF.Utp.Test_Cases.Utp_Test_Case_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Operation
               (AMF.UML.Operations.UML_Operation_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Case_Priority then
            --  TestCase::priority : String

            AMF.Utp.Test_Cases.Utp_Test_Case_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Priority
               (AMF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Utp_Test_Case_Set;

      ----------------------------
      -- Utp_Test_Component_Set --
      ----------------------------

      procedure Utp_Test_Component_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Component_Base_Structured_Classifier_A_Extension_Test_Component then
            --  TestComponent::base_StructuredClassifier : StructuredClassifier

            AMF.Utp.Test_Components.Utp_Test_Component_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Structured_Classifier
               (AMF.UML.Structured_Classifiers.UML_Structured_Classifier_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Test_Component_Set;

      --------------------------
      -- Utp_Test_Context_Set --
      --------------------------

      procedure Utp_Test_Context_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Context_Base_Behaviored_Classifier_A_Extension_Test_Context then
            --  TestContext::base_BehavioredClassifier : BehavioredClassifier

            AMF.Utp.Test_Contexts.Utp_Test_Context_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Behaviored_Classifier
               (AMF.UML.Behaviored_Classifiers.UML_Behaviored_Classifier_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Context_Base_Structured_Classifier_A_Extension_Test_Context then
            --  TestContext::base_StructuredClassifier : StructuredClassifier

            AMF.Utp.Test_Contexts.Utp_Test_Context_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Structured_Classifier
               (AMF.UML.Structured_Classifiers.UML_Structured_Classifier_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Context_Test_Level then
            --  TestContext::testLevel : String

            AMF.Utp.Test_Contexts.Utp_Test_Context_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Test_Level
               (AMF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Utp_Test_Context_Set;

      ----------------------
      -- Utp_Test_Log_Set --
      ----------------------

      procedure Utp_Test_Log_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Base_Behavior_A_Extension_Test_Log then
            --  TestLog::base_Behavior : Behavior

            AMF.Utp.Test_Logs.Utp_Test_Log_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Behavior
               (AMF.UML.Behaviors.UML_Behavior_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Duration then
            --  TestLog::duration : String

            AMF.Utp.Test_Logs.Utp_Test_Log_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Duration
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Executed_At then
            --  TestLog::executedAt : String

            AMF.Utp.Test_Logs.Utp_Test_Log_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Executed_At
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Sut_Version then
            --  TestLog::sutVersion : String

            AMF.Utp.Test_Logs.Utp_Test_Log_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Sut_Version
               (AMF.Holders.Element (Value));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Verdict then
            --  TestLog::verdict : Verdict

            AMF.Utp.Test_Logs.Utp_Test_Log_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Verdict
               (AMF.Utp.Holders.Verdicts.Element (Value));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Verdict_Reason then
            --  TestLog::verdictReason : String

            AMF.Utp.Test_Logs.Utp_Test_Log_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Verdict_Reason
               (AMF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Utp_Test_Log_Set;

      ----------------------------------
      -- Utp_Test_Log_Application_Set --
      ----------------------------------

      procedure Utp_Test_Log_Application_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Log_Application_Base_Dependency_A_Extension_Test_Log_Application then
            --  TestLogApplication::base_Dependency : Dependency

            AMF.Utp.Test_Log_Applications.Utp_Test_Log_Application_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Dependency
               (AMF.UML.Dependencies.UML_Dependency_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Test_Log_Application_Set;

      ----------------------------
      -- Utp_Test_Objective_Set --
      ----------------------------

      procedure Utp_Test_Objective_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Objective_Base_Dependency_A_Extension_Test_Objective then
            --  TestObjective::base_Dependency : Dependency

            AMF.Utp.Test_Objectives.Utp_Test_Objective_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Dependency
               (AMF.UML.Dependencies.UML_Dependency_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Objective_Priority then
            --  TestObjective::priority : String

            AMF.Utp.Test_Objectives.Utp_Test_Objective_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Priority
               (AMF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Utp_Test_Objective_Set;

      ------------------------
      -- Utp_Test_Suite_Set --
      ------------------------

      procedure Utp_Test_Suite_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Suite_Base_Behavior_A_Extension_Test_Suite then
            --  TestSuite::base_Behavior : Behavior

            AMF.Utp.Test_Suites.Utp_Test_Suite_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Behavior
               (AMF.UML.Behaviors.UML_Behavior_Access (AMF.Holders.Elements.Element (Value)));

         elsif Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Test_Suite_Priority then
            --  TestSuite::priority : String

            AMF.Utp.Test_Suites.Utp_Test_Suite_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Priority
               (AMF.Holders.Element (Value));

         else
            raise Program_Error;
         end if;
      end Utp_Test_Suite_Set;

      ----------------------
      -- Utp_Time_Out_Set --
      ----------------------

      procedure Utp_Time_Out_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Time_Out_Base_Time_Event_A_Extension_Time_Out then
            --  TimeOut::base_TimeEvent : TimeEvent

            AMF.Utp.Time_Outs.Utp_Time_Out_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Time_Event
               (AMF.UML.Time_Events.UML_Time_Event_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Time_Out_Set;

      -----------------------------
      -- Utp_Time_Out_Action_Set --
      -----------------------------

      procedure Utp_Time_Out_Action_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Time_Out_Action_Base_Accept_Event_Action_A_Extension_Time_Out_Action then
            --  TimeOutAction::base_AcceptEventAction : AcceptEventAction

            AMF.Utp.Time_Out_Actions.Utp_Time_Out_Action_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Accept_Event_Action
               (AMF.UML.Accept_Event_Actions.UML_Accept_Event_Action_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Time_Out_Action_Set;

      ------------------------------
      -- Utp_Time_Out_Message_Set --
      ------------------------------

      procedure Utp_Time_Out_Message_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Time_Out_Message_Base_Message_A_Extension_Time_Out_Message then
            --  TimeOutMessage::base_Message : Message

            AMF.Utp.Time_Out_Messages.Utp_Time_Out_Message_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Message
               (AMF.UML.Messages.UML_Message_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Time_Out_Message_Set;

      ----------------------------------
      -- Utp_Timer_Running_Action_Set --
      ----------------------------------

      procedure Utp_Timer_Running_Action_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Timer_Running_Action_Base_Read_Structural_Feature_Action_A_Extension_Timer_Running_Action then
            --  TimerRunningAction::base_ReadStructuralFeatureAction : ReadStructuralFeatureAction

            AMF.Utp.Timer_Running_Actions.Utp_Timer_Running_Action_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Read_Structural_Feature_Action
               (AMF.UML.Read_Structural_Feature_Actions.UML_Read_Structural_Feature_Action_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Timer_Running_Action_Set;

      -------------------------------
      -- Utp_Validation_Action_Set --
      -------------------------------

      procedure Utp_Validation_Action_Set is
      begin
         if Property = AMF.Internals.Tables.Utp_Metamodel.MP_Utp_Validation_Action_Base_Call_Operation_Action_A_Extension_Validation_Action then
            --  ValidationAction::base_CallOperationAction : CallOperationAction

            AMF.Utp.Validation_Actions.Utp_Validation_Action_Access
             (AMF.Internals.Helpers.To_Element (Self)).Set_Base_Call_Operation_Action
               (AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access (AMF.Holders.Elements.Element (Value)));

         else
            raise Program_Error;
         end if;
      end Utp_Validation_Action_Set;
   begin
      case UTP_Element_Table.Table (Self).Kind is
         when AMF.Internals.Tables.UTP_Types.E_None =>
            raise Program_Error;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Coding_Rule =>
            Utp_Coding_Rule_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Data_Partition =>
            Utp_Data_Partition_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Data_Pool =>
            Utp_Data_Pool_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Data_Selector =>
            Utp_Data_Selector_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Default =>
            Utp_Default_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Default_Application =>
            Utp_Default_Application_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Determ_Alt =>
            Utp_Determ_Alt_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Finish_Action =>
            Utp_Finish_Action_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Get_Timezone_Action =>
            Utp_Get_Timezone_Action_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Literal_Any =>
            Utp_Literal_Any_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Literal_Any_Or_Null =>
            Utp_Literal_Any_Or_Null_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Log_Action =>
            Utp_Log_Action_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Managed_Element =>
            Utp_Managed_Element_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Read_Timer_Action =>
            Utp_Read_Timer_Action_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_SUT =>
            Utp_SUT_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Set_Timezone_Action =>
            Utp_Set_Timezone_Action_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Start_Timer_Action =>
            Utp_Start_Timer_Action_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Stop_Timer_Action =>
            Utp_Stop_Timer_Action_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Case =>
            Utp_Test_Case_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Component =>
            Utp_Test_Component_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Context =>
            Utp_Test_Context_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Log =>
            Utp_Test_Log_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Log_Application =>
            Utp_Test_Log_Application_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Objective =>
            Utp_Test_Objective_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Test_Suite =>
            Utp_Test_Suite_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Time_Out =>
            Utp_Time_Out_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Time_Out_Action =>
            Utp_Time_Out_Action_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Time_Out_Message =>
            Utp_Time_Out_Message_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Timer_Running_Action =>
            Utp_Timer_Running_Action_Set;

         when AMF.Internals.Tables.UTP_Types.E_Utp_Validation_Action =>
            Utp_Validation_Action_Set;
      end case;
   end Set;

end AMF.Internals.Tables.UTP_Reflection;
