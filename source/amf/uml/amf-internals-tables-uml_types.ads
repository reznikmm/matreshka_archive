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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
with Matreshka.Internals.Strings;

with AMF.Elements;
with AMF.UML;

package AMF.Internals.Tables.UML_Types is

   pragma Preelaborate;

   type Element_Kinds is
    (E_None,
     E_Abstraction,
     E_Accept_Call_Action,
     E_Accept_Event_Action,
     E_Action_Execution_Specification,
     E_Action_Input_Pin,
     E_Activity,
     E_Activity_Final_Node,
     E_Activity_Parameter_Node,
     E_Activity_Partition,
     E_Actor,
     E_Add_Structural_Feature_Value_Action,
     E_Add_Variable_Value_Action,
     E_Any_Receive_Event,
     E_Artifact,
     E_Association,
     E_Association_Class,
     E_Behavior_Execution_Specification,
     E_Broadcast_Signal_Action,
     E_Call_Behavior_Action,
     E_Call_Event,
     E_Call_Operation_Action,
     E_Central_Buffer_Node,
     E_Change_Event,
     E_Class,
     E_Classifier_Template_Parameter,
     E_Clause,
     E_Clear_Association_Action,
     E_Clear_Structural_Feature_Action,
     E_Clear_Variable_Action,
     E_Collaboration,
     E_Collaboration_Use,
     E_Combined_Fragment,
     E_Comment,
     E_Communication_Path,
     E_Component,
     E_Component_Realization,
     E_Conditional_Node,
     E_Connectable_Element_Template_Parameter,
     E_Connection_Point_Reference,
     E_Connector,
     E_Connector_End,
     E_Consider_Ignore_Fragment,
     E_Constraint,
     E_Continuation,
     E_Control_Flow,
     E_Create_Link_Action,
     E_Create_Link_Object_Action,
     E_Create_Object_Action,
     E_Data_Store_Node,
     E_Data_Type,
     E_Decision_Node,
     E_Dependency,
     E_Deployment,
     E_Deployment_Specification,
     E_Destroy_Link_Action,
     E_Destroy_Object_Action,
     E_Destruction_Occurrence_Specification,
     E_Device,
     E_Duration,
     E_Duration_Constraint,
     E_Duration_Interval,
     E_Duration_Observation,
     E_Element_Import,
     E_Enumeration,
     E_Enumeration_Literal,
     E_Exception_Handler,
     E_Execution_Environment,
     E_Execution_Occurrence_Specification,
     E_Expansion_Node,
     E_Expansion_Region,
     E_Expression,
     E_Extend,
     E_Extension,
     E_Extension_End,
     E_Extension_Point,
     E_Final_State,
     E_Flow_Final_Node,
     E_Fork_Node,
     E_Function_Behavior,
     E_Gate,
     E_General_Ordering,
     E_Generalization,
     E_Generalization_Set,
     E_Image,
     E_Include,
     E_Information_Flow,
     E_Information_Item,
     E_Initial_Node,
     E_Input_Pin,
     E_Instance_Specification,
     E_Instance_Value,
     E_Interaction,
     E_Interaction_Constraint,
     E_Interaction_Operand,
     E_Interaction_Use,
     E_Interface,
     E_Interface_Realization,
     E_Interruptible_Activity_Region,
     E_Interval,
     E_Interval_Constraint,
     E_Join_Node,
     E_Lifeline,
     E_Link_End_Creation_Data,
     E_Link_End_Data,
     E_Link_End_Destruction_Data,
     E_Literal_Boolean,
     E_Literal_Integer,
     E_Literal_Null,
     E_Literal_Real,
     E_Literal_String,
     E_Literal_Unlimited_Natural,
     E_Loop_Node,
     E_Manifestation,
     E_Merge_Node,
     E_Message,
     E_Message_Occurrence_Specification,
     E_Model,
     E_Node,
     E_Object_Flow,
     E_Occurrence_Specification,
     E_Opaque_Action,
     E_Opaque_Behavior,
     E_Opaque_Expression,
     E_Operation,
     E_Operation_Template_Parameter,
     E_Output_Pin,
     E_Package,
     E_Package_Import,
     E_Package_Merge,
     E_Parameter,
     E_Parameter_Set,
     E_Part_Decomposition,
     E_Port,
     E_Primitive_Type,
     E_Profile,
     E_Profile_Application,
     E_Property,
     E_Protocol_Conformance,
     E_Protocol_State_Machine,
     E_Protocol_Transition,
     E_Pseudostate,
     E_Qualifier_Value,
     E_Raise_Exception_Action,
     E_Read_Extent_Action,
     E_Read_Is_Classified_Object_Action,
     E_Read_Link_Action,
     E_Read_Link_Object_End_Action,
     E_Read_Link_Object_End_Qualifier_Action,
     E_Read_Self_Action,
     E_Read_Structural_Feature_Action,
     E_Read_Variable_Action,
     E_Realization,
     E_Reception,
     E_Reclassify_Object_Action,
     E_Redefinable_Template_Signature,
     E_Reduce_Action,
     E_Region,
     E_Remove_Structural_Feature_Value_Action,
     E_Remove_Variable_Value_Action,
     E_Reply_Action,
     E_Send_Object_Action,
     E_Send_Signal_Action,
     E_Sequence_Node,
     E_Signal,
     E_Signal_Event,
     E_Slot,
     E_Start_Classifier_Behavior_Action,
     E_Start_Object_Behavior_Action,
     E_State,
     E_State_Invariant,
     E_State_Machine,
     E_Stereotype,
     E_String_Expression,
     E_Structured_Activity_Node,
     E_Substitution,
     E_Template_Binding,
     E_Template_Parameter,
     E_Template_Parameter_Substitution,
     E_Template_Signature,
     E_Test_Identity_Action,
     E_Time_Constraint,
     E_Time_Event,
     E_Time_Expression,
     E_Time_Interval,
     E_Time_Observation,
     E_Transition,
     E_Trigger,
     E_Unmarshall_Action,
     E_Usage,
     E_Use_Case,
     E_Value_Pin,
     E_Value_Specification_Action,
     E_Variable);

   type Member_Kinds is
    (M_None,
     M_Element,
     M_Collection_Of_Element,
     M_Boolean,
     M_Boolean_Holder,
     M_Collection_Of_Boolean,
     M_String,
     M_Collection_Of_String,
     M_Integer,
     M_Integer_Holder,
     M_Unlimited_Natural,
     M_Unlimited_Natural_Holder,
     M_Real,
     M_Aggregation_Kind,
     M_Call_Concurrency_Kind,
     M_Connector_Kind,
     M_Expansion_Kind,
     M_Interaction_Operator_Kind,
     M_Message_Kind,
     M_Message_Sort,
     M_Object_Node_Ordering_Kind,
     M_Parameter_Direction_Kind,
     M_Parameter_Effect_Kind_Holder,
     M_Pseudostate_Kind,
     M_Transition_Kind,
     M_Visibility_Kind,
     M_Visibility_Kind_Holder);

   type Member_Record (Kind : Member_Kinds := M_None) is record
      case Kind is
         when M_None =>
            null;

         when M_Element =>
            Link : AMF.Internals.AMF_Link;

         when M_Collection_Of_Element =>
            Collection : AMF.Internals.AMF_Collection_Of_Element;

         when M_Boolean =>
            Boolean_Value : Boolean;

         when M_Boolean_Holder =>
            Boolean_Holder : AMF.Optional_Boolean;

         when M_Collection_Of_Boolean =>
            Boolean_Collection : AMF.Internals.AMF_Collection_Of_Boolean;

         when M_String =>
            String_Value : Matreshka.Internals.Strings.Shared_String_Access;

         when M_Collection_Of_String =>
            String_Collection_Value : AMF.Internals.AMF_Collection_Of_String;

         when M_Integer =>
            Integer_Value : Integer;

         when M_Integer_Holder =>
            Integer_Holder : AMF.Optional_Integer;

         when M_Unlimited_Natural =>
            Unlimited_Natural_Value : AMF.Unlimited_Natural;

         when M_Unlimited_Natural_Holder =>
            Unlimited_Natural_Holder : AMF.Optional_Unlimited_Natural;

         when M_Real =>
            Real_Value : AMF.Real;

         when M_Aggregation_Kind =>
            Aggregation_Kind_Value : AMF.UML.UML_Aggregation_Kind;

         when M_Call_Concurrency_Kind =>
            Call_Concurrency_Kind_Value : AMF.UML.UML_Call_Concurrency_Kind;

         when M_Connector_Kind =>
            Connector_Kind_Value : AMF.UML.UML_Connector_Kind;

         when M_Expansion_Kind =>
            Expansion_Kind_Value : AMF.UML.UML_Expansion_Kind;

         when M_Interaction_Operator_Kind =>
            Interaction_Operator_Kind_Value : AMF.UML.UML_Interaction_Operator_Kind;

         when M_Message_Kind =>
            Message_Kind_Value : AMF.UML.UML_Message_Kind;

         when M_Message_Sort =>
            Message_Sort_Value : AMF.UML.UML_Message_Sort;

         when M_Object_Node_Ordering_Kind =>
            Object_Node_Ordering_Kind_Value : AMF.UML.UML_Object_Node_Ordering_Kind;

         when M_Parameter_Direction_Kind =>
            Parameter_Direction_Kind_Value : AMF.UML.UML_Parameter_Direction_Kind;

         when M_Parameter_Effect_Kind_Holder =>
            Parameter_Effect_Kind_Holder : AMF.UML.Optional_UML_Parameter_Effect_Kind;

         when M_Pseudostate_Kind =>
            Pseudostate_Kind_Value : AMF.UML.UML_Pseudostate_Kind;

         when M_Transition_Kind =>
            Transition_Kind_Value : AMF.UML.UML_Transition_Kind;

         when M_Visibility_Kind =>
            Visibility_Kind_Value : AMF.UML.UML_Visibility_Kind;

         when M_Visibility_Kind_Holder =>
            Visibility_Kind_Holder : AMF.UML.Optional_UML_Visibility_Kind;
      end case;
   end record;

   type Member_Array is array (Natural range 0 .. 255) of Member_Record;

   type Element_Record (Kind : Element_Kinds := E_None) is record
      case Kind is
         when E_None =>
            null;

         when others =>
            Extent : AMF_Extent;
            Proxy  : AMF.Elements.Element_Access;
            Member : Member_Array;
      end case;
   end record;

end AMF.Internals.Tables.UML_Types;
