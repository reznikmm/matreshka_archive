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
with AMF.UML.Abstractions;
with AMF.UML.Accept_Call_Actions;
with AMF.UML.Accept_Event_Actions;
with AMF.UML.Action_Execution_Specifications;
with AMF.UML.Action_Input_Pins;
with AMF.UML.Activities;
with AMF.UML.Activity_Final_Nodes;
with AMF.UML.Activity_Parameter_Nodes;
with AMF.UML.Activity_Partitions;
with AMF.UML.Actors;
with AMF.UML.Add_Structural_Feature_Value_Actions;
with AMF.UML.Add_Variable_Value_Actions;
with AMF.UML.Any_Receive_Events;
with AMF.UML.Artifacts;
with AMF.UML.Association_Classes;
with AMF.UML.Associations;
with AMF.UML.Behavior_Execution_Specifications;
with AMF.UML.Broadcast_Signal_Actions;
with AMF.UML.Call_Behavior_Actions;
with AMF.UML.Call_Events;
with AMF.UML.Call_Operation_Actions;
with AMF.UML.Central_Buffer_Nodes;
with AMF.UML.Change_Events;
with AMF.UML.Classes;
with AMF.UML.Classifier_Template_Parameters;
with AMF.UML.Clauses;
with AMF.UML.Clear_Association_Actions;
with AMF.UML.Clear_Structural_Feature_Actions;
with AMF.UML.Clear_Variable_Actions;
with AMF.UML.Collaboration_Uses;
with AMF.UML.Collaborations;
with AMF.UML.Combined_Fragments;
with AMF.UML.Comments;
with AMF.UML.Communication_Paths;
with AMF.UML.Component_Realizations;
with AMF.UML.Components;
with AMF.UML.Conditional_Nodes;
with AMF.UML.Connectable_Element_Template_Parameters;
with AMF.UML.Connection_Point_References;
with AMF.UML.Connector_Ends;
with AMF.UML.Connectors;
with AMF.UML.Consider_Ignore_Fragments;
with AMF.UML.Constraints;
with AMF.UML.Continuations;
with AMF.UML.Control_Flows;
with AMF.UML.Create_Link_Actions;
with AMF.UML.Create_Link_Object_Actions;
with AMF.UML.Create_Object_Actions;
with AMF.UML.Data_Store_Nodes;
with AMF.UML.Data_Types;
with AMF.UML.Decision_Nodes;
with AMF.UML.Dependencies;
with AMF.UML.Deployment_Specifications;
with AMF.UML.Deployments;
with AMF.UML.Destroy_Link_Actions;
with AMF.UML.Destroy_Object_Actions;
with AMF.UML.Destruction_Occurrence_Specifications;
with AMF.UML.Devices;
with AMF.UML.Duration_Constraints;
with AMF.UML.Duration_Intervals;
with AMF.UML.Duration_Observations;
with AMF.UML.Durations;
with AMF.UML.Element_Imports;
with AMF.UML.Enumeration_Literals;
with AMF.UML.Enumerations;
with AMF.UML.Exception_Handlers;
with AMF.UML.Execution_Environments;
with AMF.UML.Execution_Occurrence_Specifications;
with AMF.UML.Expansion_Nodes;
with AMF.UML.Expansion_Regions;
with AMF.UML.Expressions;
with AMF.UML.Extends;
with AMF.UML.Extension_Ends;
with AMF.UML.Extension_Points;
with AMF.UML.Extensions;
with AMF.UML.Final_States;
with AMF.UML.Flow_Final_Nodes;
with AMF.UML.Fork_Nodes;
with AMF.UML.Function_Behaviors;
with AMF.UML.Gates;
with AMF.UML.General_Orderings;
with AMF.UML.Generalization_Sets;
with AMF.UML.Generalizations;
with AMF.UML.Images;
with AMF.UML.Includes;
with AMF.UML.Information_Flows;
with AMF.UML.Information_Items;
with AMF.UML.Initial_Nodes;
with AMF.UML.Input_Pins;
with AMF.UML.Instance_Specifications;
with AMF.UML.Instance_Values;
with AMF.UML.Interaction_Constraints;
with AMF.UML.Interaction_Operands;
with AMF.UML.Interaction_Uses;
with AMF.UML.Interactions;
with AMF.UML.Interface_Realizations;
with AMF.UML.Interfaces;
with AMF.UML.Interruptible_Activity_Regions;
with AMF.UML.Interval_Constraints;
with AMF.UML.Intervals;
with AMF.UML.Join_Nodes;
with AMF.UML.Lifelines;
with AMF.UML.Link_End_Creation_Datas;
with AMF.UML.Link_End_Datas;
with AMF.UML.Link_End_Destruction_Datas;
with AMF.UML.Literal_Booleans;
with AMF.UML.Literal_Integers;
with AMF.UML.Literal_Nulls;
with AMF.UML.Literal_Reals;
with AMF.UML.Literal_Strings;
with AMF.UML.Literal_Unlimited_Naturals;
with AMF.UML.Loop_Nodes;
with AMF.UML.Manifestations;
with AMF.UML.Merge_Nodes;
with AMF.UML.Message_Occurrence_Specifications;
with AMF.UML.Messages;
with AMF.UML.Models;
with AMF.UML.Nodes;
with AMF.UML.Object_Flows;
with AMF.UML.Occurrence_Specifications;
with AMF.UML.Opaque_Actions;
with AMF.UML.Opaque_Behaviors;
with AMF.UML.Opaque_Expressions;
with AMF.UML.Operation_Template_Parameters;
with AMF.UML.Operations;
with AMF.UML.Output_Pins;
with AMF.UML.Package_Imports;
with AMF.UML.Package_Merges;
with AMF.UML.Packages;
with AMF.UML.Parameter_Sets;
with AMF.UML.Parameters;
with AMF.UML.Part_Decompositions;
with AMF.UML.Ports;
with AMF.UML.Primitive_Types;
with AMF.UML.Profile_Applications;
with AMF.UML.Profiles;
with AMF.UML.Properties;
with AMF.UML.Protocol_Conformances;
with AMF.UML.Protocol_State_Machines;
with AMF.UML.Protocol_Transitions;
with AMF.UML.Pseudostates;
with AMF.UML.Qualifier_Values;
with AMF.UML.Raise_Exception_Actions;
with AMF.UML.Read_Extent_Actions;
with AMF.UML.Read_Is_Classified_Object_Actions;
with AMF.UML.Read_Link_Actions;
with AMF.UML.Read_Link_Object_End_Actions;
with AMF.UML.Read_Link_Object_End_Qualifier_Actions;
with AMF.UML.Read_Self_Actions;
with AMF.UML.Read_Structural_Feature_Actions;
with AMF.UML.Read_Variable_Actions;
with AMF.UML.Realizations;
with AMF.UML.Receptions;
with AMF.UML.Reclassify_Object_Actions;
with AMF.UML.Redefinable_Template_Signatures;
with AMF.UML.Reduce_Actions;
with AMF.UML.Regions;
with AMF.UML.Remove_Structural_Feature_Value_Actions;
with AMF.UML.Remove_Variable_Value_Actions;
with AMF.UML.Reply_Actions;
with AMF.UML.Send_Object_Actions;
with AMF.UML.Send_Signal_Actions;
with AMF.UML.Sequence_Nodes;
with AMF.UML.Signal_Events;
with AMF.UML.Signals;
with AMF.UML.Slots;
with AMF.UML.Start_Classifier_Behavior_Actions;
with AMF.UML.Start_Object_Behavior_Actions;
with AMF.UML.State_Invariants;
with AMF.UML.State_Machines;
with AMF.UML.States;
with AMF.UML.Stereotypes;
with AMF.UML.String_Expressions;
with AMF.UML.Structured_Activity_Nodes;
with AMF.UML.Substitutions;
with AMF.UML.Template_Bindings;
with AMF.UML.Template_Parameter_Substitutions;
with AMF.UML.Template_Parameters;
with AMF.UML.Template_Signatures;
with AMF.UML.Test_Identity_Actions;
with AMF.UML.Time_Constraints;
with AMF.UML.Time_Events;
with AMF.UML.Time_Expressions;
with AMF.UML.Time_Intervals;
with AMF.UML.Time_Observations;
with AMF.UML.Transitions;
with AMF.UML.Triggers;
with AMF.UML.Unmarshall_Actions;
with AMF.UML.Usages;
with AMF.UML.Use_Cases;
with AMF.UML.Value_Pins;
with AMF.UML.Value_Specification_Actions;
with AMF.UML.Variables;

