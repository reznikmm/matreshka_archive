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
with AMF.UML;
with AMF.Internals.UML_Abstractions;
with AMF.Internals.UML_Accept_Call_Actions;
with AMF.Internals.UML_Accept_Event_Actions;
with AMF.Internals.UML_Action_Execution_Specifications;
with AMF.Internals.UML_Action_Input_Pins;
with AMF.Internals.UML_Activities;
with AMF.Internals.UML_Activity_Final_Nodes;
with AMF.Internals.UML_Activity_Parameter_Nodes;
with AMF.Internals.UML_Activity_Partitions;
with AMF.Internals.UML_Actors;
with AMF.Internals.UML_Add_Structural_Feature_Value_Actions;
with AMF.Internals.UML_Add_Variable_Value_Actions;
with AMF.Internals.UML_Any_Receive_Events;
with AMF.Internals.UML_Artifacts;
with AMF.Internals.UML_Associations;
with AMF.Internals.UML_Association_Classes;
with AMF.Internals.UML_Behavior_Execution_Specifications;
with AMF.Internals.UML_Broadcast_Signal_Actions;
with AMF.Internals.UML_Call_Behavior_Actions;
with AMF.Internals.UML_Call_Events;
with AMF.Internals.UML_Call_Operation_Actions;
with AMF.Internals.UML_Central_Buffer_Nodes;
with AMF.Internals.UML_Change_Events;
with AMF.Internals.UML_Classes;
with AMF.Internals.UML_Classifier_Template_Parameters;
with AMF.Internals.UML_Clauses;
with AMF.Internals.UML_Clear_Association_Actions;
with AMF.Internals.UML_Clear_Structural_Feature_Actions;
with AMF.Internals.UML_Clear_Variable_Actions;
with AMF.Internals.UML_Collaborations;
with AMF.Internals.UML_Collaboration_Uses;
with AMF.Internals.UML_Combined_Fragments;
with AMF.Internals.UML_Comments;
with AMF.Internals.UML_Communication_Paths;
with AMF.Internals.UML_Components;
with AMF.Internals.UML_Component_Realizations;
with AMF.Internals.UML_Conditional_Nodes;
with AMF.Internals.UML_Connectable_Element_Template_Parameters;
with AMF.Internals.UML_Connection_Point_References;
with AMF.Internals.UML_Connectors;
with AMF.Internals.UML_Connector_Ends;
with AMF.Internals.UML_Consider_Ignore_Fragments;
with AMF.Internals.UML_Constraints;
with AMF.Internals.UML_Continuations;
with AMF.Internals.UML_Control_Flows;
with AMF.Internals.UML_Create_Link_Actions;
with AMF.Internals.UML_Create_Link_Object_Actions;
with AMF.Internals.UML_Create_Object_Actions;
with AMF.Internals.UML_Data_Store_Nodes;
with AMF.Internals.UML_Data_Types;
with AMF.Internals.UML_Decision_Nodes;
with AMF.Internals.UML_Dependencies;
with AMF.Internals.UML_Deployments;
with AMF.Internals.UML_Deployment_Specifications;
with AMF.Internals.UML_Destroy_Link_Actions;
with AMF.Internals.UML_Destroy_Object_Actions;
with AMF.Internals.UML_Destruction_Occurrence_Specifications;
with AMF.Internals.UML_Devices;
with AMF.Internals.UML_Durations;
with AMF.Internals.UML_Duration_Constraints;
with AMF.Internals.UML_Duration_Intervals;
with AMF.Internals.UML_Duration_Observations;
with AMF.Internals.UML_Element_Imports;
with AMF.Internals.UML_Enumerations;
with AMF.Internals.UML_Enumeration_Literals;
with AMF.Internals.UML_Exception_Handlers;
with AMF.Internals.UML_Execution_Environments;
with AMF.Internals.UML_Execution_Occurrence_Specifications;
with AMF.Internals.UML_Expansion_Nodes;
with AMF.Internals.UML_Expansion_Regions;
with AMF.Internals.UML_Expressions;
with AMF.Internals.UML_Extends;
with AMF.Internals.UML_Extensions;
with AMF.Internals.UML_Extension_Ends;
with AMF.Internals.UML_Extension_Points;
with AMF.Internals.UML_Final_States;
with AMF.Internals.UML_Flow_Final_Nodes;
with AMF.Internals.UML_Fork_Nodes;
with AMF.Internals.UML_Function_Behaviors;
with AMF.Internals.UML_Gates;
with AMF.Internals.UML_General_Orderings;
with AMF.Internals.UML_Generalizations;
with AMF.Internals.UML_Generalization_Sets;
with AMF.Internals.UML_Images;
with AMF.Internals.UML_Includes;
with AMF.Internals.UML_Information_Flows;
with AMF.Internals.UML_Information_Items;
with AMF.Internals.UML_Initial_Nodes;
with AMF.Internals.UML_Input_Pins;
with AMF.Internals.UML_Instance_Specifications;
with AMF.Internals.UML_Instance_Values;
with AMF.Internals.UML_Interactions;
with AMF.Internals.UML_Interaction_Constraints;
with AMF.Internals.UML_Interaction_Operands;
with AMF.Internals.UML_Interaction_Uses;
with AMF.Internals.UML_Interfaces;
with AMF.Internals.UML_Interface_Realizations;
with AMF.Internals.UML_Interruptible_Activity_Regions;
with AMF.Internals.UML_Intervals;
with AMF.Internals.UML_Interval_Constraints;
with AMF.Internals.UML_Join_Nodes;
with AMF.Internals.UML_Lifelines;
with AMF.Internals.UML_Link_End_Creation_Datas;
with AMF.Internals.UML_Link_End_Datas;
with AMF.Internals.UML_Link_End_Destruction_Datas;
with AMF.Internals.UML_Literal_Booleans;
with AMF.Internals.UML_Literal_Integers;
with AMF.Internals.UML_Literal_Nulls;
with AMF.Internals.UML_Literal_Reals;
with AMF.Internals.UML_Literal_Strings;
with AMF.Internals.UML_Literal_Unlimited_Naturals;
with AMF.Internals.UML_Loop_Nodes;
with AMF.Internals.UML_Manifestations;
with AMF.Internals.UML_Merge_Nodes;
with AMF.Internals.UML_Messages;
with AMF.Internals.UML_Message_Occurrence_Specifications;
with AMF.Internals.UML_Models;
with AMF.Internals.UML_Nodes;
with AMF.Internals.UML_Object_Flows;
with AMF.Internals.UML_Occurrence_Specifications;
with AMF.Internals.UML_Opaque_Actions;
with AMF.Internals.UML_Opaque_Behaviors;
with AMF.Internals.UML_Opaque_Expressions;
with AMF.Internals.UML_Operations;
with AMF.Internals.UML_Operation_Template_Parameters;
with AMF.Internals.UML_Output_Pins;
with AMF.Internals.UML_Packages;
with AMF.Internals.UML_Package_Imports;
with AMF.Internals.UML_Package_Merges;
with AMF.Internals.UML_Parameters;
with AMF.Internals.UML_Parameter_Sets;
with AMF.Internals.UML_Part_Decompositions;
with AMF.Internals.UML_Ports;
with AMF.Internals.UML_Primitive_Types;
with AMF.Internals.UML_Profiles;
with AMF.Internals.UML_Profile_Applications;
with AMF.Internals.UML_Properties;
with AMF.Internals.UML_Protocol_Conformances;
with AMF.Internals.UML_Protocol_State_Machines;
with AMF.Internals.UML_Protocol_Transitions;
with AMF.Internals.UML_Pseudostates;
with AMF.Internals.UML_Qualifier_Values;
with AMF.Internals.UML_Raise_Exception_Actions;
with AMF.Internals.UML_Read_Extent_Actions;
with AMF.Internals.UML_Read_Is_Classified_Object_Actions;
with AMF.Internals.UML_Read_Link_Actions;
with AMF.Internals.UML_Read_Link_Object_End_Actions;
with AMF.Internals.UML_Read_Link_Object_End_Qualifier_Actions;
with AMF.Internals.UML_Read_Self_Actions;
with AMF.Internals.UML_Read_Structural_Feature_Actions;
with AMF.Internals.UML_Read_Variable_Actions;
with AMF.Internals.UML_Realizations;
with AMF.Internals.UML_Receptions;
with AMF.Internals.UML_Reclassify_Object_Actions;
with AMF.Internals.UML_Redefinable_Template_Signatures;
with AMF.Internals.UML_Reduce_Actions;
with AMF.Internals.UML_Regions;
with AMF.Internals.UML_Remove_Structural_Feature_Value_Actions;
with AMF.Internals.UML_Remove_Variable_Value_Actions;
with AMF.Internals.UML_Reply_Actions;
with AMF.Internals.UML_Send_Object_Actions;
with AMF.Internals.UML_Send_Signal_Actions;
with AMF.Internals.UML_Sequence_Nodes;
with AMF.Internals.UML_Signals;
with AMF.Internals.UML_Signal_Events;
with AMF.Internals.UML_Slots;
with AMF.Internals.UML_Start_Classifier_Behavior_Actions;
with AMF.Internals.UML_Start_Object_Behavior_Actions;
with AMF.Internals.UML_States;
with AMF.Internals.UML_State_Invariants;
with AMF.Internals.UML_State_Machines;
with AMF.Internals.UML_Stereotypes;
with AMF.Internals.UML_String_Expressions;
with AMF.Internals.UML_Structured_Activity_Nodes;
with AMF.Internals.UML_Substitutions;
with AMF.Internals.UML_Template_Bindings;
with AMF.Internals.UML_Template_Parameters;
with AMF.Internals.UML_Template_Parameter_Substitutions;
with AMF.Internals.UML_Template_Signatures;
with AMF.Internals.UML_Test_Identity_Actions;
with AMF.Internals.UML_Time_Constraints;
with AMF.Internals.UML_Time_Events;
with AMF.Internals.UML_Time_Expressions;
with AMF.Internals.UML_Time_Intervals;
with AMF.Internals.UML_Time_Observations;
with AMF.Internals.UML_Transitions;
with AMF.Internals.UML_Triggers;
with AMF.Internals.UML_Unmarshall_Actions;
with AMF.Internals.UML_Usages;
with AMF.Internals.UML_Use_Cases;
with AMF.Internals.UML_Value_Pins;
with AMF.Internals.UML_Value_Specification_Actions;
with AMF.Internals.UML_Variables;
with AMF.Internals.Element_Collections;
with AMF.Internals.Tables.UML_Element_Table;
with AMF.Internals.Tables.UML_Metamodel;
with AMF.Internals.Tables.UML_Types;
with Matreshka.Internals.Strings;

