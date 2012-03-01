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
--  This package contains conversion subprograms from different subclasses of
--  elements into holders. They are required to simplify generated code,
--  otherwise creation of intermediate object should be done in reflections
--  module. Most probably this package can be removed for Ada2020.
------------------------------------------------------------------------------
with AMF.UML.Actions;
with AMF.UML.Activities;
with AMF.UML.Activity_Groups;
with AMF.UML.Activity_Nodes;
with AMF.UML.Activity_Partitions;
with AMF.UML.Association_Classes;
with AMF.UML.Associations;
with AMF.UML.Behaviored_Classifiers;
with AMF.UML.Behavioral_Features;
with AMF.UML.Behaviors;
with AMF.UML.Call_Operation_Actions;
with AMF.UML.Classifier_Template_Parameters;
with AMF.UML.Classifiers;
with AMF.UML.Classes;
with AMF.UML.Collaboration_Uses;
with AMF.UML.Collaborations;
with AMF.UML.Components;
with AMF.UML.Connectable_Element_Template_Parameters;
with AMF.UML.Connectable_Elements;
with AMF.UML.Connectors;
with AMF.UML.Constraints;
with AMF.UML.Data_Types;
with AMF.UML.Deployment_Targets;
with AMF.UML.Deployments;
with AMF.UML.Duration_Intervals;
with AMF.UML.Durations;
with AMF.UML.Elements;
with AMF.UML.Enumeration_Literals;
with AMF.UML.Enumerations;
with AMF.UML.Events;
with AMF.UML.Executable_Nodes;
with AMF.UML.Execution_Specifications;
with AMF.UML.Expansion_Regions;
with AMF.UML.Extension_Ends;
with AMF.UML.Input_Pins;
with AMF.UML.Instance_Specifications;
with AMF.UML.Interaction_Constraints;
with AMF.UML.Interaction_Operands;
with AMF.UML.Interactions;
with AMF.UML.Interfaces;
with AMF.UML.Interruptible_Activity_Regions;
with AMF.UML.Intervals;
with AMF.UML.Lifelines;
with AMF.UML.Message_Ends;
with AMF.UML.Messages;
with AMF.UML.Named_Elements;
with AMF.UML.Namespaces;
with AMF.UML.Object_Flows;
with AMF.UML.Object_Nodes;
with AMF.UML.Occurrence_Specifications;
with AMF.UML.Opaque_Expressions;
with AMF.UML.Operation_Template_Parameters;
with AMF.UML.Operations;
with AMF.UML.Output_Pins;
with AMF.UML.Packageable_Elements;
with AMF.UML.Packages;
with AMF.UML.Parameterable_Elements;
with AMF.UML.Parameters;
with AMF.UML.Part_Decompositions;
with AMF.UML.Ports;
with AMF.UML.Profiles;
with AMF.UML.Properties;
with AMF.UML.Protocol_State_Machines;
with AMF.UML.Redefinable_Template_Signatures;
with AMF.UML.Regions;
with AMF.UML.Send_Signal_Actions;
with AMF.UML.Signals;
with AMF.UML.State_Machines;
with AMF.UML.States;
with AMF.UML.Stereotypes;
with AMF.UML.String_Expressions;
with AMF.UML.Structured_Activity_Nodes;
with AMF.UML.Structural_Features;
with AMF.UML.Template_Bindings;
with AMF.UML.Template_Parameters;
with AMF.UML.Template_Signatures;
with AMF.UML.Templateable_Elements;
with AMF.UML.Time_Expressions;
with AMF.UML.Time_Intervals;
with AMF.UML.Transitions;
with AMF.UML.Triggers;
with AMF.UML.Types;
with AMF.UML.Use_Cases;
with AMF.UML.Value_Specifications;
with AMF.UML.Variables;
with AMF.UML.Vertexs;

package AMF.Internals.Holders.UML_Holders is

   function To_Holder
    (Item : AMF.UML.Actions.UML_Action_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Activities.UML_Activity_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Activity_Groups.UML_Activity_Group_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Activity_Nodes.UML_Activity_Node_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Activity_Partitions.UML_Activity_Partition_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Association_Classes.UML_Association_Class_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Associations.UML_Association_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Behavioral_Features.UML_Behavioral_Feature_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Behaviored_Classifiers.UML_Behaviored_Classifier_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Behaviors.UML_Behavior_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Classifiers.UML_Classifier_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Classes.UML_Class_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Collaborations.UML_Collaboration_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Components.UML_Component_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Connectable_Elements.UML_Connectable_Element_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Connectors.UML_Connector_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Constraints.UML_Constraint_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Data_Types.UML_Data_Type_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Deployment_Targets.UML_Deployment_Target_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Deployments.UML_Deployment_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Duration_Intervals.UML_Duration_Interval_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Durations.UML_Duration_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Elements.UML_Element_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Enumerations.UML_Enumeration_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Events.UML_Event_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Executable_Nodes.UML_Executable_Node_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Execution_Specifications.UML_Execution_Specification_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Expansion_Regions.UML_Expansion_Region_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Extension_Ends.UML_Extension_End_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Input_Pins.UML_Input_Pin_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Instance_Specifications.UML_Instance_Specification_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Interaction_Constraints.UML_Interaction_Constraint_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Interaction_Operands.UML_Interaction_Operand_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Interactions.UML_Interaction_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Interfaces.UML_Interface_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Interruptible_Activity_Regions.UML_Interruptible_Activity_Region_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Intervals.UML_Interval_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Lifelines.UML_Lifeline_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Message_Ends.UML_Message_End_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Messages.UML_Message_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Named_Elements.UML_Named_Element_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Namespaces.UML_Namespace_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Object_Flows.UML_Object_Flow_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Object_Nodes.UML_Object_Node_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Occurrence_Specifications.UML_Occurrence_Specification_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Opaque_Expressions.UML_Opaque_Expression_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Operations.UML_Operation_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Output_Pins.UML_Output_Pin_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Packageable_Elements.UML_Packageable_Element_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Packages.UML_Package_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Part_Decompositions.UML_Part_Decomposition_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Parameterable_Elements.UML_Parameterable_Element_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Parameters.UML_Parameter_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Ports.UML_Port_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Profiles.UML_Profile_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Properties.UML_Property_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Regions.UML_Region_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Send_Signal_Actions.UML_Send_Signal_Action_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Signals.UML_Signal_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.State_Machines.UML_State_Machine_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.States.UML_State_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Stereotypes.UML_Stereotype_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.String_Expressions.UML_String_Expression_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Structural_Features.UML_Structural_Feature_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Template_Bindings.UML_Template_Binding_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Template_Parameters.UML_Template_Parameter_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Template_Signatures.UML_Template_Signature_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Templateable_Elements.UML_Templateable_Element_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Time_Intervals.UML_Time_Interval_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Time_Expressions.UML_Time_Expression_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Transitions.UML_Transition_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Triggers.UML_Trigger_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Types.UML_Type_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Use_Cases.UML_Use_Case_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Value_Specifications.UML_Value_Specification_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Variables.UML_Variable_Access)
       return League.Holders.Holder;

   function To_Holder
    (Item : AMF.UML.Vertexs.UML_Vertex_Access)
       return League.Holders.Holder;

end AMF.Internals.Holders.UML_Holders;
