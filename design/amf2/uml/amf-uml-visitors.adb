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
with AMF.Elements.Collections;
with AMF.UML.Packageable_Elements.Collections;

package body AMF.UML.Visitors is

   -----------
   -- Visit --
   -----------

   procedure Visit
    (Self    : in out UML_Visitor'Class;
     Element : not null access AMF.UML.Elements.UML_Element'Class) is
   begin
      if Element.all in AMF.UML.Abstractions.UML_Abstraction'Class then
         Self.Enter_Abstraction
          (AMF.UML.Abstractions.UML_Abstraction_Access (Element));
         Self.Visit_Abstraction
          (AMF.UML.Abstractions.UML_Abstraction_Access (Element));
         Self.Leave_Abstraction
          (AMF.UML.Abstractions.UML_Abstraction_Access (Element));

      elsif Element.all in AMF.UML.Accept_Call_Actions.UML_Accept_Call_Action'Class then
         Self.Enter_Accept_Call_Action
          (AMF.UML.Accept_Call_Actions.UML_Accept_Call_Action_Access (Element));
         Self.Visit_Accept_Call_Action
          (AMF.UML.Accept_Call_Actions.UML_Accept_Call_Action_Access (Element));
         Self.Leave_Accept_Call_Action
          (AMF.UML.Accept_Call_Actions.UML_Accept_Call_Action_Access (Element));

      elsif Element.all in AMF.UML.Accept_Event_Actions.UML_Accept_Event_Action'Class then
         Self.Enter_Accept_Event_Action
          (AMF.UML.Accept_Event_Actions.UML_Accept_Event_Action_Access (Element));
         Self.Visit_Accept_Event_Action
          (AMF.UML.Accept_Event_Actions.UML_Accept_Event_Action_Access (Element));
         Self.Leave_Accept_Event_Action
          (AMF.UML.Accept_Event_Actions.UML_Accept_Event_Action_Access (Element));

      elsif Element.all in AMF.UML.Action_Execution_Specifications.UML_Action_Execution_Specification'Class then
         Self.Enter_Action_Execution_Specification
          (AMF.UML.Action_Execution_Specifications.UML_Action_Execution_Specification_Access (Element));
         Self.Visit_Action_Execution_Specification
          (AMF.UML.Action_Execution_Specifications.UML_Action_Execution_Specification_Access (Element));
         Self.Leave_Action_Execution_Specification
          (AMF.UML.Action_Execution_Specifications.UML_Action_Execution_Specification_Access (Element));

      elsif Element.all in AMF.UML.Action_Input_Pins.UML_Action_Input_Pin'Class then
         Self.Enter_Action_Input_Pin
          (AMF.UML.Action_Input_Pins.UML_Action_Input_Pin_Access (Element));
         Self.Visit_Action_Input_Pin
          (AMF.UML.Action_Input_Pins.UML_Action_Input_Pin_Access (Element));
         Self.Leave_Action_Input_Pin
          (AMF.UML.Action_Input_Pins.UML_Action_Input_Pin_Access (Element));

      elsif Element.all in AMF.UML.Activities.UML_Activity'Class then
         Self.Enter_Activity
          (AMF.UML.Activities.UML_Activity_Access (Element));
         Self.Visit_Activity
          (AMF.UML.Activities.UML_Activity_Access (Element));
         Self.Leave_Activity
          (AMF.UML.Activities.UML_Activity_Access (Element));

      elsif Element.all in AMF.UML.Activity_Final_Nodes.UML_Activity_Final_Node'Class then
         Self.Enter_Activity_Final_Node
          (AMF.UML.Activity_Final_Nodes.UML_Activity_Final_Node_Access (Element));
         Self.Visit_Activity_Final_Node
          (AMF.UML.Activity_Final_Nodes.UML_Activity_Final_Node_Access (Element));
         Self.Leave_Activity_Final_Node
          (AMF.UML.Activity_Final_Nodes.UML_Activity_Final_Node_Access (Element));

      elsif Element.all in AMF.UML.Activity_Parameter_Nodes.UML_Activity_Parameter_Node'Class then
         Self.Enter_Activity_Parameter_Node
          (AMF.UML.Activity_Parameter_Nodes.UML_Activity_Parameter_Node_Access (Element));
         Self.Visit_Activity_Parameter_Node
          (AMF.UML.Activity_Parameter_Nodes.UML_Activity_Parameter_Node_Access (Element));
         Self.Leave_Activity_Parameter_Node
          (AMF.UML.Activity_Parameter_Nodes.UML_Activity_Parameter_Node_Access (Element));

      elsif Element.all in AMF.UML.Activity_Partitions.UML_Activity_Partition'Class then
         Self.Enter_Activity_Partition
          (AMF.UML.Activity_Partitions.UML_Activity_Partition_Access (Element));
         Self.Visit_Activity_Partition
          (AMF.UML.Activity_Partitions.UML_Activity_Partition_Access (Element));
         Self.Leave_Activity_Partition
          (AMF.UML.Activity_Partitions.UML_Activity_Partition_Access (Element));

      elsif Element.all in AMF.UML.Actors.UML_Actor'Class then
         Self.Enter_Actor
          (AMF.UML.Actors.UML_Actor_Access (Element));
         Self.Visit_Actor
          (AMF.UML.Actors.UML_Actor_Access (Element));
         Self.Leave_Actor
          (AMF.UML.Actors.UML_Actor_Access (Element));

      elsif Element.all in AMF.UML.Add_Structural_Feature_Value_Actions.UML_Add_Structural_Feature_Value_Action'Class then
         Self.Enter_Add_Structural_Feature_Value_Action
          (AMF.UML.Add_Structural_Feature_Value_Actions.UML_Add_Structural_Feature_Value_Action_Access (Element));
         Self.Visit_Add_Structural_Feature_Value_Action
          (AMF.UML.Add_Structural_Feature_Value_Actions.UML_Add_Structural_Feature_Value_Action_Access (Element));
         Self.Leave_Add_Structural_Feature_Value_Action
          (AMF.UML.Add_Structural_Feature_Value_Actions.UML_Add_Structural_Feature_Value_Action_Access (Element));

      elsif Element.all in AMF.UML.Add_Variable_Value_Actions.UML_Add_Variable_Value_Action'Class then
         Self.Enter_Add_Variable_Value_Action
          (AMF.UML.Add_Variable_Value_Actions.UML_Add_Variable_Value_Action_Access (Element));
         Self.Visit_Add_Variable_Value_Action
          (AMF.UML.Add_Variable_Value_Actions.UML_Add_Variable_Value_Action_Access (Element));
         Self.Leave_Add_Variable_Value_Action
          (AMF.UML.Add_Variable_Value_Actions.UML_Add_Variable_Value_Action_Access (Element));

      elsif Element.all in AMF.UML.Any_Receive_Events.UML_Any_Receive_Event'Class then
         Self.Enter_Any_Receive_Event
          (AMF.UML.Any_Receive_Events.UML_Any_Receive_Event_Access (Element));
         Self.Visit_Any_Receive_Event
          (AMF.UML.Any_Receive_Events.UML_Any_Receive_Event_Access (Element));
         Self.Leave_Any_Receive_Event
          (AMF.UML.Any_Receive_Events.UML_Any_Receive_Event_Access (Element));

      elsif Element.all in AMF.UML.Artifacts.UML_Artifact'Class then
         Self.Enter_Artifact
          (AMF.UML.Artifacts.UML_Artifact_Access (Element));
         Self.Visit_Artifact
          (AMF.UML.Artifacts.UML_Artifact_Access (Element));
         Self.Leave_Artifact
          (AMF.UML.Artifacts.UML_Artifact_Access (Element));

      elsif Element.all in AMF.UML.Associations.UML_Association'Class then
         Self.Enter_Association
          (AMF.UML.Associations.UML_Association_Access (Element));
         Self.Visit_Association
          (AMF.UML.Associations.UML_Association_Access (Element));
         Self.Leave_Association
          (AMF.UML.Associations.UML_Association_Access (Element));

      elsif Element.all in AMF.UML.Association_Classes.UML_Association_Class'Class then
         Self.Enter_Association_Class
          (AMF.UML.Association_Classes.UML_Association_Class_Access (Element));
         Self.Visit_Association_Class
          (AMF.UML.Association_Classes.UML_Association_Class_Access (Element));
         Self.Leave_Association_Class
          (AMF.UML.Association_Classes.UML_Association_Class_Access (Element));

      elsif Element.all in AMF.UML.Behavior_Execution_Specifications.UML_Behavior_Execution_Specification'Class then
         Self.Enter_Behavior_Execution_Specification
          (AMF.UML.Behavior_Execution_Specifications.UML_Behavior_Execution_Specification_Access (Element));
         Self.Visit_Behavior_Execution_Specification
          (AMF.UML.Behavior_Execution_Specifications.UML_Behavior_Execution_Specification_Access (Element));
         Self.Leave_Behavior_Execution_Specification
          (AMF.UML.Behavior_Execution_Specifications.UML_Behavior_Execution_Specification_Access (Element));

      elsif Element.all in AMF.UML.Broadcast_Signal_Actions.UML_Broadcast_Signal_Action'Class then
         Self.Enter_Broadcast_Signal_Action
          (AMF.UML.Broadcast_Signal_Actions.UML_Broadcast_Signal_Action_Access (Element));
         Self.Visit_Broadcast_Signal_Action
          (AMF.UML.Broadcast_Signal_Actions.UML_Broadcast_Signal_Action_Access (Element));
         Self.Leave_Broadcast_Signal_Action
          (AMF.UML.Broadcast_Signal_Actions.UML_Broadcast_Signal_Action_Access (Element));

      elsif Element.all in AMF.UML.Call_Behavior_Actions.UML_Call_Behavior_Action'Class then
         Self.Enter_Call_Behavior_Action
          (AMF.UML.Call_Behavior_Actions.UML_Call_Behavior_Action_Access (Element));
         Self.Visit_Call_Behavior_Action
          (AMF.UML.Call_Behavior_Actions.UML_Call_Behavior_Action_Access (Element));
         Self.Leave_Call_Behavior_Action
          (AMF.UML.Call_Behavior_Actions.UML_Call_Behavior_Action_Access (Element));

      elsif Element.all in AMF.UML.Call_Events.UML_Call_Event'Class then
         Self.Enter_Call_Event
          (AMF.UML.Call_Events.UML_Call_Event_Access (Element));
         Self.Visit_Call_Event
          (AMF.UML.Call_Events.UML_Call_Event_Access (Element));
         Self.Leave_Call_Event
          (AMF.UML.Call_Events.UML_Call_Event_Access (Element));

      elsif Element.all in AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action'Class then
         Self.Enter_Call_Operation_Action
          (AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access (Element));
         Self.Visit_Call_Operation_Action
          (AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access (Element));
         Self.Leave_Call_Operation_Action
          (AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access (Element));

      elsif Element.all in AMF.UML.Central_Buffer_Nodes.UML_Central_Buffer_Node'Class then
         Self.Enter_Central_Buffer_Node
          (AMF.UML.Central_Buffer_Nodes.UML_Central_Buffer_Node_Access (Element));
         Self.Visit_Central_Buffer_Node
          (AMF.UML.Central_Buffer_Nodes.UML_Central_Buffer_Node_Access (Element));
         Self.Leave_Central_Buffer_Node
          (AMF.UML.Central_Buffer_Nodes.UML_Central_Buffer_Node_Access (Element));

      elsif Element.all in AMF.UML.Change_Events.UML_Change_Event'Class then
         Self.Enter_Change_Event
          (AMF.UML.Change_Events.UML_Change_Event_Access (Element));
         Self.Visit_Change_Event
          (AMF.UML.Change_Events.UML_Change_Event_Access (Element));
         Self.Leave_Change_Event
          (AMF.UML.Change_Events.UML_Change_Event_Access (Element));

      elsif Element.all in AMF.UML.Classes.UML_Class'Class then
         Self.Enter_Class
          (AMF.UML.Classes.UML_Class_Access (Element));
         Self.Visit_Class
          (AMF.UML.Classes.UML_Class_Access (Element));
         Self.Leave_Class
          (AMF.UML.Classes.UML_Class_Access (Element));

      elsif Element.all in AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter'Class then
         Self.Enter_Classifier_Template_Parameter
          (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (Element));
         Self.Visit_Classifier_Template_Parameter
          (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (Element));
         Self.Leave_Classifier_Template_Parameter
          (AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access (Element));

      elsif Element.all in AMF.UML.Clauses.UML_Clause'Class then
         Self.Enter_Clause
          (AMF.UML.Clauses.UML_Clause_Access (Element));
         Self.Visit_Clause
          (AMF.UML.Clauses.UML_Clause_Access (Element));
         Self.Leave_Clause
          (AMF.UML.Clauses.UML_Clause_Access (Element));

      elsif Element.all in AMF.UML.Clear_Association_Actions.UML_Clear_Association_Action'Class then
         Self.Enter_Clear_Association_Action
          (AMF.UML.Clear_Association_Actions.UML_Clear_Association_Action_Access (Element));
         Self.Visit_Clear_Association_Action
          (AMF.UML.Clear_Association_Actions.UML_Clear_Association_Action_Access (Element));
         Self.Leave_Clear_Association_Action
          (AMF.UML.Clear_Association_Actions.UML_Clear_Association_Action_Access (Element));

      elsif Element.all in AMF.UML.Clear_Structural_Feature_Actions.UML_Clear_Structural_Feature_Action'Class then
         Self.Enter_Clear_Structural_Feature_Action
          (AMF.UML.Clear_Structural_Feature_Actions.UML_Clear_Structural_Feature_Action_Access (Element));
         Self.Visit_Clear_Structural_Feature_Action
          (AMF.UML.Clear_Structural_Feature_Actions.UML_Clear_Structural_Feature_Action_Access (Element));
         Self.Leave_Clear_Structural_Feature_Action
          (AMF.UML.Clear_Structural_Feature_Actions.UML_Clear_Structural_Feature_Action_Access (Element));

      elsif Element.all in AMF.UML.Clear_Variable_Actions.UML_Clear_Variable_Action'Class then
         Self.Enter_Clear_Variable_Action
          (AMF.UML.Clear_Variable_Actions.UML_Clear_Variable_Action_Access (Element));
         Self.Visit_Clear_Variable_Action
          (AMF.UML.Clear_Variable_Actions.UML_Clear_Variable_Action_Access (Element));
         Self.Leave_Clear_Variable_Action
          (AMF.UML.Clear_Variable_Actions.UML_Clear_Variable_Action_Access (Element));

      elsif Element.all in AMF.UML.Collaborations.UML_Collaboration'Class then
         Self.Enter_Collaboration
          (AMF.UML.Collaborations.UML_Collaboration_Access (Element));
         Self.Visit_Collaboration
          (AMF.UML.Collaborations.UML_Collaboration_Access (Element));
         Self.Leave_Collaboration
          (AMF.UML.Collaborations.UML_Collaboration_Access (Element));

      elsif Element.all in AMF.UML.Collaboration_Uses.UML_Collaboration_Use'Class then
         Self.Enter_Collaboration_Use
          (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (Element));
         Self.Visit_Collaboration_Use
          (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (Element));
         Self.Leave_Collaboration_Use
          (AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access (Element));

      elsif Element.all in AMF.UML.Combined_Fragments.UML_Combined_Fragment'Class then
         Self.Enter_Combined_Fragment
          (AMF.UML.Combined_Fragments.UML_Combined_Fragment_Access (Element));
         Self.Visit_Combined_Fragment
          (AMF.UML.Combined_Fragments.UML_Combined_Fragment_Access (Element));
         Self.Leave_Combined_Fragment
          (AMF.UML.Combined_Fragments.UML_Combined_Fragment_Access (Element));

      elsif Element.all in AMF.UML.Comments.UML_Comment'Class then
         Self.Enter_Comment
          (AMF.UML.Comments.UML_Comment_Access (Element));
         Self.Visit_Comment
          (AMF.UML.Comments.UML_Comment_Access (Element));
         Self.Leave_Comment
          (AMF.UML.Comments.UML_Comment_Access (Element));

      elsif Element.all in AMF.UML.Communication_Paths.UML_Communication_Path'Class then
         Self.Enter_Communication_Path
          (AMF.UML.Communication_Paths.UML_Communication_Path_Access (Element));
         Self.Visit_Communication_Path
          (AMF.UML.Communication_Paths.UML_Communication_Path_Access (Element));
         Self.Leave_Communication_Path
          (AMF.UML.Communication_Paths.UML_Communication_Path_Access (Element));

      elsif Element.all in AMF.UML.Components.UML_Component'Class then
         Self.Enter_Component
          (AMF.UML.Components.UML_Component_Access (Element));
         Self.Visit_Component
          (AMF.UML.Components.UML_Component_Access (Element));
         Self.Leave_Component
          (AMF.UML.Components.UML_Component_Access (Element));

      elsif Element.all in AMF.UML.Component_Realizations.UML_Component_Realization'Class then
         Self.Enter_Component_Realization
          (AMF.UML.Component_Realizations.UML_Component_Realization_Access (Element));
         Self.Visit_Component_Realization
          (AMF.UML.Component_Realizations.UML_Component_Realization_Access (Element));
         Self.Leave_Component_Realization
          (AMF.UML.Component_Realizations.UML_Component_Realization_Access (Element));

      elsif Element.all in AMF.UML.Conditional_Nodes.UML_Conditional_Node'Class then
         Self.Enter_Conditional_Node
          (AMF.UML.Conditional_Nodes.UML_Conditional_Node_Access (Element));
         Self.Visit_Conditional_Node
          (AMF.UML.Conditional_Nodes.UML_Conditional_Node_Access (Element));
         Self.Leave_Conditional_Node
          (AMF.UML.Conditional_Nodes.UML_Conditional_Node_Access (Element));

      elsif Element.all in AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter'Class then
         Self.Enter_Connectable_Element_Template_Parameter
          (AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access (Element));
         Self.Visit_Connectable_Element_Template_Parameter
          (AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access (Element));
         Self.Leave_Connectable_Element_Template_Parameter
          (AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access (Element));

      elsif Element.all in AMF.UML.Connection_Point_References.UML_Connection_Point_Reference'Class then
         Self.Enter_Connection_Point_Reference
          (AMF.UML.Connection_Point_References.UML_Connection_Point_Reference_Access (Element));
         Self.Visit_Connection_Point_Reference
          (AMF.UML.Connection_Point_References.UML_Connection_Point_Reference_Access (Element));
         Self.Leave_Connection_Point_Reference
          (AMF.UML.Connection_Point_References.UML_Connection_Point_Reference_Access (Element));

      elsif Element.all in AMF.UML.Connectors.UML_Connector'Class then
         Self.Enter_Connector
          (AMF.UML.Connectors.UML_Connector_Access (Element));
         Self.Visit_Connector
          (AMF.UML.Connectors.UML_Connector_Access (Element));
         Self.Leave_Connector
          (AMF.UML.Connectors.UML_Connector_Access (Element));

      elsif Element.all in AMF.UML.Connector_Ends.UML_Connector_End'Class then
         Self.Enter_Connector_End
          (AMF.UML.Connector_Ends.UML_Connector_End_Access (Element));
         Self.Visit_Connector_End
          (AMF.UML.Connector_Ends.UML_Connector_End_Access (Element));
         Self.Leave_Connector_End
          (AMF.UML.Connector_Ends.UML_Connector_End_Access (Element));

      elsif Element.all in AMF.UML.Consider_Ignore_Fragments.UML_Consider_Ignore_Fragment'Class then
         Self.Enter_Consider_Ignore_Fragment
          (AMF.UML.Consider_Ignore_Fragments.UML_Consider_Ignore_Fragment_Access (Element));
         Self.Visit_Consider_Ignore_Fragment
          (AMF.UML.Consider_Ignore_Fragments.UML_Consider_Ignore_Fragment_Access (Element));
         Self.Leave_Consider_Ignore_Fragment
          (AMF.UML.Consider_Ignore_Fragments.UML_Consider_Ignore_Fragment_Access (Element));

      elsif Element.all in AMF.UML.Constraints.UML_Constraint'Class then
         Self.Enter_Constraint
          (AMF.UML.Constraints.UML_Constraint_Access (Element));
         Self.Visit_Constraint
          (AMF.UML.Constraints.UML_Constraint_Access (Element));
         Self.Leave_Constraint
          (AMF.UML.Constraints.UML_Constraint_Access (Element));

      elsif Element.all in AMF.UML.Continuations.UML_Continuation'Class then
         Self.Enter_Continuation
          (AMF.UML.Continuations.UML_Continuation_Access (Element));
         Self.Visit_Continuation
          (AMF.UML.Continuations.UML_Continuation_Access (Element));
         Self.Leave_Continuation
          (AMF.UML.Continuations.UML_Continuation_Access (Element));

      elsif Element.all in AMF.UML.Control_Flows.UML_Control_Flow'Class then
         Self.Enter_Control_Flow
          (AMF.UML.Control_Flows.UML_Control_Flow_Access (Element));
         Self.Visit_Control_Flow
          (AMF.UML.Control_Flows.UML_Control_Flow_Access (Element));
         Self.Leave_Control_Flow
          (AMF.UML.Control_Flows.UML_Control_Flow_Access (Element));

      elsif Element.all in AMF.UML.Create_Link_Actions.UML_Create_Link_Action'Class then
         Self.Enter_Create_Link_Action
          (AMF.UML.Create_Link_Actions.UML_Create_Link_Action_Access (Element));
         Self.Visit_Create_Link_Action
          (AMF.UML.Create_Link_Actions.UML_Create_Link_Action_Access (Element));
         Self.Leave_Create_Link_Action
          (AMF.UML.Create_Link_Actions.UML_Create_Link_Action_Access (Element));

      elsif Element.all in AMF.UML.Create_Link_Object_Actions.UML_Create_Link_Object_Action'Class then
         Self.Enter_Create_Link_Object_Action
          (AMF.UML.Create_Link_Object_Actions.UML_Create_Link_Object_Action_Access (Element));
         Self.Visit_Create_Link_Object_Action
          (AMF.UML.Create_Link_Object_Actions.UML_Create_Link_Object_Action_Access (Element));
         Self.Leave_Create_Link_Object_Action
          (AMF.UML.Create_Link_Object_Actions.UML_Create_Link_Object_Action_Access (Element));

      elsif Element.all in AMF.UML.Create_Object_Actions.UML_Create_Object_Action'Class then
         Self.Enter_Create_Object_Action
          (AMF.UML.Create_Object_Actions.UML_Create_Object_Action_Access (Element));
         Self.Visit_Create_Object_Action
          (AMF.UML.Create_Object_Actions.UML_Create_Object_Action_Access (Element));
         Self.Leave_Create_Object_Action
          (AMF.UML.Create_Object_Actions.UML_Create_Object_Action_Access (Element));

      elsif Element.all in AMF.UML.Data_Store_Nodes.UML_Data_Store_Node'Class then
         Self.Enter_Data_Store_Node
          (AMF.UML.Data_Store_Nodes.UML_Data_Store_Node_Access (Element));
         Self.Visit_Data_Store_Node
          (AMF.UML.Data_Store_Nodes.UML_Data_Store_Node_Access (Element));
         Self.Leave_Data_Store_Node
          (AMF.UML.Data_Store_Nodes.UML_Data_Store_Node_Access (Element));

      elsif Element.all in AMF.UML.Data_Types.UML_Data_Type'Class then
         Self.Enter_Data_Type
          (AMF.UML.Data_Types.UML_Data_Type_Access (Element));
         Self.Visit_Data_Type
          (AMF.UML.Data_Types.UML_Data_Type_Access (Element));
         Self.Leave_Data_Type
          (AMF.UML.Data_Types.UML_Data_Type_Access (Element));

      elsif Element.all in AMF.UML.Decision_Nodes.UML_Decision_Node'Class then
         Self.Enter_Decision_Node
          (AMF.UML.Decision_Nodes.UML_Decision_Node_Access (Element));
         Self.Visit_Decision_Node
          (AMF.UML.Decision_Nodes.UML_Decision_Node_Access (Element));
         Self.Leave_Decision_Node
          (AMF.UML.Decision_Nodes.UML_Decision_Node_Access (Element));

      elsif Element.all in AMF.UML.Dependencies.UML_Dependency'Class then
         Self.Enter_Dependency
          (AMF.UML.Dependencies.UML_Dependency_Access (Element));
         Self.Visit_Dependency
          (AMF.UML.Dependencies.UML_Dependency_Access (Element));
         Self.Leave_Dependency
          (AMF.UML.Dependencies.UML_Dependency_Access (Element));

      elsif Element.all in AMF.UML.Deployments.UML_Deployment'Class then
         Self.Enter_Deployment
          (AMF.UML.Deployments.UML_Deployment_Access (Element));
         Self.Visit_Deployment
          (AMF.UML.Deployments.UML_Deployment_Access (Element));
         Self.Leave_Deployment
          (AMF.UML.Deployments.UML_Deployment_Access (Element));

      elsif Element.all in AMF.UML.Deployment_Specifications.UML_Deployment_Specification'Class then
         Self.Enter_Deployment_Specification
          (AMF.UML.Deployment_Specifications.UML_Deployment_Specification_Access (Element));
         Self.Visit_Deployment_Specification
          (AMF.UML.Deployment_Specifications.UML_Deployment_Specification_Access (Element));
         Self.Leave_Deployment_Specification
          (AMF.UML.Deployment_Specifications.UML_Deployment_Specification_Access (Element));

      elsif Element.all in AMF.UML.Destroy_Link_Actions.UML_Destroy_Link_Action'Class then
         Self.Enter_Destroy_Link_Action
          (AMF.UML.Destroy_Link_Actions.UML_Destroy_Link_Action_Access (Element));
         Self.Visit_Destroy_Link_Action
          (AMF.UML.Destroy_Link_Actions.UML_Destroy_Link_Action_Access (Element));
         Self.Leave_Destroy_Link_Action
          (AMF.UML.Destroy_Link_Actions.UML_Destroy_Link_Action_Access (Element));

      elsif Element.all in AMF.UML.Destroy_Object_Actions.UML_Destroy_Object_Action'Class then
         Self.Enter_Destroy_Object_Action
          (AMF.UML.Destroy_Object_Actions.UML_Destroy_Object_Action_Access (Element));
         Self.Visit_Destroy_Object_Action
          (AMF.UML.Destroy_Object_Actions.UML_Destroy_Object_Action_Access (Element));
         Self.Leave_Destroy_Object_Action
          (AMF.UML.Destroy_Object_Actions.UML_Destroy_Object_Action_Access (Element));

      elsif Element.all in AMF.UML.Destruction_Occurrence_Specifications.UML_Destruction_Occurrence_Specification'Class then
         Self.Enter_Destruction_Occurrence_Specification
          (AMF.UML.Destruction_Occurrence_Specifications.UML_Destruction_Occurrence_Specification_Access (Element));
         Self.Visit_Destruction_Occurrence_Specification
          (AMF.UML.Destruction_Occurrence_Specifications.UML_Destruction_Occurrence_Specification_Access (Element));
         Self.Leave_Destruction_Occurrence_Specification
          (AMF.UML.Destruction_Occurrence_Specifications.UML_Destruction_Occurrence_Specification_Access (Element));

      elsif Element.all in AMF.UML.Devices.UML_Device'Class then
         Self.Enter_Device
          (AMF.UML.Devices.UML_Device_Access (Element));
         Self.Visit_Device
          (AMF.UML.Devices.UML_Device_Access (Element));
         Self.Leave_Device
          (AMF.UML.Devices.UML_Device_Access (Element));

      elsif Element.all in AMF.UML.Durations.UML_Duration'Class then
         Self.Enter_Duration
          (AMF.UML.Durations.UML_Duration_Access (Element));
         Self.Visit_Duration
          (AMF.UML.Durations.UML_Duration_Access (Element));
         Self.Leave_Duration
          (AMF.UML.Durations.UML_Duration_Access (Element));

      elsif Element.all in AMF.UML.Duration_Constraints.UML_Duration_Constraint'Class then
         Self.Enter_Duration_Constraint
          (AMF.UML.Duration_Constraints.UML_Duration_Constraint_Access (Element));
         Self.Visit_Duration_Constraint
          (AMF.UML.Duration_Constraints.UML_Duration_Constraint_Access (Element));
         Self.Leave_Duration_Constraint
          (AMF.UML.Duration_Constraints.UML_Duration_Constraint_Access (Element));

      elsif Element.all in AMF.UML.Duration_Intervals.UML_Duration_Interval'Class then
         Self.Enter_Duration_Interval
          (AMF.UML.Duration_Intervals.UML_Duration_Interval_Access (Element));
         Self.Visit_Duration_Interval
          (AMF.UML.Duration_Intervals.UML_Duration_Interval_Access (Element));
         Self.Leave_Duration_Interval
          (AMF.UML.Duration_Intervals.UML_Duration_Interval_Access (Element));

      elsif Element.all in AMF.UML.Duration_Observations.UML_Duration_Observation'Class then
         Self.Enter_Duration_Observation
          (AMF.UML.Duration_Observations.UML_Duration_Observation_Access (Element));
         Self.Visit_Duration_Observation
          (AMF.UML.Duration_Observations.UML_Duration_Observation_Access (Element));
         Self.Leave_Duration_Observation
          (AMF.UML.Duration_Observations.UML_Duration_Observation_Access (Element));

      elsif Element.all in AMF.UML.Element_Imports.UML_Element_Import'Class then
         Self.Enter_Element_Import
          (AMF.UML.Element_Imports.UML_Element_Import_Access (Element));
         Self.Visit_Element_Import
          (AMF.UML.Element_Imports.UML_Element_Import_Access (Element));
         Self.Leave_Element_Import
          (AMF.UML.Element_Imports.UML_Element_Import_Access (Element));

      elsif Element.all in AMF.UML.Enumerations.UML_Enumeration'Class then
         Self.Enter_Enumeration
          (AMF.UML.Enumerations.UML_Enumeration_Access (Element));
         Self.Visit_Enumeration
          (AMF.UML.Enumerations.UML_Enumeration_Access (Element));
         Self.Leave_Enumeration
          (AMF.UML.Enumerations.UML_Enumeration_Access (Element));

      elsif Element.all in AMF.UML.Enumeration_Literals.UML_Enumeration_Literal'Class then
         Self.Enter_Enumeration_Literal
          (AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access (Element));
         Self.Visit_Enumeration_Literal
          (AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access (Element));
         Self.Leave_Enumeration_Literal
          (AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access (Element));

      elsif Element.all in AMF.UML.Exception_Handlers.UML_Exception_Handler'Class then
         Self.Enter_Exception_Handler
          (AMF.UML.Exception_Handlers.UML_Exception_Handler_Access (Element));
         Self.Visit_Exception_Handler
          (AMF.UML.Exception_Handlers.UML_Exception_Handler_Access (Element));
         Self.Leave_Exception_Handler
          (AMF.UML.Exception_Handlers.UML_Exception_Handler_Access (Element));

      elsif Element.all in AMF.UML.Execution_Environments.UML_Execution_Environment'Class then
         Self.Enter_Execution_Environment
          (AMF.UML.Execution_Environments.UML_Execution_Environment_Access (Element));
         Self.Visit_Execution_Environment
          (AMF.UML.Execution_Environments.UML_Execution_Environment_Access (Element));
         Self.Leave_Execution_Environment
          (AMF.UML.Execution_Environments.UML_Execution_Environment_Access (Element));

      elsif Element.all in AMF.UML.Execution_Occurrence_Specifications.UML_Execution_Occurrence_Specification'Class then
         Self.Enter_Execution_Occurrence_Specification
          (AMF.UML.Execution_Occurrence_Specifications.UML_Execution_Occurrence_Specification_Access (Element));
         Self.Visit_Execution_Occurrence_Specification
          (AMF.UML.Execution_Occurrence_Specifications.UML_Execution_Occurrence_Specification_Access (Element));
         Self.Leave_Execution_Occurrence_Specification
          (AMF.UML.Execution_Occurrence_Specifications.UML_Execution_Occurrence_Specification_Access (Element));

      elsif Element.all in AMF.UML.Expansion_Nodes.UML_Expansion_Node'Class then
         Self.Enter_Expansion_Node
          (AMF.UML.Expansion_Nodes.UML_Expansion_Node_Access (Element));
         Self.Visit_Expansion_Node
          (AMF.UML.Expansion_Nodes.UML_Expansion_Node_Access (Element));
         Self.Leave_Expansion_Node
          (AMF.UML.Expansion_Nodes.UML_Expansion_Node_Access (Element));

      elsif Element.all in AMF.UML.Expansion_Regions.UML_Expansion_Region'Class then
         Self.Enter_Expansion_Region
          (AMF.UML.Expansion_Regions.UML_Expansion_Region_Access (Element));
         Self.Visit_Expansion_Region
          (AMF.UML.Expansion_Regions.UML_Expansion_Region_Access (Element));
         Self.Leave_Expansion_Region
          (AMF.UML.Expansion_Regions.UML_Expansion_Region_Access (Element));

      elsif Element.all in AMF.UML.Expressions.UML_Expression'Class then
         Self.Enter_Expression
          (AMF.UML.Expressions.UML_Expression_Access (Element));
         Self.Visit_Expression
          (AMF.UML.Expressions.UML_Expression_Access (Element));
         Self.Leave_Expression
          (AMF.UML.Expressions.UML_Expression_Access (Element));

      elsif Element.all in AMF.UML.Extends.UML_Extend'Class then
         Self.Enter_Extend
          (AMF.UML.Extends.UML_Extend_Access (Element));
         Self.Visit_Extend
          (AMF.UML.Extends.UML_Extend_Access (Element));
         Self.Leave_Extend
          (AMF.UML.Extends.UML_Extend_Access (Element));

      elsif Element.all in AMF.UML.Extensions.UML_Extension'Class then
         Self.Enter_Extension
          (AMF.UML.Extensions.UML_Extension_Access (Element));
         Self.Visit_Extension
          (AMF.UML.Extensions.UML_Extension_Access (Element));
         Self.Leave_Extension
          (AMF.UML.Extensions.UML_Extension_Access (Element));

      elsif Element.all in AMF.UML.Extension_Ends.UML_Extension_End'Class then
         Self.Enter_Extension_End
          (AMF.UML.Extension_Ends.UML_Extension_End_Access (Element));
         Self.Visit_Extension_End
          (AMF.UML.Extension_Ends.UML_Extension_End_Access (Element));
         Self.Leave_Extension_End
          (AMF.UML.Extension_Ends.UML_Extension_End_Access (Element));

      elsif Element.all in AMF.UML.Extension_Points.UML_Extension_Point'Class then
         Self.Enter_Extension_Point
          (AMF.UML.Extension_Points.UML_Extension_Point_Access (Element));
         Self.Visit_Extension_Point
          (AMF.UML.Extension_Points.UML_Extension_Point_Access (Element));
         Self.Leave_Extension_Point
          (AMF.UML.Extension_Points.UML_Extension_Point_Access (Element));

      elsif Element.all in AMF.UML.Final_States.UML_Final_State'Class then
         Self.Enter_Final_State
          (AMF.UML.Final_States.UML_Final_State_Access (Element));
         Self.Visit_Final_State
          (AMF.UML.Final_States.UML_Final_State_Access (Element));
         Self.Leave_Final_State
          (AMF.UML.Final_States.UML_Final_State_Access (Element));

      elsif Element.all in AMF.UML.Flow_Final_Nodes.UML_Flow_Final_Node'Class then
         Self.Enter_Flow_Final_Node
          (AMF.UML.Flow_Final_Nodes.UML_Flow_Final_Node_Access (Element));
         Self.Visit_Flow_Final_Node
          (AMF.UML.Flow_Final_Nodes.UML_Flow_Final_Node_Access (Element));
         Self.Leave_Flow_Final_Node
          (AMF.UML.Flow_Final_Nodes.UML_Flow_Final_Node_Access (Element));

      elsif Element.all in AMF.UML.Fork_Nodes.UML_Fork_Node'Class then
         Self.Enter_Fork_Node
          (AMF.UML.Fork_Nodes.UML_Fork_Node_Access (Element));
         Self.Visit_Fork_Node
          (AMF.UML.Fork_Nodes.UML_Fork_Node_Access (Element));
         Self.Leave_Fork_Node
          (AMF.UML.Fork_Nodes.UML_Fork_Node_Access (Element));

      elsif Element.all in AMF.UML.Function_Behaviors.UML_Function_Behavior'Class then
         Self.Enter_Function_Behavior
          (AMF.UML.Function_Behaviors.UML_Function_Behavior_Access (Element));
         Self.Visit_Function_Behavior
          (AMF.UML.Function_Behaviors.UML_Function_Behavior_Access (Element));
         Self.Leave_Function_Behavior
          (AMF.UML.Function_Behaviors.UML_Function_Behavior_Access (Element));

      elsif Element.all in AMF.UML.Gates.UML_Gate'Class then
         Self.Enter_Gate
          (AMF.UML.Gates.UML_Gate_Access (Element));
         Self.Visit_Gate
          (AMF.UML.Gates.UML_Gate_Access (Element));
         Self.Leave_Gate
          (AMF.UML.Gates.UML_Gate_Access (Element));

      elsif Element.all in AMF.UML.General_Orderings.UML_General_Ordering'Class then
         Self.Enter_General_Ordering
          (AMF.UML.General_Orderings.UML_General_Ordering_Access (Element));
         Self.Visit_General_Ordering
          (AMF.UML.General_Orderings.UML_General_Ordering_Access (Element));
         Self.Leave_General_Ordering
          (AMF.UML.General_Orderings.UML_General_Ordering_Access (Element));

      elsif Element.all in AMF.UML.Generalizations.UML_Generalization'Class then
         Self.Enter_Generalization
          (AMF.UML.Generalizations.UML_Generalization_Access (Element));
         Self.Visit_Generalization
          (AMF.UML.Generalizations.UML_Generalization_Access (Element));
         Self.Leave_Generalization
          (AMF.UML.Generalizations.UML_Generalization_Access (Element));

      elsif Element.all in AMF.UML.Generalization_Sets.UML_Generalization_Set'Class then
         Self.Enter_Generalization_Set
          (AMF.UML.Generalization_Sets.UML_Generalization_Set_Access (Element));
         Self.Visit_Generalization_Set
          (AMF.UML.Generalization_Sets.UML_Generalization_Set_Access (Element));
         Self.Leave_Generalization_Set
          (AMF.UML.Generalization_Sets.UML_Generalization_Set_Access (Element));

      elsif Element.all in AMF.UML.Images.UML_Image'Class then
         Self.Enter_Image
          (AMF.UML.Images.UML_Image_Access (Element));
         Self.Visit_Image
          (AMF.UML.Images.UML_Image_Access (Element));
         Self.Leave_Image
          (AMF.UML.Images.UML_Image_Access (Element));

      elsif Element.all in AMF.UML.Includes.UML_Include'Class then
         Self.Enter_Include
          (AMF.UML.Includes.UML_Include_Access (Element));
         Self.Visit_Include
          (AMF.UML.Includes.UML_Include_Access (Element));
         Self.Leave_Include
          (AMF.UML.Includes.UML_Include_Access (Element));

      elsif Element.all in AMF.UML.Information_Flows.UML_Information_Flow'Class then
         Self.Enter_Information_Flow
          (AMF.UML.Information_Flows.UML_Information_Flow_Access (Element));
         Self.Visit_Information_Flow
          (AMF.UML.Information_Flows.UML_Information_Flow_Access (Element));
         Self.Leave_Information_Flow
          (AMF.UML.Information_Flows.UML_Information_Flow_Access (Element));

      elsif Element.all in AMF.UML.Information_Items.UML_Information_Item'Class then
         Self.Enter_Information_Item
          (AMF.UML.Information_Items.UML_Information_Item_Access (Element));
         Self.Visit_Information_Item
          (AMF.UML.Information_Items.UML_Information_Item_Access (Element));
         Self.Leave_Information_Item
          (AMF.UML.Information_Items.UML_Information_Item_Access (Element));

      elsif Element.all in AMF.UML.Initial_Nodes.UML_Initial_Node'Class then
         Self.Enter_Initial_Node
          (AMF.UML.Initial_Nodes.UML_Initial_Node_Access (Element));
         Self.Visit_Initial_Node
          (AMF.UML.Initial_Nodes.UML_Initial_Node_Access (Element));
         Self.Leave_Initial_Node
          (AMF.UML.Initial_Nodes.UML_Initial_Node_Access (Element));

      elsif Element.all in AMF.UML.Input_Pins.UML_Input_Pin'Class then
         Self.Enter_Input_Pin
          (AMF.UML.Input_Pins.UML_Input_Pin_Access (Element));
         Self.Visit_Input_Pin
          (AMF.UML.Input_Pins.UML_Input_Pin_Access (Element));
         Self.Leave_Input_Pin
          (AMF.UML.Input_Pins.UML_Input_Pin_Access (Element));

      elsif Element.all in AMF.UML.Instance_Specifications.UML_Instance_Specification'Class then
         Self.Enter_Instance_Specification
          (AMF.UML.Instance_Specifications.UML_Instance_Specification_Access (Element));
         Self.Visit_Instance_Specification
          (AMF.UML.Instance_Specifications.UML_Instance_Specification_Access (Element));
         Self.Leave_Instance_Specification
          (AMF.UML.Instance_Specifications.UML_Instance_Specification_Access (Element));

      elsif Element.all in AMF.UML.Instance_Values.UML_Instance_Value'Class then
         Self.Enter_Instance_Value
          (AMF.UML.Instance_Values.UML_Instance_Value_Access (Element));
         Self.Visit_Instance_Value
          (AMF.UML.Instance_Values.UML_Instance_Value_Access (Element));
         Self.Leave_Instance_Value
          (AMF.UML.Instance_Values.UML_Instance_Value_Access (Element));

      elsif Element.all in AMF.UML.Interactions.UML_Interaction'Class then
         Self.Enter_Interaction
          (AMF.UML.Interactions.UML_Interaction_Access (Element));
         Self.Visit_Interaction
          (AMF.UML.Interactions.UML_Interaction_Access (Element));
         Self.Leave_Interaction
          (AMF.UML.Interactions.UML_Interaction_Access (Element));

      elsif Element.all in AMF.UML.Interaction_Constraints.UML_Interaction_Constraint'Class then
         Self.Enter_Interaction_Constraint
          (AMF.UML.Interaction_Constraints.UML_Interaction_Constraint_Access (Element));
         Self.Visit_Interaction_Constraint
          (AMF.UML.Interaction_Constraints.UML_Interaction_Constraint_Access (Element));
         Self.Leave_Interaction_Constraint
          (AMF.UML.Interaction_Constraints.UML_Interaction_Constraint_Access (Element));

      elsif Element.all in AMF.UML.Interaction_Operands.UML_Interaction_Operand'Class then
         Self.Enter_Interaction_Operand
          (AMF.UML.Interaction_Operands.UML_Interaction_Operand_Access (Element));
         Self.Visit_Interaction_Operand
          (AMF.UML.Interaction_Operands.UML_Interaction_Operand_Access (Element));
         Self.Leave_Interaction_Operand
          (AMF.UML.Interaction_Operands.UML_Interaction_Operand_Access (Element));

      elsif Element.all in AMF.UML.Interaction_Uses.UML_Interaction_Use'Class then
         Self.Enter_Interaction_Use
          (AMF.UML.Interaction_Uses.UML_Interaction_Use_Access (Element));
         Self.Visit_Interaction_Use
          (AMF.UML.Interaction_Uses.UML_Interaction_Use_Access (Element));
         Self.Leave_Interaction_Use
          (AMF.UML.Interaction_Uses.UML_Interaction_Use_Access (Element));

      elsif Element.all in AMF.UML.Interfaces.UML_Interface'Class then
         Self.Enter_Interface
          (AMF.UML.Interfaces.UML_Interface_Access (Element));
         Self.Visit_Interface
          (AMF.UML.Interfaces.UML_Interface_Access (Element));
         Self.Leave_Interface
          (AMF.UML.Interfaces.UML_Interface_Access (Element));

      elsif Element.all in AMF.UML.Interface_Realizations.UML_Interface_Realization'Class then
         Self.Enter_Interface_Realization
          (AMF.UML.Interface_Realizations.UML_Interface_Realization_Access (Element));
         Self.Visit_Interface_Realization
          (AMF.UML.Interface_Realizations.UML_Interface_Realization_Access (Element));
         Self.Leave_Interface_Realization
          (AMF.UML.Interface_Realizations.UML_Interface_Realization_Access (Element));

      elsif Element.all in AMF.UML.Interruptible_Activity_Regions.UML_Interruptible_Activity_Region'Class then
         Self.Enter_Interruptible_Activity_Region
          (AMF.UML.Interruptible_Activity_Regions.UML_Interruptible_Activity_Region_Access (Element));
         Self.Visit_Interruptible_Activity_Region
          (AMF.UML.Interruptible_Activity_Regions.UML_Interruptible_Activity_Region_Access (Element));
         Self.Leave_Interruptible_Activity_Region
          (AMF.UML.Interruptible_Activity_Regions.UML_Interruptible_Activity_Region_Access (Element));

      elsif Element.all in AMF.UML.Intervals.UML_Interval'Class then
         Self.Enter_Interval
          (AMF.UML.Intervals.UML_Interval_Access (Element));
         Self.Visit_Interval
          (AMF.UML.Intervals.UML_Interval_Access (Element));
         Self.Leave_Interval
          (AMF.UML.Intervals.UML_Interval_Access (Element));

      elsif Element.all in AMF.UML.Interval_Constraints.UML_Interval_Constraint'Class then
         Self.Enter_Interval_Constraint
          (AMF.UML.Interval_Constraints.UML_Interval_Constraint_Access (Element));
         Self.Visit_Interval_Constraint
          (AMF.UML.Interval_Constraints.UML_Interval_Constraint_Access (Element));
         Self.Leave_Interval_Constraint
          (AMF.UML.Interval_Constraints.UML_Interval_Constraint_Access (Element));

      elsif Element.all in AMF.UML.Join_Nodes.UML_Join_Node'Class then
         Self.Enter_Join_Node
          (AMF.UML.Join_Nodes.UML_Join_Node_Access (Element));
         Self.Visit_Join_Node
          (AMF.UML.Join_Nodes.UML_Join_Node_Access (Element));
         Self.Leave_Join_Node
          (AMF.UML.Join_Nodes.UML_Join_Node_Access (Element));

      elsif Element.all in AMF.UML.Lifelines.UML_Lifeline'Class then
         Self.Enter_Lifeline
          (AMF.UML.Lifelines.UML_Lifeline_Access (Element));
         Self.Visit_Lifeline
          (AMF.UML.Lifelines.UML_Lifeline_Access (Element));
         Self.Leave_Lifeline
          (AMF.UML.Lifelines.UML_Lifeline_Access (Element));

      elsif Element.all in AMF.UML.Link_End_Creation_Datas.UML_Link_End_Creation_Data'Class then
         Self.Enter_Link_End_Creation_Data
          (AMF.UML.Link_End_Creation_Datas.UML_Link_End_Creation_Data_Access (Element));
         Self.Visit_Link_End_Creation_Data
          (AMF.UML.Link_End_Creation_Datas.UML_Link_End_Creation_Data_Access (Element));
         Self.Leave_Link_End_Creation_Data
          (AMF.UML.Link_End_Creation_Datas.UML_Link_End_Creation_Data_Access (Element));

      elsif Element.all in AMF.UML.Link_End_Datas.UML_Link_End_Data'Class then
         Self.Enter_Link_End_Data
          (AMF.UML.Link_End_Datas.UML_Link_End_Data_Access (Element));
         Self.Visit_Link_End_Data
          (AMF.UML.Link_End_Datas.UML_Link_End_Data_Access (Element));
         Self.Leave_Link_End_Data
          (AMF.UML.Link_End_Datas.UML_Link_End_Data_Access (Element));

      elsif Element.all in AMF.UML.Link_End_Destruction_Datas.UML_Link_End_Destruction_Data'Class then
         Self.Enter_Link_End_Destruction_Data
          (AMF.UML.Link_End_Destruction_Datas.UML_Link_End_Destruction_Data_Access (Element));
         Self.Visit_Link_End_Destruction_Data
          (AMF.UML.Link_End_Destruction_Datas.UML_Link_End_Destruction_Data_Access (Element));
         Self.Leave_Link_End_Destruction_Data
          (AMF.UML.Link_End_Destruction_Datas.UML_Link_End_Destruction_Data_Access (Element));

      elsif Element.all in AMF.UML.Literal_Booleans.UML_Literal_Boolean'Class then
         Self.Enter_Literal_Boolean
          (AMF.UML.Literal_Booleans.UML_Literal_Boolean_Access (Element));
         Self.Visit_Literal_Boolean
          (AMF.UML.Literal_Booleans.UML_Literal_Boolean_Access (Element));
         Self.Leave_Literal_Boolean
          (AMF.UML.Literal_Booleans.UML_Literal_Boolean_Access (Element));

      elsif Element.all in AMF.UML.Literal_Integers.UML_Literal_Integer'Class then
         Self.Enter_Literal_Integer
          (AMF.UML.Literal_Integers.UML_Literal_Integer_Access (Element));
         Self.Visit_Literal_Integer
          (AMF.UML.Literal_Integers.UML_Literal_Integer_Access (Element));
         Self.Leave_Literal_Integer
          (AMF.UML.Literal_Integers.UML_Literal_Integer_Access (Element));

      elsif Element.all in AMF.UML.Literal_Nulls.UML_Literal_Null'Class then
         Self.Enter_Literal_Null
          (AMF.UML.Literal_Nulls.UML_Literal_Null_Access (Element));
         Self.Visit_Literal_Null
          (AMF.UML.Literal_Nulls.UML_Literal_Null_Access (Element));
         Self.Leave_Literal_Null
          (AMF.UML.Literal_Nulls.UML_Literal_Null_Access (Element));

      elsif Element.all in AMF.UML.Literal_Reals.UML_Literal_Real'Class then
         Self.Enter_Literal_Real
          (AMF.UML.Literal_Reals.UML_Literal_Real_Access (Element));
         Self.Visit_Literal_Real
          (AMF.UML.Literal_Reals.UML_Literal_Real_Access (Element));
         Self.Leave_Literal_Real
          (AMF.UML.Literal_Reals.UML_Literal_Real_Access (Element));

      elsif Element.all in AMF.UML.Literal_Strings.UML_Literal_String'Class then
         Self.Enter_Literal_String
          (AMF.UML.Literal_Strings.UML_Literal_String_Access (Element));
         Self.Visit_Literal_String
          (AMF.UML.Literal_Strings.UML_Literal_String_Access (Element));
         Self.Leave_Literal_String
          (AMF.UML.Literal_Strings.UML_Literal_String_Access (Element));

      elsif Element.all in AMF.UML.Literal_Unlimited_Naturals.UML_Literal_Unlimited_Natural'Class then
         Self.Enter_Literal_Unlimited_Natural
          (AMF.UML.Literal_Unlimited_Naturals.UML_Literal_Unlimited_Natural_Access (Element));
         Self.Visit_Literal_Unlimited_Natural
          (AMF.UML.Literal_Unlimited_Naturals.UML_Literal_Unlimited_Natural_Access (Element));
         Self.Leave_Literal_Unlimited_Natural
          (AMF.UML.Literal_Unlimited_Naturals.UML_Literal_Unlimited_Natural_Access (Element));

      elsif Element.all in AMF.UML.Loop_Nodes.UML_Loop_Node'Class then
         Self.Enter_Loop_Node
          (AMF.UML.Loop_Nodes.UML_Loop_Node_Access (Element));
         Self.Visit_Loop_Node
          (AMF.UML.Loop_Nodes.UML_Loop_Node_Access (Element));
         Self.Leave_Loop_Node
          (AMF.UML.Loop_Nodes.UML_Loop_Node_Access (Element));

      elsif Element.all in AMF.UML.Manifestations.UML_Manifestation'Class then
         Self.Enter_Manifestation
          (AMF.UML.Manifestations.UML_Manifestation_Access (Element));
         Self.Visit_Manifestation
          (AMF.UML.Manifestations.UML_Manifestation_Access (Element));
         Self.Leave_Manifestation
          (AMF.UML.Manifestations.UML_Manifestation_Access (Element));

      elsif Element.all in AMF.UML.Merge_Nodes.UML_Merge_Node'Class then
         Self.Enter_Merge_Node
          (AMF.UML.Merge_Nodes.UML_Merge_Node_Access (Element));
         Self.Visit_Merge_Node
          (AMF.UML.Merge_Nodes.UML_Merge_Node_Access (Element));
         Self.Leave_Merge_Node
          (AMF.UML.Merge_Nodes.UML_Merge_Node_Access (Element));

      elsif Element.all in AMF.UML.Messages.UML_Message'Class then
         Self.Enter_Message
          (AMF.UML.Messages.UML_Message_Access (Element));
         Self.Visit_Message
          (AMF.UML.Messages.UML_Message_Access (Element));
         Self.Leave_Message
          (AMF.UML.Messages.UML_Message_Access (Element));

      elsif Element.all in AMF.UML.Message_Occurrence_Specifications.UML_Message_Occurrence_Specification'Class then
         Self.Enter_Message_Occurrence_Specification
          (AMF.UML.Message_Occurrence_Specifications.UML_Message_Occurrence_Specification_Access (Element));
         Self.Visit_Message_Occurrence_Specification
          (AMF.UML.Message_Occurrence_Specifications.UML_Message_Occurrence_Specification_Access (Element));
         Self.Leave_Message_Occurrence_Specification
          (AMF.UML.Message_Occurrence_Specifications.UML_Message_Occurrence_Specification_Access (Element));

      elsif Element.all in AMF.UML.Models.UML_Model'Class then
         Self.Enter_Model
          (AMF.UML.Models.UML_Model_Access (Element));
         Self.Visit_Model
          (AMF.UML.Models.UML_Model_Access (Element));
         Self.Leave_Model
          (AMF.UML.Models.UML_Model_Access (Element));

      elsif Element.all in AMF.UML.Nodes.UML_Node'Class then
         Self.Enter_Node
          (AMF.UML.Nodes.UML_Node_Access (Element));
         Self.Visit_Node
          (AMF.UML.Nodes.UML_Node_Access (Element));
         Self.Leave_Node
          (AMF.UML.Nodes.UML_Node_Access (Element));

      elsif Element.all in AMF.UML.Object_Flows.UML_Object_Flow'Class then
         Self.Enter_Object_Flow
          (AMF.UML.Object_Flows.UML_Object_Flow_Access (Element));
         Self.Visit_Object_Flow
          (AMF.UML.Object_Flows.UML_Object_Flow_Access (Element));
         Self.Leave_Object_Flow
          (AMF.UML.Object_Flows.UML_Object_Flow_Access (Element));

      elsif Element.all in AMF.UML.Occurrence_Specifications.UML_Occurrence_Specification'Class then
         Self.Enter_Occurrence_Specification
          (AMF.UML.Occurrence_Specifications.UML_Occurrence_Specification_Access (Element));
         Self.Visit_Occurrence_Specification
          (AMF.UML.Occurrence_Specifications.UML_Occurrence_Specification_Access (Element));
         Self.Leave_Occurrence_Specification
          (AMF.UML.Occurrence_Specifications.UML_Occurrence_Specification_Access (Element));

      elsif Element.all in AMF.UML.Opaque_Actions.UML_Opaque_Action'Class then
         Self.Enter_Opaque_Action
          (AMF.UML.Opaque_Actions.UML_Opaque_Action_Access (Element));
         Self.Visit_Opaque_Action
          (AMF.UML.Opaque_Actions.UML_Opaque_Action_Access (Element));
         Self.Leave_Opaque_Action
          (AMF.UML.Opaque_Actions.UML_Opaque_Action_Access (Element));

      elsif Element.all in AMF.UML.Opaque_Behaviors.UML_Opaque_Behavior'Class then
         Self.Enter_Opaque_Behavior
          (AMF.UML.Opaque_Behaviors.UML_Opaque_Behavior_Access (Element));
         Self.Visit_Opaque_Behavior
          (AMF.UML.Opaque_Behaviors.UML_Opaque_Behavior_Access (Element));
         Self.Leave_Opaque_Behavior
          (AMF.UML.Opaque_Behaviors.UML_Opaque_Behavior_Access (Element));

      elsif Element.all in AMF.UML.Opaque_Expressions.UML_Opaque_Expression'Class then
         Self.Enter_Opaque_Expression
          (AMF.UML.Opaque_Expressions.UML_Opaque_Expression_Access (Element));
         Self.Visit_Opaque_Expression
          (AMF.UML.Opaque_Expressions.UML_Opaque_Expression_Access (Element));
         Self.Leave_Opaque_Expression
          (AMF.UML.Opaque_Expressions.UML_Opaque_Expression_Access (Element));

      elsif Element.all in AMF.UML.Operations.UML_Operation'Class then
         Self.Enter_Operation
          (AMF.UML.Operations.UML_Operation_Access (Element));
         Self.Visit_Operation
          (AMF.UML.Operations.UML_Operation_Access (Element));
         Self.Leave_Operation
          (AMF.UML.Operations.UML_Operation_Access (Element));

      elsif Element.all in AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter'Class then
         Self.Enter_Operation_Template_Parameter
          (AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter_Access (Element));
         Self.Visit_Operation_Template_Parameter
          (AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter_Access (Element));
         Self.Leave_Operation_Template_Parameter
          (AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter_Access (Element));

      elsif Element.all in AMF.UML.Output_Pins.UML_Output_Pin'Class then
         Self.Enter_Output_Pin
          (AMF.UML.Output_Pins.UML_Output_Pin_Access (Element));
         Self.Visit_Output_Pin
          (AMF.UML.Output_Pins.UML_Output_Pin_Access (Element));
         Self.Leave_Output_Pin
          (AMF.UML.Output_Pins.UML_Output_Pin_Access (Element));

      elsif Element.all in AMF.UML.Profiles.UML_Profile'Class then
         --  UML::Profile must be tested before UML::Package.

         Self.Enter_Profile
          (AMF.UML.Profiles.UML_Profile_Access (Element));
         Self.Visit_Profile
          (AMF.UML.Profiles.UML_Profile_Access (Element));
         Self.Leave_Profile
          (AMF.UML.Profiles.UML_Profile_Access (Element));

      elsif Element.all in AMF.UML.Packages.UML_Package'Class then
         Self.Enter_Package
          (AMF.UML.Packages.UML_Package_Access (Element));
         Self.Visit_Package
          (AMF.UML.Packages.UML_Package_Access (Element));
         Self.Leave_Package
          (AMF.UML.Packages.UML_Package_Access (Element));

      elsif Element.all in AMF.UML.Package_Imports.UML_Package_Import'Class then
         Self.Enter_Package_Import
          (AMF.UML.Package_Imports.UML_Package_Import_Access (Element));
         Self.Visit_Package_Import
          (AMF.UML.Package_Imports.UML_Package_Import_Access (Element));
         Self.Leave_Package_Import
          (AMF.UML.Package_Imports.UML_Package_Import_Access (Element));

      elsif Element.all in AMF.UML.Package_Merges.UML_Package_Merge'Class then
         Self.Enter_Package_Merge
          (AMF.UML.Package_Merges.UML_Package_Merge_Access (Element));
         Self.Visit_Package_Merge
          (AMF.UML.Package_Merges.UML_Package_Merge_Access (Element));
         Self.Leave_Package_Merge
          (AMF.UML.Package_Merges.UML_Package_Merge_Access (Element));

      elsif Element.all in AMF.UML.Parameters.UML_Parameter'Class then
         Self.Enter_Parameter
          (AMF.UML.Parameters.UML_Parameter_Access (Element));
         Self.Visit_Parameter
          (AMF.UML.Parameters.UML_Parameter_Access (Element));
         Self.Leave_Parameter
          (AMF.UML.Parameters.UML_Parameter_Access (Element));

      elsif Element.all in AMF.UML.Parameter_Sets.UML_Parameter_Set'Class then
         Self.Enter_Parameter_Set
          (AMF.UML.Parameter_Sets.UML_Parameter_Set_Access (Element));
         Self.Visit_Parameter_Set
          (AMF.UML.Parameter_Sets.UML_Parameter_Set_Access (Element));
         Self.Leave_Parameter_Set
          (AMF.UML.Parameter_Sets.UML_Parameter_Set_Access (Element));

      elsif Element.all in AMF.UML.Part_Decompositions.UML_Part_Decomposition'Class then
         Self.Enter_Part_Decomposition
          (AMF.UML.Part_Decompositions.UML_Part_Decomposition_Access (Element));
         Self.Visit_Part_Decomposition
          (AMF.UML.Part_Decompositions.UML_Part_Decomposition_Access (Element));
         Self.Leave_Part_Decomposition
          (AMF.UML.Part_Decompositions.UML_Part_Decomposition_Access (Element));

      elsif Element.all in AMF.UML.Ports.UML_Port'Class then
         Self.Enter_Port
          (AMF.UML.Ports.UML_Port_Access (Element));
         Self.Visit_Port
          (AMF.UML.Ports.UML_Port_Access (Element));
         Self.Leave_Port
          (AMF.UML.Ports.UML_Port_Access (Element));

      elsif Element.all in AMF.UML.Primitive_Types.UML_Primitive_Type'Class then
         Self.Enter_Primitive_Type
          (AMF.UML.Primitive_Types.UML_Primitive_Type_Access (Element));
         Self.Visit_Primitive_Type
          (AMF.UML.Primitive_Types.UML_Primitive_Type_Access (Element));
         Self.Leave_Primitive_Type
          (AMF.UML.Primitive_Types.UML_Primitive_Type_Access (Element));

      elsif Element.all in AMF.UML.Profile_Applications.UML_Profile_Application'Class then
         Self.Enter_Profile_Application
          (AMF.UML.Profile_Applications.UML_Profile_Application_Access (Element));
         Self.Visit_Profile_Application
          (AMF.UML.Profile_Applications.UML_Profile_Application_Access (Element));
         Self.Leave_Profile_Application
          (AMF.UML.Profile_Applications.UML_Profile_Application_Access (Element));

      elsif Element.all in AMF.UML.Properties.UML_Property'Class then
         Self.Enter_Property
          (AMF.UML.Properties.UML_Property_Access (Element));
         Self.Visit_Property
          (AMF.UML.Properties.UML_Property_Access (Element));
         Self.Leave_Property
          (AMF.UML.Properties.UML_Property_Access (Element));

      elsif Element.all in AMF.UML.Protocol_Conformances.UML_Protocol_Conformance'Class then
         Self.Enter_Protocol_Conformance
          (AMF.UML.Protocol_Conformances.UML_Protocol_Conformance_Access (Element));
         Self.Visit_Protocol_Conformance
          (AMF.UML.Protocol_Conformances.UML_Protocol_Conformance_Access (Element));
         Self.Leave_Protocol_Conformance
          (AMF.UML.Protocol_Conformances.UML_Protocol_Conformance_Access (Element));

      elsif Element.all in AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine'Class then
         Self.Enter_Protocol_State_Machine
          (AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access (Element));
         Self.Visit_Protocol_State_Machine
          (AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access (Element));
         Self.Leave_Protocol_State_Machine
          (AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access (Element));

      elsif Element.all in AMF.UML.Protocol_Transitions.UML_Protocol_Transition'Class then
         Self.Enter_Protocol_Transition
          (AMF.UML.Protocol_Transitions.UML_Protocol_Transition_Access (Element));
         Self.Visit_Protocol_Transition
          (AMF.UML.Protocol_Transitions.UML_Protocol_Transition_Access (Element));
         Self.Leave_Protocol_Transition
          (AMF.UML.Protocol_Transitions.UML_Protocol_Transition_Access (Element));

      elsif Element.all in AMF.UML.Pseudostates.UML_Pseudostate'Class then
         Self.Enter_Pseudostate
          (AMF.UML.Pseudostates.UML_Pseudostate_Access (Element));
         Self.Visit_Pseudostate
          (AMF.UML.Pseudostates.UML_Pseudostate_Access (Element));
         Self.Leave_Pseudostate
          (AMF.UML.Pseudostates.UML_Pseudostate_Access (Element));

      elsif Element.all in AMF.UML.Qualifier_Values.UML_Qualifier_Value'Class then
         Self.Enter_Qualifier_Value
          (AMF.UML.Qualifier_Values.UML_Qualifier_Value_Access (Element));
         Self.Visit_Qualifier_Value
          (AMF.UML.Qualifier_Values.UML_Qualifier_Value_Access (Element));
         Self.Leave_Qualifier_Value
          (AMF.UML.Qualifier_Values.UML_Qualifier_Value_Access (Element));

      elsif Element.all in AMF.UML.Raise_Exception_Actions.UML_Raise_Exception_Action'Class then
         Self.Enter_Raise_Exception_Action
          (AMF.UML.Raise_Exception_Actions.UML_Raise_Exception_Action_Access (Element));
         Self.Visit_Raise_Exception_Action
          (AMF.UML.Raise_Exception_Actions.UML_Raise_Exception_Action_Access (Element));
         Self.Leave_Raise_Exception_Action
          (AMF.UML.Raise_Exception_Actions.UML_Raise_Exception_Action_Access (Element));

      elsif Element.all in AMF.UML.Read_Extent_Actions.UML_Read_Extent_Action'Class then
         Self.Enter_Read_Extent_Action
          (AMF.UML.Read_Extent_Actions.UML_Read_Extent_Action_Access (Element));
         Self.Visit_Read_Extent_Action
          (AMF.UML.Read_Extent_Actions.UML_Read_Extent_Action_Access (Element));
         Self.Leave_Read_Extent_Action
          (AMF.UML.Read_Extent_Actions.UML_Read_Extent_Action_Access (Element));

      elsif Element.all in AMF.UML.Read_Is_Classified_Object_Actions.UML_Read_Is_Classified_Object_Action'Class then
         Self.Enter_Read_Is_Classified_Object_Action
          (AMF.UML.Read_Is_Classified_Object_Actions.UML_Read_Is_Classified_Object_Action_Access (Element));
         Self.Visit_Read_Is_Classified_Object_Action
          (AMF.UML.Read_Is_Classified_Object_Actions.UML_Read_Is_Classified_Object_Action_Access (Element));
         Self.Leave_Read_Is_Classified_Object_Action
          (AMF.UML.Read_Is_Classified_Object_Actions.UML_Read_Is_Classified_Object_Action_Access (Element));

      elsif Element.all in AMF.UML.Read_Link_Actions.UML_Read_Link_Action'Class then
         Self.Enter_Read_Link_Action
          (AMF.UML.Read_Link_Actions.UML_Read_Link_Action_Access (Element));
         Self.Visit_Read_Link_Action
          (AMF.UML.Read_Link_Actions.UML_Read_Link_Action_Access (Element));
         Self.Leave_Read_Link_Action
          (AMF.UML.Read_Link_Actions.UML_Read_Link_Action_Access (Element));

      elsif Element.all in AMF.UML.Read_Link_Object_End_Actions.UML_Read_Link_Object_End_Action'Class then
         Self.Enter_Read_Link_Object_End_Action
          (AMF.UML.Read_Link_Object_End_Actions.UML_Read_Link_Object_End_Action_Access (Element));
         Self.Visit_Read_Link_Object_End_Action
          (AMF.UML.Read_Link_Object_End_Actions.UML_Read_Link_Object_End_Action_Access (Element));
         Self.Leave_Read_Link_Object_End_Action
          (AMF.UML.Read_Link_Object_End_Actions.UML_Read_Link_Object_End_Action_Access (Element));

      elsif Element.all in AMF.UML.Read_Link_Object_End_Qualifier_Actions.UML_Read_Link_Object_End_Qualifier_Action'Class then
         Self.Enter_Read_Link_Object_End_Qualifier_Action
          (AMF.UML.Read_Link_Object_End_Qualifier_Actions.UML_Read_Link_Object_End_Qualifier_Action_Access (Element));
         Self.Visit_Read_Link_Object_End_Qualifier_Action
          (AMF.UML.Read_Link_Object_End_Qualifier_Actions.UML_Read_Link_Object_End_Qualifier_Action_Access (Element));
         Self.Leave_Read_Link_Object_End_Qualifier_Action
          (AMF.UML.Read_Link_Object_End_Qualifier_Actions.UML_Read_Link_Object_End_Qualifier_Action_Access (Element));

      elsif Element.all in AMF.UML.Read_Self_Actions.UML_Read_Self_Action'Class then
         Self.Enter_Read_Self_Action
          (AMF.UML.Read_Self_Actions.UML_Read_Self_Action_Access (Element));
         Self.Visit_Read_Self_Action
          (AMF.UML.Read_Self_Actions.UML_Read_Self_Action_Access (Element));
         Self.Leave_Read_Self_Action
          (AMF.UML.Read_Self_Actions.UML_Read_Self_Action_Access (Element));

      elsif Element.all in AMF.UML.Read_Structural_Feature_Actions.UML_Read_Structural_Feature_Action'Class then
         Self.Enter_Read_Structural_Feature_Action
          (AMF.UML.Read_Structural_Feature_Actions.UML_Read_Structural_Feature_Action_Access (Element));
         Self.Visit_Read_Structural_Feature_Action
          (AMF.UML.Read_Structural_Feature_Actions.UML_Read_Structural_Feature_Action_Access (Element));
         Self.Leave_Read_Structural_Feature_Action
          (AMF.UML.Read_Structural_Feature_Actions.UML_Read_Structural_Feature_Action_Access (Element));

      elsif Element.all in AMF.UML.Read_Variable_Actions.UML_Read_Variable_Action'Class then
         Self.Enter_Read_Variable_Action
          (AMF.UML.Read_Variable_Actions.UML_Read_Variable_Action_Access (Element));
         Self.Visit_Read_Variable_Action
          (AMF.UML.Read_Variable_Actions.UML_Read_Variable_Action_Access (Element));
         Self.Leave_Read_Variable_Action
          (AMF.UML.Read_Variable_Actions.UML_Read_Variable_Action_Access (Element));

      elsif Element.all in AMF.UML.Realizations.UML_Realization'Class then
         Self.Enter_Realization
          (AMF.UML.Realizations.UML_Realization_Access (Element));
         Self.Visit_Realization
          (AMF.UML.Realizations.UML_Realization_Access (Element));
         Self.Leave_Realization
          (AMF.UML.Realizations.UML_Realization_Access (Element));

      elsif Element.all in AMF.UML.Receptions.UML_Reception'Class then
         Self.Enter_Reception
          (AMF.UML.Receptions.UML_Reception_Access (Element));
         Self.Visit_Reception
          (AMF.UML.Receptions.UML_Reception_Access (Element));
         Self.Leave_Reception
          (AMF.UML.Receptions.UML_Reception_Access (Element));

      elsif Element.all in AMF.UML.Reclassify_Object_Actions.UML_Reclassify_Object_Action'Class then
         Self.Enter_Reclassify_Object_Action
          (AMF.UML.Reclassify_Object_Actions.UML_Reclassify_Object_Action_Access (Element));
         Self.Visit_Reclassify_Object_Action
          (AMF.UML.Reclassify_Object_Actions.UML_Reclassify_Object_Action_Access (Element));
         Self.Leave_Reclassify_Object_Action
          (AMF.UML.Reclassify_Object_Actions.UML_Reclassify_Object_Action_Access (Element));

      elsif Element.all in AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature'Class then
         Self.Enter_Redefinable_Template_Signature
          (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (Element));
         Self.Visit_Redefinable_Template_Signature
          (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (Element));
         Self.Leave_Redefinable_Template_Signature
          (AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access (Element));

      elsif Element.all in AMF.UML.Reduce_Actions.UML_Reduce_Action'Class then
         Self.Enter_Reduce_Action
          (AMF.UML.Reduce_Actions.UML_Reduce_Action_Access (Element));
         Self.Visit_Reduce_Action
          (AMF.UML.Reduce_Actions.UML_Reduce_Action_Access (Element));
         Self.Leave_Reduce_Action
          (AMF.UML.Reduce_Actions.UML_Reduce_Action_Access (Element));

      elsif Element.all in AMF.UML.Regions.UML_Region'Class then
         Self.Enter_Region
          (AMF.UML.Regions.UML_Region_Access (Element));
         Self.Visit_Region
          (AMF.UML.Regions.UML_Region_Access (Element));
         Self.Leave_Region
          (AMF.UML.Regions.UML_Region_Access (Element));

      elsif Element.all in AMF.UML.Remove_Structural_Feature_Value_Actions.UML_Remove_Structural_Feature_Value_Action'Class then
         Self.Enter_Remove_Structural_Feature_Value_Action
          (AMF.UML.Remove_Structural_Feature_Value_Actions.UML_Remove_Structural_Feature_Value_Action_Access (Element));
         Self.Visit_Remove_Structural_Feature_Value_Action
          (AMF.UML.Remove_Structural_Feature_Value_Actions.UML_Remove_Structural_Feature_Value_Action_Access (Element));
         Self.Leave_Remove_Structural_Feature_Value_Action
          (AMF.UML.Remove_Structural_Feature_Value_Actions.UML_Remove_Structural_Feature_Value_Action_Access (Element));

      elsif Element.all in AMF.UML.Remove_Variable_Value_Actions.UML_Remove_Variable_Value_Action'Class then
         Self.Enter_Remove_Variable_Value_Action
          (AMF.UML.Remove_Variable_Value_Actions.UML_Remove_Variable_Value_Action_Access (Element));
         Self.Visit_Remove_Variable_Value_Action
          (AMF.UML.Remove_Variable_Value_Actions.UML_Remove_Variable_Value_Action_Access (Element));
         Self.Leave_Remove_Variable_Value_Action
          (AMF.UML.Remove_Variable_Value_Actions.UML_Remove_Variable_Value_Action_Access (Element));

      elsif Element.all in AMF.UML.Reply_Actions.UML_Reply_Action'Class then
         Self.Enter_Reply_Action
          (AMF.UML.Reply_Actions.UML_Reply_Action_Access (Element));
         Self.Visit_Reply_Action
          (AMF.UML.Reply_Actions.UML_Reply_Action_Access (Element));
         Self.Leave_Reply_Action
          (AMF.UML.Reply_Actions.UML_Reply_Action_Access (Element));

      elsif Element.all in AMF.UML.Send_Object_Actions.UML_Send_Object_Action'Class then
         Self.Enter_Send_Object_Action
          (AMF.UML.Send_Object_Actions.UML_Send_Object_Action_Access (Element));
         Self.Visit_Send_Object_Action
          (AMF.UML.Send_Object_Actions.UML_Send_Object_Action_Access (Element));
         Self.Leave_Send_Object_Action
          (AMF.UML.Send_Object_Actions.UML_Send_Object_Action_Access (Element));

      elsif Element.all in AMF.UML.Send_Signal_Actions.UML_Send_Signal_Action'Class then
         Self.Enter_Send_Signal_Action
          (AMF.UML.Send_Signal_Actions.UML_Send_Signal_Action_Access (Element));
         Self.Visit_Send_Signal_Action
          (AMF.UML.Send_Signal_Actions.UML_Send_Signal_Action_Access (Element));
         Self.Leave_Send_Signal_Action
          (AMF.UML.Send_Signal_Actions.UML_Send_Signal_Action_Access (Element));

      elsif Element.all in AMF.UML.Sequence_Nodes.UML_Sequence_Node'Class then
         Self.Enter_Sequence_Node
          (AMF.UML.Sequence_Nodes.UML_Sequence_Node_Access (Element));
         Self.Visit_Sequence_Node
          (AMF.UML.Sequence_Nodes.UML_Sequence_Node_Access (Element));
         Self.Leave_Sequence_Node
          (AMF.UML.Sequence_Nodes.UML_Sequence_Node_Access (Element));

      elsif Element.all in AMF.UML.Signals.UML_Signal'Class then
         Self.Enter_Signal
          (AMF.UML.Signals.UML_Signal_Access (Element));
         Self.Visit_Signal
          (AMF.UML.Signals.UML_Signal_Access (Element));
         Self.Leave_Signal
          (AMF.UML.Signals.UML_Signal_Access (Element));

      elsif Element.all in AMF.UML.Signal_Events.UML_Signal_Event'Class then
         Self.Enter_Signal_Event
          (AMF.UML.Signal_Events.UML_Signal_Event_Access (Element));
         Self.Visit_Signal_Event
          (AMF.UML.Signal_Events.UML_Signal_Event_Access (Element));
         Self.Leave_Signal_Event
          (AMF.UML.Signal_Events.UML_Signal_Event_Access (Element));

      elsif Element.all in AMF.UML.Slots.UML_Slot'Class then
         Self.Enter_Slot
          (AMF.UML.Slots.UML_Slot_Access (Element));
         Self.Visit_Slot
          (AMF.UML.Slots.UML_Slot_Access (Element));
         Self.Leave_Slot
          (AMF.UML.Slots.UML_Slot_Access (Element));

      elsif Element.all in AMF.UML.Start_Classifier_Behavior_Actions.UML_Start_Classifier_Behavior_Action'Class then
         Self.Enter_Start_Classifier_Behavior_Action
          (AMF.UML.Start_Classifier_Behavior_Actions.UML_Start_Classifier_Behavior_Action_Access (Element));
         Self.Visit_Start_Classifier_Behavior_Action
          (AMF.UML.Start_Classifier_Behavior_Actions.UML_Start_Classifier_Behavior_Action_Access (Element));
         Self.Leave_Start_Classifier_Behavior_Action
          (AMF.UML.Start_Classifier_Behavior_Actions.UML_Start_Classifier_Behavior_Action_Access (Element));

      elsif Element.all in AMF.UML.Start_Object_Behavior_Actions.UML_Start_Object_Behavior_Action'Class then
         Self.Enter_Start_Object_Behavior_Action
          (AMF.UML.Start_Object_Behavior_Actions.UML_Start_Object_Behavior_Action_Access (Element));
         Self.Visit_Start_Object_Behavior_Action
          (AMF.UML.Start_Object_Behavior_Actions.UML_Start_Object_Behavior_Action_Access (Element));
         Self.Leave_Start_Object_Behavior_Action
          (AMF.UML.Start_Object_Behavior_Actions.UML_Start_Object_Behavior_Action_Access (Element));

      elsif Element.all in AMF.UML.States.UML_State'Class then
         Self.Enter_State
          (AMF.UML.States.UML_State_Access (Element));
         Self.Visit_State
          (AMF.UML.States.UML_State_Access (Element));
         Self.Leave_State
          (AMF.UML.States.UML_State_Access (Element));

      elsif Element.all in AMF.UML.State_Invariants.UML_State_Invariant'Class then
         Self.Enter_State_Invariant
          (AMF.UML.State_Invariants.UML_State_Invariant_Access (Element));
         Self.Visit_State_Invariant
          (AMF.UML.State_Invariants.UML_State_Invariant_Access (Element));
         Self.Leave_State_Invariant
          (AMF.UML.State_Invariants.UML_State_Invariant_Access (Element));

      elsif Element.all in AMF.UML.State_Machines.UML_State_Machine'Class then
         Self.Enter_State_Machine
          (AMF.UML.State_Machines.UML_State_Machine_Access (Element));
         Self.Visit_State_Machine
          (AMF.UML.State_Machines.UML_State_Machine_Access (Element));
         Self.Leave_State_Machine
          (AMF.UML.State_Machines.UML_State_Machine_Access (Element));

      elsif Element.all in AMF.UML.Stereotypes.UML_Stereotype'Class then
         Self.Enter_Stereotype
          (AMF.UML.Stereotypes.UML_Stereotype_Access (Element));
         Self.Visit_Stereotype
          (AMF.UML.Stereotypes.UML_Stereotype_Access (Element));
         Self.Leave_Stereotype
          (AMF.UML.Stereotypes.UML_Stereotype_Access (Element));

      elsif Element.all in AMF.UML.String_Expressions.UML_String_Expression'Class then
         Self.Enter_String_Expression
          (AMF.UML.String_Expressions.UML_String_Expression_Access (Element));
         Self.Visit_String_Expression
          (AMF.UML.String_Expressions.UML_String_Expression_Access (Element));
         Self.Leave_String_Expression
          (AMF.UML.String_Expressions.UML_String_Expression_Access (Element));

      elsif Element.all in AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node'Class then
         Self.Enter_Structured_Activity_Node
          (AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access (Element));
         Self.Visit_Structured_Activity_Node
          (AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access (Element));
         Self.Leave_Structured_Activity_Node
          (AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access (Element));

      elsif Element.all in AMF.UML.Substitutions.UML_Substitution'Class then
         Self.Enter_Substitution
          (AMF.UML.Substitutions.UML_Substitution_Access (Element));
         Self.Visit_Substitution
          (AMF.UML.Substitutions.UML_Substitution_Access (Element));
         Self.Leave_Substitution
          (AMF.UML.Substitutions.UML_Substitution_Access (Element));

      elsif Element.all in AMF.UML.Template_Bindings.UML_Template_Binding'Class then
         Self.Enter_Template_Binding
          (AMF.UML.Template_Bindings.UML_Template_Binding_Access (Element));
         Self.Visit_Template_Binding
          (AMF.UML.Template_Bindings.UML_Template_Binding_Access (Element));
         Self.Leave_Template_Binding
          (AMF.UML.Template_Bindings.UML_Template_Binding_Access (Element));

      elsif Element.all in AMF.UML.Template_Parameters.UML_Template_Parameter'Class then
         Self.Enter_Template_Parameter
          (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (Element));
         Self.Visit_Template_Parameter
          (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (Element));
         Self.Leave_Template_Parameter
          (AMF.UML.Template_Parameters.UML_Template_Parameter_Access (Element));

      elsif Element.all in AMF.UML.Template_Parameter_Substitutions.UML_Template_Parameter_Substitution'Class then
         Self.Enter_Template_Parameter_Substitution
          (AMF.UML.Template_Parameter_Substitutions.UML_Template_Parameter_Substitution_Access (Element));
         Self.Visit_Template_Parameter_Substitution
          (AMF.UML.Template_Parameter_Substitutions.UML_Template_Parameter_Substitution_Access (Element));
         Self.Leave_Template_Parameter_Substitution
          (AMF.UML.Template_Parameter_Substitutions.UML_Template_Parameter_Substitution_Access (Element));

      elsif Element.all in AMF.UML.Template_Signatures.UML_Template_Signature'Class then
         Self.Enter_Template_Signature
          (AMF.UML.Template_Signatures.UML_Template_Signature_Access (Element));
         Self.Visit_Template_Signature
          (AMF.UML.Template_Signatures.UML_Template_Signature_Access (Element));
         Self.Leave_Template_Signature
          (AMF.UML.Template_Signatures.UML_Template_Signature_Access (Element));

      elsif Element.all in AMF.UML.Test_Identity_Actions.UML_Test_Identity_Action'Class then
         Self.Enter_Test_Identity_Action
          (AMF.UML.Test_Identity_Actions.UML_Test_Identity_Action_Access (Element));
         Self.Visit_Test_Identity_Action
          (AMF.UML.Test_Identity_Actions.UML_Test_Identity_Action_Access (Element));
         Self.Leave_Test_Identity_Action
          (AMF.UML.Test_Identity_Actions.UML_Test_Identity_Action_Access (Element));

      elsif Element.all in AMF.UML.Time_Constraints.UML_Time_Constraint'Class then
         Self.Enter_Time_Constraint
          (AMF.UML.Time_Constraints.UML_Time_Constraint_Access (Element));
         Self.Visit_Time_Constraint
          (AMF.UML.Time_Constraints.UML_Time_Constraint_Access (Element));
         Self.Leave_Time_Constraint
          (AMF.UML.Time_Constraints.UML_Time_Constraint_Access (Element));

      elsif Element.all in AMF.UML.Time_Events.UML_Time_Event'Class then
         Self.Enter_Time_Event
          (AMF.UML.Time_Events.UML_Time_Event_Access (Element));
         Self.Visit_Time_Event
          (AMF.UML.Time_Events.UML_Time_Event_Access (Element));
         Self.Leave_Time_Event
          (AMF.UML.Time_Events.UML_Time_Event_Access (Element));

      elsif Element.all in AMF.UML.Time_Expressions.UML_Time_Expression'Class then
         Self.Enter_Time_Expression
          (AMF.UML.Time_Expressions.UML_Time_Expression_Access (Element));
         Self.Visit_Time_Expression
          (AMF.UML.Time_Expressions.UML_Time_Expression_Access (Element));
         Self.Leave_Time_Expression
          (AMF.UML.Time_Expressions.UML_Time_Expression_Access (Element));

      elsif Element.all in AMF.UML.Time_Intervals.UML_Time_Interval'Class then
         Self.Enter_Time_Interval
          (AMF.UML.Time_Intervals.UML_Time_Interval_Access (Element));
         Self.Visit_Time_Interval
          (AMF.UML.Time_Intervals.UML_Time_Interval_Access (Element));
         Self.Leave_Time_Interval
          (AMF.UML.Time_Intervals.UML_Time_Interval_Access (Element));

      elsif Element.all in AMF.UML.Time_Observations.UML_Time_Observation'Class then
         Self.Enter_Time_Observation
          (AMF.UML.Time_Observations.UML_Time_Observation_Access (Element));
         Self.Visit_Time_Observation
          (AMF.UML.Time_Observations.UML_Time_Observation_Access (Element));
         Self.Leave_Time_Observation
          (AMF.UML.Time_Observations.UML_Time_Observation_Access (Element));

      elsif Element.all in AMF.UML.Transitions.UML_Transition'Class then
         Self.Enter_Transition
          (AMF.UML.Transitions.UML_Transition_Access (Element));
         Self.Visit_Transition
          (AMF.UML.Transitions.UML_Transition_Access (Element));
         Self.Leave_Transition
          (AMF.UML.Transitions.UML_Transition_Access (Element));

      elsif Element.all in AMF.UML.Triggers.UML_Trigger'Class then
         Self.Enter_Trigger
          (AMF.UML.Triggers.UML_Trigger_Access (Element));
         Self.Visit_Trigger
          (AMF.UML.Triggers.UML_Trigger_Access (Element));
         Self.Leave_Trigger
          (AMF.UML.Triggers.UML_Trigger_Access (Element));

      elsif Element.all in AMF.UML.Unmarshall_Actions.UML_Unmarshall_Action'Class then
         Self.Enter_Unmarshall_Action
          (AMF.UML.Unmarshall_Actions.UML_Unmarshall_Action_Access (Element));
         Self.Visit_Unmarshall_Action
          (AMF.UML.Unmarshall_Actions.UML_Unmarshall_Action_Access (Element));
         Self.Leave_Unmarshall_Action
          (AMF.UML.Unmarshall_Actions.UML_Unmarshall_Action_Access (Element));

      elsif Element.all in AMF.UML.Usages.UML_Usage'Class then
         Self.Enter_Usage
          (AMF.UML.Usages.UML_Usage_Access (Element));
         Self.Visit_Usage
          (AMF.UML.Usages.UML_Usage_Access (Element));
         Self.Leave_Usage
          (AMF.UML.Usages.UML_Usage_Access (Element));

      elsif Element.all in AMF.UML.Use_Cases.UML_Use_Case'Class then
         Self.Enter_Use_Case
          (AMF.UML.Use_Cases.UML_Use_Case_Access (Element));
         Self.Visit_Use_Case
          (AMF.UML.Use_Cases.UML_Use_Case_Access (Element));
         Self.Leave_Use_Case
          (AMF.UML.Use_Cases.UML_Use_Case_Access (Element));

      elsif Element.all in AMF.UML.Value_Pins.UML_Value_Pin'Class then
         Self.Enter_Value_Pin
          (AMF.UML.Value_Pins.UML_Value_Pin_Access (Element));
         Self.Visit_Value_Pin
          (AMF.UML.Value_Pins.UML_Value_Pin_Access (Element));
         Self.Leave_Value_Pin
          (AMF.UML.Value_Pins.UML_Value_Pin_Access (Element));

      elsif Element.all in AMF.UML.Value_Specification_Actions.UML_Value_Specification_Action'Class then
         Self.Enter_Value_Specification_Action
          (AMF.UML.Value_Specification_Actions.UML_Value_Specification_Action_Access (Element));
         Self.Visit_Value_Specification_Action
          (AMF.UML.Value_Specification_Actions.UML_Value_Specification_Action_Access (Element));
         Self.Leave_Value_Specification_Action
          (AMF.UML.Value_Specification_Actions.UML_Value_Specification_Action_Access (Element));

      elsif Element.all in AMF.UML.Variables.UML_Variable'Class then
         Self.Enter_Variable
          (AMF.UML.Variables.UML_Variable_Access (Element));
         Self.Visit_Variable
          (AMF.UML.Variables.UML_Variable_Access (Element));
         Self.Leave_Variable
          (AMF.UML.Variables.UML_Variable_Access (Element));
      end if;
   end Visit;

   -----------
   -- Visit --
   -----------

   not overriding procedure Visit
    (Self   : in out UML_Visitor;
     Extent : not null access AMF.Extents.Extent'Class)
   is
      use type AMF.Elements.Element_Access;

      Elements : constant AMF.Elements.Collections.Set_Of_Element
        := Extent.Elements;

   begin
      for J in 1 .. Elements.Length loop
         if Elements.Element (J).Container = null then
            Self.Visit
             (AMF.UML.Elements.UML_Element_Access (Elements.Element (J)));
         end if;
      end loop;
   end Visit;

   -----------------------
   -- Visit_Abstraction --
   -----------------------

   not overriding procedure Visit_Abstraction
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Abstractions.UML_Abstraction_Access) is
   begin
      null;
   end Visit_Abstraction;

   ------------------------------
   -- Visit_Accept_Call_Action --
   ------------------------------

   not overriding procedure Visit_Accept_Call_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Accept_Call_Actions.UML_Accept_Call_Action_Access) is
   begin
      null;
   end Visit_Accept_Call_Action;

   -------------------------------
   -- Visit_Accept_Event_Action --
   -------------------------------

   not overriding procedure Visit_Accept_Event_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Accept_Event_Actions.UML_Accept_Event_Action_Access) is
   begin
      null;
   end Visit_Accept_Event_Action;

   ------------------------------------------
   -- Visit_Action_Execution_Specification --
   ------------------------------------------

   not overriding procedure Visit_Action_Execution_Specification
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Action_Execution_Specifications.UML_Action_Execution_Specification_Access) is
   begin
      null;
   end Visit_Action_Execution_Specification;

   ----------------------------
   -- Visit_Action_Input_Pin --
   ----------------------------

   not overriding procedure Visit_Action_Input_Pin
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Action_Input_Pins.UML_Action_Input_Pin_Access) is
   begin
      null;
   end Visit_Action_Input_Pin;

   --------------------
   -- Visit_Activity --
   --------------------

   not overriding procedure Visit_Activity
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Activities.UML_Activity_Access) is
   begin
      null;
   end Visit_Activity;

   -------------------------------
   -- Visit_Activity_Final_Node --
   -------------------------------

   not overriding procedure Visit_Activity_Final_Node
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Activity_Final_Nodes.UML_Activity_Final_Node_Access) is
   begin
      null;
   end Visit_Activity_Final_Node;

   -----------------------------------
   -- Visit_Activity_Parameter_Node --
   -----------------------------------

   not overriding procedure Visit_Activity_Parameter_Node
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Activity_Parameter_Nodes.UML_Activity_Parameter_Node_Access) is
   begin
      null;
   end Visit_Activity_Parameter_Node;

   ------------------------------
   -- Visit_Activity_Partition --
   ------------------------------

   not overriding procedure Visit_Activity_Partition
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Activity_Partitions.UML_Activity_Partition_Access) is
   begin
      null;
   end Visit_Activity_Partition;

   -----------------
   -- Visit_Actor --
   -----------------

   not overriding procedure Visit_Actor
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Actors.UML_Actor_Access) is
   begin
      null;
   end Visit_Actor;

   -----------------------------------------------
   -- Visit_Add_Structural_Feature_Value_Action --
   -----------------------------------------------

   not overriding procedure Visit_Add_Structural_Feature_Value_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Add_Structural_Feature_Value_Actions.UML_Add_Structural_Feature_Value_Action_Access) is
   begin
      null;
   end Visit_Add_Structural_Feature_Value_Action;

   -------------------------------------
   -- Visit_Add_Variable_Value_Action --
   -------------------------------------

   not overriding procedure Visit_Add_Variable_Value_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Add_Variable_Value_Actions.UML_Add_Variable_Value_Action_Access) is
   begin
      null;
   end Visit_Add_Variable_Value_Action;

   -----------------------------
   -- Visit_Any_Receive_Event --
   -----------------------------

   not overriding procedure Visit_Any_Receive_Event
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Any_Receive_Events.UML_Any_Receive_Event_Access) is
   begin
      null;
   end Visit_Any_Receive_Event;

   --------------------
   -- Visit_Artifact --
   --------------------

   not overriding procedure Visit_Artifact
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Artifacts.UML_Artifact_Access) is
   begin
      null;
   end Visit_Artifact;

   -----------------------
   -- Visit_Association --
   -----------------------

   not overriding procedure Visit_Association
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Associations.UML_Association_Access) is
   begin
      null;
   end Visit_Association;

   -----------------------------
   -- Visit_Association_Class --
   -----------------------------

   not overriding procedure Visit_Association_Class
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Association_Classes.UML_Association_Class_Access) is
   begin
      null;
   end Visit_Association_Class;

   --------------------------------------------
   -- Visit_Behavior_Execution_Specification --
   --------------------------------------------

   not overriding procedure Visit_Behavior_Execution_Specification
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Behavior_Execution_Specifications.UML_Behavior_Execution_Specification_Access) is
   begin
      null;
   end Visit_Behavior_Execution_Specification;

   -----------------------------------
   -- Visit_Broadcast_Signal_Action --
   -----------------------------------

   not overriding procedure Visit_Broadcast_Signal_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Broadcast_Signal_Actions.UML_Broadcast_Signal_Action_Access) is
   begin
      null;
   end Visit_Broadcast_Signal_Action;

   --------------------------------
   -- Visit_Call_Behavior_Action --
   --------------------------------

   not overriding procedure Visit_Call_Behavior_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Call_Behavior_Actions.UML_Call_Behavior_Action_Access) is
   begin
      null;
   end Visit_Call_Behavior_Action;

   ----------------------
   -- Visit_Call_Event --
   ----------------------

   not overriding procedure Visit_Call_Event
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Call_Events.UML_Call_Event_Access) is
   begin
      null;
   end Visit_Call_Event;

   ---------------------------------
   -- Visit_Call_Operation_Action --
   ---------------------------------

   not overriding procedure Visit_Call_Operation_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access) is
   begin
      null;
   end Visit_Call_Operation_Action;

   -------------------------------
   -- Visit_Central_Buffer_Node --
   -------------------------------

   not overriding procedure Visit_Central_Buffer_Node
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Central_Buffer_Nodes.UML_Central_Buffer_Node_Access) is
   begin
      null;
   end Visit_Central_Buffer_Node;

   ------------------------
   -- Visit_Change_Event --
   ------------------------

   not overriding procedure Visit_Change_Event
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Change_Events.UML_Change_Event_Access) is
   begin
      null;
   end Visit_Change_Event;

   -----------------
   -- Visit_Class --
   -----------------

   not overriding procedure Visit_Class
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Classes.UML_Class_Access) is
   begin
      null;
   end Visit_Class;

   -----------------------------------------
   -- Visit_Classifier_Template_Parameter --
   -----------------------------------------

   not overriding procedure Visit_Classifier_Template_Parameter
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access) is
   begin
      null;
   end Visit_Classifier_Template_Parameter;

   ------------------
   -- Visit_Clause --
   ------------------

   not overriding procedure Visit_Clause
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Clauses.UML_Clause_Access) is
   begin
      null;
   end Visit_Clause;

   ------------------------------------
   -- Visit_Clear_Association_Action --
   ------------------------------------

   not overriding procedure Visit_Clear_Association_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Clear_Association_Actions.UML_Clear_Association_Action_Access) is
   begin
      null;
   end Visit_Clear_Association_Action;

   -------------------------------------------
   -- Visit_Clear_Structural_Feature_Action --
   -------------------------------------------

   not overriding procedure Visit_Clear_Structural_Feature_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Clear_Structural_Feature_Actions.UML_Clear_Structural_Feature_Action_Access) is
   begin
      null;
   end Visit_Clear_Structural_Feature_Action;

   ---------------------------------
   -- Visit_Clear_Variable_Action --
   ---------------------------------

   not overriding procedure Visit_Clear_Variable_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Clear_Variable_Actions.UML_Clear_Variable_Action_Access) is
   begin
      null;
   end Visit_Clear_Variable_Action;

   -------------------------
   -- Visit_Collaboration --
   -------------------------

   not overriding procedure Visit_Collaboration
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Collaborations.UML_Collaboration_Access) is
   begin
      null;
   end Visit_Collaboration;

   -----------------------------
   -- Visit_Collaboration_Use --
   -----------------------------

   not overriding procedure Visit_Collaboration_Use
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access) is
   begin
      null;
   end Visit_Collaboration_Use;

   -----------------------------
   -- Visit_Combined_Fragment --
   -----------------------------

   not overriding procedure Visit_Combined_Fragment
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Combined_Fragments.UML_Combined_Fragment_Access) is
   begin
      null;
   end Visit_Combined_Fragment;

   -------------------
   -- Visit_Comment --
   -------------------

   not overriding procedure Visit_Comment
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Comments.UML_Comment_Access) is
   begin
      null;
   end Visit_Comment;

   ------------------------------
   -- Visit_Communication_Path --
   ------------------------------

   not overriding procedure Visit_Communication_Path
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Communication_Paths.UML_Communication_Path_Access) is
   begin
      null;
   end Visit_Communication_Path;

   ---------------------
   -- Visit_Component --
   ---------------------

   not overriding procedure Visit_Component
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Components.UML_Component_Access) is
   begin
      null;
   end Visit_Component;

   ---------------------------------
   -- Visit_Component_Realization --
   ---------------------------------

   not overriding procedure Visit_Component_Realization
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Component_Realizations.UML_Component_Realization_Access) is
   begin
      null;
   end Visit_Component_Realization;

   ----------------------------
   -- Visit_Conditional_Node --
   ----------------------------

   not overriding procedure Visit_Conditional_Node
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Conditional_Nodes.UML_Conditional_Node_Access) is
   begin
      null;
   end Visit_Conditional_Node;

   --------------------------------------------------
   -- Visit_Connectable_Element_Template_Parameter --
   --------------------------------------------------

   not overriding procedure Visit_Connectable_Element_Template_Parameter
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access) is
   begin
      null;
   end Visit_Connectable_Element_Template_Parameter;

   --------------------------------------
   -- Visit_Connection_Point_Reference --
   --------------------------------------

   not overriding procedure Visit_Connection_Point_Reference
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Connection_Point_References.UML_Connection_Point_Reference_Access) is
   begin
      null;
   end Visit_Connection_Point_Reference;

   ---------------------
   -- Visit_Connector --
   ---------------------

   not overriding procedure Visit_Connector
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Connectors.UML_Connector_Access) is
   begin
      null;
   end Visit_Connector;

   -------------------------
   -- Visit_Connector_End --
   -------------------------

   not overriding procedure Visit_Connector_End
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Connector_Ends.UML_Connector_End_Access) is
   begin
      null;
   end Visit_Connector_End;

   ------------------------------------
   -- Visit_Consider_Ignore_Fragment --
   ------------------------------------

   not overriding procedure Visit_Consider_Ignore_Fragment
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Consider_Ignore_Fragments.UML_Consider_Ignore_Fragment_Access) is
   begin
      null;
   end Visit_Consider_Ignore_Fragment;

   ----------------------
   -- Visit_Constraint --
   ----------------------

   not overriding procedure Visit_Constraint
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Constraints.UML_Constraint_Access) is
   begin
      null;
   end Visit_Constraint;

   ------------------------
   -- Visit_Continuation --
   ------------------------

   not overriding procedure Visit_Continuation
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Continuations.UML_Continuation_Access) is
   begin
      null;
   end Visit_Continuation;

   ------------------------
   -- Visit_Control_Flow --
   ------------------------

   not overriding procedure Visit_Control_Flow
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Control_Flows.UML_Control_Flow_Access) is
   begin
      null;
   end Visit_Control_Flow;

   ------------------------------
   -- Visit_Create_Link_Action --
   ------------------------------

   not overriding procedure Visit_Create_Link_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Create_Link_Actions.UML_Create_Link_Action_Access) is
   begin
      null;
   end Visit_Create_Link_Action;

   -------------------------------------
   -- Visit_Create_Link_Object_Action --
   -------------------------------------

   not overriding procedure Visit_Create_Link_Object_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Create_Link_Object_Actions.UML_Create_Link_Object_Action_Access) is
   begin
      null;
   end Visit_Create_Link_Object_Action;

   --------------------------------
   -- Visit_Create_Object_Action --
   --------------------------------

   not overriding procedure Visit_Create_Object_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Create_Object_Actions.UML_Create_Object_Action_Access) is
   begin
      null;
   end Visit_Create_Object_Action;

   ---------------------------
   -- Visit_Data_Store_Node --
   ---------------------------

   not overriding procedure Visit_Data_Store_Node
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Data_Store_Nodes.UML_Data_Store_Node_Access) is
   begin
      null;
   end Visit_Data_Store_Node;

   ---------------------
   -- Visit_Data_Type --
   ---------------------

   not overriding procedure Visit_Data_Type
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Data_Types.UML_Data_Type_Access) is
   begin
      null;
   end Visit_Data_Type;

   -------------------------
   -- Visit_Decision_Node --
   -------------------------

   not overriding procedure Visit_Decision_Node
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Decision_Nodes.UML_Decision_Node_Access) is
   begin
      null;
   end Visit_Decision_Node;

   ----------------------
   -- Visit_Dependency --
   ----------------------

   not overriding procedure Visit_Dependency
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Dependencies.UML_Dependency_Access) is
   begin
      null;
   end Visit_Dependency;

   ----------------------
   -- Visit_Deployment --
   ----------------------

   not overriding procedure Visit_Deployment
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Deployments.UML_Deployment_Access) is
   begin
      null;
   end Visit_Deployment;

   ------------------------------------
   -- Visit_Deployment_Specification --
   ------------------------------------

   not overriding procedure Visit_Deployment_Specification
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Deployment_Specifications.UML_Deployment_Specification_Access) is
   begin
      null;
   end Visit_Deployment_Specification;

   -------------------------------
   -- Visit_Destroy_Link_Action --
   -------------------------------

   not overriding procedure Visit_Destroy_Link_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Destroy_Link_Actions.UML_Destroy_Link_Action_Access) is
   begin
      null;
   end Visit_Destroy_Link_Action;

   ---------------------------------
   -- Visit_Destroy_Object_Action --
   ---------------------------------

   not overriding procedure Visit_Destroy_Object_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Destroy_Object_Actions.UML_Destroy_Object_Action_Access) is
   begin
      null;
   end Visit_Destroy_Object_Action;

   ------------------------------------------------
   -- Visit_Destruction_Occurrence_Specification --
   ------------------------------------------------

   not overriding procedure Visit_Destruction_Occurrence_Specification
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Destruction_Occurrence_Specifications.UML_Destruction_Occurrence_Specification_Access) is
   begin
      null;
   end Visit_Destruction_Occurrence_Specification;

   ------------------
   -- Visit_Device --
   ------------------

   not overriding procedure Visit_Device
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Devices.UML_Device_Access) is
   begin
      null;
   end Visit_Device;

   --------------------
   -- Visit_Duration --
   --------------------

   not overriding procedure Visit_Duration
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Durations.UML_Duration_Access) is
   begin
      null;
   end Visit_Duration;

   -------------------------------
   -- Visit_Duration_Constraint --
   -------------------------------

   not overriding procedure Visit_Duration_Constraint
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Duration_Constraints.UML_Duration_Constraint_Access) is
   begin
      null;
   end Visit_Duration_Constraint;

   -----------------------------
   -- Visit_Duration_Interval --
   -----------------------------

   not overriding procedure Visit_Duration_Interval
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Duration_Intervals.UML_Duration_Interval_Access) is
   begin
      null;
   end Visit_Duration_Interval;

   --------------------------------
   -- Visit_Duration_Observation --
   --------------------------------

   not overriding procedure Visit_Duration_Observation
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Duration_Observations.UML_Duration_Observation_Access) is
   begin
      null;
   end Visit_Duration_Observation;

   --------------------------
   -- Visit_Element_Import --
   --------------------------

   not overriding procedure Visit_Element_Import
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Element_Imports.UML_Element_Import_Access) is
   begin
      null;
   end Visit_Element_Import;

   -----------------------
   -- Visit_Enumeration --
   -----------------------

   not overriding procedure Visit_Enumeration
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Enumerations.UML_Enumeration_Access) is
   begin
      null;
   end Visit_Enumeration;

   -------------------------------
   -- Visit_Enumeration_Literal --
   -------------------------------

   not overriding procedure Visit_Enumeration_Literal
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access) is
   begin
      null;
   end Visit_Enumeration_Literal;

   -----------------------------
   -- Visit_Exception_Handler --
   -----------------------------

   not overriding procedure Visit_Exception_Handler
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Exception_Handlers.UML_Exception_Handler_Access) is
   begin
      null;
   end Visit_Exception_Handler;

   ---------------------------------
   -- Visit_Execution_Environment --
   ---------------------------------

   not overriding procedure Visit_Execution_Environment
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Execution_Environments.UML_Execution_Environment_Access) is
   begin
      null;
   end Visit_Execution_Environment;

   ----------------------------------------------
   -- Visit_Execution_Occurrence_Specification --
   ----------------------------------------------

   not overriding procedure Visit_Execution_Occurrence_Specification
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Execution_Occurrence_Specifications.UML_Execution_Occurrence_Specification_Access) is
   begin
      null;
   end Visit_Execution_Occurrence_Specification;

   --------------------------
   -- Visit_Expansion_Node --
   --------------------------

   not overriding procedure Visit_Expansion_Node
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Expansion_Nodes.UML_Expansion_Node_Access) is
   begin
      null;
   end Visit_Expansion_Node;

   ----------------------------
   -- Visit_Expansion_Region --
   ----------------------------

   not overriding procedure Visit_Expansion_Region
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Expansion_Regions.UML_Expansion_Region_Access) is
   begin
      null;
   end Visit_Expansion_Region;

   ----------------------
   -- Visit_Expression --
   ----------------------

   not overriding procedure Visit_Expression
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Expressions.UML_Expression_Access) is
   begin
      null;
   end Visit_Expression;

   ------------------
   -- Visit_Extend --
   ------------------

   not overriding procedure Visit_Extend
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Extends.UML_Extend_Access) is
   begin
      null;
   end Visit_Extend;

   ---------------------
   -- Visit_Extension --
   ---------------------

   not overriding procedure Visit_Extension
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Extensions.UML_Extension_Access) is
   begin
      null;
   end Visit_Extension;

   -------------------------
   -- Visit_Extension_End --
   -------------------------

   not overriding procedure Visit_Extension_End
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Extension_Ends.UML_Extension_End_Access) is
   begin
      null;
   end Visit_Extension_End;

   ---------------------------
   -- Visit_Extension_Point --
   ---------------------------

   not overriding procedure Visit_Extension_Point
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Extension_Points.UML_Extension_Point_Access) is
   begin
      null;
   end Visit_Extension_Point;

   -----------------------
   -- Visit_Final_State --
   -----------------------

   not overriding procedure Visit_Final_State
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Final_States.UML_Final_State_Access) is
   begin
      null;
   end Visit_Final_State;

   ---------------------------
   -- Visit_Flow_Final_Node --
   ---------------------------

   not overriding procedure Visit_Flow_Final_Node
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Flow_Final_Nodes.UML_Flow_Final_Node_Access) is
   begin
      null;
   end Visit_Flow_Final_Node;

   ---------------------
   -- Visit_Fork_Node --
   ---------------------

   not overriding procedure Visit_Fork_Node
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Fork_Nodes.UML_Fork_Node_Access) is
   begin
      null;
   end Visit_Fork_Node;

   -----------------------------
   -- Visit_Function_Behavior --
   -----------------------------

   not overriding procedure Visit_Function_Behavior
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Function_Behaviors.UML_Function_Behavior_Access) is
   begin
      null;
   end Visit_Function_Behavior;

   ----------------
   -- Visit_Gate --
   ----------------

   not overriding procedure Visit_Gate
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Gates.UML_Gate_Access) is
   begin
      null;
   end Visit_Gate;

   ----------------------------
   -- Visit_General_Ordering --
   ----------------------------

   not overriding procedure Visit_General_Ordering
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.General_Orderings.UML_General_Ordering_Access) is
   begin
      null;
   end Visit_General_Ordering;

   --------------------------
   -- Visit_Generalization --
   --------------------------

   not overriding procedure Visit_Generalization
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Generalizations.UML_Generalization_Access) is
   begin
      null;
   end Visit_Generalization;

   ------------------------------
   -- Visit_Generalization_Set --
   ------------------------------

   not overriding procedure Visit_Generalization_Set
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Generalization_Sets.UML_Generalization_Set_Access) is
   begin
      null;
   end Visit_Generalization_Set;

   -----------------
   -- Visit_Image --
   -----------------

   not overriding procedure Visit_Image
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Images.UML_Image_Access) is
   begin
      null;
   end Visit_Image;

   -------------------
   -- Visit_Include --
   -------------------

   not overriding procedure Visit_Include
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Includes.UML_Include_Access) is
   begin
      null;
   end Visit_Include;

   ----------------------------
   -- Visit_Information_Flow --
   ----------------------------

   not overriding procedure Visit_Information_Flow
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Information_Flows.UML_Information_Flow_Access) is
   begin
      null;
   end Visit_Information_Flow;

   ----------------------------
   -- Visit_Information_Item --
   ----------------------------

   not overriding procedure Visit_Information_Item
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Information_Items.UML_Information_Item_Access) is
   begin
      null;
   end Visit_Information_Item;

   ------------------------
   -- Visit_Initial_Node --
   ------------------------

   not overriding procedure Visit_Initial_Node
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Initial_Nodes.UML_Initial_Node_Access) is
   begin
      null;
   end Visit_Initial_Node;

   ---------------------
   -- Visit_Input_Pin --
   ---------------------

   not overriding procedure Visit_Input_Pin
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Input_Pins.UML_Input_Pin_Access) is
   begin
      null;
   end Visit_Input_Pin;

   ----------------------------------
   -- Visit_Instance_Specification --
   ----------------------------------

   not overriding procedure Visit_Instance_Specification
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Instance_Specifications.UML_Instance_Specification_Access) is
   begin
      null;
   end Visit_Instance_Specification;

   --------------------------
   -- Visit_Instance_Value --
   --------------------------

   not overriding procedure Visit_Instance_Value
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Instance_Values.UML_Instance_Value_Access) is
   begin
      null;
   end Visit_Instance_Value;

   -----------------------
   -- Visit_Interaction --
   -----------------------

   not overriding procedure Visit_Interaction
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Interactions.UML_Interaction_Access) is
   begin
      null;
   end Visit_Interaction;

   ----------------------------------
   -- Visit_Interaction_Constraint --
   ----------------------------------

   not overriding procedure Visit_Interaction_Constraint
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Interaction_Constraints.UML_Interaction_Constraint_Access) is
   begin
      null;
   end Visit_Interaction_Constraint;

   -------------------------------
   -- Visit_Interaction_Operand --
   -------------------------------

   not overriding procedure Visit_Interaction_Operand
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Interaction_Operands.UML_Interaction_Operand_Access) is
   begin
      null;
   end Visit_Interaction_Operand;

   ---------------------------
   -- Visit_Interaction_Use --
   ---------------------------

   not overriding procedure Visit_Interaction_Use
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Interaction_Uses.UML_Interaction_Use_Access) is
   begin
      null;
   end Visit_Interaction_Use;

   ---------------------
   -- Visit_Interface --
   ---------------------

   not overriding procedure Visit_Interface
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Interfaces.UML_Interface_Access) is
   begin
      null;
   end Visit_Interface;

   ---------------------------------
   -- Visit_Interface_Realization --
   ---------------------------------

   not overriding procedure Visit_Interface_Realization
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Interface_Realizations.UML_Interface_Realization_Access) is
   begin
      null;
   end Visit_Interface_Realization;

   -----------------------------------------
   -- Visit_Interruptible_Activity_Region --
   -----------------------------------------

   not overriding procedure Visit_Interruptible_Activity_Region
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Interruptible_Activity_Regions.UML_Interruptible_Activity_Region_Access) is
   begin
      null;
   end Visit_Interruptible_Activity_Region;

   --------------------
   -- Visit_Interval --
   --------------------

   not overriding procedure Visit_Interval
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Intervals.UML_Interval_Access) is
   begin
      null;
   end Visit_Interval;

   -------------------------------
   -- Visit_Interval_Constraint --
   -------------------------------

   not overriding procedure Visit_Interval_Constraint
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Interval_Constraints.UML_Interval_Constraint_Access) is
   begin
      null;
   end Visit_Interval_Constraint;

   ---------------------
   -- Visit_Join_Node --
   ---------------------

   not overriding procedure Visit_Join_Node
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Join_Nodes.UML_Join_Node_Access) is
   begin
      null;
   end Visit_Join_Node;

   --------------------
   -- Visit_Lifeline --
   --------------------

   not overriding procedure Visit_Lifeline
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Lifelines.UML_Lifeline_Access) is
   begin
      null;
   end Visit_Lifeline;

   ----------------------------------
   -- Visit_Link_End_Creation_Data --
   ----------------------------------

   not overriding procedure Visit_Link_End_Creation_Data
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Link_End_Creation_Datas.UML_Link_End_Creation_Data_Access) is
   begin
      null;
   end Visit_Link_End_Creation_Data;

   -------------------------
   -- Visit_Link_End_Data --
   -------------------------

   not overriding procedure Visit_Link_End_Data
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Link_End_Datas.UML_Link_End_Data_Access) is
   begin
      null;
   end Visit_Link_End_Data;

   -------------------------------------
   -- Visit_Link_End_Destruction_Data --
   -------------------------------------

   not overriding procedure Visit_Link_End_Destruction_Data
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Link_End_Destruction_Datas.UML_Link_End_Destruction_Data_Access) is
   begin
      null;
   end Visit_Link_End_Destruction_Data;

   ---------------------------
   -- Visit_Literal_Boolean --
   ---------------------------

   not overriding procedure Visit_Literal_Boolean
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Literal_Booleans.UML_Literal_Boolean_Access) is
   begin
      null;
   end Visit_Literal_Boolean;

   ---------------------------
   -- Visit_Literal_Integer --
   ---------------------------

   not overriding procedure Visit_Literal_Integer
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Literal_Integers.UML_Literal_Integer_Access) is
   begin
      null;
   end Visit_Literal_Integer;

   ------------------------
   -- Visit_Literal_Null --
   ------------------------

   not overriding procedure Visit_Literal_Null
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Literal_Nulls.UML_Literal_Null_Access) is
   begin
      null;
   end Visit_Literal_Null;

   ------------------------
   -- Visit_Literal_Real --
   ------------------------

   not overriding procedure Visit_Literal_Real
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Literal_Reals.UML_Literal_Real_Access) is
   begin
      null;
   end Visit_Literal_Real;

   --------------------------
   -- Visit_Literal_String --
   --------------------------

   not overriding procedure Visit_Literal_String
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Literal_Strings.UML_Literal_String_Access) is
   begin
      null;
   end Visit_Literal_String;

   -------------------------------------
   -- Visit_Literal_Unlimited_Natural --
   -------------------------------------

   not overriding procedure Visit_Literal_Unlimited_Natural
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Literal_Unlimited_Naturals.UML_Literal_Unlimited_Natural_Access) is
   begin
      null;
   end Visit_Literal_Unlimited_Natural;

   ---------------------
   -- Visit_Loop_Node --
   ---------------------

   not overriding procedure Visit_Loop_Node
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Loop_Nodes.UML_Loop_Node_Access) is
   begin
      null;
   end Visit_Loop_Node;

   -------------------------
   -- Visit_Manifestation --
   -------------------------

   not overriding procedure Visit_Manifestation
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Manifestations.UML_Manifestation_Access) is
   begin
      null;
   end Visit_Manifestation;

   ----------------------
   -- Visit_Merge_Node --
   ----------------------

   not overriding procedure Visit_Merge_Node
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Merge_Nodes.UML_Merge_Node_Access) is
   begin
      null;
   end Visit_Merge_Node;

   -------------------
   -- Visit_Message --
   -------------------

   not overriding procedure Visit_Message
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Messages.UML_Message_Access) is
   begin
      null;
   end Visit_Message;

   --------------------------------------------
   -- Visit_Message_Occurrence_Specification --
   --------------------------------------------

   not overriding procedure Visit_Message_Occurrence_Specification
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Message_Occurrence_Specifications.UML_Message_Occurrence_Specification_Access) is
   begin
      null;
   end Visit_Message_Occurrence_Specification;

   -----------------
   -- Visit_Model --
   -----------------

   not overriding procedure Visit_Model
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Models.UML_Model_Access)
   is
      Packaged_Elements : constant
        AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element
          := Element.Get_Packaged_Element;

   begin
      for J in 1 .. Packaged_Elements.Length loop
         Self.Visit (Packaged_Elements.Element (J));
      end loop;
   end Visit_Model;

   ----------------
   -- Visit_Node --
   ----------------

   not overriding procedure Visit_Node
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Nodes.UML_Node_Access) is
   begin
      null;
   end Visit_Node;

   -----------------------
   -- Visit_Object_Flow --
   -----------------------

   not overriding procedure Visit_Object_Flow
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Object_Flows.UML_Object_Flow_Access) is
   begin
      null;
   end Visit_Object_Flow;

   ------------------------------------
   -- Visit_Occurrence_Specification --
   ------------------------------------

   not overriding procedure Visit_Occurrence_Specification
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Occurrence_Specifications.UML_Occurrence_Specification_Access) is
   begin
      null;
   end Visit_Occurrence_Specification;

   -------------------------
   -- Visit_Opaque_Action --
   -------------------------

   not overriding procedure Visit_Opaque_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Opaque_Actions.UML_Opaque_Action_Access) is
   begin
      null;
   end Visit_Opaque_Action;

   ---------------------------
   -- Visit_Opaque_Behavior --
   ---------------------------

   not overriding procedure Visit_Opaque_Behavior
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Opaque_Behaviors.UML_Opaque_Behavior_Access) is
   begin
      null;
   end Visit_Opaque_Behavior;

   -----------------------------
   -- Visit_Opaque_Expression --
   -----------------------------

   not overriding procedure Visit_Opaque_Expression
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Opaque_Expressions.UML_Opaque_Expression_Access) is
   begin
      null;
   end Visit_Opaque_Expression;

   ---------------------
   -- Visit_Operation --
   ---------------------

   not overriding procedure Visit_Operation
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Operations.UML_Operation_Access) is
   begin
      null;
   end Visit_Operation;

   ----------------------------------------
   -- Visit_Operation_Template_Parameter --
   ----------------------------------------

   not overriding procedure Visit_Operation_Template_Parameter
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter_Access) is
   begin
      null;
   end Visit_Operation_Template_Parameter;

   ----------------------
   -- Visit_Output_Pin --
   ----------------------

   not overriding procedure Visit_Output_Pin
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Output_Pins.UML_Output_Pin_Access) is
   begin
      null;
   end Visit_Output_Pin;

   -------------------
   -- Visit_Package --
   -------------------

   not overriding procedure Visit_Package
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Packages.UML_Package_Access)
   is
      Packaged_Elements : constant
        AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element
          := Element.Get_Packaged_Element;

   begin
      for J in 1 .. Packaged_Elements.Length loop
         Self.Visit (Packaged_Elements.Element (J));
      end loop;
   end Visit_Package;

   --------------------------
   -- Visit_Package_Import --
   --------------------------

   not overriding procedure Visit_Package_Import
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Package_Imports.UML_Package_Import_Access) is
   begin
      null;
   end Visit_Package_Import;

   -------------------------
   -- Visit_Package_Merge --
   -------------------------

   not overriding procedure Visit_Package_Merge
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Package_Merges.UML_Package_Merge_Access) is
   begin
      null;
   end Visit_Package_Merge;

   ---------------------
   -- Visit_Parameter --
   ---------------------

   not overriding procedure Visit_Parameter
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Parameters.UML_Parameter_Access) is
   begin
      null;
   end Visit_Parameter;

   -------------------------
   -- Visit_Parameter_Set --
   -------------------------

   not overriding procedure Visit_Parameter_Set
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Parameter_Sets.UML_Parameter_Set_Access) is
   begin
      null;
   end Visit_Parameter_Set;

   ------------------------------
   -- Visit_Part_Decomposition --
   ------------------------------

   not overriding procedure Visit_Part_Decomposition
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Part_Decompositions.UML_Part_Decomposition_Access) is
   begin
      null;
   end Visit_Part_Decomposition;

   ----------------
   -- Visit_Port --
   ----------------

   not overriding procedure Visit_Port
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Ports.UML_Port_Access) is
   begin
      null;
   end Visit_Port;

   --------------------------
   -- Visit_Primitive_Type --
   --------------------------

   not overriding procedure Visit_Primitive_Type
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Primitive_Types.UML_Primitive_Type_Access) is
   begin
      null;
   end Visit_Primitive_Type;

   -------------------
   -- Visit_Profile --
   -------------------

   not overriding procedure Visit_Profile
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Profiles.UML_Profile_Access) is
   begin
      null;
   end Visit_Profile;

   -------------------------------
   -- Visit_Profile_Application --
   -------------------------------

   not overriding procedure Visit_Profile_Application
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Profile_Applications.UML_Profile_Application_Access) is
   begin
      null;
   end Visit_Profile_Application;

   --------------------
   -- Visit_Property --
   --------------------

   not overriding procedure Visit_Property
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Properties.UML_Property_Access) is
   begin
      null;
   end Visit_Property;

   --------------------------------
   -- Visit_Protocol_Conformance --
   --------------------------------

   not overriding procedure Visit_Protocol_Conformance
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Protocol_Conformances.UML_Protocol_Conformance_Access) is
   begin
      null;
   end Visit_Protocol_Conformance;

   ----------------------------------
   -- Visit_Protocol_State_Machine --
   ----------------------------------

   not overriding procedure Visit_Protocol_State_Machine
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access) is
   begin
      null;
   end Visit_Protocol_State_Machine;

   -------------------------------
   -- Visit_Protocol_Transition --
   -------------------------------

   not overriding procedure Visit_Protocol_Transition
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Protocol_Transitions.UML_Protocol_Transition_Access) is
   begin
      null;
   end Visit_Protocol_Transition;

   -----------------------
   -- Visit_Pseudostate --
   -----------------------

   not overriding procedure Visit_Pseudostate
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Pseudostates.UML_Pseudostate_Access) is
   begin
      null;
   end Visit_Pseudostate;

   ---------------------------
   -- Visit_Qualifier_Value --
   ---------------------------

   not overriding procedure Visit_Qualifier_Value
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Qualifier_Values.UML_Qualifier_Value_Access) is
   begin
      null;
   end Visit_Qualifier_Value;

   ----------------------------------
   -- Visit_Raise_Exception_Action --
   ----------------------------------

   not overriding procedure Visit_Raise_Exception_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Raise_Exception_Actions.UML_Raise_Exception_Action_Access) is
   begin
      null;
   end Visit_Raise_Exception_Action;

   ------------------------------
   -- Visit_Read_Extent_Action --
   ------------------------------

   not overriding procedure Visit_Read_Extent_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Read_Extent_Actions.UML_Read_Extent_Action_Access) is
   begin
      null;
   end Visit_Read_Extent_Action;

   --------------------------------------------
   -- Visit_Read_Is_Classified_Object_Action --
   --------------------------------------------

   not overriding procedure Visit_Read_Is_Classified_Object_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Read_Is_Classified_Object_Actions.UML_Read_Is_Classified_Object_Action_Access) is
   begin
      null;
   end Visit_Read_Is_Classified_Object_Action;

   ----------------------------
   -- Visit_Read_Link_Action --
   ----------------------------

   not overriding procedure Visit_Read_Link_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Read_Link_Actions.UML_Read_Link_Action_Access) is
   begin
      null;
   end Visit_Read_Link_Action;

   ---------------------------------------
   -- Visit_Read_Link_Object_End_Action --
   ---------------------------------------

   not overriding procedure Visit_Read_Link_Object_End_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Read_Link_Object_End_Actions.UML_Read_Link_Object_End_Action_Access) is
   begin
      null;
   end Visit_Read_Link_Object_End_Action;

   -------------------------------------------------
   -- Visit_Read_Link_Object_End_Qualifier_Action --
   -------------------------------------------------

   not overriding procedure Visit_Read_Link_Object_End_Qualifier_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Read_Link_Object_End_Qualifier_Actions.UML_Read_Link_Object_End_Qualifier_Action_Access) is
   begin
      null;
   end Visit_Read_Link_Object_End_Qualifier_Action;

   ----------------------------
   -- Visit_Read_Self_Action --
   ----------------------------

   not overriding procedure Visit_Read_Self_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Read_Self_Actions.UML_Read_Self_Action_Access) is
   begin
      null;
   end Visit_Read_Self_Action;

   ------------------------------------------
   -- Visit_Read_Structural_Feature_Action --
   ------------------------------------------

   not overriding procedure Visit_Read_Structural_Feature_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Read_Structural_Feature_Actions.UML_Read_Structural_Feature_Action_Access) is
   begin
      null;
   end Visit_Read_Structural_Feature_Action;

   --------------------------------
   -- Visit_Read_Variable_Action --
   --------------------------------

   not overriding procedure Visit_Read_Variable_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Read_Variable_Actions.UML_Read_Variable_Action_Access) is
   begin
      null;
   end Visit_Read_Variable_Action;

   -----------------------
   -- Visit_Realization --
   -----------------------

   not overriding procedure Visit_Realization
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Realizations.UML_Realization_Access) is
   begin
      null;
   end Visit_Realization;

   ---------------------
   -- Visit_Reception --
   ---------------------

   not overriding procedure Visit_Reception
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Receptions.UML_Reception_Access) is
   begin
      null;
   end Visit_Reception;

   ------------------------------------
   -- Visit_Reclassify_Object_Action --
   ------------------------------------

   not overriding procedure Visit_Reclassify_Object_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Reclassify_Object_Actions.UML_Reclassify_Object_Action_Access) is
   begin
      null;
   end Visit_Reclassify_Object_Action;

   ------------------------------------------
   -- Visit_Redefinable_Template_Signature --
   ------------------------------------------

   not overriding procedure Visit_Redefinable_Template_Signature
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access) is
   begin
      null;
   end Visit_Redefinable_Template_Signature;

   -------------------------
   -- Visit_Reduce_Action --
   -------------------------

   not overriding procedure Visit_Reduce_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Reduce_Actions.UML_Reduce_Action_Access) is
   begin
      null;
   end Visit_Reduce_Action;

   ------------------
   -- Visit_Region --
   ------------------

   not overriding procedure Visit_Region
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Regions.UML_Region_Access) is
   begin
      null;
   end Visit_Region;

   --------------------------------------------------
   -- Visit_Remove_Structural_Feature_Value_Action --
   --------------------------------------------------

   not overriding procedure Visit_Remove_Structural_Feature_Value_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Remove_Structural_Feature_Value_Actions.UML_Remove_Structural_Feature_Value_Action_Access) is
   begin
      null;
   end Visit_Remove_Structural_Feature_Value_Action;

   ----------------------------------------
   -- Visit_Remove_Variable_Value_Action --
   ----------------------------------------

   not overriding procedure Visit_Remove_Variable_Value_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Remove_Variable_Value_Actions.UML_Remove_Variable_Value_Action_Access) is
   begin
      null;
   end Visit_Remove_Variable_Value_Action;

   ------------------------
   -- Visit_Reply_Action --
   ------------------------

   not overriding procedure Visit_Reply_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Reply_Actions.UML_Reply_Action_Access) is
   begin
      null;
   end Visit_Reply_Action;

   ------------------------------
   -- Visit_Send_Object_Action --
   ------------------------------

   not overriding procedure Visit_Send_Object_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Send_Object_Actions.UML_Send_Object_Action_Access) is
   begin
      null;
   end Visit_Send_Object_Action;

   ------------------------------
   -- Visit_Send_Signal_Action --
   ------------------------------

   not overriding procedure Visit_Send_Signal_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Send_Signal_Actions.UML_Send_Signal_Action_Access) is
   begin
      null;
   end Visit_Send_Signal_Action;

   -------------------------
   -- Visit_Sequence_Node --
   -------------------------

   not overriding procedure Visit_Sequence_Node
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Sequence_Nodes.UML_Sequence_Node_Access) is
   begin
      null;
   end Visit_Sequence_Node;

   ------------------
   -- Visit_Signal --
   ------------------

   not overriding procedure Visit_Signal
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Signals.UML_Signal_Access) is
   begin
      null;
   end Visit_Signal;

   ------------------------
   -- Visit_Signal_Event --
   ------------------------

   not overriding procedure Visit_Signal_Event
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Signal_Events.UML_Signal_Event_Access) is
   begin
      null;
   end Visit_Signal_Event;

   ----------------
   -- Visit_Slot --
   ----------------

   not overriding procedure Visit_Slot
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Slots.UML_Slot_Access) is
   begin
      null;
   end Visit_Slot;

   --------------------------------------------
   -- Visit_Start_Classifier_Behavior_Action --
   --------------------------------------------

   not overriding procedure Visit_Start_Classifier_Behavior_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Start_Classifier_Behavior_Actions.UML_Start_Classifier_Behavior_Action_Access) is
   begin
      null;
   end Visit_Start_Classifier_Behavior_Action;

   ----------------------------------------
   -- Visit_Start_Object_Behavior_Action --
   ----------------------------------------

   not overriding procedure Visit_Start_Object_Behavior_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Start_Object_Behavior_Actions.UML_Start_Object_Behavior_Action_Access) is
   begin
      null;
   end Visit_Start_Object_Behavior_Action;

   -----------------
   -- Visit_State --
   -----------------

   not overriding procedure Visit_State
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.States.UML_State_Access) is
   begin
      null;
   end Visit_State;

   ---------------------------
   -- Visit_State_Invariant --
   ---------------------------

   not overriding procedure Visit_State_Invariant
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.State_Invariants.UML_State_Invariant_Access) is
   begin
      null;
   end Visit_State_Invariant;

   -------------------------
   -- Visit_State_Machine --
   -------------------------

   not overriding procedure Visit_State_Machine
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.State_Machines.UML_State_Machine_Access) is
   begin
      null;
   end Visit_State_Machine;

   ----------------------
   -- Visit_Stereotype --
   ----------------------

   not overriding procedure Visit_Stereotype
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Stereotypes.UML_Stereotype_Access) is
   begin
      null;
   end Visit_Stereotype;

   -----------------------------
   -- Visit_String_Expression --
   -----------------------------

   not overriding procedure Visit_String_Expression
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.String_Expressions.UML_String_Expression_Access) is
   begin
      null;
   end Visit_String_Expression;

   ------------------------------------
   -- Visit_Structured_Activity_Node --
   ------------------------------------

   not overriding procedure Visit_Structured_Activity_Node
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access) is
   begin
      null;
   end Visit_Structured_Activity_Node;

   ------------------------
   -- Visit_Substitution --
   ------------------------

   not overriding procedure Visit_Substitution
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Substitutions.UML_Substitution_Access) is
   begin
      null;
   end Visit_Substitution;

   ----------------------------
   -- Visit_Template_Binding --
   ----------------------------

   not overriding procedure Visit_Template_Binding
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Template_Bindings.UML_Template_Binding_Access) is
   begin
      null;
   end Visit_Template_Binding;

   ------------------------------
   -- Visit_Template_Parameter --
   ------------------------------

   not overriding procedure Visit_Template_Parameter
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Template_Parameters.UML_Template_Parameter_Access) is
   begin
      null;
   end Visit_Template_Parameter;

   -------------------------------------------
   -- Visit_Template_Parameter_Substitution --
   -------------------------------------------

   not overriding procedure Visit_Template_Parameter_Substitution
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Template_Parameter_Substitutions.UML_Template_Parameter_Substitution_Access) is
   begin
      null;
   end Visit_Template_Parameter_Substitution;

   ------------------------------
   -- Visit_Template_Signature --
   ------------------------------

   not overriding procedure Visit_Template_Signature
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Template_Signatures.UML_Template_Signature_Access) is
   begin
      null;
   end Visit_Template_Signature;

   --------------------------------
   -- Visit_Test_Identity_Action --
   --------------------------------

   not overriding procedure Visit_Test_Identity_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Test_Identity_Actions.UML_Test_Identity_Action_Access) is
   begin
      null;
   end Visit_Test_Identity_Action;

   ---------------------------
   -- Visit_Time_Constraint --
   ---------------------------

   not overriding procedure Visit_Time_Constraint
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Time_Constraints.UML_Time_Constraint_Access) is
   begin
      null;
   end Visit_Time_Constraint;

   ----------------------
   -- Visit_Time_Event --
   ----------------------

   not overriding procedure Visit_Time_Event
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Time_Events.UML_Time_Event_Access) is
   begin
      null;
   end Visit_Time_Event;

   ---------------------------
   -- Visit_Time_Expression --
   ---------------------------

   not overriding procedure Visit_Time_Expression
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Time_Expressions.UML_Time_Expression_Access) is
   begin
      null;
   end Visit_Time_Expression;

   -------------------------
   -- Visit_Time_Interval --
   -------------------------

   not overriding procedure Visit_Time_Interval
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Time_Intervals.UML_Time_Interval_Access) is
   begin
      null;
   end Visit_Time_Interval;

   ----------------------------
   -- Visit_Time_Observation --
   ----------------------------

   not overriding procedure Visit_Time_Observation
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Time_Observations.UML_Time_Observation_Access) is
   begin
      null;
   end Visit_Time_Observation;

   ----------------------
   -- Visit_Transition --
   ----------------------

   not overriding procedure Visit_Transition
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Transitions.UML_Transition_Access) is
   begin
      null;
   end Visit_Transition;

   -------------------
   -- Visit_Trigger --
   -------------------

   not overriding procedure Visit_Trigger
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Triggers.UML_Trigger_Access) is
   begin
      null;
   end Visit_Trigger;

   -----------------------------
   -- Visit_Unmarshall_Action --
   -----------------------------

   not overriding procedure Visit_Unmarshall_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Unmarshall_Actions.UML_Unmarshall_Action_Access) is
   begin
      null;
   end Visit_Unmarshall_Action;

   -----------------
   -- Visit_Usage --
   -----------------

   not overriding procedure Visit_Usage
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Usages.UML_Usage_Access) is
   begin
      null;
   end Visit_Usage;

   --------------------
   -- Visit_Use_Case --
   --------------------

   not overriding procedure Visit_Use_Case
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Use_Cases.UML_Use_Case_Access) is
   begin
      null;
   end Visit_Use_Case;

   ---------------------
   -- Visit_Value_Pin --
   ---------------------

   not overriding procedure Visit_Value_Pin
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Value_Pins.UML_Value_Pin_Access) is
   begin
      null;
   end Visit_Value_Pin;

   --------------------------------------
   -- Visit_Value_Specification_Action --
   --------------------------------------

   not overriding procedure Visit_Value_Specification_Action
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Value_Specification_Actions.UML_Value_Specification_Action_Access) is
   begin
      null;
   end Visit_Value_Specification_Action;

   --------------------
   -- Visit_Variable --
   --------------------

   not overriding procedure Visit_Variable
    (Self    : in out UML_Visitor;
     Element : not null AMF.UML.Variables.UML_Variable_Access) is
   begin
      null;
   end Visit_Variable;

end AMF.UML.Visitors;
