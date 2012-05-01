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
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
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

package AMF.Internals.Tables.Utp_Metamodel is

   pragma Preelaborate;

   function MM_Utp_Utp return AMF.Internals.CMOF_Element;

   function MC_Utp_Duration return AMF.Internals.CMOF_Element;
   function MC_Utp_Time return AMF.Internals.CMOF_Element;
   function MC_Utp_Timezone return AMF.Internals.CMOF_Element;
   function MC_Utp_Verdict return AMF.Internals.CMOF_Element;

   function MC_Utp_Coding_Rule return AMF.Internals.CMOF_Element;
   function MC_Utp_Data_Partition return AMF.Internals.CMOF_Element;
   function MC_Utp_Data_Pool return AMF.Internals.CMOF_Element;
   function MC_Utp_Data_Selector return AMF.Internals.CMOF_Element;
   function MC_Utp_Default return AMF.Internals.CMOF_Element;
   function MC_Utp_Default_Application return AMF.Internals.CMOF_Element;
   function MC_Utp_Determ_Alt return AMF.Internals.CMOF_Element;
   function MC_Utp_Finish_Action return AMF.Internals.CMOF_Element;
   function MC_Utp_Get_Timezone_Action return AMF.Internals.CMOF_Element;
   function MC_Utp_Literal_Any return AMF.Internals.CMOF_Element;
   function MC_Utp_Literal_Any_Or_Null return AMF.Internals.CMOF_Element;
   function MC_Utp_Log_Action return AMF.Internals.CMOF_Element;
   function MC_Utp_Managed_Element return AMF.Internals.CMOF_Element;
   function MC_Utp_Read_Timer_Action return AMF.Internals.CMOF_Element;
   function MC_Utp_SUT return AMF.Internals.CMOF_Element;
   function MC_Utp_Set_Timezone_Action return AMF.Internals.CMOF_Element;
   function MC_Utp_Start_Timer_Action return AMF.Internals.CMOF_Element;
   function MC_Utp_Stop_Timer_Action return AMF.Internals.CMOF_Element;
   function MC_Utp_Test_Case return AMF.Internals.CMOF_Element;
   function MC_Utp_Test_Component return AMF.Internals.CMOF_Element;
   function MC_Utp_Test_Context return AMF.Internals.CMOF_Element;
   function MC_Utp_Test_Log return AMF.Internals.CMOF_Element;
   function MC_Utp_Test_Log_Application return AMF.Internals.CMOF_Element;
   function MC_Utp_Test_Objective return AMF.Internals.CMOF_Element;
   function MC_Utp_Test_Suite return AMF.Internals.CMOF_Element;
   function MC_Utp_Time_Out return AMF.Internals.CMOF_Element;
   function MC_Utp_Time_Out_Action return AMF.Internals.CMOF_Element;
   function MC_Utp_Time_Out_Message return AMF.Internals.CMOF_Element;
   function MC_Utp_Timer_Running_Action return AMF.Internals.CMOF_Element;
   function MC_Utp_Validation_Action return AMF.Internals.CMOF_Element;

   function MP_Utp_Coding_Rule_Base_Namespace return AMF.Internals.CMOF_Element;
   function MP_Utp_Coding_Rule_Base_Property return AMF.Internals.CMOF_Element;
   function MP_Utp_Coding_Rule_Base_Value_Specification return AMF.Internals.CMOF_Element;
   function MP_Utp_Coding_Rule_Coding return AMF.Internals.CMOF_Element;
   function MP_Utp_Data_Partition_Base_Classifier return AMF.Internals.CMOF_Element;
   function MP_Utp_Data_Pool_Base_Classifier return AMF.Internals.CMOF_Element;
   function MP_Utp_Data_Pool_Base_Property return AMF.Internals.CMOF_Element;
   function MP_Utp_Data_Selector_Base_Operation return AMF.Internals.CMOF_Element;
   function MP_Utp_Default_Base_Behavior return AMF.Internals.CMOF_Element;
   function MP_Utp_Default_Application_Base_Dependency return AMF.Internals.CMOF_Element;
   function MP_Utp_Default_Application_Repetition return AMF.Internals.CMOF_Element;
   function MP_Utp_Determ_Alt_Base_Combined_Fragment return AMF.Internals.CMOF_Element;
   function MP_Utp_Finish_Action_Base_Invocation_Action return AMF.Internals.CMOF_Element;
   function MP_Utp_Finish_Action_Base_Opaque_Action return AMF.Internals.CMOF_Element;
   function MP_Utp_Get_Timezone_Action_Base_Read_Structural_Feature_Action return AMF.Internals.CMOF_Element;
   function MP_Utp_Literal_Any_Base_Literal_Specification return AMF.Internals.CMOF_Element;
   function MP_Utp_Literal_Any_Or_Null_Base_Literal_Specification return AMF.Internals.CMOF_Element;
   function MP_Utp_Log_Action_Base_Send_Object_Action return AMF.Internals.CMOF_Element;
   function MP_Utp_Managed_Element_Base_Element return AMF.Internals.CMOF_Element;
   function MP_Utp_Managed_Element_Criticality return AMF.Internals.CMOF_Element;
   function MP_Utp_Managed_Element_Description return AMF.Internals.CMOF_Element;
   function MP_Utp_Managed_Element_Owner return AMF.Internals.CMOF_Element;
   function MP_Utp_Managed_Element_Version return AMF.Internals.CMOF_Element;
   function MP_Utp_Read_Timer_Action_Base_Call_Operation_Action return AMF.Internals.CMOF_Element;
   function MP_Utp_SUT_Base_Property return AMF.Internals.CMOF_Element;
   function MP_Utp_Set_Timezone_Action_Base_Write_Structural_Feature_Action return AMF.Internals.CMOF_Element;
   function MP_Utp_Start_Timer_Action_Base_Call_Operation_Action return AMF.Internals.CMOF_Element;
   function MP_Utp_Stop_Timer_Action_Base_Call_Operation_Action return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Case_Base_Behavior return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Case_Base_Operation return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Case_Compatible_SUT_Variant return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Case_Compatible_SUT_Version return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Case_Priority return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Component_Base_Structured_Classifier return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Component_Compatible_SUT_Variant return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Component_Compatible_SUT_Version return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Context_Base_Behaviored_Classifier return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Context_Base_Structured_Classifier return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Context_Compatible_SUT_Variant return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Context_Compatible_SUT_Version return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Context_Test_Level return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Log_Base_Behavior return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Log_Duration return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Log_Executed_At return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Log_Sut_Version return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Log_Tester return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Log_Verdict return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Log_Verdict_Reason return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Log_Application_Base_Dependency return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Objective_Base_Dependency return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Objective_Priority return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Suite_Base_Behavior return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Suite_Priority return AMF.Internals.CMOF_Element;
   function MP_Utp_Test_Suite_Test_Case return AMF.Internals.CMOF_Element;
   function MP_Utp_Time_Out_Base_Time_Event return AMF.Internals.CMOF_Element;
   function MP_Utp_Time_Out_Action_Base_Accept_Event_Action return AMF.Internals.CMOF_Element;
   function MP_Utp_Time_Out_Message_Base_Message return AMF.Internals.CMOF_Element;
   function MP_Utp_Timer_Running_Action_Base_Read_Structural_Feature_Action return AMF.Internals.CMOF_Element;
   function MP_Utp_Validation_Action_Base_Call_Operation_Action return AMF.Internals.CMOF_Element;

   function MA_Utp_Property_Base_Property_Extension_SUT return AMF.Internals.CMOF_Element;
   function MA_Utp_Behaviored_Classifier_Base_Behaviored_Classifier_Extension_Test_Context return AMF.Internals.CMOF_Element;
   function MA_Utp_Operation_Base_Operation_Extension_Data_Selector return AMF.Internals.CMOF_Element;
   function MA_Utp_Call_Operation_Action_Base_Call_Operation_Action_Extension_Validation_Action return AMF.Internals.CMOF_Element;
   function MA_Utp_Time_Event_Base_Time_Event_Extension_Time_Out return AMF.Internals.CMOF_Element;
   function MA_Utp_Element_Base_Element_Extension_Managed_Element return AMF.Internals.CMOF_Element;
   function MA_Utp_Message_Base_Message_Extension_Time_Out_Message return AMF.Internals.CMOF_Element;
   function MA_Utp_Structured_Classifier_Base_Structured_Classifier_Extension_Test_Component return AMF.Internals.CMOF_Element;
   function MA_Utp_Accept_Event_Action_Base_Accept_Event_Action_Extension_Time_Out_Action return AMF.Internals.CMOF_Element;
   function MA_Utp_Behavior_Base_Behavior_Extension_Test_Suite return AMF.Internals.CMOF_Element;
   function MA_Utp_Behavior_Base_Behavior_Extension_Test_Log return AMF.Internals.CMOF_Element;
   function MA_Utp_Call_Operation_Action_Base_Call_Operation_Action_Extension_Start_Timer_Action return AMF.Internals.CMOF_Element;
   function MA_Utp_Structured_Classifier_Base_Structured_Classifier_Extension_Test_Context return AMF.Internals.CMOF_Element;
   function MA_Utp_Dependency_Base_Dependency_Extension_Test_Log_Application return AMF.Internals.CMOF_Element;
   function MA_Utp_Call_Operation_Action_Base_Call_Operation_Action_Extension_Stop_Timer_Action return AMF.Internals.CMOF_Element;
   function MA_Utp_Call_Operation_Action_Base_Call_Operation_Action_Extension_Read_Timer_Action return AMF.Internals.CMOF_Element;
   function MA_Utp_Value_Specification_Base_Value_Specification_Extension_Coding_Rule return AMF.Internals.CMOF_Element;
   function MA_Utp_Read_Structural_Feature_Action_Base_Read_Structural_Feature_Action_Extension_Timer_Running_Action return AMF.Internals.CMOF_Element;
   function MA_Utp_Namespace_Base_Namespace_Extension_Coding_Rule return AMF.Internals.CMOF_Element;
   function MA_Utp_Property_Base_Property_Extension_Coding_Rule return AMF.Internals.CMOF_Element;
   function MA_Utp_Read_Structural_Feature_Action_Base_Read_Structural_Feature_Action_Extension_Get_Timezone_Action return AMF.Internals.CMOF_Element;
   function MA_Utp_Behavior_Base_Behavior_Extension_Test_Case return AMF.Internals.CMOF_Element;
   function MA_Utp_Literal_Specification_Base_Literal_Specification_Extension_Literal_Any return AMF.Internals.CMOF_Element;
   function MA_Utp_Operation_Base_Operation_Extension_Test_Case return AMF.Internals.CMOF_Element;
   function MA_Utp_Write_Structural_Feature_Action_Base_Write_Structural_Feature_Action_Extension_Set_Timezone_Action return AMF.Internals.CMOF_Element;
   function MA_Utp_Opaque_Action_Base_Opaque_Action_Extension_Finish_Action return AMF.Internals.CMOF_Element;
   function MA_Utp_Literal_Specification_Base_Literal_Specification_Extension_Literal_Any_Or_Null return AMF.Internals.CMOF_Element;
   function MA_Utp_Send_Object_Action_Base_Send_Object_Action_Extension_Log_Action return AMF.Internals.CMOF_Element;
   function MA_Utp_Dependency_Base_Dependency_Extension_Test_Objective return AMF.Internals.CMOF_Element;
   function MA_Utp_Invocation_Action_Base_Invocation_Action_Extension_Finish_Action return AMF.Internals.CMOF_Element;
   function MA_Utp_Classifier_Base_Classifier_Extension_Data_Pool return AMF.Internals.CMOF_Element;
   function MA_Utp_Behavior_Base_Behavior_Extension_Default return AMF.Internals.CMOF_Element;
   function MA_Utp_Property_Base_Property_Extension_Data_Pool return AMF.Internals.CMOF_Element;
   function MA_Utp_Combined_Fragment_Base_Combined_Fragment_Extension_Determ_Alt return AMF.Internals.CMOF_Element;
   function MA_Utp_Classifier_Base_Classifier_Extension_Data_Partition return AMF.Internals.CMOF_Element;
   function MA_Utp_Dependency_Base_Dependency_Extension_Default_Application return AMF.Internals.CMOF_Element;

   function MB_Utp return AMF.Internals.AMF_Element;

   function ML_Utp return AMF.Internals.AMF_Element;

private

   Base : AMF.Internals.CMOF_Element := 0;

end AMF.Internals.Tables.Utp_Metamodel;