package AMF.Factories.UML_Factories is

   pragma Preelaborate;

   type UML_Factory is limited interface;

   not overriding function Create_Abstraction
    (Self : not null access UML_Factory)
       return AMF.UML.Abstractions.UML_Abstraction_Access is abstract;

   not overriding function Create_Accept_Call_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Accept_Call_Actions.UML_Accept_Call_Action_Access is abstract;

   not overriding function Create_Accept_Event_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Accept_Event_Actions.UML_Accept_Event_Action_Access is abstract;

   not overriding function Create_Action_Execution_Specification
    (Self : not null access UML_Factory)
       return AMF.UML.Action_Execution_Specifications.UML_Action_Execution_Specification_Access is abstract;

   not overriding function Create_Action_Input_Pin
    (Self : not null access UML_Factory)
       return AMF.UML.Action_Input_Pins.UML_Action_Input_Pin_Access is abstract;

   not overriding function Create_Activity
    (Self : not null access UML_Factory)
       return AMF.UML.Activities.UML_Activity_Access is abstract;

   not overriding function Create_Activity_Final_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Activity_Final_Nodes.UML_Activity_Final_Node_Access is abstract;

   not overriding function Create_Activity_Parameter_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Activity_Parameter_Nodes.UML_Activity_Parameter_Node_Access is abstract;

   not overriding function Create_Activity_Partition
    (Self : not null access UML_Factory)
       return AMF.UML.Activity_Partitions.UML_Activity_Partition_Access is abstract;

   not overriding function Create_Actor
    (Self : not null access UML_Factory)
       return AMF.UML.Actors.UML_Actor_Access is abstract;

   not overriding function Create_Add_Structural_Feature_Value_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Add_Structural_Feature_Value_Actions.UML_Add_Structural_Feature_Value_Action_Access is abstract;

   not overriding function Create_Add_Variable_Value_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Add_Variable_Value_Actions.UML_Add_Variable_Value_Action_Access is abstract;

   not overriding function Create_Any_Receive_Event
    (Self : not null access UML_Factory)
       return AMF.UML.Any_Receive_Events.UML_Any_Receive_Event_Access is abstract;

   not overriding function Create_Artifact
    (Self : not null access UML_Factory)
       return AMF.UML.Artifacts.UML_Artifact_Access is abstract;

   not overriding function Create_Association
    (Self : not null access UML_Factory)
       return AMF.UML.Associations.UML_Association_Access is abstract;

   not overriding function Create_Association_Class
    (Self : not null access UML_Factory)
       return AMF.UML.Association_Classes.UML_Association_Class_Access is abstract;

   not overriding function Create_Behavior_Execution_Specification
    (Self : not null access UML_Factory)
       return AMF.UML.Behavior_Execution_Specifications.UML_Behavior_Execution_Specification_Access is abstract;

   not overriding function Create_Broadcast_Signal_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Broadcast_Signal_Actions.UML_Broadcast_Signal_Action_Access is abstract;

   not overriding function Create_Call_Behavior_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Call_Behavior_Actions.UML_Call_Behavior_Action_Access is abstract;

   not overriding function Create_Call_Event
    (Self : not null access UML_Factory)
       return AMF.UML.Call_Events.UML_Call_Event_Access is abstract;

   not overriding function Create_Call_Operation_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access is abstract;

   not overriding function Create_Central_Buffer_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Central_Buffer_Nodes.UML_Central_Buffer_Node_Access is abstract;

   not overriding function Create_Change_Event
    (Self : not null access UML_Factory)
       return AMF.UML.Change_Events.UML_Change_Event_Access is abstract;

   not overriding function Create_Class
    (Self : not null access UML_Factory)
       return AMF.UML.Classes.UML_Class_Access is abstract;

   not overriding function Create_Classifier_Template_Parameter
    (Self : not null access UML_Factory)
       return AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access is abstract;

   not overriding function Create_Clause
    (Self : not null access UML_Factory)
       return AMF.UML.Clauses.UML_Clause_Access is abstract;

   not overriding function Create_Clear_Association_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Clear_Association_Actions.UML_Clear_Association_Action_Access is abstract;

   not overriding function Create_Clear_Structural_Feature_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Clear_Structural_Feature_Actions.UML_Clear_Structural_Feature_Action_Access is abstract;

   not overriding function Create_Clear_Variable_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Clear_Variable_Actions.UML_Clear_Variable_Action_Access is abstract;

   not overriding function Create_Collaboration
    (Self : not null access UML_Factory)
       return AMF.UML.Collaborations.UML_Collaboration_Access is abstract;

   not overriding function Create_Collaboration_Use
    (Self : not null access UML_Factory)
       return AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access is abstract;

   not overriding function Create_Combined_Fragment
    (Self : not null access UML_Factory)
       return AMF.UML.Combined_Fragments.UML_Combined_Fragment_Access is abstract;

   not overriding function Create_Comment
    (Self : not null access UML_Factory)
       return AMF.UML.Comments.UML_Comment_Access is abstract;

   not overriding function Create_Communication_Path
    (Self : not null access UML_Factory)
       return AMF.UML.Communication_Paths.UML_Communication_Path_Access is abstract;

   not overriding function Create_Component
    (Self : not null access UML_Factory)
       return AMF.UML.Components.UML_Component_Access is abstract;

   not overriding function Create_Component_Realization
    (Self : not null access UML_Factory)
       return AMF.UML.Component_Realizations.UML_Component_Realization_Access is abstract;

   not overriding function Create_Conditional_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Conditional_Nodes.UML_Conditional_Node_Access is abstract;

   not overriding function Create_Connectable_Element_Template_Parameter
    (Self : not null access UML_Factory)
       return AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access is abstract;

   not overriding function Create_Connection_Point_Reference
    (Self : not null access UML_Factory)
       return AMF.UML.Connection_Point_References.UML_Connection_Point_Reference_Access is abstract;

   not overriding function Create_Connector
    (Self : not null access UML_Factory)
       return AMF.UML.Connectors.UML_Connector_Access is abstract;

   not overriding function Create_Connector_End
    (Self : not null access UML_Factory)
       return AMF.UML.Connector_Ends.UML_Connector_End_Access is abstract;

   not overriding function Create_Consider_Ignore_Fragment
    (Self : not null access UML_Factory)
       return AMF.UML.Consider_Ignore_Fragments.UML_Consider_Ignore_Fragment_Access is abstract;

   not overriding function Create_Constraint
    (Self : not null access UML_Factory)
       return AMF.UML.Constraints.UML_Constraint_Access is abstract;

   not overriding function Create_Continuation
    (Self : not null access UML_Factory)
       return AMF.UML.Continuations.UML_Continuation_Access is abstract;

   not overriding function Create_Control_Flow
    (Self : not null access UML_Factory)
       return AMF.UML.Control_Flows.UML_Control_Flow_Access is abstract;

   not overriding function Create_Create_Link_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Create_Link_Actions.UML_Create_Link_Action_Access is abstract;

   not overriding function Create_Create_Link_Object_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Create_Link_Object_Actions.UML_Create_Link_Object_Action_Access is abstract;

   not overriding function Create_Create_Object_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Create_Object_Actions.UML_Create_Object_Action_Access is abstract;

   not overriding function Create_Data_Store_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Data_Store_Nodes.UML_Data_Store_Node_Access is abstract;

   not overriding function Create_Data_Type
    (Self : not null access UML_Factory)
       return AMF.UML.Data_Types.UML_Data_Type_Access is abstract;

   not overriding function Create_Decision_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Decision_Nodes.UML_Decision_Node_Access is abstract;

   not overriding function Create_Dependency
    (Self : not null access UML_Factory)
       return AMF.UML.Dependencies.UML_Dependency_Access is abstract;

   not overriding function Create_Deployment
    (Self : not null access UML_Factory)
       return AMF.UML.Deployments.UML_Deployment_Access is abstract;

   not overriding function Create_Deployment_Specification
    (Self : not null access UML_Factory)
       return AMF.UML.Deployment_Specifications.UML_Deployment_Specification_Access is abstract;

   not overriding function Create_Destroy_Link_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Destroy_Link_Actions.UML_Destroy_Link_Action_Access is abstract;

   not overriding function Create_Destroy_Object_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Destroy_Object_Actions.UML_Destroy_Object_Action_Access is abstract;

   not overriding function Create_Destruction_Occurrence_Specification
    (Self : not null access UML_Factory)
       return AMF.UML.Destruction_Occurrence_Specifications.UML_Destruction_Occurrence_Specification_Access is abstract;

   not overriding function Create_Device
    (Self : not null access UML_Factory)
       return AMF.UML.Devices.UML_Device_Access is abstract;

   not overriding function Create_Duration
    (Self : not null access UML_Factory)
       return AMF.UML.Durations.UML_Duration_Access is abstract;

   not overriding function Create_Duration_Constraint
    (Self : not null access UML_Factory)
       return AMF.UML.Duration_Constraints.UML_Duration_Constraint_Access is abstract;

   not overriding function Create_Duration_Interval
    (Self : not null access UML_Factory)
       return AMF.UML.Duration_Intervals.UML_Duration_Interval_Access is abstract;

   not overriding function Create_Duration_Observation
    (Self : not null access UML_Factory)
       return AMF.UML.Duration_Observations.UML_Duration_Observation_Access is abstract;

   not overriding function Create_Element_Import
    (Self : not null access UML_Factory)
       return AMF.UML.Element_Imports.UML_Element_Import_Access is abstract;

   not overriding function Create_Enumeration
    (Self : not null access UML_Factory)
       return AMF.UML.Enumerations.UML_Enumeration_Access is abstract;

   not overriding function Create_Enumeration_Literal
    (Self : not null access UML_Factory)
       return AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access is abstract;

   not overriding function Create_Exception_Handler
    (Self : not null access UML_Factory)
       return AMF.UML.Exception_Handlers.UML_Exception_Handler_Access is abstract;

   not overriding function Create_Execution_Environment
    (Self : not null access UML_Factory)
       return AMF.UML.Execution_Environments.UML_Execution_Environment_Access is abstract;

   not overriding function Create_Execution_Occurrence_Specification
    (Self : not null access UML_Factory)
       return AMF.UML.Execution_Occurrence_Specifications.UML_Execution_Occurrence_Specification_Access is abstract;

   not overriding function Create_Expansion_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Expansion_Nodes.UML_Expansion_Node_Access is abstract;

   not overriding function Create_Expansion_Region
    (Self : not null access UML_Factory)
       return AMF.UML.Expansion_Regions.UML_Expansion_Region_Access is abstract;

   not overriding function Create_Expression
    (Self : not null access UML_Factory)
       return AMF.UML.Expressions.UML_Expression_Access is abstract;

   not overriding function Create_Extend
    (Self : not null access UML_Factory)
       return AMF.UML.Extends.UML_Extend_Access is abstract;

   not overriding function Create_Extension
    (Self : not null access UML_Factory)
       return AMF.UML.Extensions.UML_Extension_Access is abstract;

   not overriding function Create_Extension_End
    (Self : not null access UML_Factory)
       return AMF.UML.Extension_Ends.UML_Extension_End_Access is abstract;

   not overriding function Create_Extension_Point
    (Self : not null access UML_Factory)
       return AMF.UML.Extension_Points.UML_Extension_Point_Access is abstract;

   not overriding function Create_Final_State
    (Self : not null access UML_Factory)
       return AMF.UML.Final_States.UML_Final_State_Access is abstract;

   not overriding function Create_Flow_Final_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Flow_Final_Nodes.UML_Flow_Final_Node_Access is abstract;

   not overriding function Create_Fork_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Fork_Nodes.UML_Fork_Node_Access is abstract;

   not overriding function Create_Function_Behavior
    (Self : not null access UML_Factory)
       return AMF.UML.Function_Behaviors.UML_Function_Behavior_Access is abstract;

   not overriding function Create_Gate
    (Self : not null access UML_Factory)
       return AMF.UML.Gates.UML_Gate_Access is abstract;

   not overriding function Create_General_Ordering
    (Self : not null access UML_Factory)
       return AMF.UML.General_Orderings.UML_General_Ordering_Access is abstract;

   not overriding function Create_Generalization
    (Self : not null access UML_Factory)
       return AMF.UML.Generalizations.UML_Generalization_Access is abstract;

   not overriding function Create_Generalization_Set
    (Self : not null access UML_Factory)
       return AMF.UML.Generalization_Sets.UML_Generalization_Set_Access is abstract;

   not overriding function Create_Image
    (Self : not null access UML_Factory)
       return AMF.UML.Images.UML_Image_Access is abstract;

   not overriding function Create_Include
    (Self : not null access UML_Factory)
       return AMF.UML.Includes.UML_Include_Access is abstract;

   not overriding function Create_Information_Flow
    (Self : not null access UML_Factory)
       return AMF.UML.Information_Flows.UML_Information_Flow_Access is abstract;

   not overriding function Create_Information_Item
    (Self : not null access UML_Factory)
       return AMF.UML.Information_Items.UML_Information_Item_Access is abstract;

   not overriding function Create_Initial_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Initial_Nodes.UML_Initial_Node_Access is abstract;

   not overriding function Create_Input_Pin
    (Self : not null access UML_Factory)
       return AMF.UML.Input_Pins.UML_Input_Pin_Access is abstract;

   not overriding function Create_Instance_Specification
    (Self : not null access UML_Factory)
       return AMF.UML.Instance_Specifications.UML_Instance_Specification_Access is abstract;

   not overriding function Create_Instance_Value
    (Self : not null access UML_Factory)
       return AMF.UML.Instance_Values.UML_Instance_Value_Access is abstract;

   not overriding function Create_Interaction
    (Self : not null access UML_Factory)
       return AMF.UML.Interactions.UML_Interaction_Access is abstract;

   not overriding function Create_Interaction_Constraint
    (Self : not null access UML_Factory)
       return AMF.UML.Interaction_Constraints.UML_Interaction_Constraint_Access is abstract;

   not overriding function Create_Interaction_Operand
    (Self : not null access UML_Factory)
       return AMF.UML.Interaction_Operands.UML_Interaction_Operand_Access is abstract;

   not overriding function Create_Interaction_Use
    (Self : not null access UML_Factory)
       return AMF.UML.Interaction_Uses.UML_Interaction_Use_Access is abstract;

   not overriding function Create_Interface
    (Self : not null access UML_Factory)
       return AMF.UML.Interfaces.UML_Interface_Access is abstract;

   not overriding function Create_Interface_Realization
    (Self : not null access UML_Factory)
       return AMF.UML.Interface_Realizations.UML_Interface_Realization_Access is abstract;

   not overriding function Create_Interruptible_Activity_Region
    (Self : not null access UML_Factory)
       return AMF.UML.Interruptible_Activity_Regions.UML_Interruptible_Activity_Region_Access is abstract;

   not overriding function Create_Interval
    (Self : not null access UML_Factory)
       return AMF.UML.Intervals.UML_Interval_Access is abstract;

   not overriding function Create_Interval_Constraint
    (Self : not null access UML_Factory)
       return AMF.UML.Interval_Constraints.UML_Interval_Constraint_Access is abstract;

   not overriding function Create_Join_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Join_Nodes.UML_Join_Node_Access is abstract;

   not overriding function Create_Lifeline
    (Self : not null access UML_Factory)
       return AMF.UML.Lifelines.UML_Lifeline_Access is abstract;

   not overriding function Create_Link_End_Creation_Data
    (Self : not null access UML_Factory)
       return AMF.UML.Link_End_Creation_Datas.UML_Link_End_Creation_Data_Access is abstract;

   not overriding function Create_Link_End_Data
    (Self : not null access UML_Factory)
       return AMF.UML.Link_End_Datas.UML_Link_End_Data_Access is abstract;

   not overriding function Create_Link_End_Destruction_Data
    (Self : not null access UML_Factory)
       return AMF.UML.Link_End_Destruction_Datas.UML_Link_End_Destruction_Data_Access is abstract;

   not overriding function Create_Literal_Boolean
    (Self : not null access UML_Factory)
       return AMF.UML.Literal_Booleans.UML_Literal_Boolean_Access is abstract;

   not overriding function Create_Literal_Integer
    (Self : not null access UML_Factory)
       return AMF.UML.Literal_Integers.UML_Literal_Integer_Access is abstract;

   not overriding function Create_Literal_Null
    (Self : not null access UML_Factory)
       return AMF.UML.Literal_Nulls.UML_Literal_Null_Access is abstract;

   not overriding function Create_Literal_Real
    (Self : not null access UML_Factory)
       return AMF.UML.Literal_Reals.UML_Literal_Real_Access is abstract;

   not overriding function Create_Literal_String
    (Self : not null access UML_Factory)
       return AMF.UML.Literal_Strings.UML_Literal_String_Access is abstract;

   not overriding function Create_Literal_Unlimited_Natural
    (Self : not null access UML_Factory)
       return AMF.UML.Literal_Unlimited_Naturals.UML_Literal_Unlimited_Natural_Access is abstract;

   not overriding function Create_Loop_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Loop_Nodes.UML_Loop_Node_Access is abstract;

   not overriding function Create_Manifestation
    (Self : not null access UML_Factory)
       return AMF.UML.Manifestations.UML_Manifestation_Access is abstract;

   not overriding function Create_Merge_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Merge_Nodes.UML_Merge_Node_Access is abstract;

   not overriding function Create_Message
    (Self : not null access UML_Factory)
       return AMF.UML.Messages.UML_Message_Access is abstract;

   not overriding function Create_Message_Occurrence_Specification
    (Self : not null access UML_Factory)
       return AMF.UML.Message_Occurrence_Specifications.UML_Message_Occurrence_Specification_Access is abstract;

   not overriding function Create_Model
    (Self : not null access UML_Factory)
       return AMF.UML.Models.UML_Model_Access is abstract;

   not overriding function Create_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Nodes.UML_Node_Access is abstract;

   not overriding function Create_Object_Flow
    (Self : not null access UML_Factory)
       return AMF.UML.Object_Flows.UML_Object_Flow_Access is abstract;

   not overriding function Create_Occurrence_Specification
    (Self : not null access UML_Factory)
       return AMF.UML.Occurrence_Specifications.UML_Occurrence_Specification_Access is abstract;

   not overriding function Create_Opaque_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Opaque_Actions.UML_Opaque_Action_Access is abstract;

   not overriding function Create_Opaque_Behavior
    (Self : not null access UML_Factory)
       return AMF.UML.Opaque_Behaviors.UML_Opaque_Behavior_Access is abstract;

   not overriding function Create_Opaque_Expression
    (Self : not null access UML_Factory)
       return AMF.UML.Opaque_Expressions.UML_Opaque_Expression_Access is abstract;

   not overriding function Create_Operation
    (Self : not null access UML_Factory)
       return AMF.UML.Operations.UML_Operation_Access is abstract;

   not overriding function Create_Operation_Template_Parameter
    (Self : not null access UML_Factory)
       return AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter_Access is abstract;

   not overriding function Create_Output_Pin
    (Self : not null access UML_Factory)
       return AMF.UML.Output_Pins.UML_Output_Pin_Access is abstract;

   not overriding function Create_Package
    (Self : not null access UML_Factory)
       return AMF.UML.Packages.UML_Package_Access is abstract;

   not overriding function Create_Package_Import
    (Self : not null access UML_Factory)
       return AMF.UML.Package_Imports.UML_Package_Import_Access is abstract;

   not overriding function Create_Package_Merge
    (Self : not null access UML_Factory)
       return AMF.UML.Package_Merges.UML_Package_Merge_Access is abstract;

   not overriding function Create_Parameter
    (Self : not null access UML_Factory)
       return AMF.UML.Parameters.UML_Parameter_Access is abstract;

   not overriding function Create_Parameter_Set
    (Self : not null access UML_Factory)
       return AMF.UML.Parameter_Sets.UML_Parameter_Set_Access is abstract;

   not overriding function Create_Part_Decomposition
    (Self : not null access UML_Factory)
       return AMF.UML.Part_Decompositions.UML_Part_Decomposition_Access is abstract;

   not overriding function Create_Port
    (Self : not null access UML_Factory)
       return AMF.UML.Ports.UML_Port_Access is abstract;

   not overriding function Create_Primitive_Type
    (Self : not null access UML_Factory)
       return AMF.UML.Primitive_Types.UML_Primitive_Type_Access is abstract;

   not overriding function Create_Profile
    (Self : not null access UML_Factory)
       return AMF.UML.Profiles.UML_Profile_Access is abstract;

   not overriding function Create_Profile_Application
    (Self : not null access UML_Factory)
       return AMF.UML.Profile_Applications.UML_Profile_Application_Access is abstract;

   not overriding function Create_Property
    (Self : not null access UML_Factory)
       return AMF.UML.Properties.UML_Property_Access is abstract;

   not overriding function Create_Protocol_Conformance
    (Self : not null access UML_Factory)
       return AMF.UML.Protocol_Conformances.UML_Protocol_Conformance_Access is abstract;

   not overriding function Create_Protocol_State_Machine
    (Self : not null access UML_Factory)
       return AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access is abstract;

   not overriding function Create_Protocol_Transition
    (Self : not null access UML_Factory)
       return AMF.UML.Protocol_Transitions.UML_Protocol_Transition_Access is abstract;

   not overriding function Create_Pseudostate
    (Self : not null access UML_Factory)
       return AMF.UML.Pseudostates.UML_Pseudostate_Access is abstract;

   not overriding function Create_Qualifier_Value
    (Self : not null access UML_Factory)
       return AMF.UML.Qualifier_Values.UML_Qualifier_Value_Access is abstract;

   not overriding function Create_Raise_Exception_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Raise_Exception_Actions.UML_Raise_Exception_Action_Access is abstract;

   not overriding function Create_Read_Extent_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Read_Extent_Actions.UML_Read_Extent_Action_Access is abstract;

   not overriding function Create_Read_Is_Classified_Object_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Read_Is_Classified_Object_Actions.UML_Read_Is_Classified_Object_Action_Access is abstract;

   not overriding function Create_Read_Link_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Read_Link_Actions.UML_Read_Link_Action_Access is abstract;

   not overriding function Create_Read_Link_Object_End_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Read_Link_Object_End_Actions.UML_Read_Link_Object_End_Action_Access is abstract;

   not overriding function Create_Read_Link_Object_End_Qualifier_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Read_Link_Object_End_Qualifier_Actions.UML_Read_Link_Object_End_Qualifier_Action_Access is abstract;

   not overriding function Create_Read_Self_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Read_Self_Actions.UML_Read_Self_Action_Access is abstract;

   not overriding function Create_Read_Structural_Feature_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Read_Structural_Feature_Actions.UML_Read_Structural_Feature_Action_Access is abstract;

   not overriding function Create_Read_Variable_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Read_Variable_Actions.UML_Read_Variable_Action_Access is abstract;

   not overriding function Create_Realization
    (Self : not null access UML_Factory)
       return AMF.UML.Realizations.UML_Realization_Access is abstract;

   not overriding function Create_Reception
    (Self : not null access UML_Factory)
       return AMF.UML.Receptions.UML_Reception_Access is abstract;

   not overriding function Create_Reclassify_Object_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Reclassify_Object_Actions.UML_Reclassify_Object_Action_Access is abstract;

   not overriding function Create_Redefinable_Template_Signature
    (Self : not null access UML_Factory)
       return AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access is abstract;

   not overriding function Create_Reduce_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Reduce_Actions.UML_Reduce_Action_Access is abstract;

   not overriding function Create_Region
    (Self : not null access UML_Factory)
       return AMF.UML.Regions.UML_Region_Access is abstract;

   not overriding function Create_Remove_Structural_Feature_Value_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Remove_Structural_Feature_Value_Actions.UML_Remove_Structural_Feature_Value_Action_Access is abstract;

   not overriding function Create_Remove_Variable_Value_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Remove_Variable_Value_Actions.UML_Remove_Variable_Value_Action_Access is abstract;

   not overriding function Create_Reply_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Reply_Actions.UML_Reply_Action_Access is abstract;

   not overriding function Create_Send_Object_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Send_Object_Actions.UML_Send_Object_Action_Access is abstract;

   not overriding function Create_Send_Signal_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Send_Signal_Actions.UML_Send_Signal_Action_Access is abstract;

   not overriding function Create_Sequence_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Sequence_Nodes.UML_Sequence_Node_Access is abstract;

   not overriding function Create_Signal
    (Self : not null access UML_Factory)
       return AMF.UML.Signals.UML_Signal_Access is abstract;

   not overriding function Create_Signal_Event
    (Self : not null access UML_Factory)
       return AMF.UML.Signal_Events.UML_Signal_Event_Access is abstract;

   not overriding function Create_Slot
    (Self : not null access UML_Factory)
       return AMF.UML.Slots.UML_Slot_Access is abstract;

   not overriding function Create_Start_Classifier_Behavior_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Start_Classifier_Behavior_Actions.UML_Start_Classifier_Behavior_Action_Access is abstract;

   not overriding function Create_Start_Object_Behavior_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Start_Object_Behavior_Actions.UML_Start_Object_Behavior_Action_Access is abstract;

   not overriding function Create_State
    (Self : not null access UML_Factory)
       return AMF.UML.States.UML_State_Access is abstract;

   not overriding function Create_State_Invariant
    (Self : not null access UML_Factory)
       return AMF.UML.State_Invariants.UML_State_Invariant_Access is abstract;

   not overriding function Create_State_Machine
    (Self : not null access UML_Factory)
       return AMF.UML.State_Machines.UML_State_Machine_Access is abstract;

   not overriding function Create_Stereotype
    (Self : not null access UML_Factory)
       return AMF.UML.Stereotypes.UML_Stereotype_Access is abstract;

   not overriding function Create_String_Expression
    (Self : not null access UML_Factory)
       return AMF.UML.String_Expressions.UML_String_Expression_Access is abstract;

   not overriding function Create_Structured_Activity_Node
    (Self : not null access UML_Factory)
       return AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access is abstract;

   not overriding function Create_Substitution
    (Self : not null access UML_Factory)
       return AMF.UML.Substitutions.UML_Substitution_Access is abstract;

   not overriding function Create_Template_Binding
    (Self : not null access UML_Factory)
       return AMF.UML.Template_Bindings.UML_Template_Binding_Access is abstract;

   not overriding function Create_Template_Parameter
    (Self : not null access UML_Factory)
       return AMF.UML.Template_Parameters.UML_Template_Parameter_Access is abstract;

   not overriding function Create_Template_Parameter_Substitution
    (Self : not null access UML_Factory)
       return AMF.UML.Template_Parameter_Substitutions.UML_Template_Parameter_Substitution_Access is abstract;

   not overriding function Create_Template_Signature
    (Self : not null access UML_Factory)
       return AMF.UML.Template_Signatures.UML_Template_Signature_Access is abstract;

   not overriding function Create_Test_Identity_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Test_Identity_Actions.UML_Test_Identity_Action_Access is abstract;

   not overriding function Create_Time_Constraint
    (Self : not null access UML_Factory)
       return AMF.UML.Time_Constraints.UML_Time_Constraint_Access is abstract;

   not overriding function Create_Time_Event
    (Self : not null access UML_Factory)
       return AMF.UML.Time_Events.UML_Time_Event_Access is abstract;

   not overriding function Create_Time_Expression
    (Self : not null access UML_Factory)
       return AMF.UML.Time_Expressions.UML_Time_Expression_Access is abstract;

   not overriding function Create_Time_Interval
    (Self : not null access UML_Factory)
       return AMF.UML.Time_Intervals.UML_Time_Interval_Access is abstract;

   not overriding function Create_Time_Observation
    (Self : not null access UML_Factory)
       return AMF.UML.Time_Observations.UML_Time_Observation_Access is abstract;

   not overriding function Create_Transition
    (Self : not null access UML_Factory)
       return AMF.UML.Transitions.UML_Transition_Access is abstract;

   not overriding function Create_Trigger
    (Self : not null access UML_Factory)
       return AMF.UML.Triggers.UML_Trigger_Access is abstract;

   not overriding function Create_Unmarshall_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Unmarshall_Actions.UML_Unmarshall_Action_Access is abstract;

   not overriding function Create_Usage
    (Self : not null access UML_Factory)
       return AMF.UML.Usages.UML_Usage_Access is abstract;

   not overriding function Create_Use_Case
    (Self : not null access UML_Factory)
       return AMF.UML.Use_Cases.UML_Use_Case_Access is abstract;

   not overriding function Create_Value_Pin
    (Self : not null access UML_Factory)
       return AMF.UML.Value_Pins.UML_Value_Pin_Access is abstract;

   not overriding function Create_Value_Specification_Action
    (Self : not null access UML_Factory)
       return AMF.UML.Value_Specification_Actions.UML_Value_Specification_Action_Access is abstract;

   not overriding function Create_Variable
    (Self : not null access UML_Factory)
       return AMF.UML.Variables.UML_Variable_Access is abstract;

end AMF.Factories.UML_Factories;
