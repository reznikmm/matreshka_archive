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
-- Copyright © 2010-2011, Vadim Godunko <vgodunko@gmail.com>                --
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

package AMF.Internals.Tables.UML_Constructors is

   function Create_Abstraction return CMOF_Element;

   function Create_Accept_Call_Action return CMOF_Element;

   function Create_Accept_Event_Action return CMOF_Element;

   function Create_Action_Execution_Specification return CMOF_Element;

   function Create_Action_Input_Pin return CMOF_Element;

   function Create_Activity return CMOF_Element;

   function Create_Activity_Final_Node return CMOF_Element;

   function Create_Activity_Parameter_Node return CMOF_Element;

   function Create_Activity_Partition return CMOF_Element;

   function Create_Actor return CMOF_Element;

   function Create_Add_Structural_Feature_Value_Action return CMOF_Element;

   function Create_Add_Variable_Value_Action return CMOF_Element;

   function Create_Any_Receive_Event return CMOF_Element;

   function Create_Artifact return CMOF_Element;

   function Create_Association return CMOF_Element;

   function Create_Association_Class return CMOF_Element;

   function Create_Behavior_Execution_Specification return CMOF_Element;

   function Create_Broadcast_Signal_Action return CMOF_Element;

   function Create_Call_Behavior_Action return CMOF_Element;

   function Create_Call_Event return CMOF_Element;

   function Create_Call_Operation_Action return CMOF_Element;

   function Create_Central_Buffer_Node return CMOF_Element;

   function Create_Change_Event return CMOF_Element;

   function Create_Class return CMOF_Element;

   function Create_Classifier_Template_Parameter return CMOF_Element;

   function Create_Clause return CMOF_Element;

   function Create_Clear_Association_Action return CMOF_Element;

   function Create_Clear_Structural_Feature_Action return CMOF_Element;

   function Create_Clear_Variable_Action return CMOF_Element;

   function Create_Collaboration return CMOF_Element;

   function Create_Collaboration_Use return CMOF_Element;

   function Create_Combined_Fragment return CMOF_Element;

   function Create_Comment return CMOF_Element;

   function Create_Communication_Path return CMOF_Element;

   function Create_Component return CMOF_Element;

   function Create_Component_Realization return CMOF_Element;

   function Create_Conditional_Node return CMOF_Element;

   function Create_Connectable_Element_Template_Parameter return CMOF_Element;

   function Create_Connection_Point_Reference return CMOF_Element;

   function Create_Connector return CMOF_Element;

   function Create_Connector_End return CMOF_Element;

   function Create_Consider_Ignore_Fragment return CMOF_Element;

   function Create_Constraint return CMOF_Element;

   function Create_Continuation return CMOF_Element;

   function Create_Control_Flow return CMOF_Element;

   function Create_Create_Link_Action return CMOF_Element;

   function Create_Create_Link_Object_Action return CMOF_Element;

   function Create_Create_Object_Action return CMOF_Element;

   function Create_Data_Store_Node return CMOF_Element;

   function Create_Data_Type return CMOF_Element;

   function Create_Decision_Node return CMOF_Element;

   function Create_Dependency return CMOF_Element;

   function Create_Deployment return CMOF_Element;

   function Create_Deployment_Specification return CMOF_Element;

   function Create_Destroy_Link_Action return CMOF_Element;

   function Create_Destroy_Object_Action return CMOF_Element;

   function Create_Destruction_Occurrence_Specification return CMOF_Element;

   function Create_Device return CMOF_Element;

   function Create_Duration return CMOF_Element;

   function Create_Duration_Constraint return CMOF_Element;

   function Create_Duration_Interval return CMOF_Element;

   function Create_Duration_Observation return CMOF_Element;

   function Create_Element_Import return CMOF_Element;

   function Create_Enumeration return CMOF_Element;

   function Create_Enumeration_Literal return CMOF_Element;

   function Create_Exception_Handler return CMOF_Element;

   function Create_Execution_Environment return CMOF_Element;

   function Create_Execution_Occurrence_Specification return CMOF_Element;

   function Create_Expansion_Node return CMOF_Element;

   function Create_Expansion_Region return CMOF_Element;

   function Create_Expression return CMOF_Element;

   function Create_Extend return CMOF_Element;

   function Create_Extension return CMOF_Element;

   function Create_Extension_End return CMOF_Element;

   function Create_Extension_Point return CMOF_Element;

   function Create_Final_State return CMOF_Element;

   function Create_Flow_Final_Node return CMOF_Element;

   function Create_Fork_Node return CMOF_Element;

   function Create_Function_Behavior return CMOF_Element;

   function Create_Gate return CMOF_Element;

   function Create_General_Ordering return CMOF_Element;

   function Create_Generalization return CMOF_Element;

   function Create_Generalization_Set return CMOF_Element;

   function Create_Image return CMOF_Element;

   function Create_Include return CMOF_Element;

   function Create_Information_Flow return CMOF_Element;

   function Create_Information_Item return CMOF_Element;

   function Create_Initial_Node return CMOF_Element;

   function Create_Input_Pin return CMOF_Element;

   function Create_Instance_Specification return CMOF_Element;

   function Create_Instance_Value return CMOF_Element;

   function Create_Interaction return CMOF_Element;

   function Create_Interaction_Constraint return CMOF_Element;

   function Create_Interaction_Operand return CMOF_Element;

   function Create_Interaction_Use return CMOF_Element;

   function Create_Interface return CMOF_Element;

   function Create_Interface_Realization return CMOF_Element;

   function Create_Interruptible_Activity_Region return CMOF_Element;

   function Create_Interval return CMOF_Element;

   function Create_Interval_Constraint return CMOF_Element;

   function Create_Join_Node return CMOF_Element;

   function Create_Lifeline return CMOF_Element;

   function Create_Link_End_Creation_Data return CMOF_Element;

   function Create_Link_End_Data return CMOF_Element;

   function Create_Link_End_Destruction_Data return CMOF_Element;

   function Create_Literal_Boolean return CMOF_Element;

   function Create_Literal_Integer return CMOF_Element;

   function Create_Literal_Null return CMOF_Element;

   function Create_Literal_Real return CMOF_Element;

   function Create_Literal_String return CMOF_Element;

   function Create_Literal_Unlimited_Natural return CMOF_Element;

   function Create_Loop_Node return CMOF_Element;

   function Create_Manifestation return CMOF_Element;

   function Create_Merge_Node return CMOF_Element;

   function Create_Message return CMOF_Element;

   function Create_Message_Occurrence_Specification return CMOF_Element;

   function Create_Model return CMOF_Element;

   function Create_Node return CMOF_Element;

   function Create_Object_Flow return CMOF_Element;

   function Create_Occurrence_Specification return CMOF_Element;

   function Create_Opaque_Action return CMOF_Element;

   function Create_Opaque_Behavior return CMOF_Element;

   function Create_Opaque_Expression return CMOF_Element;

   function Create_Operation return CMOF_Element;

   function Create_Operation_Template_Parameter return CMOF_Element;

   function Create_Output_Pin return CMOF_Element;

   function Create_Package return CMOF_Element;

   function Create_Package_Import return CMOF_Element;

   function Create_Package_Merge return CMOF_Element;

   function Create_Parameter return CMOF_Element;

   function Create_Parameter_Set return CMOF_Element;

   function Create_Part_Decomposition return CMOF_Element;

   function Create_Port return CMOF_Element;

   function Create_Primitive_Type return CMOF_Element;

   function Create_Profile return CMOF_Element;

   function Create_Profile_Application return CMOF_Element;

   function Create_Property return CMOF_Element;

   function Create_Protocol_Conformance return CMOF_Element;

   function Create_Protocol_State_Machine return CMOF_Element;

   function Create_Protocol_Transition return CMOF_Element;

   function Create_Pseudostate return CMOF_Element;

   function Create_Qualifier_Value return CMOF_Element;

   function Create_Raise_Exception_Action return CMOF_Element;

   function Create_Read_Extent_Action return CMOF_Element;

   function Create_Read_Is_Classified_Object_Action return CMOF_Element;

   function Create_Read_Link_Action return CMOF_Element;

   function Create_Read_Link_Object_End_Action return CMOF_Element;

   function Create_Read_Link_Object_End_Qualifier_Action return CMOF_Element;

   function Create_Read_Self_Action return CMOF_Element;

   function Create_Read_Structural_Feature_Action return CMOF_Element;

   function Create_Read_Variable_Action return CMOF_Element;

   function Create_Realization return CMOF_Element;

   function Create_Reception return CMOF_Element;

   function Create_Reclassify_Object_Action return CMOF_Element;

   function Create_Redefinable_Template_Signature return CMOF_Element;

   function Create_Reduce_Action return CMOF_Element;

   function Create_Region return CMOF_Element;

   function Create_Remove_Structural_Feature_Value_Action return CMOF_Element;

   function Create_Remove_Variable_Value_Action return CMOF_Element;

   function Create_Reply_Action return CMOF_Element;

   function Create_Send_Object_Action return CMOF_Element;

   function Create_Send_Signal_Action return CMOF_Element;

   function Create_Sequence_Node return CMOF_Element;

   function Create_Signal return CMOF_Element;

   function Create_Signal_Event return CMOF_Element;

   function Create_Slot return CMOF_Element;

   function Create_Start_Classifier_Behavior_Action return CMOF_Element;

   function Create_Start_Object_Behavior_Action return CMOF_Element;

   function Create_State return CMOF_Element;

   function Create_State_Invariant return CMOF_Element;

   function Create_State_Machine return CMOF_Element;

   function Create_Stereotype return CMOF_Element;

   function Create_String_Expression return CMOF_Element;

   function Create_Structured_Activity_Node return CMOF_Element;

   function Create_Substitution return CMOF_Element;

   function Create_Template_Binding return CMOF_Element;

   function Create_Template_Parameter return CMOF_Element;

   function Create_Template_Parameter_Substitution return CMOF_Element;

   function Create_Template_Signature return CMOF_Element;

   function Create_Test_Identity_Action return CMOF_Element;

   function Create_Time_Constraint return CMOF_Element;

   function Create_Time_Event return CMOF_Element;

   function Create_Time_Expression return CMOF_Element;

   function Create_Time_Interval return CMOF_Element;

   function Create_Time_Observation return CMOF_Element;

   function Create_Transition return CMOF_Element;

   function Create_Trigger return CMOF_Element;

   function Create_Unmarshall_Action return CMOF_Element;

   function Create_Usage return CMOF_Element;

   function Create_Use_Case return CMOF_Element;

   function Create_Value_Pin return CMOF_Element;

   function Create_Value_Specification_Action return CMOF_Element;

   function Create_Variable return CMOF_Element;

end AMF.Internals.Tables.UML_Constructors;
