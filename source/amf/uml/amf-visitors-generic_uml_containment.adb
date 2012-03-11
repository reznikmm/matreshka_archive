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
with AMF.UML.Packageable_Elements.Collections;

package body AMF.Visitors.Generic_UML_Containment is

   -----------------------
   -- Visit_Abstraction --
   -----------------------

   overriding procedure Visit_Abstraction
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Abstractions.UML_Abstraction_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Abstraction;

   ------------------------------
   -- Visit_Accept_Call_Action --
   ------------------------------

   overriding procedure Visit_Accept_Call_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Accept_Call_Actions.UML_Accept_Call_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Accept_Call_Action;

   -------------------------------
   -- Visit_Accept_Event_Action --
   -------------------------------

   overriding procedure Visit_Accept_Event_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Accept_Event_Actions.UML_Accept_Event_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Accept_Event_Action;

   ------------------------------------------
   -- Visit_Action_Execution_Specification --
   ------------------------------------------

   overriding procedure Visit_Action_Execution_Specification
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Action_Execution_Specifications.UML_Action_Execution_Specification_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Action_Execution_Specification;

   ----------------------------
   -- Visit_Action_Input_Pin --
   ----------------------------

   overriding procedure Visit_Action_Input_Pin
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Action_Input_Pins.UML_Action_Input_Pin_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Action_Input_Pin;

   --------------------
   -- Visit_Activity --
   --------------------

   overriding procedure Visit_Activity
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Activities.UML_Activity_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Activity;

   -------------------------------
   -- Visit_Activity_Final_Node --
   -------------------------------

   overriding procedure Visit_Activity_Final_Node
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Activity_Final_Nodes.UML_Activity_Final_Node_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Activity_Final_Node;

   -----------------------------------
   -- Visit_Activity_Parameter_Node --
   -----------------------------------

   overriding procedure Visit_Activity_Parameter_Node
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Activity_Parameter_Nodes.UML_Activity_Parameter_Node_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Activity_Parameter_Node;

   ------------------------------
   -- Visit_Activity_Partition --
   ------------------------------

   overriding procedure Visit_Activity_Partition
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Activity_Partitions.UML_Activity_Partition_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Activity_Partition;

   -----------------
   -- Visit_Actor --
   -----------------

   overriding procedure Visit_Actor
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Actors.UML_Actor_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Actor;

   -----------------------------------------------
   -- Visit_Add_Structural_Feature_Value_Action --
   -----------------------------------------------

   overriding procedure Visit_Add_Structural_Feature_Value_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Add_Structural_Feature_Value_Actions.UML_Add_Structural_Feature_Value_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Add_Structural_Feature_Value_Action;

   -------------------------------------
   -- Visit_Add_Variable_Value_Action --
   -------------------------------------

   overriding procedure Visit_Add_Variable_Value_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Add_Variable_Value_Actions.UML_Add_Variable_Value_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Add_Variable_Value_Action;

   -----------------------------
   -- Visit_Any_Receive_Event --
   -----------------------------

   overriding procedure Visit_Any_Receive_Event
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Any_Receive_Events.UML_Any_Receive_Event_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Any_Receive_Event;

   --------------------
   -- Visit_Artifact --
   --------------------

   overriding procedure Visit_Artifact
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Artifacts.UML_Artifact_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Artifact;

   -----------------------
   -- Visit_Association --
   -----------------------

   overriding procedure Visit_Association
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Associations.UML_Association_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Association;

   -----------------------------
   -- Visit_Association_Class --
   -----------------------------

   overriding procedure Visit_Association_Class
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Association_Classes.UML_Association_Class_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Association_Class;

   --------------------------------------------
   -- Visit_Behavior_Execution_Specification --
   --------------------------------------------

   overriding procedure Visit_Behavior_Execution_Specification
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Behavior_Execution_Specifications.UML_Behavior_Execution_Specification_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Behavior_Execution_Specification;

   -----------------------------------
   -- Visit_Broadcast_Signal_Action --
   -----------------------------------

   overriding procedure Visit_Broadcast_Signal_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Broadcast_Signal_Actions.UML_Broadcast_Signal_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Broadcast_Signal_Action;

   --------------------------------
   -- Visit_Call_Behavior_Action --
   --------------------------------

   overriding procedure Visit_Call_Behavior_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Call_Behavior_Actions.UML_Call_Behavior_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Call_Behavior_Action;

   ----------------------
   -- Visit_Call_Event --
   ----------------------

   overriding procedure Visit_Call_Event
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Call_Events.UML_Call_Event_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Call_Event;

   ---------------------------------
   -- Visit_Call_Operation_Action --
   ---------------------------------

   overriding procedure Visit_Call_Operation_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Call_Operation_Actions.UML_Call_Operation_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Call_Operation_Action;

   -------------------------------
   -- Visit_Central_Buffer_Node --
   -------------------------------

   overriding procedure Visit_Central_Buffer_Node
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Central_Buffer_Nodes.UML_Central_Buffer_Node_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Central_Buffer_Node;

   ------------------------
   -- Visit_Change_Event --
   ------------------------

   overriding procedure Visit_Change_Event
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Change_Events.UML_Change_Event_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Change_Event;

   -----------------
   -- Visit_Class --
   -----------------

   overriding procedure Visit_Class
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Classes.UML_Class_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Class;

   -----------------------------------------
   -- Visit_Classifier_Template_Parameter --
   -----------------------------------------

   overriding procedure Visit_Classifier_Template_Parameter
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Classifier_Template_Parameter;

   ------------------
   -- Visit_Clause --
   ------------------

   overriding procedure Visit_Clause
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Clauses.UML_Clause_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Clause;

   ------------------------------------
   -- Visit_Clear_Association_Action --
   ------------------------------------

   overriding procedure Visit_Clear_Association_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Clear_Association_Actions.UML_Clear_Association_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Clear_Association_Action;

   -------------------------------------------
   -- Visit_Clear_Structural_Feature_Action --
   -------------------------------------------

   overriding procedure Visit_Clear_Structural_Feature_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Clear_Structural_Feature_Actions.UML_Clear_Structural_Feature_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Clear_Structural_Feature_Action;

   ---------------------------------
   -- Visit_Clear_Variable_Action --
   ---------------------------------

   overriding procedure Visit_Clear_Variable_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Clear_Variable_Actions.UML_Clear_Variable_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Clear_Variable_Action;

   -------------------------
   -- Visit_Collaboration --
   -------------------------

   overriding procedure Visit_Collaboration
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Collaborations.UML_Collaboration_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Collaboration;

   -----------------------------
   -- Visit_Collaboration_Use --
   -----------------------------

   overriding procedure Visit_Collaboration_Use
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Collaboration_Uses.UML_Collaboration_Use_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Collaboration_Use;

   -----------------------------
   -- Visit_Combined_Fragment --
   -----------------------------

   overriding procedure Visit_Combined_Fragment
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Combined_Fragments.UML_Combined_Fragment_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Combined_Fragment;

   -------------------
   -- Visit_Comment --
   -------------------

   overriding procedure Visit_Comment
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Comments.UML_Comment_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Comment;

   ------------------------------
   -- Visit_Communication_Path --
   ------------------------------

   overriding procedure Visit_Communication_Path
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Communication_Paths.UML_Communication_Path_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Communication_Path;

   ---------------------
   -- Visit_Component --
   ---------------------

   overriding procedure Visit_Component
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Components.UML_Component_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Component;

   ---------------------------------
   -- Visit_Component_Realization --
   ---------------------------------

   overriding procedure Visit_Component_Realization
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Component_Realizations.UML_Component_Realization_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Component_Realization;

   ----------------------------
   -- Visit_Conditional_Node --
   ----------------------------

   overriding procedure Visit_Conditional_Node
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Conditional_Nodes.UML_Conditional_Node_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Conditional_Node;

   --------------------------------------------------
   -- Visit_Connectable_Element_Template_Parameter --
   --------------------------------------------------

   overriding procedure Visit_Connectable_Element_Template_Parameter
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Connectable_Element_Template_Parameter;

   --------------------------------------
   -- Visit_Connection_Point_Reference --
   --------------------------------------

   overriding procedure Visit_Connection_Point_Reference
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Connection_Point_References.UML_Connection_Point_Reference_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Connection_Point_Reference;

   ---------------------
   -- Visit_Connector --
   ---------------------

   overriding procedure Visit_Connector
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Connectors.UML_Connector_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Connector;

   -------------------------
   -- Visit_Connector_End --
   -------------------------

   overriding procedure Visit_Connector_End
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Connector_Ends.UML_Connector_End_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Connector_End;

   ------------------------------------
   -- Visit_Consider_Ignore_Fragment --
   ------------------------------------

   overriding procedure Visit_Consider_Ignore_Fragment
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Consider_Ignore_Fragments.UML_Consider_Ignore_Fragment_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Consider_Ignore_Fragment;

   ----------------------
   -- Visit_Constraint --
   ----------------------

   overriding procedure Visit_Constraint
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Constraints.UML_Constraint_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Constraint;

   ------------------------
   -- Visit_Continuation --
   ------------------------

   overriding procedure Visit_Continuation
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Continuations.UML_Continuation_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Continuation;

   ------------------------
   -- Visit_Control_Flow --
   ------------------------

   overriding procedure Visit_Control_Flow
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Control_Flows.UML_Control_Flow_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Control_Flow;

   ------------------------------
   -- Visit_Create_Link_Action --
   ------------------------------

   overriding procedure Visit_Create_Link_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Create_Link_Actions.UML_Create_Link_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Create_Link_Action;

   -------------------------------------
   -- Visit_Create_Link_Object_Action --
   -------------------------------------

   overriding procedure Visit_Create_Link_Object_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Create_Link_Object_Actions.UML_Create_Link_Object_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Create_Link_Object_Action;

   --------------------------------
   -- Visit_Create_Object_Action --
   --------------------------------

   overriding procedure Visit_Create_Object_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Create_Object_Actions.UML_Create_Object_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Create_Object_Action;

   ---------------------------
   -- Visit_Data_Store_Node --
   ---------------------------

   overriding procedure Visit_Data_Store_Node
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Data_Store_Nodes.UML_Data_Store_Node_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Data_Store_Node;

   ---------------------
   -- Visit_Data_Type --
   ---------------------

   overriding procedure Visit_Data_Type
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Data_Types.UML_Data_Type_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Data_Type;

   -------------------------
   -- Visit_Decision_Node --
   -------------------------

   overriding procedure Visit_Decision_Node
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Decision_Nodes.UML_Decision_Node_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Decision_Node;

   ----------------------
   -- Visit_Dependency --
   ----------------------

   overriding procedure Visit_Dependency
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Dependencies.UML_Dependency_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Dependency;

   ----------------------
   -- Visit_Deployment --
   ----------------------

   overriding procedure Visit_Deployment
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Deployments.UML_Deployment_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Deployment;

   ------------------------------------
   -- Visit_Deployment_Specification --
   ------------------------------------

   overriding procedure Visit_Deployment_Specification
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Deployment_Specifications.UML_Deployment_Specification_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Deployment_Specification;

   -------------------------------
   -- Visit_Destroy_Link_Action --
   -------------------------------

   overriding procedure Visit_Destroy_Link_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Destroy_Link_Actions.UML_Destroy_Link_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Destroy_Link_Action;

   ---------------------------------
   -- Visit_Destroy_Object_Action --
   ---------------------------------

   overriding procedure Visit_Destroy_Object_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Destroy_Object_Actions.UML_Destroy_Object_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Destroy_Object_Action;

   ------------------------------------------------
   -- Visit_Destruction_Occurrence_Specification --
   ------------------------------------------------

   overriding procedure Visit_Destruction_Occurrence_Specification
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Destruction_Occurrence_Specifications.UML_Destruction_Occurrence_Specification_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Destruction_Occurrence_Specification;

   ------------------
   -- Visit_Device --
   ------------------

   overriding procedure Visit_Device
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Devices.UML_Device_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Device;

   --------------------
   -- Visit_Duration --
   --------------------

   overriding procedure Visit_Duration
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Durations.UML_Duration_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Duration;

   -------------------------------
   -- Visit_Duration_Constraint --
   -------------------------------

   overriding procedure Visit_Duration_Constraint
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Duration_Constraints.UML_Duration_Constraint_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Duration_Constraint;

   -----------------------------
   -- Visit_Duration_Interval --
   -----------------------------

   overriding procedure Visit_Duration_Interval
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Duration_Intervals.UML_Duration_Interval_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Duration_Interval;

   --------------------------------
   -- Visit_Duration_Observation --
   --------------------------------

   overriding procedure Visit_Duration_Observation
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Duration_Observations.UML_Duration_Observation_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Duration_Observation;

   --------------------------
   -- Visit_Element_Import --
   --------------------------

   overriding procedure Visit_Element_Import
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Element_Imports.UML_Element_Import_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Element_Import;

   -----------------------
   -- Visit_Enumeration --
   -----------------------

   overriding procedure Visit_Enumeration
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Enumerations.UML_Enumeration_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Enumeration;

   -------------------------------
   -- Visit_Enumeration_Literal --
   -------------------------------

   overriding procedure Visit_Enumeration_Literal
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Enumeration_Literals.UML_Enumeration_Literal_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Enumeration_Literal;

   -----------------------------
   -- Visit_Exception_Handler --
   -----------------------------

   overriding procedure Visit_Exception_Handler
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Exception_Handlers.UML_Exception_Handler_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Exception_Handler;

   ---------------------------------
   -- Visit_Execution_Environment --
   ---------------------------------

   overriding procedure Visit_Execution_Environment
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Execution_Environments.UML_Execution_Environment_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Execution_Environment;

   ----------------------------------------------
   -- Visit_Execution_Occurrence_Specification --
   ----------------------------------------------

   overriding procedure Visit_Execution_Occurrence_Specification
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Execution_Occurrence_Specifications.UML_Execution_Occurrence_Specification_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Execution_Occurrence_Specification;

   --------------------------
   -- Visit_Expansion_Node --
   --------------------------

   overriding procedure Visit_Expansion_Node
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Expansion_Nodes.UML_Expansion_Node_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Expansion_Node;

   ----------------------------
   -- Visit_Expansion_Region --
   ----------------------------

   overriding procedure Visit_Expansion_Region
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Expansion_Regions.UML_Expansion_Region_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Expansion_Region;

   ----------------------
   -- Visit_Expression --
   ----------------------

   overriding procedure Visit_Expression
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Expressions.UML_Expression_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Expression;

   ------------------
   -- Visit_Extend --
   ------------------

   overriding procedure Visit_Extend
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Extends.UML_Extend_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Extend;

   ---------------------
   -- Visit_Extension --
   ---------------------

   overriding procedure Visit_Extension
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Extensions.UML_Extension_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Extension;

   -------------------------
   -- Visit_Extension_End --
   -------------------------

   overriding procedure Visit_Extension_End
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Extension_Ends.UML_Extension_End_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Extension_End;

   ---------------------------
   -- Visit_Extension_Point --
   ---------------------------

   overriding procedure Visit_Extension_Point
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Extension_Points.UML_Extension_Point_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Extension_Point;

   -----------------------
   -- Visit_Final_State --
   -----------------------

   overriding procedure Visit_Final_State
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Final_States.UML_Final_State_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Final_State;

   ---------------------------
   -- Visit_Flow_Final_Node --
   ---------------------------

   overriding procedure Visit_Flow_Final_Node
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Flow_Final_Nodes.UML_Flow_Final_Node_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Flow_Final_Node;

   ---------------------
   -- Visit_Fork_Node --
   ---------------------

   overriding procedure Visit_Fork_Node
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Fork_Nodes.UML_Fork_Node_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Fork_Node;

   -----------------------------
   -- Visit_Function_Behavior --
   -----------------------------

   overriding procedure Visit_Function_Behavior
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Function_Behaviors.UML_Function_Behavior_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Function_Behavior;

   ----------------
   -- Visit_Gate --
   ----------------

   overriding procedure Visit_Gate
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Gates.UML_Gate_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Gate;

   ----------------------------
   -- Visit_General_Ordering --
   ----------------------------

   overriding procedure Visit_General_Ordering
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.General_Orderings.UML_General_Ordering_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_General_Ordering;

   --------------------------
   -- Visit_Generalization --
   --------------------------

   overriding procedure Visit_Generalization
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Generalizations.UML_Generalization_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Generalization;

   ------------------------------
   -- Visit_Generalization_Set --
   ------------------------------

   overriding procedure Visit_Generalization_Set
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Generalization_Sets.UML_Generalization_Set_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Generalization_Set;

   -----------------
   -- Visit_Image --
   -----------------

   overriding procedure Visit_Image
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Images.UML_Image_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Image;

   -------------------
   -- Visit_Include --
   -------------------

   overriding procedure Visit_Include
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Includes.UML_Include_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Include;

   ----------------------------
   -- Visit_Information_Flow --
   ----------------------------

   overriding procedure Visit_Information_Flow
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Information_Flows.UML_Information_Flow_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Information_Flow;

   ----------------------------
   -- Visit_Information_Item --
   ----------------------------

   overriding procedure Visit_Information_Item
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Information_Items.UML_Information_Item_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Information_Item;

   ------------------------
   -- Visit_Initial_Node --
   ------------------------

   overriding procedure Visit_Initial_Node
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Initial_Nodes.UML_Initial_Node_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Initial_Node;

   ---------------------
   -- Visit_Input_Pin --
   ---------------------

   overriding procedure Visit_Input_Pin
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Input_Pins.UML_Input_Pin_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Input_Pin;

   ----------------------------------
   -- Visit_Instance_Specification --
   ----------------------------------

   overriding procedure Visit_Instance_Specification
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Instance_Specifications.UML_Instance_Specification_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Instance_Specification;

   --------------------------
   -- Visit_Instance_Value --
   --------------------------

   overriding procedure Visit_Instance_Value
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Instance_Values.UML_Instance_Value_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Instance_Value;

   -----------------------
   -- Visit_Interaction --
   -----------------------

   overriding procedure Visit_Interaction
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Interactions.UML_Interaction_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Interaction;

   ----------------------------------
   -- Visit_Interaction_Constraint --
   ----------------------------------

   overriding procedure Visit_Interaction_Constraint
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Interaction_Constraints.UML_Interaction_Constraint_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Interaction_Constraint;

   -------------------------------
   -- Visit_Interaction_Operand --
   -------------------------------

   overriding procedure Visit_Interaction_Operand
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Interaction_Operands.UML_Interaction_Operand_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Interaction_Operand;

   ---------------------------
   -- Visit_Interaction_Use --
   ---------------------------

   overriding procedure Visit_Interaction_Use
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Interaction_Uses.UML_Interaction_Use_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Interaction_Use;

   ---------------------
   -- Visit_Interface --
   ---------------------

   overriding procedure Visit_Interface
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Interfaces.UML_Interface_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Interface;

   ---------------------------------
   -- Visit_Interface_Realization --
   ---------------------------------

   overriding procedure Visit_Interface_Realization
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Interface_Realizations.UML_Interface_Realization_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Interface_Realization;

   -----------------------------------------
   -- Visit_Interruptible_Activity_Region --
   -----------------------------------------

   overriding procedure Visit_Interruptible_Activity_Region
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Interruptible_Activity_Regions.UML_Interruptible_Activity_Region_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Interruptible_Activity_Region;

   --------------------
   -- Visit_Interval --
   --------------------

   overriding procedure Visit_Interval
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Intervals.UML_Interval_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Interval;

   -------------------------------
   -- Visit_Interval_Constraint --
   -------------------------------

   overriding procedure Visit_Interval_Constraint
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Interval_Constraints.UML_Interval_Constraint_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Interval_Constraint;

   ---------------------
   -- Visit_Join_Node --
   ---------------------

   overriding procedure Visit_Join_Node
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Join_Nodes.UML_Join_Node_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Join_Node;

   --------------------
   -- Visit_Lifeline --
   --------------------

   overriding procedure Visit_Lifeline
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Lifelines.UML_Lifeline_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Lifeline;

   ----------------------------------
   -- Visit_Link_End_Creation_Data --
   ----------------------------------

   overriding procedure Visit_Link_End_Creation_Data
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Link_End_Creation_Datas.UML_Link_End_Creation_Data_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Link_End_Creation_Data;

   -------------------------
   -- Visit_Link_End_Data --
   -------------------------

   overriding procedure Visit_Link_End_Data
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Link_End_Datas.UML_Link_End_Data_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Link_End_Data;

   -------------------------------------
   -- Visit_Link_End_Destruction_Data --
   -------------------------------------

   overriding procedure Visit_Link_End_Destruction_Data
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Link_End_Destruction_Datas.UML_Link_End_Destruction_Data_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Link_End_Destruction_Data;

   ---------------------------
   -- Visit_Literal_Boolean --
   ---------------------------

   overriding procedure Visit_Literal_Boolean
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Literal_Booleans.UML_Literal_Boolean_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Literal_Boolean;

   ---------------------------
   -- Visit_Literal_Integer --
   ---------------------------

   overriding procedure Visit_Literal_Integer
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Literal_Integers.UML_Literal_Integer_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Literal_Integer;

   ------------------------
   -- Visit_Literal_Null --
   ------------------------

   overriding procedure Visit_Literal_Null
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Literal_Nulls.UML_Literal_Null_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Literal_Null;

   ------------------------
   -- Visit_Literal_Real --
   ------------------------

   overriding procedure Visit_Literal_Real
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Literal_Reals.UML_Literal_Real_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Literal_Real;

   --------------------------
   -- Visit_Literal_String --
   --------------------------

   overriding procedure Visit_Literal_String
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Literal_Strings.UML_Literal_String_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Literal_String;

   -------------------------------------
   -- Visit_Literal_Unlimited_Natural --
   -------------------------------------

   overriding procedure Visit_Literal_Unlimited_Natural
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Literal_Unlimited_Naturals.UML_Literal_Unlimited_Natural_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Literal_Unlimited_Natural;

   ---------------------
   -- Visit_Loop_Node --
   ---------------------

   overriding procedure Visit_Loop_Node
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Loop_Nodes.UML_Loop_Node_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Loop_Node;

   -------------------------
   -- Visit_Manifestation --
   -------------------------

   overriding procedure Visit_Manifestation
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Manifestations.UML_Manifestation_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Manifestation;

   ----------------------
   -- Visit_Merge_Node --
   ----------------------

   overriding procedure Visit_Merge_Node
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Merge_Nodes.UML_Merge_Node_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Merge_Node;

   -------------------
   -- Visit_Message --
   -------------------

   overriding procedure Visit_Message
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Messages.UML_Message_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Message;

   --------------------------------------------
   -- Visit_Message_Occurrence_Specification --
   --------------------------------------------

   overriding procedure Visit_Message_Occurrence_Specification
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Message_Occurrence_Specifications.UML_Message_Occurrence_Specification_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Message_Occurrence_Specification;

   -----------------
   -- Visit_Model --
   -----------------

   overriding procedure Visit_Model
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Models.UML_Model_Access;
     Control : in out Traverse_Control)
   is
      Packaged_Elements : constant
        AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element
          := Element.Get_Packaged_Element;

   begin
      for J in 1 .. Packaged_Elements.Length loop
         AMF.Visitors.Visit
          (Self,
           Visitor,
           AMF.Elements.Element_Access (Packaged_Elements.Element (J)),
           Control);

         case Control is
            when Continue =>
               null;

            when Abandon_Children =>
               Control := Continue;

            when Abandon_Sibling =>
               Control := Continue;

               exit;

            when Terminate_Immediately =>
               exit;
         end case;
      end loop;
   end Visit_Model;

   ----------------
   -- Visit_Node --
   ----------------

   overriding procedure Visit_Node
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Nodes.UML_Node_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Node;

   -----------------------
   -- Visit_Object_Flow --
   -----------------------

   overriding procedure Visit_Object_Flow
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Object_Flows.UML_Object_Flow_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Object_Flow;

   ------------------------------------
   -- Visit_Occurrence_Specification --
   ------------------------------------

   overriding procedure Visit_Occurrence_Specification
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Occurrence_Specifications.UML_Occurrence_Specification_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Occurrence_Specification;

   -------------------------
   -- Visit_Opaque_Action --
   -------------------------

   overriding procedure Visit_Opaque_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Opaque_Actions.UML_Opaque_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Opaque_Action;

   ---------------------------
   -- Visit_Opaque_Behavior --
   ---------------------------

   overriding procedure Visit_Opaque_Behavior
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Opaque_Behaviors.UML_Opaque_Behavior_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Opaque_Behavior;

   -----------------------------
   -- Visit_Opaque_Expression --
   -----------------------------

   overriding procedure Visit_Opaque_Expression
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Opaque_Expressions.UML_Opaque_Expression_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Opaque_Expression;

   ---------------------
   -- Visit_Operation --
   ---------------------

   overriding procedure Visit_Operation
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Operations.UML_Operation_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Operation;

   ----------------------------------------
   -- Visit_Operation_Template_Parameter --
   ----------------------------------------

   overriding procedure Visit_Operation_Template_Parameter
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Operation_Template_Parameters.UML_Operation_Template_Parameter_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Operation_Template_Parameter;

   ----------------------
   -- Visit_Output_Pin --
   ----------------------

   overriding procedure Visit_Output_Pin
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Output_Pins.UML_Output_Pin_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Output_Pin;

   -------------------
   -- Visit_Package --
   -------------------

   overriding procedure Visit_Package
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Packages.UML_Package_Access;
     Control : in out Traverse_Control)
   is
      Packaged_Elements : constant
        AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element
          := Element.Get_Packaged_Element;

   begin
      for J in 1 .. Packaged_Elements.Length loop
         AMF.Visitors.Visit
          (Self,
           Visitor,
           AMF.Elements.Element_Access (Packaged_Elements.Element (J)),
           Control);

         case Control is
            when Continue =>
               null;

            when Abandon_Children =>
               Control := Continue;

            when Abandon_Sibling =>
               Control := Continue;

               exit;

            when Terminate_Immediately =>
               exit;
         end case;
      end loop;
   end Visit_Package;

   --------------------------
   -- Visit_Package_Import --
   --------------------------

   overriding procedure Visit_Package_Import
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Package_Imports.UML_Package_Import_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Package_Import;

   -------------------------
   -- Visit_Package_Merge --
   -------------------------

   overriding procedure Visit_Package_Merge
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Package_Merges.UML_Package_Merge_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Package_Merge;

   ---------------------
   -- Visit_Parameter --
   ---------------------

   overriding procedure Visit_Parameter
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Parameters.UML_Parameter_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Parameter;

   -------------------------
   -- Visit_Parameter_Set --
   -------------------------

   overriding procedure Visit_Parameter_Set
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Parameter_Sets.UML_Parameter_Set_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Parameter_Set;

   ------------------------------
   -- Visit_Part_Decomposition --
   ------------------------------

   overriding procedure Visit_Part_Decomposition
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Part_Decompositions.UML_Part_Decomposition_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Part_Decomposition;

   ----------------
   -- Visit_Port --
   ----------------

   overriding procedure Visit_Port
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Ports.UML_Port_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Port;

   --------------------------
   -- Visit_Primitive_Type --
   --------------------------

   overriding procedure Visit_Primitive_Type
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Primitive_Types.UML_Primitive_Type_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Primitive_Type;

   -------------------
   -- Visit_Profile --
   -------------------

   overriding procedure Visit_Profile
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Profiles.UML_Profile_Access;
     Control : in out Traverse_Control)
   is
      Packaged_Elements : constant
        AMF.UML.Packageable_Elements.Collections.Set_Of_UML_Packageable_Element
          := Element.Get_Packaged_Element;

   begin
      for J in 1 .. Packaged_Elements.Length loop
         AMF.Visitors.Visit
          (Self,
           Visitor,
           AMF.Elements.Element_Access (Packaged_Elements.Element (J)),
           Control);

         case Control is
            when Continue =>
               null;

            when Abandon_Children =>
               Control := Continue;

            when Abandon_Sibling =>
               Control := Continue;

               exit;

            when Terminate_Immediately =>
               exit;
         end case;
      end loop;
   end Visit_Profile;

   -------------------------------
   -- Visit_Profile_Application --
   -------------------------------

   overriding procedure Visit_Profile_Application
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Profile_Applications.UML_Profile_Application_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Profile_Application;

   --------------------
   -- Visit_Property --
   --------------------

   overriding procedure Visit_Property
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Properties.UML_Property_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Property;

   --------------------------------
   -- Visit_Protocol_Conformance --
   --------------------------------

   overriding procedure Visit_Protocol_Conformance
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Protocol_Conformances.UML_Protocol_Conformance_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Protocol_Conformance;

   ----------------------------------
   -- Visit_Protocol_State_Machine --
   ----------------------------------

   overriding procedure Visit_Protocol_State_Machine
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Protocol_State_Machines.UML_Protocol_State_Machine_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Protocol_State_Machine;

   -------------------------------
   -- Visit_Protocol_Transition --
   -------------------------------

   overriding procedure Visit_Protocol_Transition
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Protocol_Transitions.UML_Protocol_Transition_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Protocol_Transition;

   -----------------------
   -- Visit_Pseudostate --
   -----------------------

   overriding procedure Visit_Pseudostate
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Pseudostates.UML_Pseudostate_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Pseudostate;

   ---------------------------
   -- Visit_Qualifier_Value --
   ---------------------------

   overriding procedure Visit_Qualifier_Value
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Qualifier_Values.UML_Qualifier_Value_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Qualifier_Value;

   ----------------------------------
   -- Visit_Raise_Exception_Action --
   ----------------------------------

   overriding procedure Visit_Raise_Exception_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Raise_Exception_Actions.UML_Raise_Exception_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Raise_Exception_Action;

   ------------------------------
   -- Visit_Read_Extent_Action --
   ------------------------------

   overriding procedure Visit_Read_Extent_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Read_Extent_Actions.UML_Read_Extent_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Read_Extent_Action;

   --------------------------------------------
   -- Visit_Read_Is_Classified_Object_Action --
   --------------------------------------------

   overriding procedure Visit_Read_Is_Classified_Object_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Read_Is_Classified_Object_Actions.UML_Read_Is_Classified_Object_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Read_Is_Classified_Object_Action;

   ----------------------------
   -- Visit_Read_Link_Action --
   ----------------------------

   overriding procedure Visit_Read_Link_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Read_Link_Actions.UML_Read_Link_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Read_Link_Action;

   ---------------------------------------
   -- Visit_Read_Link_Object_End_Action --
   ---------------------------------------

   overriding procedure Visit_Read_Link_Object_End_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Read_Link_Object_End_Actions.UML_Read_Link_Object_End_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Read_Link_Object_End_Action;

   -------------------------------------------------
   -- Visit_Read_Link_Object_End_Qualifier_Action --
   -------------------------------------------------

   overriding procedure Visit_Read_Link_Object_End_Qualifier_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Read_Link_Object_End_Qualifier_Actions.UML_Read_Link_Object_End_Qualifier_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Read_Link_Object_End_Qualifier_Action;

   ----------------------------
   -- Visit_Read_Self_Action --
   ----------------------------

   overriding procedure Visit_Read_Self_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Read_Self_Actions.UML_Read_Self_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Read_Self_Action;

   ------------------------------------------
   -- Visit_Read_Structural_Feature_Action --
   ------------------------------------------

   overriding procedure Visit_Read_Structural_Feature_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Read_Structural_Feature_Actions.UML_Read_Structural_Feature_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Read_Structural_Feature_Action;

   --------------------------------
   -- Visit_Read_Variable_Action --
   --------------------------------

   overriding procedure Visit_Read_Variable_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Read_Variable_Actions.UML_Read_Variable_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Read_Variable_Action;

   -----------------------
   -- Visit_Realization --
   -----------------------

   overriding procedure Visit_Realization
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Realizations.UML_Realization_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Realization;

   ---------------------
   -- Visit_Reception --
   ---------------------

   overriding procedure Visit_Reception
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Receptions.UML_Reception_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Reception;

   ------------------------------------
   -- Visit_Reclassify_Object_Action --
   ------------------------------------

   overriding procedure Visit_Reclassify_Object_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Reclassify_Object_Actions.UML_Reclassify_Object_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Reclassify_Object_Action;

   ------------------------------------------
   -- Visit_Redefinable_Template_Signature --
   ------------------------------------------

   overriding procedure Visit_Redefinable_Template_Signature
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Redefinable_Template_Signature;

   -------------------------
   -- Visit_Reduce_Action --
   -------------------------

   overriding procedure Visit_Reduce_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Reduce_Actions.UML_Reduce_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Reduce_Action;

   ------------------
   -- Visit_Region --
   ------------------

   overriding procedure Visit_Region
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Regions.UML_Region_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Region;

   --------------------------------------------------
   -- Visit_Remove_Structural_Feature_Value_Action --
   --------------------------------------------------

   overriding procedure Visit_Remove_Structural_Feature_Value_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Remove_Structural_Feature_Value_Actions.UML_Remove_Structural_Feature_Value_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Remove_Structural_Feature_Value_Action;

   ----------------------------------------
   -- Visit_Remove_Variable_Value_Action --
   ----------------------------------------

   overriding procedure Visit_Remove_Variable_Value_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Remove_Variable_Value_Actions.UML_Remove_Variable_Value_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Remove_Variable_Value_Action;

   ------------------------
   -- Visit_Reply_Action --
   ------------------------

   overriding procedure Visit_Reply_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Reply_Actions.UML_Reply_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Reply_Action;

   ------------------------------
   -- Visit_Send_Object_Action --
   ------------------------------

   overriding procedure Visit_Send_Object_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Send_Object_Actions.UML_Send_Object_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Send_Object_Action;

   ------------------------------
   -- Visit_Send_Signal_Action --
   ------------------------------

   overriding procedure Visit_Send_Signal_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Send_Signal_Actions.UML_Send_Signal_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Send_Signal_Action;

   -------------------------
   -- Visit_Sequence_Node --
   -------------------------

   overriding procedure Visit_Sequence_Node
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Sequence_Nodes.UML_Sequence_Node_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Sequence_Node;

   ------------------
   -- Visit_Signal --
   ------------------

   overriding procedure Visit_Signal
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Signals.UML_Signal_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Signal;

   ------------------------
   -- Visit_Signal_Event --
   ------------------------

   overriding procedure Visit_Signal_Event
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Signal_Events.UML_Signal_Event_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Signal_Event;

   ----------------
   -- Visit_Slot --
   ----------------

   overriding procedure Visit_Slot
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Slots.UML_Slot_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Slot;

   --------------------------------------------
   -- Visit_Start_Classifier_Behavior_Action --
   --------------------------------------------

   overriding procedure Visit_Start_Classifier_Behavior_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Start_Classifier_Behavior_Actions.UML_Start_Classifier_Behavior_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Start_Classifier_Behavior_Action;

   ----------------------------------------
   -- Visit_Start_Object_Behavior_Action --
   ----------------------------------------

   overriding procedure Visit_Start_Object_Behavior_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Start_Object_Behavior_Actions.UML_Start_Object_Behavior_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Start_Object_Behavior_Action;

   -----------------
   -- Visit_State --
   -----------------

   overriding procedure Visit_State
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.States.UML_State_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_State;

   ---------------------------
   -- Visit_State_Invariant --
   ---------------------------

   overriding procedure Visit_State_Invariant
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.State_Invariants.UML_State_Invariant_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_State_Invariant;

   -------------------------
   -- Visit_State_Machine --
   -------------------------

   overriding procedure Visit_State_Machine
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.State_Machines.UML_State_Machine_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_State_Machine;

   ----------------------
   -- Visit_Stereotype --
   ----------------------

   overriding procedure Visit_Stereotype
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Stereotypes.UML_Stereotype_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Stereotype;

   -----------------------------
   -- Visit_String_Expression --
   -----------------------------

   overriding procedure Visit_String_Expression
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.String_Expressions.UML_String_Expression_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_String_Expression;

   ------------------------------------
   -- Visit_Structured_Activity_Node --
   ------------------------------------

   overriding procedure Visit_Structured_Activity_Node
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Structured_Activity_Nodes.UML_Structured_Activity_Node_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Structured_Activity_Node;

   ------------------------
   -- Visit_Substitution --
   ------------------------

   overriding procedure Visit_Substitution
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Substitutions.UML_Substitution_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Substitution;

   ----------------------------
   -- Visit_Template_Binding --
   ----------------------------

   overriding procedure Visit_Template_Binding
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Template_Bindings.UML_Template_Binding_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Template_Binding;

   ------------------------------
   -- Visit_Template_Parameter --
   ------------------------------

   overriding procedure Visit_Template_Parameter
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Template_Parameters.UML_Template_Parameter_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Template_Parameter;

   -------------------------------------------
   -- Visit_Template_Parameter_Substitution --
   -------------------------------------------

   overriding procedure Visit_Template_Parameter_Substitution
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Template_Parameter_Substitutions.UML_Template_Parameter_Substitution_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Template_Parameter_Substitution;

   ------------------------------
   -- Visit_Template_Signature --
   ------------------------------

   overriding procedure Visit_Template_Signature
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Template_Signatures.UML_Template_Signature_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Template_Signature;

   --------------------------------
   -- Visit_Test_Identity_Action --
   --------------------------------

   overriding procedure Visit_Test_Identity_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Test_Identity_Actions.UML_Test_Identity_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Test_Identity_Action;

   ---------------------------
   -- Visit_Time_Constraint --
   ---------------------------

   overriding procedure Visit_Time_Constraint
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Time_Constraints.UML_Time_Constraint_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Time_Constraint;

   ----------------------
   -- Visit_Time_Event --
   ----------------------

   overriding procedure Visit_Time_Event
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Time_Events.UML_Time_Event_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Time_Event;

   ---------------------------
   -- Visit_Time_Expression --
   ---------------------------

   overriding procedure Visit_Time_Expression
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Time_Expressions.UML_Time_Expression_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Time_Expression;

   -------------------------
   -- Visit_Time_Interval --
   -------------------------

   overriding procedure Visit_Time_Interval
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Time_Intervals.UML_Time_Interval_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Time_Interval;

   ----------------------------
   -- Visit_Time_Observation --
   ----------------------------

   overriding procedure Visit_Time_Observation
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Time_Observations.UML_Time_Observation_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Time_Observation;

   ----------------------
   -- Visit_Transition --
   ----------------------

   overriding procedure Visit_Transition
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Transitions.UML_Transition_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Transition;

   -------------------
   -- Visit_Trigger --
   -------------------

   overriding procedure Visit_Trigger
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Triggers.UML_Trigger_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Trigger;

   -----------------------------
   -- Visit_Unmarshall_Action --
   -----------------------------

   overriding procedure Visit_Unmarshall_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Unmarshall_Actions.UML_Unmarshall_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Unmarshall_Action;

   -----------------
   -- Visit_Usage --
   -----------------

   overriding procedure Visit_Usage
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Usages.UML_Usage_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Usage;

   --------------------
   -- Visit_Use_Case --
   --------------------

   overriding procedure Visit_Use_Case
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Use_Cases.UML_Use_Case_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Use_Case;

   ---------------------
   -- Visit_Value_Pin --
   ---------------------

   overriding procedure Visit_Value_Pin
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Value_Pins.UML_Value_Pin_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Value_Pin;

   --------------------------------------
   -- Visit_Value_Specification_Action --
   --------------------------------------

   overriding procedure Visit_Value_Specification_Action
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Value_Specification_Actions.UML_Value_Specification_Action_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Value_Specification_Action;

   --------------------
   -- Visit_Variable --
   --------------------

   overriding procedure Visit_Variable
    (Self    : in out UML_Containment_Iterator;
     Visitor : in out AMF.Visitors.Abstract_Visitor'Class;
     Element : not null AMF.UML.Variables.UML_Variable_Access;
     Control : in out Traverse_Control) is
   begin
      null;
   end Visit_Variable;

end AMF.Visitors.Generic_UML_Containment;
