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

   function Create_Abstraction return AMF.Internals.UML_Element;

   function Create_Accept_Call_Action return AMF.Internals.UML_Element;

   function Create_Accept_Event_Action return AMF.Internals.UML_Element;

   function Create_Action_Execution_Specification return AMF.Internals.UML_Element;

   function Create_Action_Input_Pin return AMF.Internals.UML_Element;

   function Create_Activity return AMF.Internals.UML_Element;

   function Create_Activity_Final_Node return AMF.Internals.UML_Element;

   function Create_Activity_Parameter_Node return AMF.Internals.UML_Element;

   function Create_Activity_Partition return AMF.Internals.UML_Element;

   function Create_Actor return AMF.Internals.UML_Element;

   function Create_Add_Structural_Feature_Value_Action return AMF.Internals.UML_Element;

   function Create_Add_Variable_Value_Action return AMF.Internals.UML_Element;

   function Create_Any_Receive_Event return AMF.Internals.UML_Element;

   function Create_Artifact return AMF.Internals.UML_Element;

   function Create_Association return AMF.Internals.UML_Element;

   function Create_Association_Class return AMF.Internals.UML_Element;

   function Create_Behavior_Execution_Specification return AMF.Internals.UML_Element;

   function Create_Broadcast_Signal_Action return AMF.Internals.UML_Element;

   function Create_Call_Behavior_Action return AMF.Internals.UML_Element;

   function Create_Call_Event return AMF.Internals.UML_Element;

   function Create_Call_Operation_Action return AMF.Internals.UML_Element;

   function Create_Central_Buffer_Node return AMF.Internals.UML_Element;

   function Create_Change_Event return AMF.Internals.UML_Element;

   function Create_Class return AMF.Internals.UML_Element;

   function Create_Classifier_Template_Parameter return AMF.Internals.UML_Element;

   function Create_Clause return AMF.Internals.UML_Element;

   function Create_Clear_Association_Action return AMF.Internals.UML_Element;

   function Create_Clear_Structural_Feature_Action return AMF.Internals.UML_Element;

   function Create_Clear_Variable_Action return AMF.Internals.UML_Element;

   function Create_Collaboration return AMF.Internals.UML_Element;

   function Create_Collaboration_Use return AMF.Internals.UML_Element;

   function Create_Combined_Fragment return AMF.Internals.UML_Element;

   function Create_Comment return AMF.Internals.UML_Element;

   function Create_Communication_Path return AMF.Internals.UML_Element;

   function Create_Component return AMF.Internals.UML_Element;

   function Create_Component_Realization return AMF.Internals.UML_Element;

   function Create_Conditional_Node return AMF.Internals.UML_Element;

   function Create_Connectable_Element_Template_Parameter return AMF.Internals.UML_Element;

   function Create_Connection_Point_Reference return AMF.Internals.UML_Element;

   function Create_Connector return AMF.Internals.UML_Element;

   function Create_Connector_End return AMF.Internals.UML_Element;

   function Create_Consider_Ignore_Fragment return AMF.Internals.UML_Element;

   function Create_Constraint return AMF.Internals.UML_Element;

   function Create_Continuation return AMF.Internals.UML_Element;

   function Create_Control_Flow return AMF.Internals.UML_Element;

   function Create_Create_Link_Action return AMF.Internals.UML_Element;

   function Create_Create_Link_Object_Action return AMF.Internals.UML_Element;

   function Create_Create_Object_Action return AMF.Internals.UML_Element;

   function Create_Data_Store_Node return AMF.Internals.UML_Element;

   function Create_Data_Type return AMF.Internals.UML_Element;

   function Create_Decision_Node return AMF.Internals.UML_Element;

   function Create_Dependency return AMF.Internals.UML_Element;

   function Create_Deployment return AMF.Internals.UML_Element;

   function Create_Deployment_Specification return AMF.Internals.UML_Element;

   function Create_Destroy_Link_Action return AMF.Internals.UML_Element;

   function Create_Destroy_Object_Action return AMF.Internals.UML_Element;

   function Create_Destruction_Occurrence_Specification return AMF.Internals.UML_Element;

   function Create_Device return AMF.Internals.UML_Element;

   function Create_Duration return AMF.Internals.UML_Element;

   function Create_Duration_Constraint return AMF.Internals.UML_Element;

   function Create_Duration_Interval return AMF.Internals.UML_Element;

   function Create_Duration_Observation return AMF.Internals.UML_Element;

   function Create_Element_Import return AMF.Internals.UML_Element;

   function Create_Enumeration return AMF.Internals.UML_Element;

   function Create_Enumeration_Literal return AMF.Internals.UML_Element;

   function Create_Exception_Handler return AMF.Internals.UML_Element;

   function Create_Execution_Environment return AMF.Internals.UML_Element;

   function Create_Execution_Occurrence_Specification return AMF.Internals.UML_Element;

   function Create_Expansion_Node return AMF.Internals.UML_Element;

   function Create_Expansion_Region return AMF.Internals.UML_Element;

   function Create_Expression return AMF.Internals.UML_Element;

   function Create_Extend return AMF.Internals.UML_Element;

   function Create_Extension return AMF.Internals.UML_Element;

   function Create_Extension_End return AMF.Internals.UML_Element;

   function Create_Extension_Point return AMF.Internals.UML_Element;

   function Create_Final_State return AMF.Internals.UML_Element;

   function Create_Flow_Final_Node return AMF.Internals.UML_Element;

   function Create_Fork_Node return AMF.Internals.UML_Element;

   function Create_Function_Behavior return AMF.Internals.UML_Element;

   function Create_Gate return AMF.Internals.UML_Element;

   function Create_General_Ordering return AMF.Internals.UML_Element;

   function Create_Generalization return AMF.Internals.UML_Element;

   function Create_Generalization_Set return AMF.Internals.UML_Element;

   function Create_Image return AMF.Internals.UML_Element;

   function Create_Include return AMF.Internals.UML_Element;

   function Create_Information_Flow return AMF.Internals.UML_Element;

   function Create_Information_Item return AMF.Internals.UML_Element;

   function Create_Initial_Node return AMF.Internals.UML_Element;

   function Create_Input_Pin return AMF.Internals.UML_Element;

   function Create_Instance_Specification return AMF.Internals.UML_Element;

   function Create_Instance_Value return AMF.Internals.UML_Element;

   function Create_Interaction return AMF.Internals.UML_Element;

   function Create_Interaction_Constraint return AMF.Internals.UML_Element;

   function Create_Interaction_Operand return AMF.Internals.UML_Element;

   function Create_Interaction_Use return AMF.Internals.UML_Element;

   function Create_Interface return AMF.Internals.UML_Element;

   function Create_Interface_Realization return AMF.Internals.UML_Element;

   function Create_Interruptible_Activity_Region return AMF.Internals.UML_Element;

   function Create_Interval return AMF.Internals.UML_Element;

   function Create_Interval_Constraint return AMF.Internals.UML_Element;

   function Create_Join_Node return AMF.Internals.UML_Element;

   function Create_Lifeline return AMF.Internals.UML_Element;

   function Create_Link_End_Creation_Data return AMF.Internals.UML_Element;

   function Create_Link_End_Data return AMF.Internals.UML_Element;

   function Create_Link_End_Destruction_Data return AMF.Internals.UML_Element;

   function Create_Literal_Boolean return AMF.Internals.UML_Element;

   function Create_Literal_Integer return AMF.Internals.UML_Element;

   function Create_Literal_Null return AMF.Internals.UML_Element;

   function Create_Literal_Real return AMF.Internals.UML_Element;

   function Create_Literal_String return AMF.Internals.UML_Element;

   function Create_Literal_Unlimited_Natural return AMF.Internals.UML_Element;

   function Create_Loop_Node return AMF.Internals.UML_Element;

   function Create_Manifestation return AMF.Internals.UML_Element;

   function Create_Merge_Node return AMF.Internals.UML_Element;

   function Create_Message return AMF.Internals.UML_Element;

   function Create_Message_Occurrence_Specification return AMF.Internals.UML_Element;

   function Create_Model return AMF.Internals.UML_Element;

   function Create_Node return AMF.Internals.UML_Element;

   function Create_Object_Flow return AMF.Internals.UML_Element;

   function Create_Occurrence_Specification return AMF.Internals.UML_Element;

   function Create_Opaque_Action return AMF.Internals.UML_Element;

   function Create_Opaque_Behavior return AMF.Internals.UML_Element;

   function Create_Opaque_Expression return AMF.Internals.UML_Element;

   function Create_Operation return AMF.Internals.UML_Element;

   function Create_Operation_Template_Parameter return AMF.Internals.UML_Element;

   function Create_Output_Pin return AMF.Internals.UML_Element;

   function Create_Package return AMF.Internals.UML_Element;

   function Create_Package_Import return AMF.Internals.UML_Element;

   function Create_Package_Merge return AMF.Internals.UML_Element;

   function Create_Parameter return AMF.Internals.UML_Element;

   function Create_Parameter_Set return AMF.Internals.UML_Element;

   function Create_Part_Decomposition return AMF.Internals.UML_Element;

   function Create_Port return AMF.Internals.UML_Element;

   function Create_Primitive_Type return AMF.Internals.UML_Element;

   function Create_Profile return AMF.Internals.UML_Element;

   function Create_Profile_Application return AMF.Internals.UML_Element;

   function Create_Property return AMF.Internals.UML_Element;

   function Create_Protocol_Conformance return AMF.Internals.UML_Element;

   function Create_Protocol_State_Machine return AMF.Internals.UML_Element;

   function Create_Protocol_Transition return AMF.Internals.UML_Element;

   function Create_Pseudostate return AMF.Internals.UML_Element;

   function Create_Qualifier_Value return AMF.Internals.UML_Element;

   function Create_Raise_Exception_Action return AMF.Internals.UML_Element;

   function Create_Read_Extent_Action return AMF.Internals.UML_Element;

   function Create_Read_Is_Classified_Object_Action return AMF.Internals.UML_Element;

   function Create_Read_Link_Action return AMF.Internals.UML_Element;

   function Create_Read_Link_Object_End_Action return AMF.Internals.UML_Element;

   function Create_Read_Link_Object_End_Qualifier_Action return AMF.Internals.UML_Element;

   function Create_Read_Self_Action return AMF.Internals.UML_Element;

   function Create_Read_Structural_Feature_Action return AMF.Internals.UML_Element;

   function Create_Read_Variable_Action return AMF.Internals.UML_Element;

   function Create_Realization return AMF.Internals.UML_Element;

   function Create_Reception return AMF.Internals.UML_Element;

   function Create_Reclassify_Object_Action return AMF.Internals.UML_Element;

   function Create_Redefinable_Template_Signature return AMF.Internals.UML_Element;

   function Create_Reduce_Action return AMF.Internals.UML_Element;

   function Create_Region return AMF.Internals.UML_Element;

   function Create_Remove_Structural_Feature_Value_Action return AMF.Internals.UML_Element;

   function Create_Remove_Variable_Value_Action return AMF.Internals.UML_Element;

   function Create_Reply_Action return AMF.Internals.UML_Element;

   function Create_Send_Object_Action return AMF.Internals.UML_Element;

   function Create_Send_Signal_Action return AMF.Internals.UML_Element;

   function Create_Sequence_Node return AMF.Internals.UML_Element;

   function Create_Signal return AMF.Internals.UML_Element;

   function Create_Signal_Event return AMF.Internals.UML_Element;

   function Create_Slot return AMF.Internals.UML_Element;

   function Create_Start_Classifier_Behavior_Action return AMF.Internals.UML_Element;

   function Create_Start_Object_Behavior_Action return AMF.Internals.UML_Element;

   function Create_State return AMF.Internals.UML_Element;

   function Create_State_Invariant return AMF.Internals.UML_Element;

   function Create_State_Machine return AMF.Internals.UML_Element;

   function Create_Stereotype return AMF.Internals.UML_Element;

   function Create_String_Expression return AMF.Internals.UML_Element;

   function Create_Structured_Activity_Node return AMF.Internals.UML_Element;

   function Create_Substitution return AMF.Internals.UML_Element;

   function Create_Template_Binding return AMF.Internals.UML_Element;

   function Create_Template_Parameter return AMF.Internals.UML_Element;

   function Create_Template_Parameter_Substitution return AMF.Internals.UML_Element;

   function Create_Template_Signature return AMF.Internals.UML_Element;

   function Create_Test_Identity_Action return AMF.Internals.UML_Element;

   function Create_Time_Constraint return AMF.Internals.UML_Element;

   function Create_Time_Event return AMF.Internals.UML_Element;

   function Create_Time_Expression return AMF.Internals.UML_Element;

   function Create_Time_Interval return AMF.Internals.UML_Element;

   function Create_Time_Observation return AMF.Internals.UML_Element;

   function Create_Transition return AMF.Internals.UML_Element;

   function Create_Trigger return AMF.Internals.UML_Element;

   function Create_Unmarshall_Action return AMF.Internals.UML_Element;

   function Create_Usage return AMF.Internals.UML_Element;

   function Create_Use_Case return AMF.Internals.UML_Element;

   function Create_Value_Pin return AMF.Internals.UML_Element;

   function Create_Value_Specification_Action return AMF.Internals.UML_Element;

   function Create_Variable return AMF.Internals.UML_Element;

end AMF.Internals.Tables.UML_Constructors;