package body AMF.Internals.Tables.UML_Constructors is

   use AMF.Internals.Tables;
   use AMF.Internals.Tables.UML_Metamodel;
   use AMF.Internals.Tables.UML_Types;
   use type AMF.Internals.AMF_Collection_Of_Element;

   ------------------------
   -- Create_Abstraction --
   ------------------------

   function Create_Abstraction return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Abstraction,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Abstractions.UML_Abstraction_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  mapping
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (8));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  client

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Dependency_Client,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  supplier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Dependency_Supplier,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      return Self;
   end Create_Abstraction;

   -------------------------------
   -- Create_Accept_Call_Action --
   -------------------------------

   function Create_Accept_Call_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Accept_Call_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Accept_Call_Actions.UML_Accept_Call_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Boolean, False),
                       --  isUnmarshall
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  returnInformation
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (18));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  result

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Accept_Event_Action_Result,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  trigger

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Accept_Event_Action_Trigger,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      return Self;
   end Create_Accept_Call_Action;

   --------------------------------
   -- Create_Accept_Event_Action --
   --------------------------------

   function Create_Accept_Event_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Accept_Event_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Accept_Event_Actions.UML_Accept_Event_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Boolean, False),
                       --  isUnmarshall
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (18));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  result

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Accept_Event_Action_Result,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  trigger

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Accept_Event_Action_Trigger,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      return Self;
   end Create_Accept_Event_Action;

   -------------------------------------------
   -- Create_Action_Execution_Specification --
   -------------------------------------------

   function Create_Action_Execution_Specification return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Action_Execution_Specification,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Action_Execution_Specifications.UML_Action_Execution_Specification_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingInteraction
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingOperand
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  finish
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  start
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  action
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (5));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  covered

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_Covered,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  generalOrdering

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_General_Ordering,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      return Self;
   end Create_Action_Execution_Specification;

   -----------------------------
   -- Create_Action_Input_Pin --
   -----------------------------

   function Create_Action_Input_Pin return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Action_Input_Pin,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Action_Input_Pins.UML_Action_Input_Pin_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     11     => (M_Boolean, False),
                       --  isControlType
                     12     => (M_Object_Node_Ordering_Kind, AMF.UML.FIFO),
                       --  ordering
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  selection
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  upperBound
                     15     => (M_Boolean, False),
                       --  isOrdered
                     16     => (M_Boolean, True),
                       --  isUnique
                     17     => (M_Integer_Holder, (False, 1)),
                       --  lower
                     18     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  lowerValue
                     19     =>
                      (M_Unlimited_Natural_Holder, (False, (False, 1))),
                       --  upper
                     20     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  upperValue
                     21     => (M_Boolean, False),
                       --  isControl
                     22     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  fromAction
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (12));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  inState

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Object_Node_In_State,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Action_Input_Pin;

   ---------------------
   -- Create_Activity --
   ---------------------

   function Create_Activity return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Activity,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Activities.UML_Activity_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  classifierBehavior
                     16     => (M_Boolean, False),
                       --  isActive
                     17     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     18     => (M_Boolean, True),
                       --  isReentrant
                     19     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  specification
                     20     => (M_Boolean, False),
                       --  isReadOnly
                     21     => (M_Boolean, False),
                       --  isSingleExecution
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (45));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  interfaceRealization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Interface_Realization,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Owned_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  ownedConnector

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Connector,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  part

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Part,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  role

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Role,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      --  ownedPort

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Encapsulated_Classifier_Owned_Port,
        UML_Element_Table.Table (Self).Member (0).Collection + 30);

      --  extension

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Extension,
        UML_Element_Table.Table (Self).Member (0).Collection + 31);

      --  nestedClassifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Nested_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 32);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Owned_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 33);

      --  ownedReception

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Owned_Reception,
        UML_Element_Table.Table (Self).Member (0).Collection + 34);

      --  ownedParameter

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Behavior_Owned_Parameter,
        UML_Element_Table.Table (Self).Member (0).Collection + 35);

      --  ownedParameterSet

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Owned_Parameter_Set,
        UML_Element_Table.Table (Self).Member (0).Collection + 36);

      --  postcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 37);

      --  precondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 38);

      --  redefinedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Redefined_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 39);

      --  edge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Edge,
        UML_Element_Table.Table (Self).Member (0).Collection + 40);

      --  group

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 41);

      --  node

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 42);

      --  partition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 43);

      --  structuredNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Structured_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 44);

      --  variable

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Variable,
        UML_Element_Table.Table (Self).Member (0).Collection + 45);

      return Self;
   end Create_Activity;

   --------------------------------
   -- Create_Activity_Final_Node --
   --------------------------------

   function Create_Activity_Final_Node return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Activity_Final_Node,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Activity_Final_Nodes.UML_Activity_Final_Node_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (11));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      return Self;
   end Create_Activity_Final_Node;

   ------------------------------------
   -- Create_Activity_Parameter_Node --
   ------------------------------------

   function Create_Activity_Parameter_Node return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Activity_Parameter_Node,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Activity_Parameter_Nodes.UML_Activity_Parameter_Node_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     11     => (M_Boolean, False),
                       --  isControlType
                     12     => (M_Object_Node_Ordering_Kind, AMF.UML.FIFO),
                       --  ordering
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  selection
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  upperBound
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  parameter
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (12));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  inState

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Object_Node_In_State,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Activity_Parameter_Node;

   -------------------------------
   -- Create_Activity_Partition --
   -------------------------------

   function Create_Activity_Partition return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Activity_Partition,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Activity_Partitions.UML_Activity_Partition_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inActivity
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  superGroup
                     9      => (M_Boolean, False),
                       --  isDimension
                     10     => (M_Boolean, False),
                       --  isExternal
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  represents
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  superPartition
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (9));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  containedEdge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Contained_Edge,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  containedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Contained_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  subgroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Subgroup,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  edge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Partition_Edge,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  node

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Partition_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  subpartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Partition_Subpartition,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      return Self;
   end Create_Activity_Partition;

   ------------------
   -- Create_Actor --
   ------------------

   function Create_Actor return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Actor,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Actors.UML_Actor_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  classifierBehavior
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (25));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  interfaceRealization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Interface_Realization,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Owned_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      return Self;
   end Create_Actor;

   ------------------------------------------------
   -- Create_Add_Structural_Feature_Value_Action --
   ------------------------------------------------

   function Create_Add_Structural_Feature_Value_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Add_Structural_Feature_Value_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Add_Structural_Feature_Value_Actions.UML_Add_Structural_Feature_Value_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  object
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  structuralFeature
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  result
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  value
                     16     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  insertAt
                     17     => (M_Boolean, False),
                       --  isReplaceAll
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Add_Structural_Feature_Value_Action;

   --------------------------------------
   -- Create_Add_Variable_Value_Action --
   --------------------------------------

   function Create_Add_Variable_Value_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Add_Variable_Value_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Add_Variable_Value_Actions.UML_Add_Variable_Value_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  variable
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  value
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  insertAt
                     15     => (M_Boolean, False),
                       --  isReplaceAll
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Add_Variable_Value_Action;

   ------------------------------
   -- Create_Any_Receive_Event --
   ------------------------------

   function Create_Any_Receive_Event return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Any_Receive_Event,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Any_Receive_Events.UML_Any_Receive_Event_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Any_Receive_Event;

   ---------------------
   -- Create_Artifact --
   ---------------------

   function Create_Artifact return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Artifact,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Artifacts.UML_Artifact_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_String, null),
                       --  fileName
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (27));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  manifestation

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Artifact_Manifestation,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  nestedArtifact

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Artifact_Nested_Artifact,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Artifact_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Artifact_Owned_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      return Self;
   end Create_Artifact;

   ------------------------
   -- Create_Association --
   ------------------------

   function Create_Association return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Association,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Associations.UML_Association_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Boolean, False),
                       --  isDerived
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (28));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  endType

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Association_End_Type,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  memberEnd

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Association_Member_End,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  navigableOwnedEnd

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Association_Navigable_Owned_End,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  ownedEnd

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Association_Owned_End,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      return Self;
   end Create_Association;

   ------------------------------
   -- Create_Association_Class --
   ------------------------------

   function Create_Association_Class return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Association_Class,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Association_Classes.UML_Association_Class_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Boolean, False),
                       --  isDerived
                     16     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  classifierBehavior
                     17     => (M_Boolean, False),
                       --  isActive
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (39));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  endType

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Association_End_Type,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  memberEnd

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Association_Member_End,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  navigableOwnedEnd

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Association_Navigable_Owned_End,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  ownedEnd

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Association_Owned_End,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  interfaceRealization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Interface_Realization,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      --  ownedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Owned_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 30);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 31);

      --  ownedConnector

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Connector,
        UML_Element_Table.Table (Self).Member (0).Collection + 32);

      --  part

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Part,
        UML_Element_Table.Table (Self).Member (0).Collection + 33);

      --  role

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Role,
        UML_Element_Table.Table (Self).Member (0).Collection + 34);

      --  ownedPort

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Encapsulated_Classifier_Owned_Port,
        UML_Element_Table.Table (Self).Member (0).Collection + 35);

      --  extension

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Extension,
        UML_Element_Table.Table (Self).Member (0).Collection + 36);

      --  nestedClassifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Nested_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 37);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Owned_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 38);

      --  ownedReception

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Owned_Reception,
        UML_Element_Table.Table (Self).Member (0).Collection + 39);

      return Self;
   end Create_Association_Class;

   ---------------------------------------------
   -- Create_Behavior_Execution_Specification --
   ---------------------------------------------

   function Create_Behavior_Execution_Specification return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Behavior_Execution_Specification,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Behavior_Execution_Specifications.UML_Behavior_Execution_Specification_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingInteraction
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingOperand
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  finish
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  start
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  behavior
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (5));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  covered

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_Covered,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  generalOrdering

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_General_Ordering,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      return Self;
   end Create_Behavior_Execution_Specification;

   ------------------------------------
   -- Create_Broadcast_Signal_Action --
   ------------------------------------

   function Create_Broadcast_Signal_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Broadcast_Signal_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Broadcast_Signal_Actions.UML_Broadcast_Signal_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  onPort
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  signal
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (17));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  argument

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Invocation_Action_Argument,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      return Self;
   end Create_Broadcast_Signal_Action;

   ---------------------------------
   -- Create_Call_Behavior_Action --
   ---------------------------------

   function Create_Call_Behavior_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Call_Behavior_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Call_Behavior_Actions.UML_Call_Behavior_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  onPort
                     13     => (M_Boolean, True),
                       --  isSynchronous
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  behavior
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (18));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  argument

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Invocation_Action_Argument,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  result

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Call_Action_Result,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      return Self;
   end Create_Call_Behavior_Action;

   -----------------------
   -- Create_Call_Event --
   -----------------------

   function Create_Call_Event return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Call_Event,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Call_Events.UML_Call_Event_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  operation
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Call_Event;

   ----------------------------------
   -- Create_Call_Operation_Action --
   ----------------------------------

   function Create_Call_Operation_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Call_Operation_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Call_Operation_Actions.UML_Call_Operation_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  onPort
                     13     => (M_Boolean, True),
                       --  isSynchronous
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  operation
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  target
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (18));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  argument

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Invocation_Action_Argument,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  result

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Call_Action_Result,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      return Self;
   end Create_Call_Operation_Action;

   --------------------------------
   -- Create_Central_Buffer_Node --
   --------------------------------

   function Create_Central_Buffer_Node return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Central_Buffer_Node,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Central_Buffer_Nodes.UML_Central_Buffer_Node_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     11     => (M_Boolean, False),
                       --  isControlType
                     12     => (M_Object_Node_Ordering_Kind, AMF.UML.FIFO),
                       --  ordering
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  selection
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  upperBound
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (12));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  inState

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Object_Node_In_State,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Central_Buffer_Node;

   -------------------------
   -- Create_Change_Event --
   -------------------------

   function Create_Change_Event return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Change_Event,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Change_Events.UML_Change_Event_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  changeExpression
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Change_Event;

   ------------------
   -- Create_Class --
   ------------------

   function Create_Class return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Class,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Classes.UML_Class_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  classifierBehavior
                     16     => (M_Boolean, False),
                       --  isActive
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (34));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  interfaceRealization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Interface_Realization,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Owned_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  ownedConnector

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Connector,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  part

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Part,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  role

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Role,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      --  ownedPort

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Encapsulated_Classifier_Owned_Port,
        UML_Element_Table.Table (Self).Member (0).Collection + 30);

      --  extension

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Extension,
        UML_Element_Table.Table (Self).Member (0).Collection + 31);

      --  nestedClassifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Nested_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 32);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Owned_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 33);

      --  ownedReception

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Owned_Reception,
        UML_Element_Table.Table (Self).Member (0).Collection + 34);

      return Self;
   end Create_Class;

   ------------------------------------------
   -- Create_Classifier_Template_Parameter --
   ------------------------------------------

   function Create_Classifier_Template_Parameter return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Classifier_Template_Parameter,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Classifier_Template_Parameters.UML_Classifier_Template_Parameter_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  default
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedDefault
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedParameteredElement
                     5      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  parameteredElement
                     6      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  signature
                     7      => (M_Boolean, True),
                       --  allowSubstitutable
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  constrainingClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Template_Parameter_Constraining_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Classifier_Template_Parameter;

   -------------------
   -- Create_Clause --
   -------------------

   function Create_Clause return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Clause,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Clauses.UML_Clause_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  decider
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  body

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Clause_Body,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  bodyOutput

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Clause_Body_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  predecessorClause

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Clause_Predecessor_Clause,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  successorClause

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Clause_Successor_Clause,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  test

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Clause_Test,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      return Self;
   end Create_Clause;

   -------------------------------------
   -- Create_Clear_Association_Action --
   -------------------------------------

   function Create_Clear_Association_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Clear_Association_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Clear_Association_Actions.UML_Clear_Association_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  association
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  object
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Clear_Association_Action;

   --------------------------------------------
   -- Create_Clear_Structural_Feature_Action --
   --------------------------------------------

   function Create_Clear_Structural_Feature_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Clear_Structural_Feature_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Clear_Structural_Feature_Actions.UML_Clear_Structural_Feature_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  object
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  structuralFeature
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  result
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Clear_Structural_Feature_Action;

   ----------------------------------
   -- Create_Clear_Variable_Action --
   ----------------------------------

   function Create_Clear_Variable_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Clear_Variable_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Clear_Variable_Actions.UML_Clear_Variable_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  variable
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Clear_Variable_Action;

   --------------------------
   -- Create_Collaboration --
   --------------------------

   function Create_Collaboration return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Collaboration,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Collaborations.UML_Collaboration_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  classifierBehavior
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (30));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  interfaceRealization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Interface_Realization,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Owned_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  ownedConnector

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Connector,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  part

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Part,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  role

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Role,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      --  collaborationRole

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Collaboration_Collaboration_Role,
        UML_Element_Table.Table (Self).Member (0).Collection + 30);

      return Self;
   end Create_Collaboration;

   ------------------------------
   -- Create_Collaboration_Use --
   ------------------------------

   function Create_Collaboration_Use return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Collaboration_Use,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Collaboration_Uses.UML_Collaboration_Use_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (4));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  roleBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Collaboration_Use_Role_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Collaboration_Use;

   ------------------------------
   -- Create_Combined_Fragment --
   ------------------------------

   function Create_Combined_Fragment return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Combined_Fragment,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Combined_Fragments.UML_Combined_Fragment_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingInteraction
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingOperand
                     9      => (M_Interaction_Operator_Kind, AMF.UML.Seq_Operator),
                       --  interactionOperator
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  covered

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_Covered,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  generalOrdering

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_General_Ordering,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  cfragmentGate

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Combined_Fragment_Cfragment_Gate,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  operand

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Combined_Fragment_Operand,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      return Self;
   end Create_Combined_Fragment;

   --------------------
   -- Create_Comment --
   --------------------

   function Create_Comment return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Comment,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Comments.UML_Comment_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  body
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  annotatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Comment_Annotated_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Comment;

   -------------------------------
   -- Create_Communication_Path --
   -------------------------------

   function Create_Communication_Path return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Communication_Path,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Communication_Paths.UML_Communication_Path_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Boolean, False),
                       --  isDerived
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (28));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  endType

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Association_End_Type,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  memberEnd

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Association_Member_End,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  navigableOwnedEnd

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Association_Navigable_Owned_End,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  ownedEnd

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Association_Owned_End,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      return Self;
   end Create_Communication_Path;

   ----------------------
   -- Create_Component --
   ----------------------

   function Create_Component return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Component,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Components.UML_Component_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  classifierBehavior
                     16     => (M_Boolean, False),
                       --  isActive
                     17     => (M_Boolean, True),
                       --  isIndirectlyInstantiated
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (38));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  interfaceRealization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Interface_Realization,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Owned_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  ownedConnector

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Connector,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  part

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Part,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  role

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Role,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      --  ownedPort

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Encapsulated_Classifier_Owned_Port,
        UML_Element_Table.Table (Self).Member (0).Collection + 30);

      --  extension

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Extension,
        UML_Element_Table.Table (Self).Member (0).Collection + 31);

      --  nestedClassifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Nested_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 32);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Owned_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 33);

      --  ownedReception

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Owned_Reception,
        UML_Element_Table.Table (Self).Member (0).Collection + 34);

      --  packagedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Component_Packaged_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 35);

      --  provided

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Component_Provided,
        UML_Element_Table.Table (Self).Member (0).Collection + 36);

      --  realization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Component_Realization,
        UML_Element_Table.Table (Self).Member (0).Collection + 37);

      --  required

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Component_Required,
        UML_Element_Table.Table (Self).Member (0).Collection + 38);

      return Self;
   end Create_Component;

   ----------------------------------
   -- Create_Component_Realization --
   ----------------------------------

   function Create_Component_Realization return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Component_Realization,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Component_Realizations.UML_Component_Realization_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  mapping
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  abstraction
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (9));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  client

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Dependency_Client,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  supplier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Dependency_Supplier,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  realizingClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Component_Realization_Realizing_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      return Self;
   end Create_Component_Realization;

   -----------------------------
   -- Create_Conditional_Node --
   -----------------------------

   function Create_Conditional_Node return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Conditional_Node,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Conditional_Nodes.UML_Conditional_Node_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inActivity
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  superGroup
                     9      => (M_Boolean, False),
                       --  isLeaf
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     13     => (M_Boolean, False),
                       --  isLocallyReentrant
                     14     => (M_Boolean, False),
                       --  mustIsolate
                     15     => (M_Boolean, False),
                       --  isAssured
                     16     => (M_Boolean, False),
                       --  isDeterminate
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (31));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  containedEdge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Contained_Edge,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  containedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Contained_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  subgroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Subgroup,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  edge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Edge,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  node

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  structuredNodeInput

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Structured_Node_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  structuredNodeOutput

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Structured_Node_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      --  variable

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Variable,
        UML_Element_Table.Table (Self).Member (0).Collection + 30);

      --  clause

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Conditional_Node_Clause,
        UML_Element_Table.Table (Self).Member (0).Collection + 31);

      return Self;
   end Create_Conditional_Node;

   ---------------------------------------------------
   -- Create_Connectable_Element_Template_Parameter --
   ---------------------------------------------------

   function Create_Connectable_Element_Template_Parameter return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Connectable_Element_Template_Parameter,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Connectable_Element_Template_Parameters.UML_Connectable_Element_Template_Parameter_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  default
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedDefault
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedParameteredElement
                     5      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  parameteredElement
                     6      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  signature
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (2));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_Connectable_Element_Template_Parameter;

   ---------------------------------------
   -- Create_Connection_Point_Reference --
   ---------------------------------------

   function Create_Connection_Point_Reference return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Connection_Point_Reference,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Connection_Point_References.UML_Connection_Point_Reference_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  container
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  state
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Vertex_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Vertex_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  entry

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Connection_Point_Reference_Entry,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  exit

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Connection_Point_Reference_Exit,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      return Self;
   end Create_Connection_Point_Reference;

   ----------------------
   -- Create_Connector --
   ----------------------

   function Create_Connector return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Connector,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Connectors.UML_Connector_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Boolean, False),
                       --  isStatic
                     9      => (M_Connector_Kind, AMF.UML.Assembly),
                       --  kind
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (9));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  featuringClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Feature_Featuring_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  contract

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Connector_Contract,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  end

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Connector_End,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  redefinedConnector

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Connector_Redefined_Connector,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      return Self;
   end Create_Connector;

   --------------------------
   -- Create_Connector_End --
   --------------------------

   function Create_Connector_End return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Connector_End,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Connector_Ends.UML_Connector_End_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Boolean, False),
                       --  isOrdered
                     3      => (M_Boolean, True),
                       --  isUnique
                     4      => (M_Integer_Holder, (False, 1)),
                       --  lower
                     5      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  lowerValue
                     6      =>
                      (M_Unlimited_Natural_Holder, (False, (False, 1))),
                       --  upper
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  upperValue
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  definingEnd
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  partWithPort
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  role
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (2));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_Connector_End;

   -------------------------------------
   -- Create_Consider_Ignore_Fragment --
   -------------------------------------

   function Create_Consider_Ignore_Fragment return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Consider_Ignore_Fragment,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Consider_Ignore_Fragments.UML_Consider_Ignore_Fragment_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingInteraction
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingOperand
                     9      => (M_Interaction_Operator_Kind, AMF.UML.Seq_Operator),
                       --  interactionOperator
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (8));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  covered

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_Covered,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  generalOrdering

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_General_Ordering,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  cfragmentGate

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Combined_Fragment_Cfragment_Gate,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  operand

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Combined_Fragment_Operand,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  message

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Consider_Ignore_Fragment_Message,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      return Self;
   end Create_Consider_Ignore_Fragment;

   -----------------------
   -- Create_Constraint --
   -----------------------

   function Create_Constraint return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Constraint,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Constraints.UML_Constraint_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  specification
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (4));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  constrainedElement

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Constraint_Constrained_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Constraint;

   -------------------------
   -- Create_Continuation --
   -------------------------

   function Create_Continuation return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Continuation,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Continuations.UML_Continuation_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingInteraction
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingOperand
                     9      => (M_Boolean, True),
                       --  setting
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (5));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  covered

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_Covered,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  generalOrdering

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_General_Ordering,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      return Self;
   end Create_Continuation;

   -------------------------
   -- Create_Control_Flow --
   -------------------------

   function Create_Control_Flow return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Control_Flow,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Control_Flows.UML_Control_Flow_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  guard
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  interrupts
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  source
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  target
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  weight
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (8));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Edge_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Edge_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  redefinedEdge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Edge_Redefined_Edge,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      return Self;
   end Create_Control_Flow;

   -------------------------------
   -- Create_Create_Link_Action --
   -------------------------------

   function Create_Create_Link_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Create_Link_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Create_Link_Actions.UML_Create_Link_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (18));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  endData

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Link_Action_End_Data,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inputValue

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Link_Action_Input_Value,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      return Self;
   end Create_Create_Link_Action;

   --------------------------------------
   -- Create_Create_Link_Object_Action --
   --------------------------------------

   function Create_Create_Link_Object_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Create_Link_Object_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Create_Link_Object_Actions.UML_Create_Link_Object_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  result
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (18));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  endData

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Link_Action_End_Data,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inputValue

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Link_Action_Input_Value,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      return Self;
   end Create_Create_Link_Object_Action;

   ---------------------------------
   -- Create_Create_Object_Action --
   ---------------------------------

   function Create_Create_Object_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Create_Object_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Create_Object_Actions.UML_Create_Object_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  classifier
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  result
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Create_Object_Action;

   ----------------------------
   -- Create_Data_Store_Node --
   ----------------------------

   function Create_Data_Store_Node return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Data_Store_Node,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Data_Store_Nodes.UML_Data_Store_Node_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     11     => (M_Boolean, False),
                       --  isControlType
                     12     => (M_Object_Node_Ordering_Kind, AMF.UML.FIFO),
                       --  ordering
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  selection
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  upperBound
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (12));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  inState

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Object_Node_In_State,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Data_Store_Node;

   ----------------------
   -- Create_Data_Type --
   ----------------------

   function Create_Data_Type return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Data_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Data_Types.UML_Data_Type_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (25));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Data_Type_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Data_Type_Owned_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      return Self;
   end Create_Data_Type;

   --------------------------
   -- Create_Decision_Node --
   --------------------------

   function Create_Decision_Node return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Decision_Node,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Decision_Nodes.UML_Decision_Node_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  decisionInput
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  decisionInputFlow
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (11));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      return Self;
   end Create_Decision_Node;

   -----------------------
   -- Create_Dependency --
   -----------------------

   function Create_Dependency return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Dependency,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Dependencies.UML_Dependency_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (8));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  client

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Dependency_Client,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  supplier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Dependency_Supplier,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      return Self;
   end Create_Dependency;

   -----------------------
   -- Create_Deployment --
   -----------------------

   function Create_Deployment return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Deployment,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Deployments.UML_Deployment_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  location
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (10));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  client

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Dependency_Client,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  supplier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Dependency_Supplier,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  configuration

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Deployment_Configuration,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  deployedArtifact

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Deployment_Deployed_Artifact,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      return Self;
   end Create_Deployment;

   -------------------------------------
   -- Create_Deployment_Specification --
   -------------------------------------

   function Create_Deployment_Specification return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Deployment_Specification,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Deployment_Specifications.UML_Deployment_Specification_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_String, null),
                       --  fileName
                     16     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  deployment
                     17     => (M_String, null),
                       --  deploymentLocation
                     18     => (M_String, null),
                       --  executionLocation
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (27));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  manifestation

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Artifact_Manifestation,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  nestedArtifact

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Artifact_Nested_Artifact,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Artifact_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Artifact_Owned_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      return Self;
   end Create_Deployment_Specification;

   --------------------------------
   -- Create_Destroy_Link_Action --
   --------------------------------

   function Create_Destroy_Link_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Destroy_Link_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Destroy_Link_Actions.UML_Destroy_Link_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (18));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  endData

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Link_Action_End_Data,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inputValue

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Link_Action_Input_Value,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      return Self;
   end Create_Destroy_Link_Action;

   ----------------------------------
   -- Create_Destroy_Object_Action --
   ----------------------------------

   function Create_Destroy_Object_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Destroy_Object_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Destroy_Object_Actions.UML_Destroy_Object_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Boolean, False),
                       --  isDestroyLinks
                     13     => (M_Boolean, False),
                       --  isDestroyOwnedObjects
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  target
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Destroy_Object_Action;

   -------------------------------------------------
   -- Create_Destruction_Occurrence_Specification --
   -------------------------------------------------

   function Create_Destruction_Occurrence_Specification return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Destruction_Occurrence_Specification,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Destruction_Occurrence_Specifications.UML_Destruction_Occurrence_Specification_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  message
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingInteraction
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingOperand
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  covered

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_Covered,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  generalOrdering

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_General_Ordering,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  toAfter

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Occurrence_Specification_To_After,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  toBefore

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Occurrence_Specification_To_Before,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      return Self;
   end Create_Destruction_Occurrence_Specification;

   -------------------
   -- Create_Device --
   -------------------

   function Create_Device return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Device,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Devices.UML_Device_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  classifierBehavior
                     16     => (M_Boolean, False),
                       --  isActive
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (37));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  interfaceRealization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Interface_Realization,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Owned_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  ownedConnector

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Connector,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  part

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Part,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  role

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Role,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      --  ownedPort

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Encapsulated_Classifier_Owned_Port,
        UML_Element_Table.Table (Self).Member (0).Collection + 30);

      --  extension

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Extension,
        UML_Element_Table.Table (Self).Member (0).Collection + 31);

      --  nestedClassifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Nested_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 32);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Owned_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 33);

      --  ownedReception

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Owned_Reception,
        UML_Element_Table.Table (Self).Member (0).Collection + 34);

      --  deployedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Deployment_Target_Deployed_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 35);

      --  deployment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Deployment_Target_Deployment,
        UML_Element_Table.Table (Self).Member (0).Collection + 36);

      --  nestedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Node_Nested_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 37);

      return Self;
   end Create_Device;

   ---------------------
   -- Create_Duration --
   ---------------------

   function Create_Duration return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Duration,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Durations.UML_Duration_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  expr
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (4));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  observation

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Duration_Observation,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Duration;

   --------------------------------
   -- Create_Duration_Constraint --
   --------------------------------

   function Create_Duration_Constraint return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Duration_Constraint,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Duration_Constraints.UML_Duration_Constraint_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  specification
                     11     => (M_Collection_Of_Boolean, 0),
                       --  firstEvent
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (4));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  constrainedElement

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Constraint_Constrained_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Duration_Constraint;

   ------------------------------
   -- Create_Duration_Interval --
   ------------------------------

   function Create_Duration_Interval return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Duration_Interval,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Duration_Intervals.UML_Duration_Interval_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  max
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  min
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Duration_Interval;

   ---------------------------------
   -- Create_Duration_Observation --
   ---------------------------------

   function Create_Duration_Observation return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Duration_Observation,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Duration_Observations.UML_Duration_Observation_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Collection_Of_Boolean, 0),
                       --  firstEvent
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (4));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  event

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Duration_Observation_Event,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Duration_Observation;

   ---------------------------
   -- Create_Element_Import --
   ---------------------------

   function Create_Element_Import return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Element_Import,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Element_Imports.UML_Element_Import_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  alias
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  importedElement
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  importingNamespace
                     5      => (M_Visibility_Kind, AMF.UML.Public_Visibility),
                       --  visibility
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (5));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      return Self;
   end Create_Element_Import;

   ------------------------
   -- Create_Enumeration --
   ------------------------

   function Create_Enumeration return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Enumeration,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Enumerations.UML_Enumeration_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (26));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Data_Type_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Data_Type_Owned_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedLiteral

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Enumeration_Owned_Literal,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      return Self;
   end Create_Enumeration;

   --------------------------------
   -- Create_Enumeration_Literal --
   --------------------------------

   function Create_Enumeration_Literal return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Enumeration_Literal,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Enumeration_Literals.UML_Enumeration_Literal_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  specification
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enumeration
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  deployedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Deployment_Target_Deployed_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  deployment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Deployment_Target_Deployment,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  classifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Instance_Specification_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  slot

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Instance_Specification_Slot,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      return Self;
   end Create_Enumeration_Literal;

   ------------------------------
   -- Create_Exception_Handler --
   ------------------------------

   function Create_Exception_Handler return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Exception_Handler,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Exception_Handlers.UML_Exception_Handler_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  exceptionInput
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  handlerBody
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  protectedNode
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  exceptionType

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Exception_Handler_Exception_Type,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Exception_Handler;

   ----------------------------------
   -- Create_Execution_Environment --
   ----------------------------------

   function Create_Execution_Environment return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Execution_Environment,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Execution_Environments.UML_Execution_Environment_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  classifierBehavior
                     16     => (M_Boolean, False),
                       --  isActive
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (37));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  interfaceRealization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Interface_Realization,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Owned_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  ownedConnector

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Connector,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  part

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Part,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  role

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Role,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      --  ownedPort

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Encapsulated_Classifier_Owned_Port,
        UML_Element_Table.Table (Self).Member (0).Collection + 30);

      --  extension

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Extension,
        UML_Element_Table.Table (Self).Member (0).Collection + 31);

      --  nestedClassifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Nested_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 32);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Owned_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 33);

      --  ownedReception

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Owned_Reception,
        UML_Element_Table.Table (Self).Member (0).Collection + 34);

      --  deployedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Deployment_Target_Deployed_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 35);

      --  deployment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Deployment_Target_Deployment,
        UML_Element_Table.Table (Self).Member (0).Collection + 36);

      --  nestedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Node_Nested_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 37);

      return Self;
   end Create_Execution_Environment;

   -----------------------------------------------
   -- Create_Execution_Occurrence_Specification --
   -----------------------------------------------

   function Create_Execution_Occurrence_Specification return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Execution_Occurrence_Specification,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Execution_Occurrence_Specifications.UML_Execution_Occurrence_Specification_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingInteraction
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingOperand
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  execution
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  covered

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_Covered,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  generalOrdering

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_General_Ordering,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  toAfter

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Occurrence_Specification_To_After,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  toBefore

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Occurrence_Specification_To_Before,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      return Self;
   end Create_Execution_Occurrence_Specification;

   ---------------------------
   -- Create_Expansion_Node --
   ---------------------------

   function Create_Expansion_Node return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Expansion_Node,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Expansion_Nodes.UML_Expansion_Node_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     11     => (M_Boolean, False),
                       --  isControlType
                     12     => (M_Object_Node_Ordering_Kind, AMF.UML.FIFO),
                       --  ordering
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  selection
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  upperBound
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  regionAsInput
                     16     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  regionAsOutput
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (12));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  inState

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Object_Node_In_State,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Expansion_Node;

   -----------------------------
   -- Create_Expansion_Region --
   -----------------------------

   function Create_Expansion_Region return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Expansion_Region,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Expansion_Regions.UML_Expansion_Region_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inActivity
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  superGroup
                     9      => (M_Boolean, False),
                       --  isLeaf
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     13     => (M_Boolean, False),
                       --  isLocallyReentrant
                     14     => (M_Boolean, False),
                       --  mustIsolate
                     15     => (M_Expansion_Kind, AMF.UML.Iterative),
                       --  mode
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (32));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  containedEdge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Contained_Edge,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  containedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Contained_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  subgroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Subgroup,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  edge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Edge,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  node

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  structuredNodeInput

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Structured_Node_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  structuredNodeOutput

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Structured_Node_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      --  variable

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Variable,
        UML_Element_Table.Table (Self).Member (0).Collection + 30);

      --  inputElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Expansion_Region_Input_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 31);

      --  outputElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Expansion_Region_Output_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 32);

      return Self;
   end Create_Expansion_Region;

   -----------------------
   -- Create_Expression --
   -----------------------

   function Create_Expression return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Expression,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Expressions.UML_Expression_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     10     => (M_String, null),
                       --  symbol
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (4));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  operand

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Expression_Operand,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Expression;

   -------------------
   -- Create_Extend --
   -------------------

   function Create_Extend return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Extend,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Extends.UML_Extend_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  condition
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  extendedCase
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  extension
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  extensionLocation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Extend_Extension_Location,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      return Self;
   end Create_Extend;

   ----------------------
   -- Create_Extension --
   ----------------------

   function Create_Extension return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Extension,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Extensions.UML_Extension_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Boolean, False),
                       --  isDerived
                     16     => (M_Boolean, False),
                       --  isRequired
                     17     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  metaclass
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (28));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  endType

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Association_End_Type,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  memberEnd

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Association_Member_End,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  navigableOwnedEnd

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Association_Navigable_Owned_End,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  ownedEnd

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Association_Owned_End,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      return Self;
   end Create_Extension;

   --------------------------
   -- Create_Extension_End --
   --------------------------

   function Create_Extension_End return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Extension_End,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Extension_Ends.UML_Extension_End_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     10     => (M_Boolean, False),
                       --  isOrdered
                     11     => (M_Boolean, True),
                       --  isUnique
                     12     => (M_Integer_Holder, (False, 1)),
                       --  lower
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  lowerValue
                     14     =>
                      (M_Unlimited_Natural_Holder, (False, (False, 1))),
                       --  upper
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  upperValue
                     16     => (M_Boolean, False),
                       --  isLeaf
                     17     => (M_Boolean, False),
                       --  isStatic
                     18     => (M_Boolean, False),
                       --  isReadOnly
                     19     => (M_Aggregation_Kind, AMF.UML.None),
                       --  aggregation
                     20     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  association
                     21     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  associationEnd
                     22     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  class
                     23     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  datatype
                     24     => (M_String, null),
                       --  default
                     25     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  defaultValue
                     26     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  interface
                     27     => (M_Boolean, False),
                       --  isComposite
                     28     => (M_Boolean, False),
                       --  isDerived
                     29     => (M_Boolean, False),
                       --  isDerivedUnion
                     30     => (M_Boolean, False),
                       --  isID
                     31     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  opposite
                     32     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningAssociation
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (12));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  end

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Connectable_Element_End,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  deployedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Deployment_Target_Deployed_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  deployment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Deployment_Target_Deployment,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  featuringClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Feature_Featuring_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  qualifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Property_Qualifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedProperty

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Property_Redefined_Property,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  subsettedProperty

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Property_Subsetted_Property,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Extension_End;

   ----------------------------
   -- Create_Extension_Point --
   ----------------------------

   function Create_Extension_Point return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Extension_Point,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Extension_Points.UML_Extension_Point_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  useCase
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (5));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      return Self;
   end Create_Extension_Point;

   ------------------------
   -- Create_Final_State --
   ------------------------

   function Create_Final_State return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Final_State,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Final_States.UML_Final_State_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  container
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  doActivity
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  entry
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  exit
                     12     => (M_Boolean, False),
                       --  isComposite
                     13     => (M_Boolean, False),
                       --  isOrthogonal
                     14     => (M_Boolean, True),
                       --  isSimple
                     15     => (M_Boolean, False),
                       --  isSubmachineState
                     16     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  redefinedState
                     17     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  stateInvariant
                     18     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  submachine
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (17));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Vertex_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Vertex_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  connection

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_State_Connection,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  connectionPoint

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_State_Connection_Point,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  deferrableTrigger

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_State_Deferrable_Trigger,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  region

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_State_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      return Self;
   end Create_Final_State;

   ----------------------------
   -- Create_Flow_Final_Node --
   ----------------------------

   function Create_Flow_Final_Node return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Flow_Final_Node,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Flow_Final_Nodes.UML_Flow_Final_Node_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (11));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      return Self;
   end Create_Flow_Final_Node;

   ----------------------
   -- Create_Fork_Node --
   ----------------------

   function Create_Fork_Node return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Fork_Node,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Fork_Nodes.UML_Fork_Node_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (11));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      return Self;
   end Create_Fork_Node;

   ------------------------------
   -- Create_Function_Behavior --
   ------------------------------

   function Create_Function_Behavior return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Function_Behavior,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Function_Behaviors.UML_Function_Behavior_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  classifierBehavior
                     16     => (M_Boolean, False),
                       --  isActive
                     17     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     18     => (M_Boolean, True),
                       --  isReentrant
                     19     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  specification
                     20     => (M_Collection_Of_String, 0),
                       --  body
                     21     => (M_Collection_Of_String, 0),
                       --  language
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (39));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  interfaceRealization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Interface_Realization,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Owned_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  ownedConnector

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Connector,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  part

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Part,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  role

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Role,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      --  ownedPort

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Encapsulated_Classifier_Owned_Port,
        UML_Element_Table.Table (Self).Member (0).Collection + 30);

      --  extension

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Extension,
        UML_Element_Table.Table (Self).Member (0).Collection + 31);

      --  nestedClassifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Nested_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 32);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Owned_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 33);

      --  ownedReception

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Owned_Reception,
        UML_Element_Table.Table (Self).Member (0).Collection + 34);

      --  ownedParameter

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Behavior_Owned_Parameter,
        UML_Element_Table.Table (Self).Member (0).Collection + 35);

      --  ownedParameterSet

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Owned_Parameter_Set,
        UML_Element_Table.Table (Self).Member (0).Collection + 36);

      --  postcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 37);

      --  precondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 38);

      --  redefinedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Redefined_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 39);

      return Self;
   end Create_Function_Behavior;

   -----------------
   -- Create_Gate --
   -----------------

   function Create_Gate return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Gate,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Gates.UML_Gate_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  message
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Gate;

   -----------------------------
   -- Create_General_Ordering --
   -----------------------------

   function Create_General_Ordering return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_General_Ordering,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_General_Orderings.UML_General_Ordering_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  after
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  before
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_General_Ordering;

   ---------------------------
   -- Create_Generalization --
   ---------------------------

   function Create_Generalization return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Generalization,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Generalizations.UML_Generalization_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  general
                     3      => (M_Boolean_Holder, (Is_Empty => True)),
                       --  isSubstitutable
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  specific
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (6));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  generalizationSet

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Generalization_Generalization_Set,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      return Self;
   end Create_Generalization;

   -------------------------------
   -- Create_Generalization_Set --
   -------------------------------

   function Create_Generalization_Set return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Generalization_Set,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Generalization_Sets.UML_Generalization_Set_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Boolean, False),
                       --  isCovering
                     10     => (M_Boolean, False),
                       --  isDisjoint
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  powertype
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (4));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Generalization_Set_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Generalization_Set;

   ------------------
   -- Create_Image --
   ------------------

   function Create_Image return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Image,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Images.UML_Image_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  content
                     3      => (M_String, null),
                       --  format
                     4      => (M_String, null),
                       --  location
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (2));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_Image;

   --------------------
   -- Create_Include --
   --------------------

   function Create_Include return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Include,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Includes.UML_Include_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  addition
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  includingCase
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (6));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      return Self;
   end Create_Include;

   -----------------------------
   -- Create_Information_Flow --
   -----------------------------

   function Create_Information_Flow return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Information_Flow,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Information_Flows.UML_Information_Flow_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (13));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  conveyed

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Information_Flow_Conveyed,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  informationSource

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Information_Flow_Information_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  informationTarget

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Information_Flow_Information_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  realization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Information_Flow_Realization,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  realizingActivityEdge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Information_Flow_Realizing_Activity_Edge,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  realizingConnector

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Information_Flow_Realizing_Connector,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  realizingMessage

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Information_Flow_Realizing_Message,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      return Self;
   end Create_Information_Flow;

   -----------------------------
   -- Create_Information_Item --
   -----------------------------

   function Create_Information_Item return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Information_Item,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Information_Items.UML_Information_Item_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (24));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  represented

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Information_Item_Represented,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      return Self;
   end Create_Information_Item;

   -------------------------
   -- Create_Initial_Node --
   -------------------------

   function Create_Initial_Node return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Initial_Node,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Initial_Nodes.UML_Initial_Node_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (11));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      return Self;
   end Create_Initial_Node;

   ----------------------
   -- Create_Input_Pin --
   ----------------------

   function Create_Input_Pin return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Input_Pin,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Input_Pins.UML_Input_Pin_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     11     => (M_Boolean, False),
                       --  isControlType
                     12     => (M_Object_Node_Ordering_Kind, AMF.UML.FIFO),
                       --  ordering
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  selection
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  upperBound
                     15     => (M_Boolean, False),
                       --  isOrdered
                     16     => (M_Boolean, True),
                       --  isUnique
                     17     => (M_Integer_Holder, (False, 1)),
                       --  lower
                     18     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  lowerValue
                     19     =>
                      (M_Unlimited_Natural_Holder, (False, (False, 1))),
                       --  upper
                     20     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  upperValue
                     21     => (M_Boolean, False),
                       --  isControl
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (12));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  inState

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Object_Node_In_State,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Input_Pin;

   -----------------------------------
   -- Create_Instance_Specification --
   -----------------------------------

   function Create_Instance_Specification return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Instance_Specification,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Instance_Specifications.UML_Instance_Specification_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  specification
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  deployedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Deployment_Target_Deployed_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  deployment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Deployment_Target_Deployment,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  classifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Instance_Specification_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  slot

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Instance_Specification_Slot,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      return Self;
   end Create_Instance_Specification;

   ---------------------------
   -- Create_Instance_Value --
   ---------------------------

   function Create_Instance_Value return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Instance_Value,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Instance_Values.UML_Instance_Value_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  instance
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Instance_Value;

   ------------------------
   -- Create_Interaction --
   ------------------------

   function Create_Interaction return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Interaction,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Interactions.UML_Interaction_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  classifierBehavior
                     16     => (M_Boolean, False),
                       --  isActive
                     17     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     18     => (M_Boolean, True),
                       --  isReentrant
                     19     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  specification
                     20     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingInteraction
                     21     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingOperand
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (46));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  interfaceRealization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Interface_Realization,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Owned_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  ownedConnector

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Connector,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  part

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Part,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  role

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Role,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      --  ownedPort

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Encapsulated_Classifier_Owned_Port,
        UML_Element_Table.Table (Self).Member (0).Collection + 30);

      --  extension

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Extension,
        UML_Element_Table.Table (Self).Member (0).Collection + 31);

      --  nestedClassifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Nested_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 32);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Owned_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 33);

      --  ownedReception

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Owned_Reception,
        UML_Element_Table.Table (Self).Member (0).Collection + 34);

      --  ownedParameter

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Behavior_Owned_Parameter,
        UML_Element_Table.Table (Self).Member (0).Collection + 35);

      --  ownedParameterSet

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Owned_Parameter_Set,
        UML_Element_Table.Table (Self).Member (0).Collection + 36);

      --  postcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 37);

      --  precondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 38);

      --  redefinedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Redefined_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 39);

      --  covered

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_Covered,
        UML_Element_Table.Table (Self).Member (0).Collection + 40);

      --  generalOrdering

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_General_Ordering,
        UML_Element_Table.Table (Self).Member (0).Collection + 41);

      --  action

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Action,
        UML_Element_Table.Table (Self).Member (0).Collection + 42);

      --  formalGate

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Formal_Gate,
        UML_Element_Table.Table (Self).Member (0).Collection + 43);

      --  fragment

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment,
        UML_Element_Table.Table (Self).Member (0).Collection + 44);

      --  lifeline

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Lifeline,
        UML_Element_Table.Table (Self).Member (0).Collection + 45);

      --  message

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Message,
        UML_Element_Table.Table (Self).Member (0).Collection + 46);

      return Self;
   end Create_Interaction;

   -----------------------------------
   -- Create_Interaction_Constraint --
   -----------------------------------

   function Create_Interaction_Constraint return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Interaction_Constraint,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Interaction_Constraints.UML_Interaction_Constraint_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  specification
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  maxint
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  minint
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (4));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  constrainedElement

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Constraint_Constrained_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Interaction_Constraint;

   --------------------------------
   -- Create_Interaction_Operand --
   --------------------------------

   function Create_Interaction_Operand return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Interaction_Operand,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Interaction_Operands.UML_Interaction_Operand_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingInteraction
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingOperand
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  guard
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (12));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  covered

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_Covered,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  generalOrdering

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_General_Ordering,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  fragment

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Interaction_Operand_Fragment,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Interaction_Operand;

   ----------------------------
   -- Create_Interaction_Use --
   ----------------------------

   function Create_Interaction_Use return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Interaction_Use,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Interaction_Uses.UML_Interaction_Use_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingInteraction
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingOperand
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  refersTo
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  returnValue
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  returnValueRecipient
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  covered

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_Covered,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  generalOrdering

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_General_Ordering,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  actualGate

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Use_Actual_Gate,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  argument

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Interaction_Use_Argument,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      return Self;
   end Create_Interaction_Use;

   ----------------------
   -- Create_Interface --
   ----------------------

   function Create_Interface return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Interface,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Interfaces.UML_Interface_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  protocol
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (28));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  nestedClassifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Interface_Nested_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Interface_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Interface_Owned_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  ownedReception

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interface_Owned_Reception,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  redefinedInterface

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interface_Redefined_Interface,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      return Self;
   end Create_Interface;

   ----------------------------------
   -- Create_Interface_Realization --
   ----------------------------------

   function Create_Interface_Realization return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Interface_Realization,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Interface_Realizations.UML_Interface_Realization_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  mapping
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  contract
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  implementingClassifier
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (8));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  client

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Dependency_Client,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  supplier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Dependency_Supplier,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      return Self;
   end Create_Interface_Realization;

   ------------------------------------------
   -- Create_Interruptible_Activity_Region --
   ------------------------------------------

   function Create_Interruptible_Activity_Region return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Interruptible_Activity_Region,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Interruptible_Activity_Regions.UML_Interruptible_Activity_Region_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inActivity
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  superGroup
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (8));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  containedEdge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Contained_Edge,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  containedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Contained_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  subgroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Subgroup,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  interruptingEdge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interruptible_Activity_Region_Interrupting_Edge,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  node

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interruptible_Activity_Region_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      return Self;
   end Create_Interruptible_Activity_Region;

   ---------------------
   -- Create_Interval --
   ---------------------

   function Create_Interval return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Interval,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Intervals.UML_Interval_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  max
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  min
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Interval;

   --------------------------------
   -- Create_Interval_Constraint --
   --------------------------------

   function Create_Interval_Constraint return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Interval_Constraint,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Interval_Constraints.UML_Interval_Constraint_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  specification
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (4));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  constrainedElement

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Constraint_Constrained_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Interval_Constraint;

   ----------------------
   -- Create_Join_Node --
   ----------------------

   function Create_Join_Node return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Join_Node,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Join_Nodes.UML_Join_Node_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Boolean, True),
                       --  isCombineDuplicate
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  joinSpec
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (11));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      return Self;
   end Create_Join_Node;

   ---------------------
   -- Create_Lifeline --
   ---------------------

   function Create_Lifeline return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Lifeline,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Lifelines.UML_Lifeline_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  decomposedAs
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  interaction
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  represents
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  selector
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (4));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  coveredBy

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Lifeline_Covered_By,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Lifeline;

   -----------------------------------
   -- Create_Link_End_Creation_Data --
   -----------------------------------

   function Create_Link_End_Creation_Data return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Link_End_Creation_Data,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Link_End_Creation_Datas.UML_Link_End_Creation_Data_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  end
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  value
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  insertAt
                     5      => (M_Boolean, False),
                       --  isReplaceAll
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  qualifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Link_End_Data_Qualifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Link_End_Creation_Data;

   --------------------------
   -- Create_Link_End_Data --
   --------------------------

   function Create_Link_End_Data return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Link_End_Data,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Link_End_Datas.UML_Link_End_Data_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  end
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  value
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  qualifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Link_End_Data_Qualifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Link_End_Data;

   --------------------------------------
   -- Create_Link_End_Destruction_Data --
   --------------------------------------

   function Create_Link_End_Destruction_Data return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Link_End_Destruction_Data,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Link_End_Destruction_Datas.UML_Link_End_Destruction_Data_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  end
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  value
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  destroyAt
                     5      => (M_Boolean, False),
                       --  isDestroyDuplicates
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  qualifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Link_End_Data_Qualifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Link_End_Destruction_Data;

   ----------------------------
   -- Create_Literal_Boolean --
   ----------------------------

   function Create_Literal_Boolean return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Literal_Boolean,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Literal_Booleans.UML_Literal_Boolean_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     10     => (M_Boolean, False),
                       --  value
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Literal_Boolean;

   ----------------------------
   -- Create_Literal_Integer --
   ----------------------------

   function Create_Literal_Integer return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Literal_Integer,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Literal_Integers.UML_Literal_Integer_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     10     => (M_Integer, 0),
                       --  value
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Literal_Integer;

   -------------------------
   -- Create_Literal_Null --
   -------------------------

   function Create_Literal_Null return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Literal_Null,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Literal_Nulls.UML_Literal_Null_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Literal_Null;

   -------------------------
   -- Create_Literal_Real --
   -------------------------

   function Create_Literal_Real return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Literal_Real,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Literal_Reals.UML_Literal_Real_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     10     => (M_Real, 0.0),
                       --  value
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Literal_Real;

   ---------------------------
   -- Create_Literal_String --
   ---------------------------

   function Create_Literal_String return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Literal_String,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Literal_Strings.UML_Literal_String_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     10     => (M_String, null),
                       --  value
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Literal_String;

   --------------------------------------
   -- Create_Literal_Unlimited_Natural --
   --------------------------------------

   function Create_Literal_Unlimited_Natural return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Literal_Unlimited_Natural,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Literal_Unlimited_Naturals.UML_Literal_Unlimited_Natural_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     10     => (M_Unlimited_Natural, (False, 0)),
                       --  value
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Literal_Unlimited_Natural;

   ----------------------
   -- Create_Loop_Node --
   ----------------------

   function Create_Loop_Node return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Loop_Node,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Loop_Nodes.UML_Loop_Node_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inActivity
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  superGroup
                     9      => (M_Boolean, False),
                       --  isLeaf
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     13     => (M_Boolean, False),
                       --  isLocallyReentrant
                     14     => (M_Boolean, False),
                       --  mustIsolate
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  decider
                     16     => (M_Boolean, False),
                       --  isTestedFirst
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (35));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  containedEdge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Contained_Edge,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  containedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Contained_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  subgroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Subgroup,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  edge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Edge,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  node

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  structuredNodeInput

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Structured_Node_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  structuredNodeOutput

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Structured_Node_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      --  variable

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Variable,
        UML_Element_Table.Table (Self).Member (0).Collection + 30);

      --  bodyOutput

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Loop_Node_Body_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 31);

      --  bodyPart

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Loop_Node_Body_Part,
        UML_Element_Table.Table (Self).Member (0).Collection + 32);

      --  loopVariable

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Loop_Node_Loop_Variable,
        UML_Element_Table.Table (Self).Member (0).Collection + 33);

      --  setupPart

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Loop_Node_Setup_Part,
        UML_Element_Table.Table (Self).Member (0).Collection + 34);

      --  test

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Loop_Node_Test,
        UML_Element_Table.Table (Self).Member (0).Collection + 35);

      return Self;
   end Create_Loop_Node;

   --------------------------
   -- Create_Manifestation --
   --------------------------

   function Create_Manifestation return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Manifestation,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Manifestations.UML_Manifestation_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  mapping
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  utilizedElement
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (8));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  client

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Dependency_Client,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  supplier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Dependency_Supplier,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      return Self;
   end Create_Manifestation;

   -----------------------
   -- Create_Merge_Node --
   -----------------------

   function Create_Merge_Node return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Merge_Node,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Merge_Nodes.UML_Merge_Node_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (11));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      return Self;
   end Create_Merge_Node;

   --------------------
   -- Create_Message --
   --------------------

   function Create_Message return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Message,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Messages.UML_Message_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  connector
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  interaction
                     9      => (M_Message_Kind, AMF.UML.Unknown),
                       --  messageKind
                     10     => (M_Message_Sort, AMF.UML.Synch_Call),
                       --  messageSort
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  receiveEvent
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  sendEvent
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  signature
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (4));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  argument

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Message_Argument,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Message;

   ---------------------------------------------
   -- Create_Message_Occurrence_Specification --
   ---------------------------------------------

   function Create_Message_Occurrence_Specification return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Message_Occurrence_Specification,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Message_Occurrence_Specifications.UML_Message_Occurrence_Specification_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  message
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingInteraction
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingOperand
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  covered

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_Covered,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  generalOrdering

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_General_Ordering,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  toAfter

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Occurrence_Specification_To_After,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  toBefore

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Occurrence_Specification_To_Before,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      return Self;
   end Create_Message_Occurrence_Specification;

   ------------------
   -- Create_Model --
   ------------------

   function Create_Model return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Model,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Models.UML_Model_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     10     => (M_String, null),
                       --  URI
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nestingPackage
                     12     => (M_String, null),
                       --  viewpoint
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  nestedPackage

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Package_Nested_Package,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  ownedStereotype

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Package_Owned_Stereotype,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  ownedType

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Package_Owned_Type,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  packageMerge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Package_Package_Merge,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  packagedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Package_Packaged_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  profileApplication

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Package_Profile_Application,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Model;

   -----------------
   -- Create_Node --
   -----------------

   function Create_Node return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Node,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Nodes.UML_Node_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  classifierBehavior
                     16     => (M_Boolean, False),
                       --  isActive
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (37));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  interfaceRealization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Interface_Realization,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Owned_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  ownedConnector

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Connector,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  part

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Part,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  role

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Role,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      --  ownedPort

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Encapsulated_Classifier_Owned_Port,
        UML_Element_Table.Table (Self).Member (0).Collection + 30);

      --  extension

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Extension,
        UML_Element_Table.Table (Self).Member (0).Collection + 31);

      --  nestedClassifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Nested_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 32);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Owned_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 33);

      --  ownedReception

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Owned_Reception,
        UML_Element_Table.Table (Self).Member (0).Collection + 34);

      --  deployedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Deployment_Target_Deployed_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 35);

      --  deployment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Deployment_Target_Deployment,
        UML_Element_Table.Table (Self).Member (0).Collection + 36);

      --  nestedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Node_Nested_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 37);

      return Self;
   end Create_Node;

   ------------------------
   -- Create_Object_Flow --
   ------------------------

   function Create_Object_Flow return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Object_Flow,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Object_Flows.UML_Object_Flow_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  guard
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  interrupts
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  source
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  target
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  weight
                     15     => (M_Boolean, False),
                       --  isMulticast
                     16     => (M_Boolean, False),
                       --  isMultireceive
                     17     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  selection
                     18     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  transformation
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (8));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Edge_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Edge_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  redefinedEdge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Edge_Redefined_Edge,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      return Self;
   end Create_Object_Flow;

   -------------------------------------
   -- Create_Occurrence_Specification --
   -------------------------------------

   function Create_Occurrence_Specification return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Occurrence_Specification,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Occurrence_Specifications.UML_Occurrence_Specification_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingInteraction
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingOperand
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  covered

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_Covered,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  generalOrdering

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_General_Ordering,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  toAfter

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Occurrence_Specification_To_After,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  toBefore

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Occurrence_Specification_To_Before,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      return Self;
   end Create_Occurrence_Specification;

   --------------------------
   -- Create_Opaque_Action --
   --------------------------

   function Create_Opaque_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Opaque_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Opaque_Actions.UML_Opaque_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Collection_Of_String, 0),
                       --  body
                     13     => (M_Collection_Of_String, 0),
                       --  language
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (18));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  inputValue

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Opaque_Action_Input_Value,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  outputValue

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Opaque_Action_Output_Value,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      return Self;
   end Create_Opaque_Action;

   ----------------------------
   -- Create_Opaque_Behavior --
   ----------------------------

   function Create_Opaque_Behavior return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Opaque_Behavior,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Opaque_Behaviors.UML_Opaque_Behavior_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  classifierBehavior
                     16     => (M_Boolean, False),
                       --  isActive
                     17     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     18     => (M_Boolean, True),
                       --  isReentrant
                     19     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  specification
                     20     => (M_Collection_Of_String, 0),
                       --  body
                     21     => (M_Collection_Of_String, 0),
                       --  language
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (39));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  interfaceRealization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Interface_Realization,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Owned_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  ownedConnector

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Connector,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  part

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Part,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  role

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Role,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      --  ownedPort

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Encapsulated_Classifier_Owned_Port,
        UML_Element_Table.Table (Self).Member (0).Collection + 30);

      --  extension

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Extension,
        UML_Element_Table.Table (Self).Member (0).Collection + 31);

      --  nestedClassifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Nested_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 32);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Owned_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 33);

      --  ownedReception

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Owned_Reception,
        UML_Element_Table.Table (Self).Member (0).Collection + 34);

      --  ownedParameter

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Behavior_Owned_Parameter,
        UML_Element_Table.Table (Self).Member (0).Collection + 35);

      --  ownedParameterSet

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Owned_Parameter_Set,
        UML_Element_Table.Table (Self).Member (0).Collection + 36);

      --  postcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 37);

      --  precondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 38);

      --  redefinedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Redefined_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 39);

      return Self;
   end Create_Opaque_Behavior;

   ------------------------------
   -- Create_Opaque_Expression --
   ------------------------------

   function Create_Opaque_Expression return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Opaque_Expression,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Opaque_Expressions.UML_Opaque_Expression_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  behavior
                     11     => (M_Collection_Of_String, 0),
                       --  body
                     12     => (M_Collection_Of_String, 0),
                       --  language
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  result
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Opaque_Expression;

   ----------------------
   -- Create_Operation --
   ----------------------

   function Create_Operation return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Operation,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Operations.UML_Operation_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Boolean, False),
                       --  isStatic
                     9      => (M_Call_Concurrency_Kind, AMF.UML.Sequential),
                       --  concurrency
                     10     => (M_Boolean, False),
                       --  isAbstract
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  bodyCondition
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  class
                     16     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  datatype
                     17     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  interface
                     18     => (M_Boolean, False),
                       --  isOrdered
                     19     => (M_Boolean, False),
                       --  isQuery
                     20     => (M_Boolean, True),
                       --  isUnique
                     21     => (M_Integer_Holder, (False, 1)),
                       --  lower
                     22     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     23     =>
                      (M_Unlimited_Natural_Holder, (False, (False, 1))),
                       --  upper
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (20));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  featuringClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Feature_Featuring_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  method

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavioral_Feature_Method,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  ownedParameter

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Behavioral_Feature_Owned_Parameter,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  ownedParameterSet

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavioral_Feature_Owned_Parameter_Set,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  raisedException

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavioral_Feature_Raised_Exception,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  postcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Operation_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  precondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Operation_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  redefinedOperation

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Operation_Redefined_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      return Self;
   end Create_Operation;

   -----------------------------------------
   -- Create_Operation_Template_Parameter --
   -----------------------------------------

   function Create_Operation_Template_Parameter return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Operation_Template_Parameter,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Operation_Template_Parameters.UML_Operation_Template_Parameter_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  default
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedDefault
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedParameteredElement
                     5      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  parameteredElement
                     6      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  signature
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (2));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_Operation_Template_Parameter;

   -----------------------
   -- Create_Output_Pin --
   -----------------------

   function Create_Output_Pin return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Output_Pin,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Output_Pins.UML_Output_Pin_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     11     => (M_Boolean, False),
                       --  isControlType
                     12     => (M_Object_Node_Ordering_Kind, AMF.UML.FIFO),
                       --  ordering
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  selection
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  upperBound
                     15     => (M_Boolean, False),
                       --  isOrdered
                     16     => (M_Boolean, True),
                       --  isUnique
                     17     => (M_Integer_Holder, (False, 1)),
                       --  lower
                     18     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  lowerValue
                     19     =>
                      (M_Unlimited_Natural_Holder, (False, (False, 1))),
                       --  upper
                     20     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  upperValue
                     21     => (M_Boolean, False),
                       --  isControl
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (12));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  inState

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Object_Node_In_State,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Output_Pin;

   --------------------
   -- Create_Package --
   --------------------

   function Create_Package return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Package,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Packages.UML_Package_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     10     => (M_String, null),
                       --  URI
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nestingPackage
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  nestedPackage

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Package_Nested_Package,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  ownedStereotype

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Package_Owned_Stereotype,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  ownedType

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Package_Owned_Type,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  packageMerge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Package_Package_Merge,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  packagedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Package_Packaged_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  profileApplication

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Package_Profile_Application,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Package;

   ---------------------------
   -- Create_Package_Import --
   ---------------------------

   function Create_Package_Import return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Package_Import,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Package_Imports.UML_Package_Import_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  importedPackage
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  importingNamespace
                     4      => (M_Visibility_Kind, AMF.UML.Public_Visibility),
                       --  visibility
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (5));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      return Self;
   end Create_Package_Import;

   --------------------------
   -- Create_Package_Merge --
   --------------------------

   function Create_Package_Merge return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Package_Merge,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Package_Merges.UML_Package_Merge_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  mergedPackage
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  receivingPackage
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (5));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      return Self;
   end Create_Package_Merge;

   ----------------------
   -- Create_Parameter --
   ----------------------

   function Create_Parameter return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Parameter,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Parameters.UML_Parameter_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Boolean, False),
                       --  isOrdered
                     3      => (M_Boolean, True),
                       --  isUnique
                     4      => (M_Integer_Holder, (False, 1)),
                       --  lower
                     5      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  lowerValue
                     6      =>
                      (M_Unlimited_Natural_Holder, (False, (False, 1))),
                       --  upper
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  upperValue
                     8      => (M_String, null),
                       --  name
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     11     => (M_String, null),
                       --  qualifiedName
                     12     => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     16     => (M_String, null),
                       --  default
                     17     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  defaultValue
                     18     => (M_Parameter_Direction_Kind, AMF.UML.In_Parameter),
                       --  direction
                     19     => (M_Parameter_Effect_Kind_Holder, (Is_Empty => True)),
                       --  effect
                     20     => (M_Boolean, False),
                       --  isException
                     21     => (M_Boolean, False),
                       --  isStream
                     22     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  operation
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (5));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  end

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Connectable_Element_End,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  parameterSet

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Parameter_Parameter_Set,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      return Self;
   end Create_Parameter;

   --------------------------
   -- Create_Parameter_Set --
   --------------------------

   function Create_Parameter_Set return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Parameter_Set,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Parameter_Sets.UML_Parameter_Set_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (5));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  condition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Parameter_Set_Condition,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  parameter

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Parameter_Set_Parameter,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      return Self;
   end Create_Parameter_Set;

   -------------------------------
   -- Create_Part_Decomposition --
   -------------------------------

   function Create_Part_Decomposition return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Part_Decomposition,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Part_Decompositions.UML_Part_Decomposition_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingInteraction
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingOperand
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  refersTo
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  returnValue
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  returnValueRecipient
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (7));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  covered

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_Covered,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  generalOrdering

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_General_Ordering,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  actualGate

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Use_Actual_Gate,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  argument

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Interaction_Use_Argument,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      return Self;
   end Create_Part_Decomposition;

   -----------------
   -- Create_Port --
   -----------------

   function Create_Port return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Port,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Ports.UML_Port_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     10     => (M_Boolean, False),
                       --  isOrdered
                     11     => (M_Boolean, True),
                       --  isUnique
                     12     => (M_Integer_Holder, (False, 1)),
                       --  lower
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  lowerValue
                     14     =>
                      (M_Unlimited_Natural_Holder, (False, (False, 1))),
                       --  upper
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  upperValue
                     16     => (M_Boolean, False),
                       --  isLeaf
                     17     => (M_Boolean, False),
                       --  isStatic
                     18     => (M_Boolean, False),
                       --  isReadOnly
                     19     => (M_Aggregation_Kind, AMF.UML.None),
                       --  aggregation
                     20     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  association
                     21     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  associationEnd
                     22     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  class
                     23     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  datatype
                     24     => (M_String, null),
                       --  default
                     25     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  defaultValue
                     26     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  interface
                     27     => (M_Boolean, False),
                       --  isComposite
                     28     => (M_Boolean, False),
                       --  isDerived
                     29     => (M_Boolean, False),
                       --  isDerivedUnion
                     30     => (M_Boolean, False),
                       --  isID
                     31     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  opposite
                     32     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningAssociation
                     33     => (M_Boolean, False),
                       --  isBehavior
                     34     => (M_Boolean, False),
                       --  isConjugated
                     35     => (M_Boolean, True),
                       --  isService
                     36     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  protocol
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (15));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  end

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Connectable_Element_End,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  deployedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Deployment_Target_Deployed_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  deployment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Deployment_Target_Deployment,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  featuringClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Feature_Featuring_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  qualifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Property_Qualifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedProperty

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Property_Redefined_Property,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  subsettedProperty

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Property_Subsetted_Property,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  provided

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Port_Provided,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  redefinedPort

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Port_Redefined_Port,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  required

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Port_Required,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      return Self;
   end Create_Port;

   ---------------------------
   -- Create_Primitive_Type --
   ---------------------------

   function Create_Primitive_Type return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Primitive_Type,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Primitive_Types.UML_Primitive_Type_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (25));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Data_Type_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Data_Type_Owned_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      return Self;
   end Create_Primitive_Type;

   --------------------
   -- Create_Profile --
   --------------------

   function Create_Profile return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Profile,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Profiles.UML_Profile_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     10     => (M_String, null),
                       --  URI
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nestingPackage
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (18));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  nestedPackage

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Package_Nested_Package,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  ownedStereotype

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Package_Owned_Stereotype,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  ownedType

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Package_Owned_Type,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  packageMerge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Package_Package_Merge,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  packagedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Package_Packaged_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  profileApplication

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Package_Profile_Application,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  metaclassReference

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Profile_Metaclass_Reference,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  metamodelReference

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Profile_Metamodel_Reference,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      return Self;
   end Create_Profile;

   --------------------------------
   -- Create_Profile_Application --
   --------------------------------

   function Create_Profile_Application return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Profile_Application,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Profile_Applications.UML_Profile_Application_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  appliedProfile
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  applyingPackage
                     4      => (M_Boolean, False),
                       --  isStrict
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (5));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      return Self;
   end Create_Profile_Application;

   ---------------------
   -- Create_Property --
   ---------------------

   function Create_Property return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Property,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Properties.UML_Property_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     10     => (M_Boolean, False),
                       --  isOrdered
                     11     => (M_Boolean, True),
                       --  isUnique
                     12     => (M_Integer_Holder, (False, 1)),
                       --  lower
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  lowerValue
                     14     =>
                      (M_Unlimited_Natural_Holder, (False, (False, 1))),
                       --  upper
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  upperValue
                     16     => (M_Boolean, False),
                       --  isLeaf
                     17     => (M_Boolean, False),
                       --  isStatic
                     18     => (M_Boolean, False),
                       --  isReadOnly
                     19     => (M_Aggregation_Kind, AMF.UML.None),
                       --  aggregation
                     20     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  association
                     21     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  associationEnd
                     22     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  class
                     23     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  datatype
                     24     => (M_String, null),
                       --  default
                     25     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  defaultValue
                     26     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  interface
                     27     => (M_Boolean, False),
                       --  isComposite
                     28     => (M_Boolean, False),
                       --  isDerived
                     29     => (M_Boolean, False),
                       --  isDerivedUnion
                     30     => (M_Boolean, False),
                       --  isID
                     31     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  opposite
                     32     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningAssociation
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (12));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  end

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Connectable_Element_End,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  deployedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Deployment_Target_Deployed_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  deployment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Deployment_Target_Deployment,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  featuringClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Feature_Featuring_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  qualifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Property_Qualifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedProperty

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Property_Redefined_Property,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  subsettedProperty

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Property_Subsetted_Property,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Property;

   ---------------------------------
   -- Create_Protocol_Conformance --
   ---------------------------------

   function Create_Protocol_Conformance return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Protocol_Conformance,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Protocol_Conformances.UML_Protocol_Conformance_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  generalMachine
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  specificMachine
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (5));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      return Self;
   end Create_Protocol_Conformance;

   -----------------------------------
   -- Create_Protocol_State_Machine --
   -----------------------------------

   function Create_Protocol_State_Machine return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Protocol_State_Machine,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Protocol_State_Machines.UML_Protocol_State_Machine_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  classifierBehavior
                     16     => (M_Boolean, False),
                       --  isActive
                     17     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     18     => (M_Boolean, True),
                       --  isReentrant
                     19     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  specification
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (43));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  interfaceRealization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Interface_Realization,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Owned_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  ownedConnector

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Connector,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  part

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Part,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  role

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Role,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      --  ownedPort

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Encapsulated_Classifier_Owned_Port,
        UML_Element_Table.Table (Self).Member (0).Collection + 30);

      --  extension

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Extension,
        UML_Element_Table.Table (Self).Member (0).Collection + 31);

      --  nestedClassifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Nested_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 32);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Owned_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 33);

      --  ownedReception

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Owned_Reception,
        UML_Element_Table.Table (Self).Member (0).Collection + 34);

      --  ownedParameter

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Behavior_Owned_Parameter,
        UML_Element_Table.Table (Self).Member (0).Collection + 35);

      --  ownedParameterSet

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Owned_Parameter_Set,
        UML_Element_Table.Table (Self).Member (0).Collection + 36);

      --  postcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 37);

      --  precondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 38);

      --  redefinedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Redefined_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 39);

      --  connectionPoint

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_State_Machine_Connection_Point,
        UML_Element_Table.Table (Self).Member (0).Collection + 40);

      --  region

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_State_Machine_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 41);

      --  submachineState

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_State_Machine_Submachine_State,
        UML_Element_Table.Table (Self).Member (0).Collection + 42);

      --  conformance

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Protocol_State_Machine_Conformance,
        UML_Element_Table.Table (Self).Member (0).Collection + 43);

      return Self;
   end Create_Protocol_State_Machine;

   --------------------------------
   -- Create_Protocol_Transition --
   --------------------------------

   function Create_Protocol_Transition return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Protocol_Transition,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Protocol_Transitions.UML_Protocol_Transition_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  container
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  effect
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  guard
                     11     => (M_Transition_Kind, AMF.UML.External),
                       --  kind
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  redefinedTransition
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  source
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  target
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  postCondition
                     16     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  preCondition
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (13));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  trigger

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Transition_Trigger,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  referred

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Protocol_Transition_Referred,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      return Self;
   end Create_Protocol_Transition;

   ------------------------
   -- Create_Pseudostate --
   ------------------------

   function Create_Pseudostate return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Pseudostate,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Pseudostates.UML_Pseudostate_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  container
                     8      => (M_Pseudostate_Kind, AMF.UML.Initial_Pseudostate),
                       --  kind
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  state
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  stateMachine
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (5));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Vertex_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Vertex_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      return Self;
   end Create_Pseudostate;

   ----------------------------
   -- Create_Qualifier_Value --
   ----------------------------

   function Create_Qualifier_Value return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Qualifier_Value,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Qualifier_Values.UML_Qualifier_Value_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  qualifier
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  value
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (2));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_Qualifier_Value;

   -----------------------------------
   -- Create_Raise_Exception_Action --
   -----------------------------------

   function Create_Raise_Exception_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Raise_Exception_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Raise_Exception_Actions.UML_Raise_Exception_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  exception
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Raise_Exception_Action;

   -------------------------------
   -- Create_Read_Extent_Action --
   -------------------------------

   function Create_Read_Extent_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Read_Extent_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Read_Extent_Actions.UML_Read_Extent_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  classifier
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  result
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Read_Extent_Action;

   ---------------------------------------------
   -- Create_Read_Is_Classified_Object_Action --
   ---------------------------------------------

   function Create_Read_Is_Classified_Object_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Read_Is_Classified_Object_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Read_Is_Classified_Object_Actions.UML_Read_Is_Classified_Object_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  classifier
                     13     => (M_Boolean, False),
                       --  isDirect
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  object
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  result
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Read_Is_Classified_Object_Action;

   -----------------------------
   -- Create_Read_Link_Action --
   -----------------------------

   function Create_Read_Link_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Read_Link_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Read_Link_Actions.UML_Read_Link_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  result
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (18));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  endData

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Link_Action_End_Data,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inputValue

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Link_Action_Input_Value,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      return Self;
   end Create_Read_Link_Action;

   ----------------------------------------
   -- Create_Read_Link_Object_End_Action --
   ----------------------------------------

   function Create_Read_Link_Object_End_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Read_Link_Object_End_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Read_Link_Object_End_Actions.UML_Read_Link_Object_End_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  end
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  object
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  result
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Read_Link_Object_End_Action;

   --------------------------------------------------
   -- Create_Read_Link_Object_End_Qualifier_Action --
   --------------------------------------------------

   function Create_Read_Link_Object_End_Qualifier_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Read_Link_Object_End_Qualifier_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Read_Link_Object_End_Qualifier_Actions.UML_Read_Link_Object_End_Qualifier_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  object
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  qualifier
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  result
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Read_Link_Object_End_Qualifier_Action;

   -----------------------------
   -- Create_Read_Self_Action --
   -----------------------------

   function Create_Read_Self_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Read_Self_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Read_Self_Actions.UML_Read_Self_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  result
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Read_Self_Action;

   -------------------------------------------
   -- Create_Read_Structural_Feature_Action --
   -------------------------------------------

   function Create_Read_Structural_Feature_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Read_Structural_Feature_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Read_Structural_Feature_Actions.UML_Read_Structural_Feature_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  object
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  structuralFeature
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  result
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Read_Structural_Feature_Action;

   ---------------------------------
   -- Create_Read_Variable_Action --
   ---------------------------------

   function Create_Read_Variable_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Read_Variable_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Read_Variable_Actions.UML_Read_Variable_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  variable
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  result
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Read_Variable_Action;

   ------------------------
   -- Create_Realization --
   ------------------------

   function Create_Realization return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Realization,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Realizations.UML_Realization_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  mapping
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (8));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  client

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Dependency_Client,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  supplier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Dependency_Supplier,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      return Self;
   end Create_Realization;

   ----------------------
   -- Create_Reception --
   ----------------------

   function Create_Reception return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Reception,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Receptions.UML_Reception_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Boolean, False),
                       --  isStatic
                     9      => (M_Call_Concurrency_Kind, AMF.UML.Sequential),
                       --  concurrency
                     10     => (M_Boolean, False),
                       --  isAbstract
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  signal
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  featuringClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Feature_Featuring_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  method

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavioral_Feature_Method,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  ownedParameter

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Behavioral_Feature_Owned_Parameter,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  ownedParameterSet

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavioral_Feature_Owned_Parameter_Set,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  raisedException

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavioral_Feature_Raised_Exception,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Reception;

   -------------------------------------
   -- Create_Reclassify_Object_Action --
   -------------------------------------

   function Create_Reclassify_Object_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Reclassify_Object_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Reclassify_Object_Actions.UML_Reclassify_Object_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Boolean, False),
                       --  isReplaceAll
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  object
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (18));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  newClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Reclassify_Object_Action_New_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  oldClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Reclassify_Object_Action_Old_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      return Self;
   end Create_Reclassify_Object_Action;

   -------------------------------------------
   -- Create_Redefinable_Template_Signature --
   -------------------------------------------

   function Create_Redefinable_Template_Signature return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Redefinable_Template_Signature,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Redefinable_Template_Signatures.UML_Redefinable_Template_Signature_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  template
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (9));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  ownedParameter

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Template_Signature_Owned_Parameter,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  parameter

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Template_Signature_Parameter,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  extendedSignature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Template_Signature_Extended_Signature,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  inheritedParameter

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Template_Signature_Inherited_Parameter,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      return Self;
   end Create_Redefinable_Template_Signature;

   --------------------------
   -- Create_Reduce_Action --
   --------------------------

   function Create_Reduce_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Reduce_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Reduce_Actions.UML_Reduce_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  collection
                     13     => (M_Boolean, False),
                       --  isOrdered
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  reducer
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  result
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Reduce_Action;

   -------------------
   -- Create_Region --
   -------------------

   function Create_Region return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Region,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Regions.UML_Region_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  extendedRegion
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  state
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  stateMachine
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (13));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  subvertex

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Region_Subvertex,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  transition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Region_Transition,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      return Self;
   end Create_Region;

   ---------------------------------------------------
   -- Create_Remove_Structural_Feature_Value_Action --
   ---------------------------------------------------

   function Create_Remove_Structural_Feature_Value_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Remove_Structural_Feature_Value_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Remove_Structural_Feature_Value_Actions.UML_Remove_Structural_Feature_Value_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  object
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  structuralFeature
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  result
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  value
                     16     => (M_Boolean, False),
                       --  isRemoveDuplicates
                     17     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  removeAt
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Remove_Structural_Feature_Value_Action;

   -----------------------------------------
   -- Create_Remove_Variable_Value_Action --
   -----------------------------------------

   function Create_Remove_Variable_Value_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Remove_Variable_Value_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Remove_Variable_Value_Actions.UML_Remove_Variable_Value_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  variable
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  value
                     14     => (M_Boolean, False),
                       --  isRemoveDuplicates
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  removeAt
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Remove_Variable_Value_Action;

   -------------------------
   -- Create_Reply_Action --
   -------------------------

   function Create_Reply_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Reply_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Reply_Actions.UML_Reply_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  replyToCall
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  returnInformation
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (17));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  replyValue

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Reply_Action_Reply_Value,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      return Self;
   end Create_Reply_Action;

   -------------------------------
   -- Create_Send_Object_Action --
   -------------------------------

   function Create_Send_Object_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Send_Object_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Send_Object_Actions.UML_Send_Object_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  onPort
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  target
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (17));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  argument

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Invocation_Action_Argument,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      return Self;
   end Create_Send_Object_Action;

   -------------------------------
   -- Create_Send_Signal_Action --
   -------------------------------

   function Create_Send_Signal_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Send_Signal_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Send_Signal_Actions.UML_Send_Signal_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  onPort
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  signal
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  target
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (17));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  argument

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Invocation_Action_Argument,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      return Self;
   end Create_Send_Signal_Action;

   --------------------------
   -- Create_Sequence_Node --
   --------------------------

   function Create_Sequence_Node return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Sequence_Node,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Sequence_Nodes.UML_Sequence_Node_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inActivity
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  superGroup
                     9      => (M_Boolean, False),
                       --  isLeaf
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     13     => (M_Boolean, False),
                       --  isLocallyReentrant
                     14     => (M_Boolean, False),
                       --  mustIsolate
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (30));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  containedEdge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Contained_Edge,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  containedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Contained_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  subgroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Subgroup,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  edge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Edge,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  node

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  structuredNodeInput

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Structured_Node_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  structuredNodeOutput

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Structured_Node_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      --  variable

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Variable,
        UML_Element_Table.Table (Self).Member (0).Collection + 30);

      return Self;
   end Create_Sequence_Node;

   -------------------
   -- Create_Signal --
   -------------------

   function Create_Signal return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Signal,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Signals.UML_Signal_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (24));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Signal_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      return Self;
   end Create_Signal;

   -------------------------
   -- Create_Signal_Event --
   -------------------------

   function Create_Signal_Event return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Signal_Event,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Signal_Events.UML_Signal_Event_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  signal
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Signal_Event;

   -----------------
   -- Create_Slot --
   -----------------

   function Create_Slot return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Slot,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Slots.UML_Slot_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  definingFeature
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningInstance
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  value

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Slot_Value,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Slot;

   ---------------------------------------------
   -- Create_Start_Classifier_Behavior_Action --
   ---------------------------------------------

   function Create_Start_Classifier_Behavior_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Start_Classifier_Behavior_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Start_Classifier_Behavior_Actions.UML_Start_Classifier_Behavior_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  object
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Start_Classifier_Behavior_Action;

   -----------------------------------------
   -- Create_Start_Object_Behavior_Action --
   -----------------------------------------

   function Create_Start_Object_Behavior_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Start_Object_Behavior_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Start_Object_Behavior_Actions.UML_Start_Object_Behavior_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  onPort
                     13     => (M_Boolean, True),
                       --  isSynchronous
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  object
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (18));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  argument

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Invocation_Action_Argument,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  result

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Call_Action_Result,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      return Self;
   end Create_Start_Object_Behavior_Action;

   ------------------
   -- Create_State --
   ------------------

   function Create_State return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_State,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_States.UML_State_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  container
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  doActivity
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  entry
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  exit
                     12     => (M_Boolean, False),
                       --  isComposite
                     13     => (M_Boolean, False),
                       --  isOrthogonal
                     14     => (M_Boolean, True),
                       --  isSimple
                     15     => (M_Boolean, False),
                       --  isSubmachineState
                     16     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  redefinedState
                     17     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  stateInvariant
                     18     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  submachine
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (17));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Vertex_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Vertex_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  connection

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_State_Connection,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  connectionPoint

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_State_Connection_Point,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  deferrableTrigger

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_State_Deferrable_Trigger,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  region

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_State_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      return Self;
   end Create_State;

   ----------------------------
   -- Create_State_Invariant --
   ----------------------------

   function Create_State_Invariant return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_State_Invariant,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_State_Invariants.UML_State_Invariant_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingInteraction
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  enclosingOperand
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  invariant
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (5));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  covered

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_Covered,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  generalOrdering

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Interaction_Fragment_General_Ordering,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      return Self;
   end Create_State_Invariant;

   --------------------------
   -- Create_State_Machine --
   --------------------------

   function Create_State_Machine return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_State_Machine,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_State_Machines.UML_State_Machine_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  classifierBehavior
                     16     => (M_Boolean, False),
                       --  isActive
                     17     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     18     => (M_Boolean, True),
                       --  isReentrant
                     19     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  specification
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (42));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  interfaceRealization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Interface_Realization,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Owned_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  ownedConnector

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Connector,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  part

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Part,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  role

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Role,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      --  ownedPort

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Encapsulated_Classifier_Owned_Port,
        UML_Element_Table.Table (Self).Member (0).Collection + 30);

      --  extension

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Extension,
        UML_Element_Table.Table (Self).Member (0).Collection + 31);

      --  nestedClassifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Nested_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 32);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Owned_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 33);

      --  ownedReception

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Owned_Reception,
        UML_Element_Table.Table (Self).Member (0).Collection + 34);

      --  ownedParameter

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Behavior_Owned_Parameter,
        UML_Element_Table.Table (Self).Member (0).Collection + 35);

      --  ownedParameterSet

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Owned_Parameter_Set,
        UML_Element_Table.Table (Self).Member (0).Collection + 36);

      --  postcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 37);

      --  precondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 38);

      --  redefinedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behavior_Redefined_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 39);

      --  connectionPoint

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_State_Machine_Connection_Point,
        UML_Element_Table.Table (Self).Member (0).Collection + 40);

      --  region

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_State_Machine_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 41);

      --  submachineState

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_State_Machine_Submachine_State,
        UML_Element_Table.Table (Self).Member (0).Collection + 42);

      return Self;
   end Create_State_Machine;

   -----------------------
   -- Create_Stereotype --
   -----------------------

   function Create_Stereotype return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Stereotype,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Stereotypes.UML_Stereotype_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  classifierBehavior
                     16     => (M_Boolean, False),
                       --  isActive
                     17     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  profile
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (35));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  interfaceRealization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Interface_Realization,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Owned_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  ownedAttribute

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  ownedConnector

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Owned_Connector,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  part

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Part,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  role

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Classifier_Role,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      --  ownedPort

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Encapsulated_Classifier_Owned_Port,
        UML_Element_Table.Table (Self).Member (0).Collection + 30);

      --  extension

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Extension,
        UML_Element_Table.Table (Self).Member (0).Collection + 31);

      --  nestedClassifier

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Nested_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 32);

      --  ownedOperation

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Class_Owned_Operation,
        UML_Element_Table.Table (Self).Member (0).Collection + 33);

      --  ownedReception

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Class_Owned_Reception,
        UML_Element_Table.Table (Self).Member (0).Collection + 34);

      --  icon

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Stereotype_Icon,
        UML_Element_Table.Table (Self).Member (0).Collection + 35);

      return Self;
   end Create_Stereotype;

   ------------------------------
   -- Create_String_Expression --
   ------------------------------

   function Create_String_Expression return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_String_Expression,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_String_Expressions.UML_String_Expression_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     10     => (M_String, null),
                       --  symbol
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningExpression
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (6));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  operand

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Expression_Operand,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  subExpression

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_String_Expression_Sub_Expression,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      return Self;
   end Create_String_Expression;

   -------------------------------------
   -- Create_Structured_Activity_Node --
   -------------------------------------

   function Create_Structured_Activity_Node return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Structured_Activity_Node,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Structured_Activity_Nodes.UML_Structured_Activity_Node_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inActivity
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  superGroup
                     9      => (M_Boolean, False),
                       --  isLeaf
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     13     => (M_Boolean, False),
                       --  isLocallyReentrant
                     14     => (M_Boolean, False),
                       --  mustIsolate
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (30));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  containedEdge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Contained_Edge,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  containedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Contained_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  subgroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Group_Subgroup,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  edge

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Edge,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  node

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  structuredNodeInput

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Structured_Node_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  structuredNodeOutput

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Structured_Node_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      --  variable

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Structured_Activity_Node_Variable,
        UML_Element_Table.Table (Self).Member (0).Collection + 30);

      return Self;
   end Create_Structured_Activity_Node;

   -------------------------
   -- Create_Substitution --
   -------------------------

   function Create_Substitution return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Substitution,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Substitutions.UML_Substitution_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  mapping
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  contract
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  substitutingClassifier
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (8));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  client

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Dependency_Client,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  supplier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Dependency_Supplier,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      return Self;
   end Create_Substitution;

   -----------------------------
   -- Create_Template_Binding --
   -----------------------------

   function Create_Template_Binding return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Template_Binding,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Template_Bindings.UML_Template_Binding_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  boundElement
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  signature
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (6));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  parameterSubstitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Template_Binding_Parameter_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      return Self;
   end Create_Template_Binding;

   -------------------------------
   -- Create_Template_Parameter --
   -------------------------------

   function Create_Template_Parameter return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Template_Parameter,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Template_Parameters.UML_Template_Parameter_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  default
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedDefault
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedParameteredElement
                     5      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  parameteredElement
                     6      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  signature
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (2));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_Template_Parameter;

   --------------------------------------------
   -- Create_Template_Parameter_Substitution --
   --------------------------------------------

   function Create_Template_Parameter_Substitution return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Template_Parameter_Substitution,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Template_Parameter_Substitutions.UML_Template_Parameter_Substitution_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  actual
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  formal
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedActual
                     5      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateBinding
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (2));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      return Self;
   end Create_Template_Parameter_Substitution;

   -------------------------------
   -- Create_Template_Signature --
   -------------------------------

   function Create_Template_Signature return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Template_Signature,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Template_Signatures.UML_Template_Signature_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  template
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (4));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  ownedParameter

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Template_Signature_Owned_Parameter,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  parameter

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Template_Signature_Parameter,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Template_Signature;

   ---------------------------------
   -- Create_Test_Identity_Action --
   ---------------------------------

   function Create_Test_Identity_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Test_Identity_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Test_Identity_Actions.UML_Test_Identity_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  first
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  result
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  second
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Test_Identity_Action;

   ----------------------------
   -- Create_Time_Constraint --
   ----------------------------

   function Create_Time_Constraint return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Time_Constraint,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Time_Constraints.UML_Time_Constraint_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  specification
                     11     => (M_Boolean_Holder, (Is_Empty => True)),
                       --  firstEvent
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (4));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  constrainedElement

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Constraint_Constrained_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Time_Constraint;

   -----------------------
   -- Create_Time_Event --
   -----------------------

   function Create_Time_Event return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Time_Event,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Time_Events.UML_Time_Event_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Boolean, False),
                       --  isRelative
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  when
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Time_Event;

   ----------------------------
   -- Create_Time_Expression --
   ----------------------------

   function Create_Time_Expression return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Time_Expression,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Time_Expressions.UML_Time_Expression_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  expr
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (4));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  observation

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Time_Expression_Observation,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Time_Expression;

   --------------------------
   -- Create_Time_Interval --
   --------------------------

   function Create_Time_Interval return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Time_Interval,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Time_Intervals.UML_Time_Interval_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  max
                     11     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  min
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Time_Interval;

   -----------------------------
   -- Create_Time_Observation --
   -----------------------------

   function Create_Time_Observation return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Time_Observation,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Time_Observations.UML_Time_Observation_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  event
                     10     => (M_Boolean, False),
                       --  firstEvent
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (3));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      return Self;
   end Create_Time_Observation;

   -----------------------
   -- Create_Transition --
   -----------------------

   function Create_Transition return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Transition,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Transitions.UML_Transition_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  container
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  effect
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  guard
                     11     => (M_Transition_Kind, AMF.UML.External),
                       --  kind
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  redefinedTransition
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  source
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  target
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (12));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  trigger

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Transition_Trigger,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Transition;

   --------------------
   -- Create_Trigger --
   --------------------

   function Create_Trigger return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Trigger,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Triggers.UML_Trigger_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  event
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (4));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  port

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Trigger_Port,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Trigger;

   ------------------------------
   -- Create_Unmarshall_Action --
   ------------------------------

   function Create_Unmarshall_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Unmarshall_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Unmarshall_Actions.UML_Unmarshall_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  object
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  unmarshallType
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (17));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  result

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Unmarshall_Action_Result,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      return Self;
   end Create_Unmarshall_Action;

   ------------------
   -- Create_Usage --
   ------------------

   function Create_Usage return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Usage,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Usages.UML_Usage_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (8));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  relatedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Relationship_Related_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  source

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Source,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  target

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Directed_Relationship_Target,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  client

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Dependency_Client,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  supplier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Dependency_Supplier,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      return Self;
   end Create_Usage;

   ---------------------
   -- Create_Use_Case --
   ---------------------

   function Create_Use_Case return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Use_Case,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Use_Cases.UML_Use_Case_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  package
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  ownedTemplateSignature
                     11     => (M_Boolean, False),
                       --  isLeaf
                     12     => (M_Boolean, False),
                       --  isAbstract
                     13     => (M_Boolean, False),
                       --  isFinalSpecialization
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  representation
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  classifierBehavior
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (29));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  elementImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Element_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  importedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Imported_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  member

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  ownedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  ownedRule

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Owned_Rule,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  packageImport

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Namespace_Package_Import,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  templateBinding

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Templateable_Element_Template_Binding,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  attribute

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Attribute,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  collaborationUse

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Collaboration_Use,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  feature

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Feature,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  general

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_General,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      --  generalization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Generalization,
        UML_Element_Table.Table (Self).Member (0).Collection + 17);

      --  inheritedMember

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Inherited_Member,
        UML_Element_Table.Table (Self).Member (0).Collection + 18);

      --  ownedUseCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Owned_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 19);

      --  powertypeExtent

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Powertype_Extent,
        UML_Element_Table.Table (Self).Member (0).Collection + 20);

      --  redefinedClassifier

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Redefined_Classifier,
        UML_Element_Table.Table (Self).Member (0).Collection + 21);

      --  substitution

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Substitution,
        UML_Element_Table.Table (Self).Member (0).Collection + 22);

      --  useCase

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Classifier_Use_Case,
        UML_Element_Table.Table (Self).Member (0).Collection + 23);

      --  interfaceRealization

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Interface_Realization,
        UML_Element_Table.Table (Self).Member (0).Collection + 24);

      --  ownedBehavior

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Behaviored_Classifier_Owned_Behavior,
        UML_Element_Table.Table (Self).Member (0).Collection + 25);

      --  extend

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Use_Case_Extend,
        UML_Element_Table.Table (Self).Member (0).Collection + 26);

      --  extensionPoint

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Use_Case_Extension_Point,
        UML_Element_Table.Table (Self).Member (0).Collection + 27);

      --  include

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Use_Case_Include,
        UML_Element_Table.Table (Self).Member (0).Collection + 28);

      --  subject

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Use_Case_Subject,
        UML_Element_Table.Table (Self).Member (0).Collection + 29);

      return Self;
   end Create_Use_Case;

   ----------------------
   -- Create_Value_Pin --
   ----------------------

   function Create_Value_Pin return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Value_Pin,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Value_Pins.UML_Value_Pin_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     11     => (M_Boolean, False),
                       --  isControlType
                     12     => (M_Object_Node_Ordering_Kind, AMF.UML.FIFO),
                       --  ordering
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  selection
                     14     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  upperBound
                     15     => (M_Boolean, False),
                       --  isOrdered
                     16     => (M_Boolean, True),
                       --  isUnique
                     17     => (M_Integer_Holder, (False, 1)),
                       --  lower
                     18     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  lowerValue
                     19     =>
                      (M_Unlimited_Natural_Holder, (False, (False, 1))),
                       --  upper
                     20     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  upperValue
                     21     => (M_Boolean, False),
                       --  isControl
                     22     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  value
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (12));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  inState

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Object_Node_In_State,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      return Self;
   end Create_Value_Pin;

   ---------------------------------------
   -- Create_Value_Specification_Action --
   ---------------------------------------

   function Create_Value_Specification_Action return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Value_Specification_Action,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Value_Specification_Actions.UML_Value_Specification_Action_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Boolean, False),
                       --  isLeaf
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activity
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  inStructuredNode
                     10     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  context
                     11     => (M_Boolean, False),
                       --  isLocallyReentrant
                     12     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  result
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  value
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (16));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  redefinedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefined_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      --  redefinitionContext

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Redefinable_Element_Redefinition_Context,
        UML_Element_Table.Table (Self).Member (0).Collection + 5);

      --  inGroup

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Group,
        UML_Element_Table.Table (Self).Member (0).Collection + 6);

      --  inInterruptibleRegion

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Interruptible_Region,
        UML_Element_Table.Table (Self).Member (0).Collection + 7);

      --  inPartition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_In_Partition,
        UML_Element_Table.Table (Self).Member (0).Collection + 8);

      --  incoming

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Incoming,
        UML_Element_Table.Table (Self).Member (0).Collection + 9);

      --  outgoing

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Outgoing,
        UML_Element_Table.Table (Self).Member (0).Collection + 10);

      --  redefinedNode

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Activity_Node_Redefined_Node,
        UML_Element_Table.Table (Self).Member (0).Collection + 11);

      --  handler

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Executable_Node_Handler,
        UML_Element_Table.Table (Self).Member (0).Collection + 12);

      --  input

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Input,
        UML_Element_Table.Table (Self).Member (0).Collection + 13);

      --  localPostcondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Postcondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 14);

      --  localPrecondition

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Action_Local_Precondition,
        UML_Element_Table.Table (Self).Member (0).Collection + 15);

      --  output

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Action_Output,
        UML_Element_Table.Table (Self).Member (0).Collection + 16);

      return Self;
   end Create_Value_Specification_Action;

   ---------------------
   -- Create_Variable --
   ---------------------

   function Create_Variable return AMF.Internals.UML_Element is
      Self : AMF.Internals.UML_Element;

   begin
      UML_Element_Table.Increment_Last;
      Self := UML_Element_Table.Last;

      UML_Element_Table.Table (Self) :=
       (Kind     => E_Variable,
        Extent   => 0,
        Proxy    =>
          new AMF.Internals.UML_Variables.UML_Variable_Proxy'(Id => Self),
        Member   => (0      => (Kind => M_None),
                     1      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owner
                     2      => (M_String, null),
                       --  name
                     3      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  nameExpression
                     4      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  namespace
                     5      => (M_String, null),
                       --  qualifiedName
                     6      => (M_Visibility_Kind_Holder, (Is_Empty => True)),
                       --  visibility
                     7      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  type
                     8      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  owningTemplateParameter
                     9      => (M_Element, UML_Element'First, AMF_Link'First),
                       --  templateParameter
                     10     => (M_Boolean, False),
                       --  isOrdered
                     11     => (M_Boolean, True),
                       --  isUnique
                     12     => (M_Integer_Holder, (False, 1)),
                       --  lower
                     13     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  lowerValue
                     14     =>
                      (M_Unlimited_Natural_Holder, (False, (False, 1))),
                       --  upper
                     15     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  upperValue
                     16     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  activityScope
                     17     => (M_Element, UML_Element'First, AMF_Link'First),
                       --  scope
                     others => (Kind => M_None)));
      UML_Element_Table.Table (Self).Member (0) :=
       (M_Collection_Of_Element,
        AMF.Internals.Element_Collections.Allocate_Collections (4));

      --  ownedComment

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Comment,
        UML_Element_Table.Table (Self).Member (0).Collection + 1);

      --  ownedElement

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Element_Owned_Element,
        UML_Element_Table.Table (Self).Member (0).Collection + 2);

      --  clientDependency

      AMF.Internals.Element_Collections.Initialize_Set_Collection
       (Self,
        MP_UML_Named_Element_Client_Dependency,
        UML_Element_Table.Table (Self).Member (0).Collection + 3);

      --  end

      AMF.Internals.Element_Collections.Initialize_Ordered_Set_Collection
       (Self,
        MP_UML_Connectable_Element_End,
        UML_Element_Table.Table (Self).Member (0).Collection + 4);

      return Self;
   end Create_Variable;

end AMF.Internals.Tables.UML_Constructors;
