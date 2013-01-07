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
with AMF.Elements;
with AMF.UML;
with AMF.UMLDI;
with Matreshka.Internals.Strings;

package AMF.Internals.Tables.UML_Types is

   pragma Preelaborate;

   type Element_Kinds is
    (E_None,
     E_Standard_Profile_L2_Auxiliary,
     E_Standard_Profile_L2_Call,
     E_Standard_Profile_L2_Create,
     E_Standard_Profile_L2_Derive,
     E_Standard_Profile_L2_Destroy,
     E_Standard_Profile_L2_Document,
     E_Standard_Profile_L2_Entity,
     E_Standard_Profile_L2_Executable,
     E_Standard_Profile_L2_Focus,
     E_Standard_Profile_L2_Framework,
     E_Standard_Profile_L2_Implement,
     E_Standard_Profile_L2_Implementation_Class,
     E_Standard_Profile_L2_Instantiate,
     E_Standard_Profile_L2_Library,
     E_Standard_Profile_L2_Metaclass,
     E_Standard_Profile_L2_Model_Library,
     E_Standard_Profile_L2_Process,
     E_Standard_Profile_L2_Realization,
     E_Standard_Profile_L2_Refine,
     E_Standard_Profile_L2_Responsibility,
     E_Standard_Profile_L2_Script,
     E_Standard_Profile_L2_Send,
     E_Standard_Profile_L2_Service,
     E_Standard_Profile_L2_Source,
     E_Standard_Profile_L2_Specification,
     E_Standard_Profile_L2_Subsystem,
     E_Standard_Profile_L2_Trace,
     E_Standard_Profile_L2_Type,
     E_Standard_Profile_L2_Utility,
     E_Standard_Profile_L3_Build_Component,
     E_Standard_Profile_L3_Metamodel,
     E_Standard_Profile_L3_System_Model,
     E_UML_Abstraction,
     E_UML_Accept_Call_Action,
     E_UML_Accept_Event_Action,
     E_UML_Action_Execution_Specification,
     E_UML_Action_Input_Pin,
     E_UML_Activity,
     E_UML_Activity_Final_Node,
     E_UML_Activity_Parameter_Node,
     E_UML_Activity_Partition,
     E_UML_Actor,
     E_UML_Add_Structural_Feature_Value_Action,
     E_UML_Add_Variable_Value_Action,
     E_UML_Any_Receive_Event,
     E_UML_Artifact,
     E_UML_Association,
     E_UML_Association_Class,
     E_UML_Behavior_Execution_Specification,
     E_UML_Broadcast_Signal_Action,
     E_UML_Call_Behavior_Action,
     E_UML_Call_Event,
     E_UML_Call_Operation_Action,
     E_UML_Central_Buffer_Node,
     E_UML_Change_Event,
     E_UML_Class,
     E_UML_Classifier_Template_Parameter,
     E_UML_Clause,
     E_UML_Clear_Association_Action,
     E_UML_Clear_Structural_Feature_Action,
     E_UML_Clear_Variable_Action,
     E_UML_Collaboration,
     E_UML_Collaboration_Use,
     E_UML_Combined_Fragment,
     E_UML_Comment,
     E_UML_Communication_Path,
     E_UML_Component,
     E_UML_Component_Realization,
     E_UML_Conditional_Node,
     E_UML_Connectable_Element_Template_Parameter,
     E_UML_Connection_Point_Reference,
     E_UML_Connector,
     E_UML_Connector_End,
     E_UML_Consider_Ignore_Fragment,
     E_UML_Constraint,
     E_UML_Continuation,
     E_UML_Control_Flow,
     E_UML_Create_Link_Action,
     E_UML_Create_Link_Object_Action,
     E_UML_Create_Object_Action,
     E_UMLDI_UML_Activity_Diagram,
     E_UMLDI_UML_Association_End_Label,
     E_UMLDI_UML_Association_Or_Connector_Or_Link_Shape,
     E_UMLDI_UML_Class_Diagram,
     E_UMLDI_UML_Classifier_Shape,
     E_UMLDI_UML_Compartment,
     E_UMLDI_UML_Compartmentable_Shape,
     E_UMLDI_UML_Component_Diagram,
     E_UMLDI_UML_Composite_Structure_Diagram,
     E_UMLDI_UML_Deployment_Diagram,
     E_UMLDI_UML_Edge,
     E_UMLDI_UML_Interaction_Diagram,
     E_UMLDI_UML_Interaction_Table_Label,
     E_UMLDI_UML_Keyword_Label,
     E_UMLDI_UML_Label,
     E_UMLDI_UML_Multiplicity_Label,
     E_UMLDI_UML_Name_Label,
     E_UMLDI_UML_Object_Diagram,
     E_UMLDI_UML_Package_Diagram,
     E_UMLDI_UML_Profile_Diagram,
     E_UMLDI_UML_Redefines_Label,
     E_UMLDI_UML_Shape,
     E_UMLDI_UML_State_Machine_Diagram,
     E_UMLDI_UML_State_Shape,
     E_UMLDI_UML_Stereotype_Property_Value_Label,
     E_UMLDI_UML_Style,
     E_UMLDI_UML_Typed_Element_Label,
     E_UMLDI_UML_Use_Case_Diagram,
     E_UML_Data_Store_Node,
     E_UML_Data_Type,
     E_UML_Decision_Node,
     E_UML_Dependency,
     E_UML_Deployment,
     E_UML_Deployment_Specification,
     E_UML_Destroy_Link_Action,
     E_UML_Destroy_Object_Action,
     E_UML_Destruction_Occurrence_Specification,
     E_UML_Device,
     E_UML_Duration,
     E_UML_Duration_Constraint,
     E_UML_Duration_Interval,
     E_UML_Duration_Observation,
     E_UML_Element_Import,
     E_UML_Enumeration,
     E_UML_Enumeration_Literal,
     E_UML_Exception_Handler,
     E_UML_Execution_Environment,
     E_UML_Execution_Occurrence_Specification,
     E_UML_Expansion_Node,
     E_UML_Expansion_Region,
     E_UML_Expression,
     E_UML_Extend,
     E_UML_Extension,
     E_UML_Extension_End,
     E_UML_Extension_Point,
     E_UML_Final_State,
     E_UML_Flow_Final_Node,
     E_UML_Fork_Node,
     E_UML_Function_Behavior,
     E_UML_Gate,
     E_UML_General_Ordering,
     E_UML_Generalization,
     E_UML_Generalization_Set,
     E_UML_Image,
     E_UML_Include,
     E_UML_Information_Flow,
     E_UML_Information_Item,
     E_UML_Initial_Node,
     E_UML_Input_Pin,
     E_UML_Instance_Specification,
     E_UML_Instance_Value,
     E_UML_Interaction,
     E_UML_Interaction_Constraint,
     E_UML_Interaction_Operand,
     E_UML_Interaction_Use,
     E_UML_Interface,
     E_UML_Interface_Realization,
     E_UML_Interruptible_Activity_Region,
     E_UML_Interval,
     E_UML_Interval_Constraint,
     E_UML_Join_Node,
     E_UML_Lifeline,
     E_UML_Link_End_Creation_Data,
     E_UML_Link_End_Data,
     E_UML_Link_End_Destruction_Data,
     E_UML_Literal_Boolean,
     E_UML_Literal_Integer,
     E_UML_Literal_Null,
     E_UML_Literal_Real,
     E_UML_Literal_String,
     E_UML_Literal_Unlimited_Natural,
     E_UML_Loop_Node,
     E_UML_Manifestation,
     E_UML_Merge_Node,
     E_UML_Message,
     E_UML_Message_Occurrence_Specification,
     E_UML_Model,
     E_UML_Node,
     E_UML_Object_Flow,
     E_UML_Occurrence_Specification,
     E_UML_Opaque_Action,
     E_UML_Opaque_Behavior,
     E_UML_Opaque_Expression,
     E_UML_Operation,
     E_UML_Operation_Template_Parameter,
     E_UML_Output_Pin,
     E_UML_Package,
     E_UML_Package_Import,
     E_UML_Package_Merge,
     E_UML_Parameter,
     E_UML_Parameter_Set,
     E_UML_Part_Decomposition,
     E_UML_Port,
     E_UML_Primitive_Type,
     E_UML_Profile,
     E_UML_Profile_Application,
     E_UML_Property,
     E_UML_Protocol_Conformance,
     E_UML_Protocol_State_Machine,
     E_UML_Protocol_Transition,
     E_UML_Pseudostate,
     E_UML_Qualifier_Value,
     E_UML_Raise_Exception_Action,
     E_UML_Read_Extent_Action,
     E_UML_Read_Is_Classified_Object_Action,
     E_UML_Read_Link_Action,
     E_UML_Read_Link_Object_End_Action,
     E_UML_Read_Link_Object_End_Qualifier_Action,
     E_UML_Read_Self_Action,
     E_UML_Read_Structural_Feature_Action,
     E_UML_Read_Variable_Action,
     E_UML_Realization,
     E_UML_Reception,
     E_UML_Reclassify_Object_Action,
     E_UML_Redefinable_Template_Signature,
     E_UML_Reduce_Action,
     E_UML_Region,
     E_UML_Remove_Structural_Feature_Value_Action,
     E_UML_Remove_Variable_Value_Action,
     E_UML_Reply_Action,
     E_UML_Send_Object_Action,
     E_UML_Send_Signal_Action,
     E_UML_Sequence_Node,
     E_UML_Signal,
     E_UML_Signal_Event,
     E_UML_Slot,
     E_UML_Start_Classifier_Behavior_Action,
     E_UML_Start_Object_Behavior_Action,
     E_UML_State,
     E_UML_State_Invariant,
     E_UML_State_Machine,
     E_UML_Stereotype,
     E_UML_String_Expression,
     E_UML_Structured_Activity_Node,
     E_UML_Substitution,
     E_UML_Template_Binding,
     E_UML_Template_Parameter,
     E_UML_Template_Parameter_Substitution,
     E_UML_Template_Signature,
     E_UML_Test_Identity_Action,
     E_UML_Time_Constraint,
     E_UML_Time_Event,
     E_UML_Time_Expression,
     E_UML_Time_Interval,
     E_UML_Time_Observation,
     E_UML_Transition,
     E_UML_Trigger,
     E_UML_Unmarshall_Action,
     E_UML_Usage,
     E_UML_Use_Case,
     E_UML_Value_Pin,
     E_UML_Value_Specification_Action,
     E_UML_Variable);

   type Member_Kinds is
    (M_None,
     M_Aggregation_Kind,
     M_Boolean,
     M_Call_Concurrency_Kind,
     M_Collection_Of_Boolean,
     M_Collection_Of_Element,
     M_Collection_Of_Point,
     M_Collection_Of_String,
     M_Connector_Kind,
     M_Element,
     M_Expansion_Kind,
     M_Holder_Of_Boolean,
     M_Holder_Of_Bounds,
     M_Holder_Of_Integer,
     M_Holder_Of_Real,
     M_Holder_Of_UML_Inherited_State_Border_Kind,
     M_Holder_Of_Unlimited_Natural,
     M_Integer,
     M_Interaction_Operator_Kind,
     M_Message_Kind,
     M_Message_Sort,
     M_Object_Node_Ordering_Kind,
     M_Parameter_Direction_Kind,
     M_Parameter_Effect_Kind_Holder,
     M_Pseudostate_Kind,
     M_Real,
     M_String,
     M_Transition_Kind,
     M_UML_Association_Or_Connector_Or_Link_Shape_Kind,
     M_UML_Interaction_Diagram_Kind,
     M_UML_Interaction_Table_Label_Kind,
     M_UML_Navigability_Notation_Kind,
     M_Unlimited_Natural,
     M_Visibility_Kind,
     M_Visibility_Kind_Holder);

   type Member_Record (Kind : Member_Kinds := M_None) is record
      case Kind is
         when M_None =>
            null;

         when M_Aggregation_Kind =>
            Aggregation_Kind_Value : AMF.UML.UML_Aggregation_Kind;

         when M_Boolean =>
            Boolean_Value : Boolean;

         when M_Call_Concurrency_Kind =>
            Call_Concurrency_Kind_Value : AMF.UML.UML_Call_Concurrency_Kind;

         when M_Collection_Of_Boolean =>
            Boolean_Collection : AMF.Internals.AMF_Collection_Of_Boolean;

         when M_Collection_Of_Element =>
            Collection : AMF.Internals.AMF_Collection_Of_Element;

         when M_Collection_Of_Point =>
            Point_Collection : AMF.DC.Sequence_Of_DC_Point;

         when M_Collection_Of_String =>
            String_Collection : AMF.Internals.AMF_Collection_Of_String;

         when M_Connector_Kind =>
            Connector_Kind_Value : AMF.UML.UML_Connector_Kind;

         when M_Element =>
            Link : AMF.Internals.AMF_Link;

         when M_Expansion_Kind =>
            Expansion_Kind_Value : AMF.UML.UML_Expansion_Kind;

         when M_Holder_Of_Boolean =>
            Boolean_Holder : AMF.Optional_Boolean;

         when M_Holder_Of_Bounds =>
            Bounds_Holder : AMF.DC.Optional_DC_Bounds;

         when M_Holder_Of_Integer =>
            Integer_Holder : AMF.Optional_Integer;

         when M_Holder_Of_Real =>
            Real_Holder : AMF.Optional_Real;

         when M_Holder_Of_UML_Inherited_State_Border_Kind =>
            UML_Inherited_State_Border_Kind_Holder : AMF.UMLDI.Optional_UMLDI_UML_Inherited_State_Border_Kind;

         when M_Holder_Of_Unlimited_Natural =>
            Unlimited_Natural_Holder : AMF.Optional_Unlimited_Natural;

         when M_Integer =>
            Integer_Value : Integer;

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

         when M_Real =>
            Real_Value : AMF.Real;

         when M_String =>
            String_Value : Matreshka.Internals.Strings.Shared_String_Access;

         when M_Transition_Kind =>
            Transition_Kind_Value : AMF.UML.UML_Transition_Kind;

         when M_UML_Association_Or_Connector_Or_Link_Shape_Kind =>
            UML_Association_Or_Connector_Or_Link_Shape_Kind_Value : AMF.UMLDI.UMLDI_UML_Association_Or_Connector_Or_Link_Shape_Kind;

         when M_UML_Interaction_Diagram_Kind =>
            UML_Interaction_Diagram_Kind_Value : AMF.UMLDI.UMLDI_UML_Interaction_Diagram_Kind;

         when M_UML_Interaction_Table_Label_Kind =>
            UML_Interaction_Table_Label_Kind_Value : AMF.UMLDI.UMLDI_UML_Interaction_Table_Label_Kind;

         when M_UML_Navigability_Notation_Kind =>
            UML_Navigability_Notation_Kind_Value : AMF.UMLDI.UMLDI_UML_Navigability_Notation_Kind;

         when M_Unlimited_Natural =>
            Unlimited_Natural_Value : AMF.Unlimited_Natural;

         when M_Visibility_Kind =>
            Visibility_Kind_Value : AMF.UML.UML_Visibility_Kind;

         when M_Visibility_Kind_Holder =>
            Visibility_Kind_Holder : AMF.UML.Optional_UML_Visibility_Kind;
      end case;
   end record;

   type Member_Array is array (Natural range 0 .. 37) of Member_Record;

   type Element_Record is record
      Kind   : Element_Kinds := E_None;
      Extent : AMF.Internals.AMF_Extent;
      Proxy  : AMF.Elements.Element_Access;
      Member : Member_Array;
   end record;

end AMF.Internals.Tables.UML_Types;
